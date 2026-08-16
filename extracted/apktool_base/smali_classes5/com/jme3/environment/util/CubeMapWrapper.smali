.class public Lcom/jme3/environment/util/CubeMapWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final image:Lcom/jme3/texture/Image;

.field private mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

.field private final raster:Lcom/jme3/texture/image/DefaultImageRaster;

.field private sizes:[I

.field private final tmpColor:Lcom/jme3/math/ColorRGBA;

.field private final uvs:Lcom/jme3/math/Vector2f;


# direct methods
.method public constructor <init>(Lcom/jme3/texture/TextureCubeMap;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    new-instance v3, Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-direct {v3, p1, v2}, Lcom/jme3/texture/image/MipMapImageRaster;-><init>(Lcom/jme3/texture/Image;I)V

    iput-object v3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    move p1, v2

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    iget-object v4, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    shr-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result p1

    aput p1, v0, v2

    :cond_1
    new-instance p1, Lcom/jme3/texture/image/DefaultImageRaster;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-direct {p1, v0, v2, v2, v2}, Lcom/jme3/texture/image/DefaultImageRaster;-><init>(Lcom/jme3/texture/Image;IIZ)V

    iput-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    return-void
.end method


# virtual methods
.method public getPixel(IIIILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    .line 25
    new-instance p5, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p5}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {v0, p3}, Lcom/jme3/texture/image/MipMapImageRaster;->setSlice(I)V

    .line 27
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p3, p4}, Lcom/jme3/texture/image/MipMapImageRaster;->setMipLevel(I)V

    .line 28
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p3, p1, p2, p5}, Lcom/jme3/texture/image/MipMapImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This cube map has no mip maps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixel(IIILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1

    if-nez p4, :cond_0

    .line 21
    new-instance p4, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p4}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {v0, p3}, Lcom/jme3/texture/image/DefaultImageRaster;->setSlice(I)V

    .line 23
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {p3, p1, p2, p4}, Lcom/jme3/texture/image/DefaultImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public getPixel(Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 6
    new-instance p3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    :cond_0
    float-to-int v0, p2

    .line 7
    invoke-static {p2}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v0

    sub-float/2addr p2, v2

    .line 8
    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    sget-object v4, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-static {p1, v2, v3, v4}, Lcom/jme3/environment/util/EnvMapUtils;->getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {v3, v2}, Lcom/jme3/texture/image/MipMapImageRaster;->setSlice(I)V

    .line 10
    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {v2, v0}, Lcom/jme3/texture/image/MipMapImageRaster;->setMipLevel(I)V

    .line 11
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    iget v3, v2, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v3, v3

    iget v2, v2, Lcom/jme3/math/Vector2f;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v2, p3}, Lcom/jme3/texture/image/MipMapImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 12
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    invoke-static {p1, v0, v2, v4}, Lcom/jme3/environment/util/EnvMapUtils;->getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I

    move-result p1

    .line 13
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/image/MipMapImageRaster;->setSlice(I)V

    .line 14
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p1, v1}, Lcom/jme3/texture/image/MipMapImageRaster;->setMipLevel(I)V

    .line 15
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    iget v1, v0, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v1, v1

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    float-to-int v0, v0

    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, v1, v0, v2}, Lcom/jme3/texture/image/MipMapImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 16
    iget p1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    iget v0, v0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {p2, p1, v0}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->r:F

    .line 17
    iget p1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    iget v0, v0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {p2, p1, v0}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->g:F

    .line 18
    iget p1, p3, Lcom/jme3/math/ColorRGBA;->b:F

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    iget v0, v0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {p2, p1, v0}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->b:F

    .line 19
    iget p1, p3, Lcom/jme3/math/ColorRGBA;->a:F

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->tmpColor:Lcom/jme3/math/ColorRGBA;

    iget v0, v0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {p2, p1, v0}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result p1

    iput p1, p3, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p3

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This cube map has no mip maps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p2}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-static {p1, v0, v1, v2}, Lcom/jme3/environment/util/EnvMapUtils;->getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/image/DefaultImageRaster;->setSlice(I)V

    .line 4
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    iget v1, v0, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v1, v1

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/jme3/texture/image/DefaultImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object p1

    return-object p1
.end method

.method public initMipMaps(I)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    if-gt p1, v0, :cond_2

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v4}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    mul-int/2addr v4, v4

    iget-object v6, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v6

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    aput v4, v5, v2

    iget-object v4, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    move p1, v1

    :goto_1
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/jme3/texture/image/MipMapImageRaster;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-direct {p1, v0, v1}, Lcom/jme3/texture/image/MipMapImageRaster;-><init>(Lcom/jme3/texture/Image;I)V

    iput-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max mip map number for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cube map is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(IIIILcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p3}, Lcom/jme3/texture/image/MipMapImageRaster;->setSlice(I)V

    .line 14
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p3, p4}, Lcom/jme3/texture/image/MipMapImageRaster;->setMipLevel(I)V

    .line 15
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p3, p1, p2, p5}, Lcom/jme3/texture/image/MipMapImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This cube map has no mip maps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(IIILcom/jme3/math/ColorRGBA;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {v0, p3}, Lcom/jme3/texture/image/DefaultImageRaster;->setSlice(I)V

    .line 11
    iget-object p3, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {p3, p1, p2, p4}, Lcom/jme3/texture/image/DefaultImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public setPixel(Lcom/jme3/math/Vector3f;ILcom/jme3/math/ColorRGBA;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-static {p1, v0, v1, v2}, Lcom/jme3/environment/util/EnvMapUtils;->getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/image/MipMapImageRaster;->setSlice(I)V

    .line 7
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/image/MipMapImageRaster;->setMipLevel(I)V

    .line 8
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->mipMapRaster:Lcom/jme3/texture/image/MipMapImageRaster;

    iget-object p2, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    iget v0, p2, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v0, v0

    iget p2, p2, Lcom/jme3/math/Vector2f;->y:F

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lcom/jme3/texture/image/MipMapImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This cube map has no mip maps"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPixel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->sizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-static {p1, v0, v1, v2}, Lcom/jme3/environment/util/EnvMapUtils;->getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/image/DefaultImageRaster;->setSlice(I)V

    .line 3
    iget-object p1, p0, Lcom/jme3/environment/util/CubeMapWrapper;->raster:Lcom/jme3/texture/image/DefaultImageRaster;

    iget-object v0, p0, Lcom/jme3/environment/util/CubeMapWrapper;->uvs:Lcom/jme3/math/Vector2f;

    iget v1, v0, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v1, v1

    iget v0, v0, Lcom/jme3/math/Vector2f;->y:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/jme3/texture/image/DefaultImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    return-void
.end method
