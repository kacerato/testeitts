.class public abstract Lcom/jme3/texture/image/ImageRaster;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/jme3/texture/Image;)Lcom/jme3/texture/image/ImageRaster;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, v0, v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Use constructor that takes slices argument to read from multislice image"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/jme3/texture/Image;I)Lcom/jme3/texture/image/ImageRaster;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jme3/texture/image/DefaultImageRaster;-><init>(Lcom/jme3/texture/Image;IIZ)V

    return-object v0
.end method

.method public static isSupported(Lcom/jme3/texture/Image$Format;)Z
    .locals 0

    invoke-static {p0}, Lcom/jme3/texture/image/ImageCodec;->isSupported(Lcom/jme3/texture/Image$Format;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getHeight()I
.end method

.method public getPixel(II)Lcom/jme3/math/ColorRGBA;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
.end method

.method public abstract getWidth()I
.end method

.method public abstract setPixel(IILcom/jme3/math/ColorRGBA;)V
.end method
