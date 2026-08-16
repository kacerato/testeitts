.class public Lcom/jme3/terrain/noise/filter/SmoothFilter;
.super Lcom/jme3/terrain/noise/filter/AbstractFilter;
.source "SourceFile"


# instance fields
.field private effect:F

.field private radius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/filter/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(FFFLjava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 5

    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [F

    iget p3, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    :goto_0
    iget p4, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    sub-int v0, p5, p4

    if-ge p3, v0, :cond_3

    :goto_1
    iget v0, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    sub-int v1, p5, v0

    if-ge p4, v1, :cond_2

    mul-int v1, p3, p5

    add-int/2addr v1, p4

    neg-int v0, v0

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    add-int/lit8 v4, v3, 0x1

    if-ge v0, v4, :cond_1

    neg-int v3, v3

    :goto_3
    iget v4, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_0

    add-int v4, p3, v0

    mul-int/2addr v4, p5

    add-int/2addr v4, p4

    add-int/2addr v4, v3

    aget v4, p1, v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->effect:F

    mul-float/2addr v2, v0

    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    int-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    aget v0, p1, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getEffect()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->effect:F

    return v0
.end method

.method public getMargin(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/noise/filter/AbstractFilter;->getMargin(II)I

    move-result p1

    iget p2, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    add-int/2addr p1, p2

    return p1
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    return v0
.end method

.method public setEffect(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->effect:F

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/filter/SmoothFilter;->radius:I

    return-void
.end method
