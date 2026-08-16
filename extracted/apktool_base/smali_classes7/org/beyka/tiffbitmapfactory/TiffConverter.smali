.class public Lorg/beyka/tiffbitmapfactory/TiffConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tiff"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tiffconverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffConverter$a;->a:[I

    invoke-static {p0}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->getImageTypeFd(I)Lorg/beyka/tiffbitmapfactory/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertBmpTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertPngTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertJpgTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->c(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    sget-object v0, Lorg/beyka/tiffbitmapfactory/TiffConverter$a;->a:[I

    invoke-static {p0}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->getImageType(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertBmpTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertPngTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lorg/beyka/tiffbitmapfactory/TiffConverter;->convertJpgTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public static native closeFd(I)V
.end method

.method public static native convertBmpTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertBmpTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertJpgTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertJpgTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertPngTiff(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertPngTiffFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffBmp(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffBmpFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffJpg(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffJpgFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffPng(Ljava/lang/String;Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native convertTiffPngFd(IILorg/beyka/tiffbitmapfactory/TiffConverter$ConverterOptions;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation
.end method

.method public static native getImageType(Ljava/lang/String;)Lorg/beyka/tiffbitmapfactory/ImageFormat;
.end method

.method public static native getImageTypeFd(I)Lorg/beyka/tiffbitmapfactory/ImageFormat;
.end method
