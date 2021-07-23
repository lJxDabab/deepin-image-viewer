/*
 * Copyright (C) 2020 ~ 2021 Uniontech Software Technology Co., Ltd.
 *
 * Author:     ZhangYong <zhangyong@uniontech.com>
 *
 * Maintainer: ZhangYong <ZhangYong@uniontech.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#ifndef BOTTOMTOOBAR_H
#define BOTTOMTOOBAR_H

#include <QWidget>
#include <QLabel>
#include <DListWidget>
#include <DSpinner>
#include <QListWidget>
#include <DListView>
#include <QAbstractItemModel>
#include <QStandardItem>
#include <DAnchors>
#include <DFloatingWidget>
#include <dimagebutton.h>
#include <DThumbnailProvider>
#include <QPropertyAnimation>
#include <QHBoxLayout>
#include <DIconButton>
#include <DBlurEffectWidget>
#include <DGuiApplicationHelper>
#include <DLabel>

#include "image-viewer_global.h"
DWIDGET_USE_NAMESPACE

class ElidedLabel;
class QAbstractItemModel;
//class DImageButton;
class ImageButton;
class ImgViewListView;
class ImageItem;
class MyImageListWidget;

class BottomToolbar : public DFloatingWidget
{
    Q_OBJECT
public:

    const int LEFT_RIGHT_MARGIN = 10;
    const int ICON_SPACING_NOMAL = 10;//普通间距
    const int ICON_SPACING_Max = 40;//相册返回，看图下一张后，特殊间隔

    struct TTBContentData {
        int index;
//        ImageDataSt data;
    };
//    explicit TTBContent(bool inDB, DBImgInfoList m_infos, QWidget *parent = 0);
    explicit BottomToolbar(QWidget *parent = nullptr);
    ~BottomToolbar() override;

    void initUI();
    void initConnection();
//    void updateScreenNoAnimation();
    //设置需要浏览的图片信息
    void setAllFile(QString path, QStringList paths);
    //获取所有图片数量
    int getAllFileCount();
    //获取不同数量情况下工具栏的宽度
    int getToolbarWidth();
    //获取当前展示图片信息
    imageViewerSpace::ItemInfo getCurrentItemInfo();
signals:
    void resetTransform(bool fitWindow);
    void rotateClockwise();
    void rotateCounterClockwise();

    void removed();
    void imageEmpty(bool v);
    void contentWidthChanged(int width);
    void showPrevious();
    void openImg(int index, QString path);
    //平板需求，退出时重置ttb显隐
    void resetShoworHide();
    //由于添加或者删除导致长度变化,参数默认为true
    void sigWidthChanged(bool visible);
public slots:
    void updateCollectButton();

    void disCheckAdaptImageBtn();
    void disCheckAdaptScreenBtn();
    void checkAdaptImageBtn();
    void checkAdaptScreenBtn();
    void deleteImage();
    void onNextButton();
    void onPreButton();
    void onBackButtonClicked();
    void onAdaptImageBtnClicked();
    void onAdaptScreenBtnClicked();
    void onclBTClicked();
    void onRotateLBtnClicked();
    void onRotateRBtnClicked();
    void onTrashBtnClicked();

protected:
    void resizeEvent(QResizeEvent *event) override;
public:
    QString m_imageType;

private:
    bool m_bClBTChecked;

    DIconButton *m_backButton = nullptr;

    DIconButton *m_preButton = nullptr;
    DIconButton *m_nextButton = nullptr;
    QWidget *m_spaceWidget = nullptr;

    DIconButton *m_adaptImageBtn = nullptr;
    DIconButton *m_adaptScreenBtn = nullptr;
    DIconButton *m_clBT = nullptr;
    DIconButton *m_rotateLBtn = nullptr;
    DIconButton *m_rotateRBtn = nullptr;
    DIconButton *m_trashBtn = nullptr;
    MyImageListWidget *m_imgListWidget = nullptr;
    int m_windowWidth;
    int m_contentWidth;
    bool badaptImageBtnChecked = false;
    bool badaptScreenBtnChecked = false;
    QString m_currentpath = "";
};

#endif // BOTTOMTOOBAR_H