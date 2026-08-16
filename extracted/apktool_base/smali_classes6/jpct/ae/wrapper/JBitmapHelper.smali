.class public Ljpct/ae/wrapper/JBitmapHelper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctBitmapHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/BitmapHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/util/BitmapHelper;->convert(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rescale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/threed/jpct/util/BitmapHelper;->rescale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/BitmapHelper;

    invoke-direct {v0}, Lcom/threed/jpct/util/BitmapHelper;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JBitmapHelper;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public loadImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/threed/jpct/util/BitmapHelper;->loadImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "JPCT"

    const-string v0, "Exception on loadImage@JBitmapHelper, Invalid InputStream!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
