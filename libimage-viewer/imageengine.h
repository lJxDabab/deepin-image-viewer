#ifndef IMAGEENGINE_H
#define IMAGEENGINE_H

#include "image-viewer_global.h"

#include <DWidget>
#include <QtCore/qglobal.h>
#include <QImage>

DWIDGET_USE_NAMESPACE

class ImageEnginePrivate;
class IMAGEVIEWERSHARED_EXPORT ImageEngine : public QObject
{
    Q_OBJECT
public:
    static ImageEngine *instance(QObject *parent = nullptr);
    explicit ImageEngine(QWidget *parent = nullptr);
    ~ImageEngine() override;

    //制作图片缩略图, paths:所有图片路径, makeCount:从第一个开始制作缩略图数量
    void makeImgThumbnail(QString thumbnailSavePath, QStringList paths, int makeCount);
    //判断是否是图片格式
    bool isImage(const QString &path);
    //根据文件路径制作md5
    QString makeMD5(const QString &path);
signals:
    //一张缩略图制作完成
    void sigOneImgReady(QString path, QImage image);
private:

    static ImageEngine *m_ImageEngine;

    QScopedPointer<ImageEnginePrivate> d_ptr;
    Q_DECLARE_PRIVATE_D(qGetPtrHelper(d_ptr), ImageEngine)
};

#endif // IMAGEENGINE_H