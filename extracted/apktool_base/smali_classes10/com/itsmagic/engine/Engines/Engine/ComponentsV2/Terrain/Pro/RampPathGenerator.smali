.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;
.super Ljava/lang/Object;
.source "RampPathGenerator.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private endX:F

.field private endY:F

.field private endZ:F

.field private roadWidth:F

.field private shoulderFalloff:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

.field private shoulderWidth:F

.field private startX:F

.field private startY:F

.field private startZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->roadWidth:F

    .line 14
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderWidth:F

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderFalloff:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    .line 18
    return-void
.end method


# virtual methods
.method public evaluateHeightAt(FFF)F
    .locals 6

    .line 48
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endX:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startX:F

    sub-float/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endZ:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startZ:F

    sub-float/2addr v1, v2

    .line 50
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endY:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startY:F

    sub-float/2addr v2, v3

    .line 52
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    .line 53
    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 54
    return p1

    .line 58
    :cond_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startX:F

    sub-float v4, p2, v4

    mul-float v4, v4, v0

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startZ:F

    sub-float v5, p3, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 59
    const/4 v3, 0x0

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v3

    if-lez v5, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startX:F

    mul-float v0, v0, v4

    add-float/2addr v5, v0

    .line 65
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startZ:F

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    .line 66
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startY:F

    mul-float v4, v4, v2

    add-float/2addr v1, v4

    .line 69
    sub-float/2addr p2, v5

    mul-float p2, p2, p2

    sub-float/2addr p3, v0

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 70
    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->roadWidth:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p3, p3, v0

    .line 72
    cmpg-float v0, p2, p3

    if-gtz v0, :cond_2

    .line 74
    return v1

    .line 75
    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderWidth:F

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    .line 77
    sub-float/2addr p2, p3

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderWidth:F

    div-float/2addr p2, p3

    .line 78
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderFalloff:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;->evaluate(F)F

    move-result p2

    .line 79
    sub-float/2addr v3, p2

    mul-float p1, p1, v3

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    return p1

    .line 82
    :cond_3
    return p1

    .line 60
    :cond_4
    :goto_0
    return p1
.end method

.method public getRoadWidth()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->roadWidth:F

    return v0
.end method

.method public getShoulderWidth()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderWidth:F

    return v0
.end method

.method public setEndPoint(FFF)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endX:F

    .line 28
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endY:F

    .line 29
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->endZ:F

    .line 30
    return-void
.end method

.method public setRoadWidth(F)V
    .locals 1

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->roadWidth:F

    .line 34
    return-void
.end method

.method public setShoulderWidth(F)V
    .locals 1

    .line 37
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->shoulderWidth:F

    .line 38
    return-void
.end method

.method public setStartPoint(FFF)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startX:F

    .line 22
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startY:F

    .line 23
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;->startZ:F

    .line 24
    return-void
.end method
