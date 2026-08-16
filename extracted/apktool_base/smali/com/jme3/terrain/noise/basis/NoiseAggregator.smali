.class public Lcom/jme3/terrain/noise/basis/NoiseAggregator;
.super Lcom/jme3/terrain/noise/basis/Noise;
.source "SourceFile"


# instance fields
.field private final a:Lcom/jme3/terrain/noise/Basis;

.field private final b:Lcom/jme3/terrain/noise/Basis;

.field private final rate:F


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/noise/Basis;Lcom/jme3/terrain/noise/Basis;F)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/basis/Noise;-><init>()V

    iput-object p1, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->a:Lcom/jme3/terrain/noise/Basis;

    iput-object p2, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->b:Lcom/jme3/terrain/noise/Basis;

    iput p3, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->rate:F

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->a:Lcom/jme3/terrain/noise/Basis;

    invoke-interface {v0}, Lcom/jme3/terrain/noise/Basis;->init()V

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->b:Lcom/jme3/terrain/noise/Basis;

    invoke-interface {v0}, Lcom/jme3/terrain/noise/Basis;->init()V

    return-void
.end method

.method public value(FFF)F
    .locals 3

    iget-object v0, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->a:Lcom/jme3/terrain/noise/Basis;

    invoke-interface {v0, p1, p2, p3}, Lcom/jme3/terrain/noise/Basis;->value(FFF)F

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->rate:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/jme3/terrain/noise/basis/NoiseAggregator;->b:Lcom/jme3/terrain/noise/Basis;

    invoke-interface {v2, p1, p2, p3}, Lcom/jme3/terrain/noise/Basis;->value(FFF)F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method
