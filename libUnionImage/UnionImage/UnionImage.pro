#-------------------------------------------------
#
# Project created by QtCreator 2020-04-30T11:52:32
#
#-------------------------------------------------

QT       += svg core gui concurrent

TARGET = UnionImage
TEMPLATE = lib
CONFIG(debug ,debug | release){
    message("UnionImage Library debug")
    DESTDIR = $$PWD/../bin_Debug/
}

CONFIG(release ,debug | release){
    message("UnionImage Library release")
    DESTDIR = $$PWD/../bin_Release/
}
DEFINES += UNIONIMAGE_LIBRARY
CONFIG += c++11
CONFIG += stdc++

INCLUDEPATH += ./Source/
INCLUDEPATH += ./Source/OpenEXR
INCLUDEPATH += ./Source/ZLib
INCLUDEPATH += ./Source/LibJPEG
INCLUDEPATH += ./Source/LibJXR
INCLUDEPATH += ./Source/LibPNG
INCLUDEPATH += ./Source/LibOpenJPEG
INCLUDEPATH += ./Source/LibWebP
INCLUDEPATH += ./Source/OpenEXR/Imath
INCLUDEPATH += ./Source/OpenEXR/Iex
INCLUDEPATH += ./Source/OpenEXR/IlmImf
INCLUDEPATH += ./Source/OpenEXR/IlmThread
INCLUDEPATH += ./Source/OpenEXR/Half
INCLUDEPATH += ./Source/OpenEXR/IexMath
INCLUDEPATH += ./Source/LibJXR/image/sys
INCLUDEPATH += ./Source/Metadata
INCLUDEPATH += ./Source/FreeImageToolkit
INCLUDEPATH += ./Source/LibTIFF4
INCLUDEPATH += ./Source/LibRawLite
INCLUDEPATH += ./Source/LibRawLite/dcraw
INCLUDEPATH += ./Source/LibRawLite/internal
INCLUDEPATH += ./Source/LibRawLite/libraw
INCLUDEPATH += ./Source/LLibRawLite/src
INCLUDEPATH += ./Source/LibJXR/common/include
INCLUDEPATH += ./Source/LibJXR/jxrgluelib


# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        unionimage.cpp \
    Source/FreeImage/BitmapAccess.cpp \
    Source/FreeImage/CacheFile.cpp \
    Source/FreeImage/ColorLookup.cpp \
    Source/FreeImage/Conversion.cpp \
    Source/FreeImage/Conversion16_555.cpp \
    Source/FreeImage/Conversion16_565.cpp \
    Source/FreeImage/Conversion24.cpp \
    Source/FreeImage/Conversion32.cpp \
    Source/FreeImage/Conversion4.cpp \
    Source/FreeImage/Conversion8.cpp \
    Source/FreeImage/ConversionFloat.cpp \
    Source/FreeImage/ConversionRGB16.cpp \
    Source/FreeImage/ConversionRGBA16.cpp \
    Source/FreeImage/ConversionRGBAF.cpp \
    Source/FreeImage/ConversionRGBF.cpp \
    Source/FreeImage/ConversionType.cpp \
    Source/FreeImage/ConversionUINT16.cpp \
    Source/FreeImage/FreeImage.cpp \
    Source/FreeImage/FreeImageIO.cpp \
    Source/FreeImage/GetType.cpp \
    Source/FreeImage/Halftoning.cpp \
    Source/FreeImage/J2KHelper.cpp \
    Source/FreeImage/LFPQuantizer.cpp \
    Source/FreeImage/MemoryIO.cpp \
    Source/FreeImage/MNGHelper.cpp \
    Source/FreeImage/MultiPage.cpp \
    Source/FreeImage/NNQuantizer.cpp \
    Source/FreeImage/PixelAccess.cpp \
    Source/FreeImage/Plugin.cpp \
    Source/FreeImage/PluginBMP.cpp \
    Source/FreeImage/PluginCUT.cpp \
    Source/FreeImage/PluginDDS.cpp \
    Source/FreeImage/PluginEXR.cpp \
    Source/FreeImage/PluginG3.cpp \
    Source/FreeImage/PluginGIF.cpp \
    Source/FreeImage/PluginHDR.cpp \
    Source/FreeImage/PluginICO.cpp \
    Source/FreeImage/PluginIFF.cpp \
    Source/FreeImage/PluginJ2K.cpp \
    Source/FreeImage/PluginJNG.cpp \
    Source/FreeImage/PluginJP2.cpp \
    #Source/FreeImage/PluginJPEG.cpp \
    Source/FreeImage/PluginJXR.cpp \
    Source/FreeImage/PluginKOALA.cpp \
    Source/FreeImage/PluginMNG.cpp \
    Source/FreeImage/PluginPCD.cpp \
    Source/FreeImage/PluginPCX.cpp \
    Source/FreeImage/PluginPFM.cpp \
    Source/FreeImage/PluginPICT.cpp \
    Source/FreeImage/PluginPNG.cpp \
    Source/FreeImage/PluginPNM.cpp \
    Source/FreeImage/PluginPSD.cpp \
    Source/FreeImage/PluginRAS.cpp \
    Source/FreeImage/PluginRAW.cpp \
    Source/FreeImage/PluginSGI.cpp \
    Source/FreeImage/PluginTARGA.cpp \
    Source/FreeImage/PluginTIFF.cpp \
    Source/FreeImage/PluginWBMP.cpp \
    Source/FreeImage/PluginWebP.cpp \
    Source/FreeImage/PluginXBM.cpp \
    Source/FreeImage/PluginXPM.cpp \
    Source/FreeImage/PSDParser.cpp \
    Source/FreeImage/TIFFLogLuv.cpp \
    Source/FreeImage/tmoColorConvert.cpp \
    Source/FreeImage/tmoDrago03.cpp \
    Source/FreeImage/tmoFattal02.cpp \
    Source/FreeImage/tmoReinhard05.cpp \
    Source/FreeImage/ToneMapping.cpp \
    Source/FreeImage/WuQuantizer.cpp \
    Source/FreeImage/ZLibInterface.cpp \
    Source/FreeImageToolkit/Background.cpp \
    Source/FreeImageToolkit/BSplineRotate.cpp \
    Source/FreeImageToolkit/Channels.cpp \
    Source/FreeImageToolkit/ClassicRotate.cpp \
    Source/FreeImageToolkit/Colors.cpp \
    Source/FreeImageToolkit/CopyPaste.cpp \
    Source/FreeImageToolkit/Display.cpp \
    Source/FreeImageToolkit/Flip.cpp \
    Source/FreeImageToolkit/MultigridPoissonSolver.cpp \
    Source/FreeImageToolkit/Rescale.cpp \
    Source/FreeImageToolkit/Resize.cpp \
    Source/LibRawLite/internal/dcraw_common.cpp \
    Source/LibRawLite/internal/dcraw_fileio.cpp \
    Source/LibRawLite/internal/demosaic_packs.cpp \
    Source/LibRawLite/src/libraw_c_api.cpp \
    Source/LibRawLite/src/libraw_cxx.cpp \
    Source/LibRawLite/src/libraw_datastream.cpp \
    Source/Metadata/Exif.cpp \
    Source/Metadata/FIRational.cpp \
    Source/Metadata/FreeImageTag.cpp \
    Source/Metadata/IPTC.cpp \
    Source/Metadata/TagConversion.cpp \
    Source/Metadata/TagLib.cpp \
    Source/Metadata/XTIFF.cpp \
    Source/OpenEXR/Half/half.cpp \
    Source/OpenEXR/Iex/IexBaseExc.cpp \
    Source/OpenEXR/Iex/IexThrowErrnoExc.cpp \
    Source/OpenEXR/IexMath/IexMathFloatExc.cpp \
    Source/OpenEXR/IexMath/IexMathFpu.cpp \
    Source/OpenEXR/IlmImf/b44ExpLogTable.cpp \
    Source/OpenEXR/IlmImf/ImfAcesFile.cpp \
    Source/OpenEXR/IlmImf/ImfAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfB44Compressor.cpp \
    Source/OpenEXR/IlmImf/ImfBoxAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfChannelList.cpp \
    Source/OpenEXR/IlmImf/ImfChannelListAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfChromaticities.cpp \
    Source/OpenEXR/IlmImf/ImfChromaticitiesAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfCompositeDeepScanLine.cpp \
    Source/OpenEXR/IlmImf/ImfCompressionAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfCompressor.cpp \
    Source/OpenEXR/IlmImf/ImfConvert.cpp \
    Source/OpenEXR/IlmImf/ImfCRgbaFile.cpp \
    Source/OpenEXR/IlmImf/ImfDeepCompositing.cpp \
    Source/OpenEXR/IlmImf/ImfDeepFrameBuffer.cpp \
    Source/OpenEXR/IlmImf/ImfDeepImageStateAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfDeepScanLineInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfDeepScanLineInputPart.cpp \
    Source/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.cpp \
    Source/OpenEXR/IlmImf/ImfDeepTiledInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfDeepTiledInputPart.cpp \
    Source/OpenEXR/IlmImf/ImfDeepTiledOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfDeepTiledOutputPart.cpp \
    Source/OpenEXR/IlmImf/ImfDoubleAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfDwaCompressor.cpp \
    Source/OpenEXR/IlmImf/ImfEnvmap.cpp \
    Source/OpenEXR/IlmImf/ImfEnvmapAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfFastHuf.cpp \
    Source/OpenEXR/IlmImf/ImfFloatAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfFloatVectorAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfFrameBuffer.cpp \
    Source/OpenEXR/IlmImf/ImfFramesPerSecond.cpp \
    Source/OpenEXR/IlmImf/ImfGenericInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfGenericOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfHeader.cpp \
    Source/OpenEXR/IlmImf/ImfHuf.cpp \
    Source/OpenEXR/IlmImf/ImfInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfInputPart.cpp \
    Source/OpenEXR/IlmImf/ImfInputPartData.cpp \
    Source/OpenEXR/IlmImf/ImfIntAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfIO.cpp \
    Source/OpenEXR/IlmImf/ImfKeyCode.cpp \
    Source/OpenEXR/IlmImf/ImfKeyCodeAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfLineOrderAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfLut.cpp \
    Source/OpenEXR/IlmImf/ImfMatrixAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfMisc.cpp \
    Source/OpenEXR/IlmImf/ImfMultiPartInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfMultiPartOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfMultiView.cpp \
    Source/OpenEXR/IlmImf/ImfOpaqueAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfOutputPart.cpp \
    Source/OpenEXR/IlmImf/ImfOutputPartData.cpp \
    Source/OpenEXR/IlmImf/ImfPartType.cpp \
    Source/OpenEXR/IlmImf/ImfPizCompressor.cpp \
    Source/OpenEXR/IlmImf/ImfPreviewImage.cpp \
    Source/OpenEXR/IlmImf/ImfPreviewImageAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfPxr24Compressor.cpp \
    Source/OpenEXR/IlmImf/ImfRational.cpp \
    Source/OpenEXR/IlmImf/ImfRationalAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfRgbaFile.cpp \
    Source/OpenEXR/IlmImf/ImfRgbaYca.cpp \
    Source/OpenEXR/IlmImf/ImfRle.cpp \
    Source/OpenEXR/IlmImf/ImfRleCompressor.cpp \
    Source/OpenEXR/IlmImf/ImfScanLineInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfStandardAttributes.cpp \
    Source/OpenEXR/IlmImf/ImfStdIO.cpp \
    Source/OpenEXR/IlmImf/ImfStringAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfStringVectorAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfSystemSpecific.cpp \
    Source/OpenEXR/IlmImf/ImfTestFile.cpp \
    Source/OpenEXR/IlmImf/ImfThreading.cpp \
    Source/OpenEXR/IlmImf/ImfTileDescriptionAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfTiledInputFile.cpp \
    Source/OpenEXR/IlmImf/ImfTiledInputPart.cpp \
    Source/OpenEXR/IlmImf/ImfTiledMisc.cpp \
    Source/OpenEXR/IlmImf/ImfTiledOutputFile.cpp \
    Source/OpenEXR/IlmImf/ImfTiledOutputPart.cpp \
    Source/OpenEXR/IlmImf/ImfTiledRgbaFile.cpp \
    Source/OpenEXR/IlmImf/ImfTileOffsets.cpp \
    Source/OpenEXR/IlmImf/ImfTimeCode.cpp \
    Source/OpenEXR/IlmImf/ImfTimeCodeAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfVecAttribute.cpp \
    Source/OpenEXR/IlmImf/ImfVersion.cpp \
    Source/OpenEXR/IlmImf/ImfWav.cpp \
    Source/OpenEXR/IlmImf/ImfZip.cpp \
    Source/OpenEXR/IlmImf/ImfZipCompressor.cpp \
    Source/OpenEXR/IlmThread/IlmThread.cpp \
    Source/OpenEXR/IlmThread/IlmThreadMutex.cpp \
    Source/OpenEXR/IlmThread/IlmThreadPool.cpp \
    Source/OpenEXR/IlmThread/IlmThreadSemaphore.cpp \
    Source/OpenEXR/Imath/ImathBox.cpp \
    Source/OpenEXR/Imath/ImathColorAlgo.cpp \
    Source/OpenEXR/Imath/ImathFun.cpp \
    Source/OpenEXR/Imath/ImathMatrixAlgo.cpp \
    Source/OpenEXR/Imath/ImathRandom.cpp \
    Source/OpenEXR/Imath/ImathShear.cpp \
    Source/OpenEXR/Imath/ImathVec.cpp \
    Source/FreeImage/FreeImageC.c \
