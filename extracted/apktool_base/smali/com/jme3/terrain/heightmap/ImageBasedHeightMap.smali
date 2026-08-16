.class public Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# instance fields
.field private backwardsCompScale:F

.field protected colorImage:Lcom/jme3/texture/Image;


# direct methods
.method public constructor <init>(Lcom/jme3/texture/Image;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    iput v0, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/texture/Image;F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 5
    iput v0, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    .line 6
    iput-object p1, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    .line 7
    iput p2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    return-void
.end method


# virtual methods
.method public calculateHeight(FFF)F
    .locals 4

    .line 1
    const-wide v0, 0x3fd322d0e5604189L    # 0.299

    float-to-double v2, p1

    mul-double/2addr v2, v0

    const-wide v0, 0x3fe2c8b439581062L    # 0.587

    float-to-double p1, p2

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    const-wide p1, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v0, p3

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public calculateHeight(Lcom/jme3/math/ColorRGBA;)F
    .locals 6

    .line 2
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    float-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->g:F

    float-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->b:F

    float-to-double v2, p1

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public getImageRaster()Lcom/jme3/texture/image/ImageRaster;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    invoke-static {v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;)Lcom/jme3/texture/image/ImageRaster;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->load(ZZ)Z

    move-result v0

    return v0
.end method

.method public load(ZZ)Z
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 4
    iput v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 5
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->getImageRaster()Lcom/jme3/texture/image/ImageRaster;

    move-result-object v2

    mul-int v3, v0, v1

    .line 6
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    .line 7
    new-instance v3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    move p2, v4

    move v6, p2

    :goto_0
    if-ge p2, v1, :cond_5

    if-eqz p1, :cond_0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_1

    .line 8
    iget-object v8, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v2, v7, p2, v3}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->calculateHeight(Lcom/jme3/math/ColorRGBA;)F

    move-result v10

    iget v11, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    mul-float/2addr v10, v11

    aput v10, v8, v6

    add-int/lit8 v7, v7, -0x1

    move v6, v9

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_2
    if-ge v7, v0, :cond_1

    .line 9
    iget-object v8, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v2, v7, p2, v3}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->calculateHeight(Lcom/jme3/math/ColorRGBA;)F

    move-result v10

    iget v11, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    mul-float/2addr v10, v11

    aput v10, v8, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v5

    move p2, v4

    :goto_3
    if-ltz v1, :cond_5

    if-eqz p1, :cond_3

    add-int/lit8 v6, v0, -0x1

    :goto_4
    if-ltz v6, :cond_4

    .line 10
    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v2, v6, v1, v3}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->calculateHeight(Lcom/jme3/math/ColorRGBA;)F

    move-result v9

    iget v10, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    mul-float/2addr v9, v10

    aput v9, v7, p2

    add-int/lit8 v6, v6, -0x1

    move p2, v8

    goto :goto_4

    :cond_3
    move v6, v4

    :goto_5
    if-ge v6, v0, :cond_4

    .line 11
    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v2, v6, v1, v3}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->calculateHeight(Lcom/jme3/math/ColorRGBA;)F

    move-result v9

    iget v10, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->backwardsCompScale:F

    mul-float/2addr v9, v10

    aput v9, v7, p2

    add-int/lit8 v6, v6, 0x1

    move p2, v8

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    return v5

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imageWidth: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != imageHeight: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImage(Lcom/jme3/texture/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;->colorImage:Lcom/jme3/texture/Image;

    return-void
.end method
