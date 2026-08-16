.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;
.super Ljava/lang/Object;
.source "FoliageScatterSystem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$HeightSampler;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;
    }
.end annotation


# instance fields
.field private final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;",
            ">;"
        }
    .end annotation
.end field

.field private final prototypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private windSpeed:F

.field private windStrength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->instances:Ljava/util/List;

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windSpeed:F

    .line 59
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windStrength:F

    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->random:Ljava/util/Random;

    .line 63
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->initDefaultPrototypes()V

    .line 64
    return-void
.end method

.method private initDefaultPrototypes()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;

    const-string v2, "Pine Tree"

    const-string v3, "Models/pine_tree.obj"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;

    const-string v2, "Oak Tree"

    const-string v3, "Models/oak_tree.obj"

    invoke-direct {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;

    const-string v1, "Textures/grass_quad.png"

    const/4 v2, 0x1

    const-string v3, "Field Grass"

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    const/high16 v1, 0x43480000    # 200.0f

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->densityPer100m:F

    .line 71
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxCullDistance:F

    .line 72
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method static synthetic lambda$eraseFoliage$0(FFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;)Z
    .locals 1

    .line 121
    iget v0, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->posX:F

    sub-float/2addr v0, p0

    .line 122
    iget p0, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;->posZ:F

    sub-float/2addr p0, p1

    .line 123
    mul-float v0, v0, v0

    mul-float p0, p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, v0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addPrototype(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->instances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return-void
.end method

.method public eraseFoliage(FFF)V
    .locals 2

    .line 119
    mul-float p3, p3, p3

    .line 120
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->instances:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$$ExternalSyntheticLambda0;-><init>(FFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 125
    return-void
.end method

.method public getInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->instances:Ljava/util/List;

    return-object v0
.end method

.method public getPrototypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    return-object v0
.end method

.method public getWindSpeed()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windSpeed:F

    return v0
.end method

.method public getWindStrength()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windStrength:F

    return v0
.end method

.method public paintFoliage(IFFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$HeightSampler;)V
    .locals 12

    .line 91
    move-object/from16 v7, p6

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->prototypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;

    .line 94
    iget v0, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->densityPer100m:F

    const/high16 v1, 0x42480000    # 50.0f

    div-float v1, p4, v1

    mul-float v0, v0, v1

    mul-float v0, v0, p5

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 96
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    .line 97
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x40c90fdb

    mul-float v0, v0, v1

    .line 98
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p4

    .line 100
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v1

    add-float/2addr v0, p2

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    add-float v3, p3, v2

    .line 103
    invoke-interface {v7, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$HeightSampler;->getHeightAt(FF)F

    move-result v2

    .line 104
    invoke-interface {v7, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$HeightSampler;->getSlopeAt(FF)F

    move-result v1

    .line 106
    iget v4, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minAltitude:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxAltitude:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    iget v4, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minSlope:F

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget v4, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxSlope:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 107
    iget v1, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minScale:F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->maxScale:F

    iget v11, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliagePrototype;->minScale:F

    sub-float/2addr v5, v11

    mul-float v4, v4, v5

    add-float v5, v1, v4

    .line 108
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v4, v4, v1

    .line 110
    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->instances:Ljava/util/List;

    move v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem$FoliageInstance;-><init>(FFFFFI)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-void

    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method public setWindSpeed(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windSpeed:F

    .line 137
    return-void
.end method

.method public setWindStrength(F)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;->windStrength:F

    .line 145
    return-void
.end method
