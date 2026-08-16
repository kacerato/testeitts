.class public Lcom/jme3/terrain/noise/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rgba:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/terrain/noise/Color;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    invoke-static {p1, v1, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p1

    const/4 v3, 0x0

    aput p1, v0, v3

    const/4 p1, 0x1

    .line 14
    invoke-static {p2, v1, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x2

    .line 15
    invoke-static {p3, v1, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    .line 16
    invoke-static {p4, v1, v2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p2

    aput p2, v0, p1

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/terrain/noise/Color;-><init>(IFFF)V

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 9

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 19
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v2, 0x3

    .line 20
    aput p4, v1, v2

    const/4 p4, 0x0

    cmpl-float p4, p2, p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p4, :cond_0

    .line 21
    aput p3, v1, v3

    .line 22
    aput p3, v1, v5

    .line 23
    aput p3, v1, v4

    return-void

    :cond_0
    int-to-float p1, p1

    const/high16 p4, 0x42700000    # 60.0f

    div-float/2addr p1, p4

    .line 24
    invoke-static {p1}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result p4

    int-to-float v6, p4

    sub-float/2addr p1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, p2

    mul-float/2addr v7, p3

    mul-float v8, p2, p1

    sub-float v8, v6, v8

    mul-float/2addr v8, p3

    sub-float p1, v6, p1

    mul-float/2addr p2, p1

    sub-float/2addr v6, p2

    mul-float/2addr v6, p3

    if-nez p4, :cond_1

    .line 25
    aput p3, v1, v3

    .line 26
    aput v6, v1, v5

    .line 27
    aput v7, v1, v4

    goto :goto_0

    :cond_1
    if-ne p4, v5, :cond_2

    .line 28
    aput v8, v1, v3

    .line 29
    aput p3, v1, v5

    .line 30
    aput v7, v1, v4

    goto :goto_0

    :cond_2
    if-ne p4, v4, :cond_3

    .line 31
    aput v7, v1, v3

    .line 32
    aput p3, v1, v5

    .line 33
    aput v6, v1, v4

    goto :goto_0

    :cond_3
    if-ne p4, v2, :cond_4

    .line 34
    aput v7, v1, v3

    .line 35
    aput v8, v1, v5

    .line 36
    aput p3, v1, v4

    goto :goto_0

    :cond_4
    if-ne p4, v0, :cond_5

    .line 37
    aput v6, v1, v3

    .line 38
    aput v7, v1, v5

    .line 39
    aput p3, v1, v4

    goto :goto_0

    .line 40
    :cond_5
    aput p3, v1, v3

    .line 41
    aput v7, v1, v5

    .line 42
    aput v8, v1, v4

    :goto_0
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xff

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/terrain/noise/Color;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    .line 6
    aput p1, v0, v2

    and-int/lit16 p1, p2, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 p2, 0x1

    .line 7
    aput p1, v0, p2

    and-int/lit16 p1, p3, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 p2, 0x2

    .line 8
    aput p1, v0, p2

    and-int/lit16 p1, p4, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    const/4 p2, 0x3

    .line 9
    aput p1, v0, p2

    return-void
.end method


# virtual methods
.method public toGrayscale()Lcom/jme3/terrain/noise/Color;
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aget v2, v0, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    new-instance v2, Lcom/jme3/terrain/noise/Color;

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-direct {v2, v1, v1, v1, v0}, Lcom/jme3/terrain/noise/Color;-><init>(FFFF)V

    return-object v2
.end method

.method public toInteger()I
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v1, 0x3

    aget v1, v0, v1

    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0
.end method

.method public toSepia()Lcom/jme3/terrain/noise/Color;
    .locals 10

    iget-object v0, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const v3, 0x3ec9374c    # 0.393f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    const v5, 0x3f44dd2f    # 0.769f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v0, v0, v4

    const v5, 0x3e418937    # 0.189f

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    const/4 v0, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v5}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result v2

    iget-object v6, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    aget v7, v6, v1

    const v8, 0x3eb2b021    # 0.349f

    mul-float/2addr v7, v8

    aget v8, v6, v3

    const v9, 0x3f2f9db2    # 0.686f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v6, v6, v4

    const v8, 0x3e2c0831    # 0.168f

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    invoke-static {v7, v0, v5}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result v6

    iget-object v7, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    aget v1, v7, v1

    const v8, 0x3e8b4396    # 0.272f

    mul-float/2addr v1, v8

    aget v3, v7, v3

    const v8, 0x3f08b439    # 0.534f

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    aget v3, v7, v4

    const v4, 0x3e0624dd    # 0.131f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v1, v0, v5}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result v0

    new-instance v1, Lcom/jme3/terrain/noise/Color;

    iget-object v3, p0, Lcom/jme3/terrain/noise/Color;->rgba:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-direct {v1, v2, v6, v0, v3}, Lcom/jme3/terrain/noise/Color;-><init>(FFFF)V

    return-object v1
.end method

.method public toWeb()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/terrain/noise/Color;->toInteger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
