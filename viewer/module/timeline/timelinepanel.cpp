#include "timelinepanel.h"
#include "application.h"
#include "controller/configsetter.h"
#include "controller/importer.h"
#include "controller/signalmanager.h"
#include "timelineframe.h"
#include "utils/imageutils.h"
#include "widgets/imagebutton.h"
#include "widgets/importframe.h"
#include "widgets/slider.h"
#include <QDebug>
#include <QDropEvent>
#include <QLabel>
#include <QMenu>
#include <QMimeData>
#include <QStackedWidget>
#include <QUrl>
#include <QVBoxLayout>

namespace {

const int MIN_ICON_SIZE = 96;
const int ICON_MARGIN = 13;
const int SLIDER_WIDTH = 120;
//in order to make the toptoolbarContent align center, add leftMargin 82;
const int MARGIN_DIFF = 82;

const QString SETTINGS_GROUP = "TIMEPANEL";
const QString SETTINGS_ICON_SCALE_KEY = "IconScale";

}  //namespace

using namespace Dtk::Widget;

TimelinePanel::TimelinePanel(QWidget *parent)
    : ModulePanel(parent)
{
    setAcceptDrops(true);

    initMainStackWidget();
    initStyleSheet();
    initPopupMenu();
    initConnection();
}

bool TimelinePanel::isMainPanel()
{
    return true;
}

QString TimelinePanel::moduleName()
{
    return "TimelinePanel";
}

QWidget *TimelinePanel::toolbarBottomContent()
{
    QWidget *tBottomContent = new QWidget;
    tBottomContent->setStyleSheet(this->styleSheet());

    const int sizeScale = dApp->setter->value(SETTINGS_GROUP,
                                              SETTINGS_ICON_SCALE_KEY,
                                              QVariant(0)).toInt();
    const int iconSize = MIN_ICON_SIZE + sizeScale * 32;
    m_frame->setIconSize(iconSize);

    m_slider = new Slider(Qt::Horizontal);
    m_slider->setMinimum(0);
    m_slider->setMaximum(3);
    m_slider->setValue(sizeScale);
    m_slider->setPageStep(1);
    connect(m_slider, &Slider::valueChanged, this, [=] (int multiple) {
        int newSize = MIN_ICON_SIZE + multiple * 32;
        m_frame->setIconSize(newSize);
        dApp->setter->setValue(SETTINGS_GROUP, SETTINGS_ICON_SCALE_KEY,
                               QVariant(m_slider->value()));
    });

    m_countLabel = new QLabel;
    m_countLabel->setObjectName("CountLabel");
    updateBottomToolbarContent(dApp->dbM->getImgsCount());

    ImageButton *ib = new ImageButton;
    ib->setObjectName("ImportBtn");
    ib->setToolTip(tr("Import"));

    connect(ib, &DImageButton::clicked, this, [=] {
        dApp->importer->showImportDialog();
    });

    QVBoxLayout* layout = new QVBoxLayout(tBottomContent);
    layout->setContentsMargins(0 ,0 ,0, 0);
    layout->setSpacing(0);

    QLabel* topDarkLine = new QLabel;
    topDarkLine->setFixedHeight(1);
    topDarkLine->setObjectName("BTopDarkLine");
    QLabel* topLightLine = new QLabel;
    topLightLine->setFixedHeight(1);
    topLightLine->setObjectName("BTopLightLine");

    QHBoxLayout *hLayout = new QHBoxLayout;
    hLayout->setContentsMargins(2, 0, 5, 0);
    hLayout->setSpacing(0);
    hLayout->addSpacing(6);
    hLayout->addWidget(ib);
    hLayout->addStretch(1);
    hLayout->addWidget(m_countLabel, 1, Qt::AlignCenter);
    hLayout->addWidget(m_slider, 1, Qt::AlignRight);
    hLayout->addSpacing(9);

    QLabel* bottomLightLine = new QLabel;
    bottomLightLine->setFixedHeight(1);
    bottomLightLine->setObjectName("BtmLightLine");

    layout->addWidget(topDarkLine);
    layout->addWidget(topLightLine);
    layout->addLayout(hLayout);
    layout->addWidget(bottomLightLine);

    return tBottomContent;
}

QWidget *TimelinePanel::toolbarTopLeftContent()
{
    QWidget *w = new QWidget;

    QLabel *label = new QLabel;
    label->setPixmap(QPixmap(":/images/logo/resources/images/logo/deepin_image_viewer_24.png"));
    QHBoxLayout *layout = new QHBoxLayout(w);
    layout->setContentsMargins(ICON_MARGIN, 0, 0, 0);
    layout->addWidget(label);

    return w;
}

QWidget *TimelinePanel::toolbarTopMiddleContent()
{
    QWidget *tTopMiddleContent = new QWidget;
    tTopMiddleContent->setStyleSheet(this->styleSheet());
    QLabel *timelineButton = new QLabel();
    timelineButton->setFixedSize(48, 40);
    timelineButton->setObjectName("TimelineLabel");

    ImageButton *albumButton = new ImageButton();
    albumButton->setObjectName("AlbumBtn");

    connect(albumButton, &ImageButton::clicked, this, [=] {
        qDebug() << "Change to Album Panel...";
        emit dApp->signalM->gotoAlbumPanel();
    });
    albumButton->setToolTip(tr("Album"));

    QHBoxLayout *layout = new QHBoxLayout(tTopMiddleContent);
    layout->setContentsMargins(0, 0, 0, 0);
    layout->setSpacing(0);
    layout->addStretch();
    layout->addWidget(timelineButton);
    layout->addWidget(albumButton);
    layout->addStretch();

    return tTopMiddleContent;
}

