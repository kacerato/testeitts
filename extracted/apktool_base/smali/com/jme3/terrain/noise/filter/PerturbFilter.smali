.class public Lcom/jme3/terrain/noise/filter/PerturbFilter;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private magnitude:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    return-void
.end method

.method private wrap(II)I
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    if-lt p1, p2, :cond_1

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method


# virtual methods
.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v5

    int-to-float v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, v0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    mul-float/2addr v8, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v8, v7

    div-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    sub-int v8, v4, v6

    div-int/lit8 v8, v8, 0x2

    const-class v9, Lcom/jme3/terrain/noise/filter/PerturbFilter;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found origSize : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " and offset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for workSize : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and magnitude : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    mul-int v8, v4, v4

    new-array v8, v8, [F

    new-instance v9, Lcom/jme3/terrain/noise/fractal/FractalSum;

    invoke-direct {v9}, Lcom/jme3/terrain/noise/fractal/FractalSum;-><init>()V

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v9, v10}, Lcom/jme3/terrain/noise/fractal/FractalSum;->setOctaves(F)Lcom/jme3/terrain/noise/fractal/Fractal;

    move-result-object v9

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-interface {v9, v11}, Lcom/jme3/terrain/noise/Basis;->setScale(F)Lcom/jme3/terrain/noise/Basis;

    move-result-object v9

    invoke-interface {v9, v1, v2, v3, v4}, Lcom/jme3/terrain/noise/Basis;->getBuffer(FFFI)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v9

    new-instance v12, Lcom/jme3/terrain/noise/fractal/FractalSum;

    invoke-direct {v12}, Lcom/jme3/terrain/noise/fractal/FractalSum;-><init>()V

    invoke-virtual {v12, v10}, Lcom/jme3/terrain/noise/fractal/FractalSum;->setOctaves(F)Lcom/jme3/terrain/noise/fractal/Fractal;

    move-result-object v10

    invoke-interface {v10, v11}, Lcom/jme3/terrain/noise/Basis;->setScale(F)Lcom/jme3/terrain/noise/Basis;

    move-result-object v10

    add-float/2addr v3, v7

    invoke-interface {v10, v1, v2, v3, v4}, Lcom/jme3/terrain/noise/Basis;->getBuffer(FFFI)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_0

    mul-int v10, v3, v4

    add-int/2addr v10, v7

    aget v11, v9, v10

    aget v12, v1, v10

    int-to-float v13, v6

    mul-float v14, v13, v11

    iget v15, v0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    mul-float/2addr v13, v12

    mul-float/2addr v13, v15

    float-to-int v13, v13

    sub-int v15, v3, v13

    invoke-direct {v0, v15, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v16

    mul-int v16, v16, v4

    sub-int v2, v7, v14

    invoke-direct {v0, v2, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 p2, v1

    aget v1, v5, v16

    invoke-direct {v0, v15, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v15

    mul-int/2addr v15, v4

    add-int/2addr v14, v7

    invoke-direct {v0, v14, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v16

    add-int v15, v15, v16

    aget v15, v5, v15

    add-int/2addr v13, v3

    invoke-direct {v0, v13, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v16

    mul-int v16, v16, v4

    invoke-direct {v0, v2, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v2

    add-int v16, v16, v2

    aget v2, v5, v16

    invoke-direct {v0, v13, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v13

    mul-int/2addr v13, v4

    invoke-direct {v0, v14, v4}, Lcom/jme3/terrain/noise/filter/PerturbFilter;->wrap(II)I

    move-result v14

    add-int/2addr v13, v14

    aget v13, v5, v13

    invoke-static {v1, v15, v11}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result v1

    invoke-static {v2, v13, v11}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result v2

    invoke-static {v1, v2, v12}, Lcom/jme3/terrain/noise/ShaderUtils;->mix(FFF)F

    move-result v1

    aput v1, v8, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    goto :goto_1

    :cond_0
    move-object/from16 p2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getMagnitude()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    return v0
.end method

.method public getMargin(II)I
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p2

    iget v0, p0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    add-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr v0, p1

    int-to-float p1, p2

    add-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public setMagnitude(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/PerturbFilter;->magnitude:F

    return-void
.end method
