#include "imagebutton.h"
#include <QApplication>
#include <QDesktopWidget>
#include <QFrame>
#include <QFile>
#include <QHelpEvent>
#include <QDebug>
#include <QHBoxLayout>
#include <QTimer>

ImageButton::ImageButton(QWidget *parent)
    : DImageButton(parent), m_tooltipVisiable(false)
{
    initStyleSheet();
}

bool ImageButton::event(QEvent *e)
{
    if (e->type() == QEvent::ToolTip) {
        if (QHelpEvent *he = static_cast<QHelpEvent *>(e)) {
            showTooltip(he->globalPos());

            return false;
        }
    }
    else if (e->type() == QEvent::Leave ||
             e->type() == QEvent::MouseButtonPress) {
        emit mouseLeave();
    }

    return DImageButton::event(e);
}

void ImageButton::initStyleSheet()
{
    QFile f(":/qss/resources/qss/ImageButton.qss");
    if (f.open(QIODevice::ReadOnly)) {
        setStyleSheet(f.readAll());
        f.close();
    }
    else {
        qDebug() << "Set style sheet for ImageButton failed";
    }
}

void ImageButton::setTooltipVisible(bool visible){
    m_tooltipVisiable = visible;
}

bool ImageButton::tooltipVisible() {
    return m_tooltipVisiable;
}

void ImageButton::showTooltip(const QPoint &gPos)
{
    if (m_tooltipVisiable) {
        return;
    }
    else {
        m_tooltipVisiable = true;
    }

    QFrame *tf = new QFrame();
    tf->setStyleSheet(this->styleSheet());
    tf->setWindowFlags(Qt::ToolTip);
    tf->setAttribute(Qt::WA_TranslucentBackground);
    QLabel *tl = new QLabel(tf);
    tl->setObjectName("ButtonTooltip");
    tl->setText(toolTip());
    QHBoxLayout *layout = new QHBoxLayout(tf);
    layout->setContentsMargins(0, 0, 0, 0);
    layout->addWidget(tl);

    tf->show();
    QRect dr = qApp->desktop()->geometry();
    int y = gPos.y() + tf->height();
    if (y > dr.y() + dr.height()) {
        y = gPos.y() - tf->height() - 10;
    }
    tf->move(gPos.x(), y);

    QTimer::singleShot(5000, tf, SLOT(deleteLater()));

    connect(tf, &QFrame::destroyed, this, [=] {
        m_tooltipVisiable = false;
    });

    connect(this, &ImageButton::mouseLeave, tf, &QFrame::deleteLater);
}