QWidget *TimelinePanel::extensionPanelContent()
{
    return NULL;
}

void TimelinePanel::dropEvent(QDropEvent *event)
{
    QList<QUrl> urls = event->mimeData()->urls();
    if (!urls.isEmpty()) {
        QStringList files;
        for (QUrl url : urls) {
            const QString path = url.toLocalFile();
            if (QFileInfo(path).isDir()) {
                // Need popup AlbumCreate dialog
                emit dApp->signalM->importDir(path);
            }
            else {
                files << path;
            }
        }
        if (! files.isEmpty()) {
            dApp->importer->appendFiles(files);
        }
    }
}

void TimelinePanel::dragEnterEvent(QDragEnterEvent *event)
{
    event->setDropAction(Qt::CopyAction);
    event->accept();
}

void TimelinePanel::showPanelEvent(ModulePanel *p)
{
    ModulePanel::showPanelEvent(p);
    emit dApp->signalM->showTopToolbar();
//    emit dApp->signalM->showBottomToolbar();
    emit dApp->signalM->hideExtensionPanel(true);
    emit dApp->signalM->updateBottomToolbarContent(toolbarBottomContent(),
                                                   false);
}

void TimelinePanel::initConnection()
{
    connect(dApp->importer, &Importer::imported, this, [=] (bool success) {
        if (! success) {
            return;
        }
        onImageCountChanged(dApp->dbM->getImgsCount());
    });
//    qRegisterMetaType<DBImgInfoList>("DBImgInfoList");
//    connect(dApp->signalM, &SignalManager::imagesInserted, this, [=] {
//        if (! m_view->isEmpty()) {
//            onImageCountChanged(dApp->dbM->getImgsCount());
//        }
//    });
    connect(dApp->signalM, &SignalManager::imagesRemoved, this, [=] {
        onImageCountChanged(dApp->dbM->getImgsCount());
    });
    connect(dApp->signalM, &SignalManager::gotoTimelinePanel, this, [=] {
        emit dApp->signalM->gotoPanel(this);
    });
    connect(dApp->viewerTheme, &ViewerThemeManager::viewerThemeChanged, this,
            &TimelinePanel::onThemeChanged);
}

void TimelinePanel::initMainStackWidget()
{
    initImagesView();

    ImportFrame *frame = new ImportFrame(this);
    frame->setButtonText(tr("Import"));
    frame->setTitle(tr("Import or drag image to timeline"));
    connect(frame, &ImportFrame::clicked, this, [=] {
        dApp->importer->showImportDialog();
    });

    m_mainStack = new QStackedWidget;
    m_mainStack->setContentsMargins(0, 0, 0, 0);
    m_mainStack->addWidget(frame);
//    m_mainStack->addWidget(m_view);
    m_mainStack->addWidget(m_frame);
    //show import frame if no images in database
    m_mainStack->setCurrentIndex(dApp->dbM->getImgsCount() > 0 ? 1 : 0);

    QLayout *layout = new QHBoxLayout(this);
    layout->setContentsMargins(0, 0, 0, 0);
    layout->addWidget(m_mainStack);
}

void TimelinePanel::initImagesView()
{
    m_frame = new TimelineFrame;
    connect(m_frame, &TimelineFrame::viewImage,
            this, [=] (const QString &path, const QStringList &paths) {
        SignalManager::ViewInfo vinfo;
        vinfo.lastPanel = this;
        vinfo.path = path;
        vinfo.paths = paths;
        emit dApp->signalM->viewImage(vinfo);
    });

    connect(m_frame, &TimelineFrame::currentIndexChanged,
            this, &TimelinePanel::updateMenuContents);
    connect(m_frame, &TimelineFrame::showMenu, this, [=] {
        updateMenuContents();
        m_menu->popup(QCursor::pos());
    });
    connect(m_frame, &TimelineFrame::changeItemSize, this, [=] (bool increase) {
        if (increase) {
            m_slider->setValue(qMin(m_slider->value() + 1, m_slider->maximum()));
        }
        else {
            m_slider->setValue(qMax(m_slider->value() - 1, m_slider->minimum()));
        }
     });
}

void TimelinePanel::onThemeChanged(ViewerThemeManager::AppTheme theme) {
    Q_UNUSED(theme)
    initStyleSheet();
    if (this->isVisible()) {
        emit dApp->signalM->updateTopToolbarLeftContent(toolbarTopLeftContent());
        emit dApp->signalM->updateBottomToolbarContent(toolbarBottomContent());
        emit dApp->signalM->updateTopToolbarMiddleContent(toolbarTopMiddleContent());
    }
}
void TimelinePanel::initStyleSheet()
{
    if (dApp->viewerTheme->getCurrentTheme() == ViewerThemeManager::Dark) {
        setStyleSheet(utils::base::getFileContent(":/resources/dark/qss/timeline.qss"));
    }
    else {
        setStyleSheet(utils::base::getFileContent(":/resources/light/qss/timeline.qss"));
    }
}

void TimelinePanel::updateBottomToolbarContent(int count)
{
    if (count <= 1) {
        m_countLabel->setText(tr("%1 image").arg(count));
    }
    else {
        m_countLabel->setText(tr("%1 images").arg(count));
    }

    m_slider->setFixedWidth(count > 0 ? SLIDER_WIDTH : 0);
}

void TimelinePanel::onImageCountChanged(int count)
{
    if (this->isVisible()) {
        updateBottomToolbarContent(count);
    }

    m_mainStack->setCurrentIndex(count > 0 ? 1 : 0);
}
