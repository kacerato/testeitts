.class final Lcom/jme3/util/MipMapGenerator$PixelAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/MipMapGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PixelAccumulator"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private g:F

.field private r:F

.field private weight:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/MipMapGenerator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;-><init>()V

    return-void
.end method

.method private static clamp01(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    return p0
.end method


# virtual methods
.method public add(Lcom/jme3/math/ColorRGBA;FZZ)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p1, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {p4}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clamp01(F)F

    move-result p4

    goto :goto_0

    :cond_1
    iget p4, p1, Lcom/jme3/math/ColorRGBA;->a:F

    :goto_0
    if-eqz p3, :cond_2

    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v0, p4

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v0, p4

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr p1, p4

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    goto :goto_1

    :cond_2
    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    iget p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    iget p1, p1, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    iput p3, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    :goto_1
    iget p1, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->a:F

    mul-float/2addr p4, p2

    add-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->a:F

    iget p1, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->weight:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->weight:F

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    iput v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    iput v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    iput v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->a:F

    iput v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->weight:F

    return-void
.end method

.method public toColor(Lcom/jme3/math/ColorRGBA;ZZ)V
    .locals 4

    iget v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->weight:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    return-void

    :cond_0
    iget v2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->a:F

    div-float v3, v2, v0

    if-eqz p2, :cond_2

    const p2, 0x322bcc77    # 1.0E-8f

    cmpl-float p2, v2, p2

    if-lez p2, :cond_1

    iget p2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    div-float v1, p2, v2

    iget p2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    div-float/2addr p2, v2

    iget v0, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move p2, v1

    move v0, p2

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->r:F

    div-float v1, p2, v0

    iget p2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->g:F

    div-float/2addr p2, v0

    iget v2, p0, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->b:F

    div-float v0, v2, v0

    :goto_0
    if-eqz p3, :cond_3

    invoke-static {v1}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clamp01(F)F

    move-result v1

    invoke-static {p2}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clamp01(F)F

    move-result p2

    invoke-static {v0}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clamp01(F)F

    move-result v0

    invoke-static {v3}, Lcom/jme3/util/MipMapGenerator$PixelAccumulator;->clamp01(F)F

    move-result v3

    :cond_3
    invoke-virtual {p1, v1, p2, v0, v3}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    return-void
.end method
