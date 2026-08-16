.class public Lcom/jme3/terrain/noise/filter/OptimizedErode;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private radius:I

.field private talus:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [F

    iget v3, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    :goto_0
    iget v5, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    sub-int v6, p5, v5

    if-ge v3, v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    :goto_1
    iget v6, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    sub-int v6, p5, v6

    if-ge v5, v6, :cond_b

    mul-int v6, v3, p5

    add-int/2addr v6, v5

    aget v7, v1, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v9, v8

    :goto_2
    iget v15, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    neg-int v15, v15

    if-lt v10, v15, :cond_8

    add-int v15, v3, v10

    mul-int v16, v15, p5

    add-int v16, v16, v5

    sub-int/2addr v15, v4

    mul-int v15, v15, p5

    add-int/2addr v15, v5

    add-int v17, v6, v10

    add-int/lit8 v18, v17, -0x1

    aget v16, v1, v16

    aget v17, v1, v17

    sub-float v19, v7, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v20

    iget v4, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    aget v4, v1, v15

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v15, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpl-float v4, v4, v15

    if-gtz v4, :cond_1

    :cond_0
    if-eqz v13, :cond_2

    :cond_1
    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v15, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpg-float v4, v4, v15

    if-gtz v4, :cond_3

    add-float v8, v8, v16

    add-int/lit8 v11, v11, 0x1

    :cond_3
    :goto_3
    sub-float v4, v7, v17

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 p2, v8

    iget v8, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpl-float v8, v15, v8

    if-lez v8, :cond_4

    aget v8, v1, v18

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v15, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpl-float v8, v8, v15

    if-gtz v8, :cond_5

    :cond_4
    if-eqz v14, :cond_6

    :cond_5
    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_7

    add-float v9, v9, v17

    add-int/lit8 v12, v12, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, -0x1

    move/from16 v8, p2

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    if-lez v11, :cond_9

    goto :goto_5

    :cond_9
    const/4 v11, 0x1

    :goto_5
    int-to-float v4, v11

    div-float/2addr v8, v4

    if-lez v12, :cond_a

    goto :goto_6

    :cond_a
    const/4 v12, 0x1

    :goto_6
    int-to-float v4, v12

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    aput v8, v2, v6

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getMargin(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p1

    iget p2, p0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    add-int/2addr p1, p2

    return p1
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    return v0
.end method

.method public getTalus()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    return v0
.end method

.method public setRadius(I)Lcom/jme3/terrain/noise/filter/OptimizedErode;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->radius:I

    return-object p0
.end method

.method public setTalus(F)Lcom/jme3/terrain/noise/filter/OptimizedErode;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/OptimizedErode;->talus:F

    return-object p0
.end method
