.class public Lorg/beyka/tiffbitmapfactory/TiffSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "tiff"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tiffsaver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->b(ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static b(ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, p2, v1}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->save(Ljava/lang/String;ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;Landroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->f(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static native closeFd(I)V
.end method

.method public static d(Ljava/io/File;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->f(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;ILandroid/graphics/Bitmap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    new-instance p1, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {p1}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p2, p1}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->f(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->save(Ljava/lang/String;ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;Z)Z

    move-result p0

    return p0
.end method

.method public static g(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->h(ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static h(ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->save(Ljava/lang/String;ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;Z)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/io/File;Landroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;,
            Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->l(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/io/File;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->l(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    new-instance v0, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;

    invoke-direct {v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->l(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/beyka/tiffbitmapfactory/exceptions/CantOpenFileException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lorg/beyka/tiffbitmapfactory/TiffSaver;->save(Ljava/lang/String;ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;Z)Z

    move-result p0

    return p0
.end method

.method private static synchronized native save(Ljava/lang/String;ILandroid/graphics/Bitmap;Lorg/beyka/tiffbitmapfactory/TiffSaver$SaveOptions;Z)Z
.end method