#    Source/LibJPEG/jaricom.c \
#    Source/LibJPEG/jcapimin.c \
#    Source/LibJPEG/jcapistd.c \
#    Source/LibJPEG/jcarith.c \
#    Source/LibJPEG/jccoefct.c \
#    Source/LibJPEG/jccolor.c \
#    Source/LibJPEG/jcdctmgr.c \
#    Source/LibJPEG/jchuff.c \
#    Source/LibJPEG/jcinit.c \
#    Source/LibJPEG/jcmainct.c \
#    Source/LibJPEG/jcmarker.c \
#    Source/LibJPEG/jcmaster.c \
#    Source/LibJPEG/jcomapi.c \
#    Source/LibJPEG/jcparam.c \
#    Source/LibJPEG/jcprepct.c \
#    Source/LibJPEG/jcsample.c \
#    Source/LibJPEG/jctrans.c \
#    Source/LibJPEG/jdapimin.c \
#    Source/LibJPEG/jdapistd.c \
#    Source/LibJPEG/jdarith.c \
#    Source/LibJPEG/jdatadst.c \
#    Source/LibJPEG/jdatasrc.c \
#    Source/LibJPEG/jdcoefct.c \
#    Source/LibJPEG/jdcolor.c \
#    Source/LibJPEG/jddctmgr.c \
#    Source/LibJPEG/jdhuff.c \
#    Source/LibJPEG/jdinput.c \
#    Source/LibJPEG/jdmainct.c \
#    Source/LibJPEG/jdmarker.c \
#    Source/LibJPEG/jdmaster.c \
#    Source/LibJPEG/jdmerge.c \
#    Source/LibJPEG/jdpostct.c \
#    Source/LibJPEG/jdsample.c \
#    Source/LibJPEG/jdtrans.c \
#    Source/LibJPEG/jerror.c \
#    Source/LibJPEG/jfdctflt.c \
#    Source/LibJPEG/jfdctfst.c \
#    Source/LibJPEG/jfdctint.c \
#    Source/LibJPEG/jidctflt.c \
#    Source/LibJPEG/jidctfst.c \
#    Source/LibJPEG/jidctint.c \
#    Source/LibJPEG/jmemmgr.c \
#    Source/LibJPEG/jmemnobs.c \
#    Source/LibJPEG/jquant1.c \
#    Source/LibJPEG/jquant2.c \
#    Source/LibJPEG/jutils.c \
#    Source/LibJPEG/transupp.c \
    Source/LibJXR/image/decode/decode.c \
    Source/LibJXR/image/decode/JXRTranscode.c \
    Source/LibJXR/image/decode/postprocess.c \
    Source/LibJXR/image/decode/segdec.c \
    Source/LibJXR/image/decode/strdec.c \
    Source/LibJXR/image/decode/strdec_x86.c \
    Source/LibJXR/image/decode/strInvTransform.c \
    Source/LibJXR/image/decode/strPredQuantDec.c \
    Source/LibJXR/image/encode/encode.c \
    Source/LibJXR/image/encode/segenc.c \
    Source/LibJXR/image/encode/strenc.c \
    Source/LibJXR/image/encode/strenc_x86.c \
    Source/LibJXR/image/encode/strFwdTransform.c \
    Source/LibJXR/image/encode/strPredQuantEnc.c \
    Source/LibJXR/image/sys/adapthuff.c \
    Source/LibJXR/image/sys/image.c \
    Source/LibJXR/image/sys/strcodec.c \
    Source/LibJXR/image/sys/strPredQuant.c \
    Source/LibJXR/image/sys/strTransform.c \
    Source/LibJXR/jxrgluelib/JXRGlue.c \
    Source/LibJXR/jxrgluelib/JXRGlueJxr.c \
    Source/LibJXR/jxrgluelib/JXRGluePFC.c \
    Source/LibJXR/jxrgluelib/JXRMeta.c \
    Source/LibOpenJPEG/bio.c \
    Source/LibOpenJPEG/cio.c \
    Source/LibOpenJPEG/dwt.c \
    Source/LibOpenJPEG/event.c \
    Source/LibOpenJPEG/function_list.c \
    Source/LibOpenJPEG/imagef.c \
    Source/LibOpenJPEG/invert.c \
    Source/LibOpenJPEG/j2k.c \
    Source/LibOpenJPEG/jp2.c \
    Source/LibOpenJPEG/mct.c \
    Source/LibOpenJPEG/mqc.c \
    Source/LibOpenJPEG/openjpeg.c \
    Source/LibOpenJPEG/opj_clock.c \
    Source/LibOpenJPEG/pi.c \
    Source/LibOpenJPEG/raw.c \
    Source/LibOpenJPEG/t1.c \
    Source/LibOpenJPEG/t2.c \
    Source/LibOpenJPEG/tcd.c \
    Source/LibOpenJPEG/tgt.c \
    Source/LibPNG/png.c \
    Source/LibPNG/pngerror.c \
    Source/LibPNG/pngget.c \
    Source/LibPNG/pngmem.c \
    Source/LibPNG/pngpread.c \
    Source/LibPNG/pngread.c \
    Source/LibPNG/pngrio.c \
    Source/LibPNG/pngrtran.c \
    Source/LibPNG/pngrutil.c \
    Source/LibPNG/pngset.c \
    Source/LibPNG/pngtrans.c \
    Source/LibPNG/pngwio.c \
    Source/LibPNG/pngwrite.c \
    Source/LibPNG/pngwtran.c \
    Source/LibPNG/pngwutil.c \
    Source/LibTIFF4/tif_aux.c \
    Source/LibTIFF4/tif_close.c \
    Source/LibTIFF4/tif_codec.c \
    Source/LibTIFF4/tif_color.c \
    Source/LibTIFF4/tif_compress.c \
    Source/LibTIFF4/tif_dir.c \
    Source/LibTIFF4/tif_dirinfo.c \
    Source/LibTIFF4/tif_dirread.c \
    Source/LibTIFF4/tif_dirwrite.c \
    Source/LibTIFF4/tif_dumpmode.c \
    Source/LibTIFF4/tif_error.c \
    Source/LibTIFF4/tif_extension.c \
    Source/LibTIFF4/tif_fax3.c \
    Source/LibTIFF4/tif_fax3sm.c \
    Source/LibTIFF4/tif_flush.c \
    Source/LibTIFF4/tif_getimage.c \
    #Source/LibTIFF4/tif_jpeg.c \
    Source/LibTIFF4/tif_luv.c \
    Source/LibTIFF4/tif_lzma.c \
    Source/LibTIFF4/tif_lzw.c \
    Source/LibTIFF4/tif_next.c \
    #Source/LibTIFF4/tif_ojpeg.c \
    Source/LibTIFF4/tif_open.c \
    Source/LibTIFF4/tif_packbits.c \
    Source/LibTIFF4/tif_pixarlog.c \
    Source/LibTIFF4/tif_predict.c \
    Source/LibTIFF4/tif_print.c \
    Source/LibTIFF4/tif_read.c \
    Source/LibTIFF4/tif_strip.c \
    Source/LibTIFF4/tif_swab.c \
    Source/LibTIFF4/tif_thunder.c \
    Source/LibTIFF4/tif_tile.c \
    Source/LibTIFF4/tif_version.c \
    Source/LibTIFF4/tif_warning.c \
    Source/LibTIFF4/tif_write.c \
    Source/LibTIFF4/tif_zip.c \
    Source/LibWebP/src/dec/alpha_dec.c \
    Source/LibWebP/src/dec/buffer_dec.c \
    Source/LibWebP/src/dec/frame_dec.c \
    Source/LibWebP/src/dec/idec_dec.c \
    Source/LibWebP/src/dec/io_dec.c \
    Source/LibWebP/src/dec/quant_dec.c \
    Source/LibWebP/src/dec/tree_dec.c \
    Source/LibWebP/src/dec/vp8_dec.c \
    Source/LibWebP/src/dec/vp8l_dec.c \
    Source/LibWebP/src/dec/webp_dec.c \
    Source/LibWebP/src/demux/anim_decode.c \
    Source/LibWebP/src/demux/demux.c \
    Source/LibWebP/src/dsp/alpha_processing.c \
    Source/LibWebP/src/dsp/alpha_processing_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/alpha_processing_neon.c \
    Source/LibWebP/src/dsp/alpha_processing_sse2.c \
    Source/LibWebP/src/dsp/alpha_processing_sse41.c \
    Source/LibWebP/src/dsp/cost.c \
    Source/LibWebP/src/dsp/cost_mips32.c \
    Source/LibWebP/src/dsp/cost_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/cost_sse2.c \
    Source/LibWebP/src/dsp/cpu.c \
    Source/LibWebP/src/dsp/dec.c \
    Source/LibWebP/src/dsp/dec_clip_tables.c \
    Source/LibWebP/src/dsp/dec_mips32.c \
    Source/LibWebP/src/dsp/dec_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/dec_msa.c \
    Source/LibWebP/src/dsp/dec_neon.c \
    Source/LibWebP/src/dsp/dec_sse2.c \
    Source/LibWebP/src/dsp/dec_sse41.c \
    Source/LibWebP/src/dsp/enc.c \
    Source/LibWebP/src/dsp/enc_avx2.c \
    Source/LibWebP/src/dsp/enc_mips32.c \
    Source/LibWebP/src/dsp/enc_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/enc_msa.c \
    Source/LibWebP/src/dsp/enc_neon.c \
    Source/LibWebP/src/dsp/enc_sse2.c \
    Source/LibWebP/src/dsp/enc_sse41.c \
    Source/LibWebP/src/dsp/filters.c \
    Source/LibWebP/src/dsp/filters_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/filters_msa.c \
    Source/LibWebP/src/dsp/filters_neon.c \
    Source/LibWebP/src/dsp/filters_sse2.c \
    Source/LibWebP/src/dsp/lossless.c \
    Source/LibWebP/src/dsp/lossless_enc.c \
    Source/LibWebP/src/dsp/lossless_enc_mips32.c \
    Source/LibWebP/src/dsp/lossless_enc_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/lossless_enc_msa.c \
    Source/LibWebP/src/dsp/lossless_enc_neon.c \
    Source/LibWebP/src/dsp/lossless_enc_sse2.c \
    Source/LibWebP/src/dsp/lossless_enc_sse41.c \
    Source/LibWebP/src/dsp/lossless_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/lossless_msa.c \
    Source/LibWebP/src/dsp/lossless_neon.c \
    Source/LibWebP/src/dsp/lossless_sse2.c \
    Source/LibWebP/src/dsp/rescaler.c \
    Source/LibWebP/src/dsp/rescaler_mips32.c \
    Source/LibWebP/src/dsp/rescaler_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/rescaler_msa.c \
    Source/LibWebP/src/dsp/rescaler_neon.c \
    Source/LibWebP/src/dsp/rescaler_sse2.c \
    Source/LibWebP/src/dsp/ssim.c \
    Source/LibWebP/src/dsp/ssim_sse2.c \
    Source/LibWebP/src/dsp/upsampling.c \
    Source/LibWebP/src/dsp/upsampling_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/upsampling_msa.c \
    Source/LibWebP/src/dsp/upsampling_neon.c \
    Source/LibWebP/src/dsp/upsampling_sse2.c \
    Source/LibWebP/src/dsp/upsampling_sse41.c \
    Source/LibWebP/src/dsp/yuv.c \
    Source/LibWebP/src/dsp/yuv_mips32.c \
    Source/LibWebP/src/dsp/yuv_mips_dsp_r2.c \
    Source/LibWebP/src/dsp/yuv_neon.c \
    Source/LibWebP/src/dsp/yuv_sse2.c \
    Source/LibWebP/src/dsp/yuv_sse41.c \
    Source/LibWebP/src/enc/alpha_enc.c \
    Source/LibWebP/src/enc/analysis_enc.c \
    Source/LibWebP/src/enc/backward_references_cost_enc.c \
    Source/LibWebP/src/enc/backward_references_enc.c \
    Source/LibWebP/src/enc/config_enc.c \
    Source/LibWebP/src/enc/cost_enc.c \
    Source/LibWebP/src/enc/filter_enc.c \
    Source/LibWebP/src/enc/frame_enc.c \
    Source/LibWebP/src/enc/histogram_enc.c \
    Source/LibWebP/src/enc/iterator_enc.c \
    Source/LibWebP/src/enc/near_lossless_enc.c \
    Source/LibWebP/src/enc/picture_csp_enc.c \
    Source/LibWebP/src/enc/picture_enc.c \
    Source/LibWebP/src/enc/picture_psnr_enc.c \
    Source/LibWebP/src/enc/picture_rescale_enc.c \
    Source/LibWebP/src/enc/picture_tools_enc.c \
    Source/LibWebP/src/enc/predictor_enc.c \
    Source/LibWebP/src/enc/quant_enc.c \
    Source/LibWebP/src/enc/syntax_enc.c \
    Source/LibWebP/src/enc/token_enc.c \
    Source/LibWebP/src/enc/tree_enc.c \
    Source/LibWebP/src/enc/vp8l_enc.c \
    Source/LibWebP/src/enc/webp_enc.c \
    Source/LibWebP/src/mux/anim_encode.c \
    Source/LibWebP/src/mux/muxedit.c \
    Source/LibWebP/src/mux/muxinternal.c \
    Source/LibWebP/src/mux/muxread.c \
    Source/LibWebP/src/utils/bit_reader_utils.c \
    Source/LibWebP/src/utils/bit_writer_utils.c \
    Source/LibWebP/src/utils/color_cache_utils.c \
    Source/LibWebP/src/utils/filters_utils.c \
    Source/LibWebP/src/utils/huffman_encode_utils.c \
    Source/LibWebP/src/utils/huffman_utils.c \
    Source/LibWebP/src/utils/quant_levels_dec_utils.c \
    Source/LibWebP/src/utils/quant_levels_utils.c \
    Source/LibWebP/src/utils/random_utils.c \
    Source/LibWebP/src/utils/rescaler_utils.c \
    Source/LibWebP/src/utils/thread_utils.c \
    Source/LibWebP/src/utils/utils.c \
    Source/ZLib/adler32.c \
    Source/ZLib/compress.c \
    Source/ZLib/crc32.c \
    Source/ZLib/deflate.c \
    Source/ZLib/gzclose.c \
    Source/ZLib/gzlib.c \
    Source/ZLib/gzread.c \
    Source/ZLib/gzwrite.c \
    Source/ZLib/infback.c \
    Source/ZLib/inffast.c \
    Source/ZLib/inflate.c \
    Source/ZLib/inftrees.c \
    Source/ZLib/trees.c \
    Source/ZLib/uncompr.c \
    Source/ZLib/zutil.c \
    Source/LibJXR/image/sys/perfTimerANSI.c \
    giflib/cmanagerattributeservice.cpp \
    giflib/dgif_lib.c \
    giflib/egif_lib.c \
    giflib/gif_err.c \
    giflib/gif_font.c \
    giflib/gif_hash.c \
    giflib/gifalloc.c \
    giflib/openbsd-reallocarray.c \
    giflib/quantize.c

