.class public Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private c:F

.field private talus:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v2

    mul-int v3, v1, v1

    new-array v3, v3, [F

    neg-int v4, v1

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v1, -0x1

    add-int/lit8 v7, v1, 0x1

    filled-new-array {v5, v4, v6, v7}, [I

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_5

    mul-int v8, v6, v1

    add-int/2addr v8, v7

    aget v9, v2, v8

    aget v10, v3, v8

    add-float/2addr v9, v10

    aput v9, v2, v8

    const/4 v9, 0x0

    aput v9, v3, v8

    const/4 v10, 0x4

    new-array v11, v10, [F

    iget v12, v0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->talus:F

    move v14, v9

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v10, :cond_1

    aget v15, v4, v13

    add-int v16, v8, v15

    if-lez v16, :cond_0

    add-int v5, v8, v15

    array-length v9, v2

    if-ge v5, v9, :cond_0

    aget v5, v2, v8

    add-int/2addr v15, v8

    aget v9, v2, v15

    sub-float/2addr v5, v9

    iget v9, v0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->talus:F

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    aput v5, v11, v13

    add-float/2addr v14, v5

    cmpl-float v9, v5, v12

    if-lez v9, :cond_0

    move v12, v5

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_4

    aget v9, v11, v5

    const/4 v13, 0x0

    cmpl-float v15, v9, v13

    if-eqz v15, :cond_3

    iget v13, v0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->c:F

    iget v15, v0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->talus:F

    sub-float v15, v12, v15

    mul-float/2addr v13, v15

    mul-float/2addr v13, v9

    div-float/2addr v13, v14

    aget v9, v2, v8

    aget v15, v3, v8

    add-float v16, v9, v15

    cmpl-float v16, v13, v16

    if-lez v16, :cond_2

    add-float v13, v9, v15

    :cond_2
    sub-float/2addr v15, v13

    aput v15, v3, v8

    aget v9, v4, v5

    add-int/2addr v9, v8

    aget v15, v3, v9

    add-float/2addr v15, v13

    aput v15, v3, v9

    :cond_3
    const/4 v9, 0x0

    aput v9, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-object p4
.end method

.method public getMargin(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setC(F)Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->c:F

    return-object p0
.end method

.method public setTalus(F)Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/ThermalErodeFilter;->talus:F

    return-object p0
.end method
