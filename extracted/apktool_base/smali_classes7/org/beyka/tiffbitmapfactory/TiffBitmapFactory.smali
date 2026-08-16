.class public Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;,
        Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tiff"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tifffactory"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->c(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->c(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "THREAD"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->nativeDecodePath(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsed ms: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static native closeFd(I)V
.end method

.method public static d(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->f(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->f(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static f(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting decode descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "THREAD"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->nativeDecodeFD(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsed ms: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for descriptor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->i(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->h(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/DecodeTiffException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "THREAD"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;->nativeDecodePath(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsed ms: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static native nativeDecodeFD(ILorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodePath(Ljava/lang/String;Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$Options;Lorg/beyka/tiffbitmapfactory/IProgressListener;)Landroid/graphics/Bitmap;
.end method