HEADERS += \
        unionimage.h \
    Source/FreeImage/J2KHelper.h \
    Source/FreeImage/PSDParser.h \
    Source/FreeImageToolkit/Filters.h \
    Source/FreeImageToolkit/Resize.h \
#    Source/LibJPEG/cderror.h \
#    Source/LibJPEG/cdjpeg.h \
#    Source/LibJPEG/jconfig.h \
#    Source/LibJPEG/jdct.h \
#    Source/LibJPEG/jerror.h \
#    Source/LibJPEG/jinclude.h \
#    Source/LibJPEG/jmemsys.h \
#    Source/LibJPEG/jmorecfg.h \
#    Source/LibJPEG/jpegint.h \
#    Source/LibJPEG/jversion.h \
#    Source/LibJPEG/transupp.h \
    Source/LibJXR/common/include/guiddef.h \
    Source/LibJXR/common/include/wmsal.h \
    Source/LibJXR/common/include/wmspecstring.h \
    Source/LibJXR/common/include/wmspecstrings_adt.h \
    Source/LibJXR/common/include/wmspecstrings_strict.h \
    Source/LibJXR/common/include/wmspecstrings_undef.h \
    Source/LibJXR/image/decode/decode.h \
    Source/LibJXR/image/encode/encode.h \
    Source/LibJXR/image/sys/ansi.h \
    Source/LibJXR/image/sys/common.h \
    Source/LibJXR/image/sys/perfTimer.h \
    Source/LibJXR/image/sys/strcodec.h \
    Source/LibJXR/image/sys/strTransform.h \
    Source/LibJXR/image/sys/windowsmediaphoto.h \
    Source/LibJXR/image/sys/xplatform_image.h \
    Source/LibJXR/image/x86/x86.h \
    Source/LibJXR/jxrgluelib/JXRGlue.h \
    Source/LibJXR/jxrgluelib/JXRMeta.h \
    Source/LibOpenJPEG/bio.h \
    Source/LibOpenJPEG/cidx_manager.h \
    Source/LibOpenJPEG/cio.h \
    Source/LibOpenJPEG/dwt.h \
    Source/LibOpenJPEG/event.h \
    Source/LibOpenJPEG/function_list.h \
    Source/LibOpenJPEG/image.h \
    Source/LibOpenJPEG/indexbox_manager.h \
    Source/LibOpenJPEG/invert.h \
    Source/LibOpenJPEG/j2k.h \
    Source/LibOpenJPEG/jp2.h \
    Source/LibOpenJPEG/mct.h \
    Source/LibOpenJPEG/mqc.h \
    Source/LibOpenJPEG/openjpeg.h \
    Source/LibOpenJPEG/opj_clock.h \
    Source/LibOpenJPEG/opj_codec.h \
    Source/LibOpenJPEG/opj_config.h \
    Source/LibOpenJPEG/opj_config_private.h \
    Source/LibOpenJPEG/opj_includes.h \
    Source/LibOpenJPEG/opj_intmath.h \
    Source/LibOpenJPEG/opj_inttypes.h \
    Source/LibOpenJPEG/opj_malloc.h \
    Source/LibOpenJPEG/opj_stdint.h \
    Source/LibOpenJPEG/pi.h \
    Source/LibOpenJPEG/raw.h \
    Source/LibOpenJPEG/t1.h \
    Source/LibOpenJPEG/t1_luts.h \
    Source/LibOpenJPEG/t2.h \
    Source/LibOpenJPEG/tcd.h \
    Source/LibOpenJPEG/tgt.h \
    Source/LibPNG/png.h \
    Source/LibPNG/pngconf.h \
    Source/LibPNG/pngdebug.h \
    Source/LibPNG/pnginfo.h \
    Source/LibPNG/pnglibconf.h \
    Source/LibPNG/pngpriv.h \
    Source/LibPNG/pngstruct.h \
    Source/LibRawLite/internal/defines.h \
    Source/LibRawLite/internal/libraw_internal_funcs.h \
    Source/LibRawLite/internal/var_defines.h \
    Source/LibRawLite/libraw/libraw.h \
    Source/LibRawLite/libraw/libraw_alloc.h \
    Source/LibRawLite/libraw/libraw_const.h \
    Source/LibRawLite/libraw/libraw_datastream.h \
    Source/LibRawLite/libraw/libraw_internal.h \
    Source/LibRawLite/libraw/libraw_types.h \
    Source/LibRawLite/libraw/libraw_version.h \
    Source/LibTIFF4/t4.h \
    Source/LibTIFF4/tif_config.h \
    Source/LibTIFF4/tif_config.vc.h \
    Source/LibTIFF4/tif_config.wince.h \
    Source/LibTIFF4/tif_dir.h \
    Source/LibTIFF4/tif_fax3.h \
    Source/LibTIFF4/tif_predict.h \
    Source/LibTIFF4/tiff.h \
    Source/LibTIFF4/tiffconf.h \
    Source/LibTIFF4/tiffconf.vc.h \
    Source/LibTIFF4/tiffconf.wince.h \
    Source/LibTIFF4/tiffio.h \
    Source/LibTIFF4/tiffiop.h \
    Source/LibTIFF4/tiffvers.h \
    Source/LibTIFF4/uvcode.h \
    Source/LibWebP/src/dec/alphai_dec.h \
    Source/LibWebP/src/dec/common_dec.h \
    Source/LibWebP/src/dec/vp8_dec.h \
    Source/LibWebP/src/dec/vp8i_dec.h \
    Source/LibWebP/src/dec/vp8li_dec.h \
    Source/LibWebP/src/dec/webpi_dec.h \
    Source/LibWebP/src/dsp/common_sse2.h \
    Source/LibWebP/src/dsp/common_sse41.h \
    Source/LibWebP/src/dsp/dsp.h \
    Source/LibWebP/src/dsp/lossless.h \
    Source/LibWebP/src/dsp/lossless_common.h \
    Source/LibWebP/src/dsp/mips_macro.h \
    Source/LibWebP/src/dsp/msa_macro.h \
    Source/LibWebP/src/dsp/neon.h \
    Source/LibWebP/src/dsp/yuv.h \
    Source/LibWebP/src/enc/backward_references_enc.h \
    Source/LibWebP/src/enc/cost_enc.h \
    Source/LibWebP/src/enc/histogram_enc.h \
    Source/LibWebP/src/enc/vp8i_enc.h \
    Source/LibWebP/src/enc/vp8li_enc.h \
    Source/LibWebP/src/mux/animi.h \
    Source/LibWebP/src/mux/muxi.h \
    Source/LibWebP/src/utils/bit_reader_inl_utils.h \
    Source/LibWebP/src/utils/bit_reader_utils.h \
    Source/LibWebP/src/utils/bit_writer_utils.h \
    Source/LibWebP/src/utils/color_cache_utils.h \
    Source/LibWebP/src/utils/endian_inl_utils.h \
    Source/LibWebP/src/utils/filters_utils.h \
    Source/LibWebP/src/utils/huffman_encode_utils.h \
    Source/LibWebP/src/utils/huffman_utils.h \
    Source/LibWebP/src/utils/quant_levels_dec_utils.h \
    Source/LibWebP/src/utils/quant_levels_utils.h \
    Source/LibWebP/src/utils/random_utils.h \
    Source/LibWebP/src/utils/rescaler_utils.h \
    Source/LibWebP/src/utils/thread_utils.h \
    Source/LibWebP/src/utils/utils.h \
    Source/LibWebP/src/webp/decode.h \
    Source/LibWebP/src/webp/demux.h \
    Source/LibWebP/src/webp/encode.h \
    Source/LibWebP/src/webp/format_constants.h \
    Source/LibWebP/src/webp/mux.h \
    Source/LibWebP/src/webp/mux_types.h \
    Source/LibWebP/src/webp/types.h \
    Source/Metadata/FIRational.h \
    Source/Metadata/FreeImageTag.h \
    Source/OpenEXR/Half/eLut.h \
    Source/OpenEXR/Half/half.h \
    Source/OpenEXR/Half/halfExport.h \
    Source/OpenEXR/Half/halfFunction.h \
    Source/OpenEXR/Half/halfLimits.h \
    Source/OpenEXR/Half/toFloat.h \
    Source/OpenEXR/Iex/Iex.h \
    Source/OpenEXR/Iex/IexBaseExc.h \
    Source/OpenEXR/Iex/IexErrnoExc.h \
    Source/OpenEXR/Iex/IexExport.h \
    Source/OpenEXR/Iex/IexForward.h \
    Source/OpenEXR/Iex/IexMacros.h \
    Source/OpenEXR/Iex/IexMathExc.h \
    Source/OpenEXR/Iex/IexNamespace.h \
    Source/OpenEXR/Iex/IexThrowErrnoExc.h \
    Source/OpenEXR/IexMath/IexMathFloatExc.h \
    Source/OpenEXR/IexMath/IexMathFpu.h \
    Source/OpenEXR/IexMath/IexMathIeeeExc.h \
    Source/OpenEXR/IlmImf/b44ExpLogTable.h \
    Source/OpenEXR/IlmImf/dwaLookups.h \
    Source/OpenEXR/IlmImf/ImfAcesFile.h \
    Source/OpenEXR/IlmImf/ImfArray.h \
    Source/OpenEXR/IlmImf/ImfAttribute.h \
    Source/OpenEXR/IlmImf/ImfAutoArray.h \
    Source/OpenEXR/IlmImf/ImfB44Compressor.h \
    Source/OpenEXR/IlmImf/ImfBoxAttribute.h \
    Source/OpenEXR/IlmImf/ImfChannelList.h \
    Source/OpenEXR/IlmImf/ImfChannelListAttribute.h \
    Source/OpenEXR/IlmImf/ImfCheckedArithmetic.h \
    Source/OpenEXR/IlmImf/ImfChromaticities.h \
    Source/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h \
    Source/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h \
    Source/OpenEXR/IlmImf/ImfCompression.h \
    Source/OpenEXR/IlmImf/ImfCompressionAttribute.h \
    Source/OpenEXR/IlmImf/ImfCompressor.h \
    Source/OpenEXR/IlmImf/ImfConvert.h \
    Source/OpenEXR/IlmImf/ImfCRgbaFile.h \
    Source/OpenEXR/IlmImf/ImfDeepCompositing.h \
    Source/OpenEXR/IlmImf/ImfDeepFrameBuffer.h \
    Source/OpenEXR/IlmImf/ImfDeepImageState.h \
    Source/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h \
    Source/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h \
    Source/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h \
    Source/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h \
    Source/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h \
    Source/OpenEXR/IlmImf/ImfDeepTiledInputFile.h \
    Source/OpenEXR/IlmImf/ImfDeepTiledInputPart.h \
    Source/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h \
    Source/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h \
    Source/OpenEXR/IlmImf/ImfDoubleAttribute.h \
    Source/OpenEXR/IlmImf/ImfDwaCompressor.h \
    Source/OpenEXR/IlmImf/ImfDwaCompressorSimd.h \
    Source/OpenEXR/IlmImf/ImfEnvmap.h \
    Source/OpenEXR/IlmImf/ImfEnvmapAttribute.h \
    Source/OpenEXR/IlmImf/ImfExport.h \
    Source/OpenEXR/IlmImf/ImfFastHuf.h \
    Source/OpenEXR/IlmImf/ImfFloatAttribute.h \
    Source/OpenEXR/IlmImf/ImfFloatVectorAttribute.h \
    Source/OpenEXR/IlmImf/ImfForward.h \
    Source/OpenEXR/IlmImf/ImfFrameBuffer.h \
    Source/OpenEXR/IlmImf/ImfFramesPerSecond.h \
    Source/OpenEXR/IlmImf/ImfGenericInputFile.h \
    Source/OpenEXR/IlmImf/ImfGenericOutputFile.h \
    Source/OpenEXR/IlmImf/ImfHeader.h \
    Source/OpenEXR/IlmImf/ImfHuf.h \
    Source/OpenEXR/IlmImf/ImfInputFile.h \
    Source/OpenEXR/IlmImf/ImfInputPart.h \
    Source/OpenEXR/IlmImf/ImfInputPartData.h \
    Source/OpenEXR/IlmImf/ImfInputStreamMutex.h \
    Source/OpenEXR/IlmImf/ImfInt64.h \
    Source/OpenEXR/IlmImf/ImfIntAttribute.h \
    Source/OpenEXR/IlmImf/ImfIO.h \
    Source/OpenEXR/IlmImf/ImfKeyCode.h \
    Source/OpenEXR/IlmImf/ImfKeyCodeAttribute.h \
    Source/OpenEXR/IlmImf/ImfLineOrder.h \
    Source/OpenEXR/IlmImf/ImfLineOrderAttribute.h \
    Source/OpenEXR/IlmImf/ImfLut.h \
    Source/OpenEXR/IlmImf/ImfMatrixAttribute.h \
    Source/OpenEXR/IlmImf/ImfMisc.h \
    Source/OpenEXR/IlmImf/ImfMultiPartInputFile.h \
    Source/OpenEXR/IlmImf/ImfMultiPartOutputFile.h \
    Source/OpenEXR/IlmImf/ImfMultiView.h \
    Source/OpenEXR/IlmImf/ImfName.h \
    Source/OpenEXR/IlmImf/ImfNamespace.h \
    Source/OpenEXR/IlmImf/ImfOpaqueAttribute.h \
    Source/OpenEXR/IlmImf/ImfOptimizedPixelReading.h \
    Source/OpenEXR/IlmImf/ImfOutputFile.h \
    Source/OpenEXR/IlmImf/ImfOutputPart.h \
    Source/OpenEXR/IlmImf/ImfOutputPartData.h \
    Source/OpenEXR/IlmImf/ImfOutputStreamMutex.h \
    Source/OpenEXR/IlmImf/ImfPartHelper.h \
    Source/OpenEXR/IlmImf/ImfPartType.h \
    Source/OpenEXR/IlmImf/ImfPixelType.h \
    Source/OpenEXR/IlmImf/ImfPizCompressor.h \
    Source/OpenEXR/IlmImf/ImfPreviewImage.h \
    Source/OpenEXR/IlmImf/ImfPreviewImageAttribute.h \
    Source/OpenEXR/IlmImf/ImfPxr24Compressor.h \
    Source/OpenEXR/IlmImf/ImfRational.h \
    Source/OpenEXR/IlmImf/ImfRationalAttribute.h \
    Source/OpenEXR/IlmImf/ImfRgba.h \
    Source/OpenEXR/IlmImf/ImfRgbaFile.h \
    Source/OpenEXR/IlmImf/ImfRgbaYca.h \
    Source/OpenEXR/IlmImf/ImfRle.h \
    Source/OpenEXR/IlmImf/ImfRleCompressor.h \
    Source/OpenEXR/IlmImf/ImfScanLineInputFile.h \
    Source/OpenEXR/IlmImf/ImfSimd.h \
    Source/OpenEXR/IlmImf/ImfStandardAttributes.h \
    Source/OpenEXR/IlmImf/ImfStdIO.h \
    Source/OpenEXR/IlmImf/ImfStringAttribute.h \
    Source/OpenEXR/IlmImf/ImfStringVectorAttribute.h \
    Source/OpenEXR/IlmImf/ImfSystemSpecific.h \
    Source/OpenEXR/IlmImf/ImfTestFile.h \
    Source/OpenEXR/IlmImf/ImfThreading.h \
    Source/OpenEXR/IlmImf/ImfTileDescription.h \
    Source/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h \
    Source/OpenEXR/IlmImf/ImfTiledInputFile.h \
    Source/OpenEXR/IlmImf/ImfTiledInputPart.h \
    Source/OpenEXR/IlmImf/ImfTiledMisc.h \
    Source/OpenEXR/IlmImf/ImfTiledOutputFile.h \
    Source/OpenEXR/IlmImf/ImfTiledOutputPart.h \
    Source/OpenEXR/IlmImf/ImfTiledRgbaFile.h \
    Source/OpenEXR/IlmImf/ImfTileOffsets.h \
    Source/OpenEXR/IlmImf/ImfTimeCode.h \
    Source/OpenEXR/IlmImf/ImfTimeCodeAttribute.h \
    Source/OpenEXR/IlmImf/ImfVecAttribute.h \
    Source/OpenEXR/IlmImf/ImfVersion.h \
    Source/OpenEXR/IlmImf/ImfWav.h \
    Source/OpenEXR/IlmImf/ImfXdr.h \
    Source/OpenEXR/IlmImf/ImfZip.h \
    Source/OpenEXR/IlmImf/ImfZipCompressor.h \
    Source/OpenEXR/IlmThread/IlmThread.h \
    Source/OpenEXR/IlmThread/IlmThreadExport.h \
    Source/OpenEXR/IlmThread/IlmThreadForward.h \
    Source/OpenEXR/IlmThread/IlmThreadMutex.h \
    Source/OpenEXR/IlmThread/IlmThreadNamespace.h \
    Source/OpenEXR/IlmThread/IlmThreadPool.h \
    Source/OpenEXR/IlmThread/IlmThreadSemaphore.h \
    Source/OpenEXR/Imath/ImathBox.h \
    Source/OpenEXR/Imath/ImathBoxAlgo.h \
    Source/OpenEXR/Imath/ImathColor.h \
    Source/OpenEXR/Imath/ImathColorAlgo.h \
    Source/OpenEXR/Imath/ImathEuler.h \
    Source/OpenEXR/Imath/ImathExc.h \
    Source/OpenEXR/Imath/ImathExport.h \
    Source/OpenEXR/Imath/ImathForward.h \
    Source/OpenEXR/Imath/ImathFrame.h \
    Source/OpenEXR/Imath/ImathFrustum.h \
    Source/OpenEXR/Imath/ImathFrustumTest.h \
    Source/OpenEXR/Imath/ImathFun.h \
    Source/OpenEXR/Imath/ImathGL.h \
    Source/OpenEXR/Imath/ImathGLU.h \
    Source/OpenEXR/Imath/ImathHalfLimits.h \
    Source/OpenEXR/Imath/ImathInt64.h \
    Source/OpenEXR/Imath/ImathInterval.h \
    Source/OpenEXR/Imath/ImathLimits.h \
    Source/OpenEXR/Imath/ImathLine.h \
    Source/OpenEXR/Imath/ImathLineAlgo.h \
    Source/OpenEXR/Imath/ImathMath.h \
    Source/OpenEXR/Imath/ImathMatrix.h \
    Source/OpenEXR/Imath/ImathMatrixAlgo.h \
    Source/OpenEXR/Imath/ImathNamespace.h \
    Source/OpenEXR/Imath/ImathPlane.h \
    Source/OpenEXR/Imath/ImathPlatform.h \
    Source/OpenEXR/Imath/ImathQuat.h \
    Source/OpenEXR/Imath/ImathRandom.h \
    Source/OpenEXR/Imath/ImathRoots.h \
    Source/OpenEXR/Imath/ImathShear.h \
    Source/OpenEXR/Imath/ImathSphere.h \
    Source/OpenEXR/Imath/ImathVec.h \
    Source/OpenEXR/Imath/ImathVecAlgo.h \
    Source/OpenEXR/IlmBaseConfig.h \
    Source/OpenEXR/OpenEXRConfig.h \
    Source/ZLib/crc32.h \
    Source/ZLib/deflate.h \
    Source/ZLib/gzguts.h \
    Source/ZLib/inffast.h \
    Source/ZLib/inffixed.h \
    Source/ZLib/inflate.h \
    Source/ZLib/inftrees.h \
    Source/ZLib/trees.h \
    Source/ZLib/zconf.h \
    Source/ZLib/zlib.h \
    Source/ZLib/zutil.h \
    Source/CacheFile.h \
    Source/FreeImage.h \
    Source/FreeImageIO.h \
    Source/MapIntrospector.h \
    Source/Plugin.h \
    Source/Quantizers.h \
    Source/ToneMapping.h \
    Source/Utilities.h \
    wrapper/Wrapper/FreeImage.NET/cpp/FreeImageIO/FreeImageIO.Net.h \
    wrapper/Wrapper/FreeImage.NET/cpp/FreeImageIO/resource.h \
    wrapper/Wrapper/FreeImage.NET/cpp/FreeImageIO/Stdafx.h \
    wrapper/Wrapper/FreeImagePlus/test/fipTest.h \
    wrapper/Wrapper/FreeImagePlus/FreeImagePlus.h \
    unionimage.h \
#    Source/LibJPEG/jpeglib.h
    giflib/cmanagerattributeservice.h \
    giflib/gif_hash.h \
    giflib/gif_lib.h \
    giflib/gif_lib_private.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES +=
