.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;
.super Ljava/lang/Object;
.source "AutoBiomeRuleEngine.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiomeLayerRule"
.end annotation


# instance fields
.field public altitudeFade:F

.field public layerIndex:I

.field public layerName:Ljava/lang/String;

.field public maxAltitude:F

.field public maxSlopeDeg:F

.field public minAltitude:F

.field public minSlopeDeg:F

.field public noiseInfluence:F

.field public noiseScale:F

.field public slopeFadeDeg:F

.field public useTriplanar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerIndex:I

    .line 15
    const-string v1, "Layer"

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerName:Ljava/lang/String;

    .line 16
    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minAltitude:F

    .line 17
    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxAltitude:F

    .line 18
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->altitudeFade:F

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minSlopeDeg:F

    .line 20
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxSlopeDeg:F

    .line 21
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->slopeFadeDeg:F

    .line 22
    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->noiseScale:F

    .line 23
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->noiseInfluence:F

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->useTriplanar:Z

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FFFF)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerIndex:I

    .line 15
    const-string v1, "Layer"

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerName:Ljava/lang/String;

    .line 16
    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minAltitude:F

    .line 17
    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxAltitude:F

    .line 18
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->altitudeFade:F

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minSlopeDeg:F

    .line 20
    const/high16 v1, 0x42b40000    # 90.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxSlopeDeg:F

    .line 21
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->slopeFadeDeg:F

    .line 22
    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->noiseScale:F

    .line 23
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->noiseInfluence:F

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->useTriplanar:Z

    .line 30
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerIndex:I

    .line 31
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->layerName:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minAltitude:F

    .line 33
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxAltitude:F

    .line 34
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->minSlopeDeg:F

    .line 35
    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine$BiomeLayerRule;->maxSlopeDeg:F

    .line 36
    return-void
.end method
