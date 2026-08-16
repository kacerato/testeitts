.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;
.super Ljava/lang/Object;
.source "AutoBiomeRuleEngine.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;
    }
.end annotation


# instance fields
.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->initDefaultRules()V

    .line 43
    return-void
.end method

.method private calculateRangeWeight(FFFF)F
    .locals 5

    .line 107
    const v0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_1

    .line 108
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 110
    :cond_1
    sub-float v0, p2, p4

    cmpg-float v3, p1, v0

    if-ltz v3, :cond_5

    add-float v3, p3, p4

    cmpl-float v4, p1, v3

    if-lez v4, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    cmpl-float v2, p1, p2

    if-ltz v2, :cond_3

    cmpg-float p3, p1, p3

    if-gtz p3, :cond_3

    .line 114
    return v1

    .line 116
    :cond_3
    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 117
    sub-float/2addr p1, v0

    div-float/2addr p1, p4

    return p1

    .line 119
    :cond_4
    sub-float/2addr v3, p1

    div-float/2addr v3, p4

    return v3

    .line 111
    :cond_5
    :goto_1
    return v2
.end method

.method private initDefaultRules()V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    const/4 v6, 0x0

    const/high16 v7, 0x41c80000    # 25.0f

    const/4 v2, 0x0

    const-string v3, "Sand"

    const/high16 v4, -0x3db80000    # -50.0f

    const/high16 v5, 0x41700000    # 15.0f

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;-><init>(ILjava/lang/String;FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    const/high16 v7, 0x420c0000    # 35.0f

    const/4 v2, 0x1

    const-string v3, "Grass"

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;-><init>(ILjava/lang/String;FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    const/high16 v7, 0x42000000    # 32.0f

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v3, 0x2

    const-string v4, "Rock_Cliff"

    const/high16 v5, -0x3db80000    # -50.0f

    const/high16 v6, 0x43fa0000    # 500.0f

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;-><init>(ILjava/lang/String;FFFF)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->useTriplanar:Z

    .line 53
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    const/4 v6, 0x0

    const/high16 v7, 0x42340000    # 45.0f

    const/4 v2, 0x3

    const-string v3, "Snow"

    const/high16 v4, 0x432a0000    # 170.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;-><init>(ILjava/lang/String;FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public addRule(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public evaluateWeights(FFF)[F
    .locals 12

    .line 74
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    .line 75
    nop

    .line 77
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v6, :cond_0

    .line 78
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;

    .line 81
    iget v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minAltitude:F

    iget v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxAltitude:F

    iget v10, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->altitudeFade:F

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->calculateRangeWeight(FFFF)F

    move-result v8

    .line 84
    iget v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minSlopeDeg:F

    iget v10, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxSlopeDeg:F

    iget v11, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->slopeFadeDeg:F

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->calculateRangeWeight(FFFF)F

    move-result v9

    .line 87
    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->noiseInfluence:F

    mul-float v6, v6, p3

    add-float/2addr v6, v7

    .line 88
    mul-float v8, v8, v9

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v8, v8, v6

    .line 90
    aput v8, v1, v4

    .line 91
    add-float/2addr v5, v8

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const p1, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, v5, p1

    if-lez p1, :cond_1

    .line 96
    nop

    :goto_1
    if-ge v3, v0, :cond_2

    .line 97
    aget p1, v1, v3

    div-float/2addr p1, v5

    aput p1, v1, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_1
    if-lez v0, :cond_2

    .line 100
    aput v7, v1, v3

    .line 103
    :cond_2
    return-object v1
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;->rules:Ljava/util/List;

    return-object v0
.end method
