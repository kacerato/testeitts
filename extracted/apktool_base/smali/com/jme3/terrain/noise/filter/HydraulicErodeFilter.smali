.class public Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private Kc:F

.field private Ke:F

.field private Kr:F

.field private Ks:F

.field private T:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v2

    mul-int v3, v1, v1

    new-array v4, v3, [F

    new-array v3, v3, [F

    neg-int v5, v1

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v8, v1, 0x1

    filled-new-array {v6, v5, v7, v8}, [I

    move-result-object v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_6

    mul-int v9, v7, v1

    add-int/2addr v9, v8

    iget v10, v0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Kr:F

    iget v11, v0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Ks:F

    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-lez v13, :cond_0

    aget v13, v4, v9

    add-float/2addr v13, v10

    aput v13, v4, v9

    cmpl-float v10, v11, v12

    if-lez v10, :cond_0

    aget v10, v2, v9

    mul-float/2addr v13, v11

    sub-float/2addr v10, v13

    aput v10, v2, v9

    aget v10, v3, v9

    aget v13, v4, v9

    mul-float/2addr v11, v13

    add-float/2addr v10, v11

    aput v10, v3, v9

    :cond_0
    aget v10, v2, v9

    aget v11, v4, v9

    add-float/2addr v10, v11

    move v14, v12

    move v15, v14

    move/from16 v16, v15

    const/4 v6, -0x1

    const/4 v13, 0x0

    :goto_2
    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-ge v13, v12, :cond_2

    aget v12, v5, v13

    add-int v18, v9, v12

    if-lez v18, :cond_1

    add-int v11, v9, v12

    if-ge v11, v1, :cond_1

    add-int v11, v9, v12

    aget v11, v2, v11

    add-int/2addr v12, v9

    aget v12, v4, v12

    add-float/2addr v11, v12

    sub-float v12, v10, v11

    sub-float v18, v10, v16

    cmpl-float v12, v12, v18

    if-lez v12, :cond_1

    add-float/2addr v14, v11

    add-float v15, v15, v17

    move/from16 v16, v11

    move v6, v13

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    add-float v11, v14, v10

    add-float v15, v15, v17

    div-float/2addr v11, v15

    const/4 v12, -0x1

    if-le v6, v12, :cond_3

    aget v12, v4, v9

    sub-float v11, v10, v11

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float v10, v10, v16

    mul-float/2addr v11, v10

    div-float/2addr v11, v14

    aget v10, v3, v9

    mul-float/2addr v10, v11

    aget v12, v4, v9

    div-float/2addr v10, v12

    sub-float/2addr v12, v11

    aput v12, v4, v9

    aget v12, v3, v9

    sub-float/2addr v12, v10

    aput v12, v3, v9

    aget v6, v5, v6

    add-int v12, v9, v6

    aget v13, v4, v12

    add-float/2addr v13, v11

    aput v13, v4, v12

    add-int/2addr v6, v9

    aget v11, v3, v6

    add-float/2addr v11, v10

    aput v11, v3, v6

    :cond_3
    aget v6, v4, v9

    iget v10, v0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Ke:F

    sub-float v17, v17, v10

    mul-float v6, v6, v17

    aput v6, v4, v9

    iget v10, v0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->T:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_4

    const/4 v6, 0x0

    aput v6, v4, v9

    :cond_4
    iget v6, v0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Kc:F

    aget v10, v4, v9

    mul-float/2addr v6, v10

    aget v10, v3, v9

    cmpl-float v11, v10, v6

    if-lez v11, :cond_5

    aget v11, v2, v9

    sub-float/2addr v10, v6

    add-float/2addr v11, v10

    aput v11, v2, v9

    aget v10, v3, v9

    sub-float v6, v10, v6

    sub-float/2addr v10, v6

    aput v10, v3, v9

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    return-object p4
.end method

.method public getMargin(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setKc(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Kc:F

    return-void
.end method

.method public setKe(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Ke:F

    return-void
.end method

.method public setKr(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Kr:F

    return-void
.end method

.method public setKs(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->Ks:F

    return-void
.end method

.method public setSedimentMap(Lcom/jme3/terrain/noise/Basis;)V
    .locals 0

    return-void
.end method

.method public setT(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/HydraulicErodeFilter;->T:F

    return-void
.end method

.method public setWaterMap(Lcom/jme3/terrain/noise/Basis;)V
    .locals 0

    return-void
.end method
