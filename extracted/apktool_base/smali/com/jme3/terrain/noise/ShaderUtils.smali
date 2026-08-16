.class public Lcom/jme3/terrain/noise/ShaderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final abs(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method public static final bias(FF)F
    .locals 4

    float-to-double v0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final boxstep(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, p1}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public static final c2i([F)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x4

    const/high16 v2, 0x43800000    # 256.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget v0, p0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    const/4 v1, 0x0

    aget v1, p0, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget p0, p0, v1

    mul-float/2addr p0, v2

    float-to-int p0, p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final calcRotationMatrix(FFF)[[F
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float p0, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float p1, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float p2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aget-object v7, v1, v4

    mul-float v8, p1, p2

    aput v8, v7, v4

    neg-float v8, p1

    mul-float/2addr v8, v6

    aput v8, v7, v2

    aput v5, v7, v0

    aget-object v7, v1, v2

    mul-float v8, v3, v5

    mul-float/2addr v8, p2

    mul-float v9, p0, v6

    add-float/2addr v8, v9

    aput v8, v7, v4

    neg-float v8, v3

    mul-float v9, v8, v5

    mul-float/2addr v9, v6

    mul-float v10, p0, p2

    add-float/2addr v9, v10

    aput v9, v7, v2

    mul-float/2addr v8, p1

    aput v8, v7, v0

    aget-object v7, v1, v0

    neg-float v8, p0

    mul-float/2addr v8, v5

    mul-float/2addr v8, p2

    mul-float v9, v3, v6

    add-float/2addr v8, v9

    aput v8, v7, v4

    mul-float/2addr v5, p0

    mul-float/2addr v5, v6

    mul-float/2addr v3, p2

    add-float/2addr v5, v3

    aput v5, v7, v2

    mul-float/2addr p0, p1

    aput p0, v7, v0

    return-object v1
.end method

.method public static final ceil(F)F
    .locals 2

    float-to-int v0, p0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    int-to-float v1, v0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public static final clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static final floor(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    float-to-int p0, p0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method public static floor([F)[F
    .locals 3

    .line 2
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, p0, v1

    invoke-static {v2}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static frac(F)F
    .locals 1

    invoke-static {p0}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public static final gain(FF)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    sub-float/2addr v1, p0

    mul-float/2addr p1, v2

    invoke-static {v1, p1}, Lcom/jme3/terrain/noise/ShaderUtils;->bias(FF)F

    move-result p0

    div-float/2addr p0, v2

    goto :goto_0

    :cond_0
    sub-float p0, v1, p0

    mul-float/2addr p1, v2

    sub-float p1, v2, p1

    invoke-static {p0, p1}, Lcom/jme3/terrain/noise/ShaderUtils;->bias(FF)F

    move-result p0

    div-float/2addr p0, v2

    sub-float p0, v1, p0

    :goto_0
    return p0
.end method

.method public static final gammaCorrection(FF)F
    .locals 2

    float-to-double v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final getImageDataFromImage(Ljava/awt/image/BufferedImage;)Ljava/nio/ByteBuffer;
    .locals 4

    new-instance v0, Ljava/awt/image/BufferedImage;

    const/16 v1, 0x40

    const/4 v2, 0x2

    const/16 v3, 0x80

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p0

    check-cast p0, Ljava/awt/image/DataBufferInt;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final i2c(I)[F
    .locals 5

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 v3, p0, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v4, -0x1000000

    and-int/2addr p0, v4

    int-to-float p0, p0

    div-float/2addr p0, v1

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p0, v1, v0

    return-object v1
.end method

.method public static final length(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final length([F)F
    .locals 4

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final min(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final mix(FFF)F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static final mix(IIF)I
    .locals 1

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    int-to-float p0, p0

    mul-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static final mix(Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color;
    .locals 6

    .line 3
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(IIF)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-static {v1, v2, v3}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 5
    invoke-static {v4, v2, v3}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result v4

    float-to-int v4, v4

    .line 6
    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(IIF)I

    move-result p0

    int-to-float p0, p0

    .line 7
    invoke-static {p0, v2, v3}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, v4, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0
.end method

.method public static final mix([F[FF)[F
    .locals 5

    const/4 v0, 0x0

    .line 8
    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result v1

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    invoke-static {v3, v4, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result v3

    const/4 v4, 0x2

    aget p0, p0, v4

    aget p1, p1, v4

    invoke-static {p0, p1, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result p0

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p0, p1, v4

    return-object p1
.end method

.method public static final mod(FF)F
    .locals 1

    div-float v0, p0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static final normalize([F)[F
    .locals 7

    invoke-static {p0}, Lcom/jme3/terrain/noise/ShaderUtils;->length([F)F

    move-result v0

    array-length v1, p0

    new-array v1, v1, [F

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    div-float/2addr v5, v0

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final pulse(FFF)F
    .locals 0

    invoke-static {p0, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->step(FF)F

    move-result p0

    invoke-static {p1, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->step(FF)F

    move-result p1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static final rotate([F[[F)[F
    .locals 9

    const/4 v0, 0x0

    aget v1, p0, v0

    aget-object v2, p1, v0

    aget v3, v2, v0

    mul-float/2addr v3, v1

    const/4 v4, 0x1

    aget v5, p0, v4

    aget v6, v2, v4

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    const/4 v6, 0x2

    aget p0, p0, v6

    aget v2, v2, v6

    mul-float/2addr v2, p0

    add-float/2addr v3, v2

    aget-object v2, p1, v4

    aget v7, v2, v0

    mul-float/2addr v7, v1

    aget v8, v2, v4

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aget v2, v2, v6

    mul-float/2addr v2, p0

    add-float/2addr v7, v2

    aget-object p1, p1, v6

    aget v2, p1, v0

    mul-float/2addr v1, v2

    aget v2, p1, v4

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    aget p1, p1, v6

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    const/4 p0, 0x3

    new-array p0, p0, [F

    aput v3, p0, v0

    aput v7, p0, v4

    aput v1, p0, v6

    return-object p0
.end method

.method public static final sinValue(FFFF)F
    .locals 11

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr v0, p3

    const/4 p3, 0x0

    invoke-static {v0, p3, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p2

    move v0, p3

    :goto_0
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    float-to-double v5, p2

    mul-double/2addr v5, v3

    cmpg-double v3, v1, v5

    const/high16 v4, 0x40000000    # 2.0f

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v3, :cond_0

    float-to-double v7, v0

    mul-double/2addr v5, v1

    float-to-double v9, p0

    mul-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v5, v1

    add-double/2addr v7, v5

    double-to-float v0, v7

    mul-float/2addr p1, v4

    goto :goto_0

    :cond_0
    sub-float p1, p2, p1

    mul-float/2addr p1, v4

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p3, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p1

    float-to-double p2, v0

    float-to-double v3, p1

    mul-double/2addr v5, v1

    float-to-double p0, p0

    mul-double/2addr v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    div-double/2addr v3, v1

    add-double/2addr p2, v3

    double-to-float p0, p2

    return p0
.end method

.method public static final smoothstep(FFF)F
    .locals 1

    cmpg-float v0, p2, p0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    mul-float p0, p2, p2

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    const/high16 p1, 0x40400000    # 3.0f

    sub-float/2addr p1, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public static final spline(F[F)F
    .locals 10

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p0, v1, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int v0, p0

    .line 3
    array-length v3, p1

    add-int/lit8 v3, v3, -0x3

    if-lt v0, v3, :cond_0

    .line 4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    :cond_0
    int-to-float v3, v0

    sub-float/2addr p0, v3

    .line 5
    aget v3, p1, v0

    const/high16 v4, -0x41000000    # -0.5f

    mul-float v5, v4, v3

    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    add-int/lit8 v7, v0, 0x2

    aget v7, p1, v7

    const/high16 v8, -0x40400000    # -1.5f

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    add-int/lit8 v0, v0, 0x3

    aget p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v8, v0, p1

    add-float/2addr v5, v8

    mul-float v8, v2, v3

    const/high16 v9, -0x3fe00000    # -2.5f

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    mul-float v9, v4, p1

    add-float/2addr v8, v9

    mul-float/2addr v4, v3

    mul-float v9, v1, v6

    add-float/2addr v4, v9

    mul-float/2addr v0, v7

    add-float/2addr v4, v0

    mul-float v0, v1, p1

    add-float/2addr v4, v0

    mul-float/2addr v3, v1

    mul-float/2addr v2, v6

    add-float/2addr v3, v2

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    mul-float/2addr v5, p0

    add-float/2addr v5, v8

    mul-float/2addr v5, p0

    add-float/2addr v5, v4

    mul-float/2addr v5, p0

    add-float/2addr v5, v3

    return v5

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Spline has too few knots."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final spline(F[[F)[F
    .locals 3

    .line 7
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 9
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->spline(F[F)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final step(FF)F
    .locals 0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method
