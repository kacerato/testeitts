.class public Lcom/jme3/terrain/noise/fractal/FractalSum;
.super Lcom/jme3/terrain/noise/basis/Noise;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/noise/fractal/Fractal;


# instance fields
.field private amplitude:F

.field private basis:Lcom/jme3/terrain/noise/Basis;

.field private frequency:F

.field private lacunarity:F

.field private maxFreq:I

.field private octaves:F

.field private roughness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/terrain/noise/basis/Noise;-><init>()V

    new-instance v0, Lcom/jme3/terrain/noise/basis/ImprovedNoise;

    invoke-direct {v0}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->basis:Lcom/jme3/terrain/noise/Basis;

    const v0, 0x4007f5a1

    iput v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->lacunarity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->amplitude:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->roughness:F

    iput v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->frequency:F

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/noise/fractal/FractalSum;->setOctaves(F)Lcom/jme3/terrain/noise/fractal/Fractal;

    return-void
.end method


# virtual methods
.method public addBasis(Lcom/jme3/terrain/noise/Basis;)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->basis:Lcom/jme3/terrain/noise/Basis;

    return-object p0
.end method

.method public getAmplitude()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->amplitude:F

    return v0
.end method

.method public getFrequency()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->frequency:F

    return v0
.end method

.method public getLacunarity()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->lacunarity:F

    return v0
.end method

.method public getOctaves()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->octaves:F

    return v0
.end method

.method public getRoughness()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->roughness:F

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public setAmplitude(F)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->amplitude:F

    return-object p0
.end method

.method public setFrequency(F)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->frequency:F

    return-object p0
.end method

.method public setLacunarity(F)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->lacunarity:F

    return-object p0
.end method

.method public setOctaves(F)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 1

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->octaves:F

    const/4 v0, 0x1

    float-to-int p1, p1

    shl-int p1, v0, p1

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->maxFreq:I

    return-object p0
.end method

.method public setRoughness(F)Lcom/jme3/terrain/noise/fractal/Fractal;
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->roughness:F

    return-object p0
.end method

.method public value(FFF)F
    .locals 7

    iget v0, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->frequency:F

    iget v1, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->amplitude:F

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->maxFreq:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->basis:Lcom/jme3/terrain/noise/Basis;

    iget v4, p0, Lcom/jme3/terrain/noise/basis/Noise;->scale:F

    mul-float v5, v4, p1

    mul-float/2addr v5, v0

    mul-float v6, v4, p2

    mul-float/2addr v6, v0

    mul-float/2addr v4, p3

    mul-float/2addr v4, v0

    invoke-interface {v3, v5, v6, v4}, Lcom/jme3/terrain/noise/Basis;->value(FFF)F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->lacunarity:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/jme3/terrain/noise/fractal/FractalSum;->roughness:F

    mul-float/2addr v1, v3

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v2, p1, p2}, Lcom/jme3/terrain/noise/ShaderUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method
