.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;
.super Ljava/lang/Object;
.source "HydraulicErosionSimulator.java"


# instance fields
.field private depositSpeed:F

.field private erodeSpeed:F

.field private evaporateSpeed:F

.field private gravity:F

.field private inertia:F

.field private maxDropletLifetime:I

.field private minSedimentCapacity:F

.field private final random:Ljava/util/Random;

.field private sedimentCapacityFactor:F

.field private talusAngleThreshold:F

.field private thermalErosionRate:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x1e

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->maxDropletLifetime:I

    .line 12
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->inertia:F

    .line 13
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->sedimentCapacityFactor:F

    .line 14
    const v1, 0x3c23d70a    # 0.01f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->minSedimentCapacity:F

    .line 15
    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->depositSpeed:F

    .line 16
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->erodeSpeed:F

    .line 17
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->evaporateSpeed:F

    .line 18
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->gravity:F

    .line 19
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->talusAngleThreshold:F

    .line 20
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->thermalErosionRate:F

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->random:Ljava/util/Random;

    .line 25
    return-void
.end method

.method private calculateHeight([FIIFF)F
    .locals 4

    .line 132
    add-int/lit8 v0, p2, -0x2

    int-to-float v0, v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 133
    add-int/lit8 p3, p3, -0x2

    int-to-float p3, p3

    invoke-static {p3, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-int p3, p3

    .line 134
    int-to-float v1, v0

    sub-float/2addr p4, v1

    .line 135
    int-to-float v1, p3

    sub-float/2addr p5, v1

    .line 137
    mul-int v1, p3, p2

    add-int v2, v1, v0

    aget v2, p1, v2

    .line 138
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v1, v3

    aget v1, p1, v1

    .line 139
    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, p2

    add-int/2addr v0, p3

    aget p2, p1, v0

    .line 140
    add-int/2addr p3, v3

    aget p1, p1, p3

    .line 142
    const/high16 p3, 0x3f800000    # 1.0f

    sub-float v0, p3, p4

    mul-float v2, v2, v0

    mul-float v1, v1, p4

    add-float/2addr v2, v1

    sub-float/2addr p3, p5

    mul-float v2, v2, p3

    mul-float p2, p2, v0

    mul-float p1, p1, p4

    add-float/2addr p2, p1

    mul-float p2, p2, p5

    add-float/2addr v2, p2

    return v2
.end method

.method private deposit([FIIIFFF)V
    .locals 6

    .line 146
    mul-int v0, p4, p2

    add-int v1, v0, p3

    aget v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p5

    mul-float v4, v4, p7

    sub-float/2addr v3, p6

    mul-float v5, v4, v3

    add-float/2addr v2, v5

    aput v2, p1, v1

    .line 147
    add-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    aget v2, p1, v0

    mul-float p7, p7, p5

    mul-float v3, v3, p7

    add-float/2addr v2, v3

    aput v2, p1, v0

    .line 148
    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p2

    add-int/2addr p3, p4

    aget p2, p1, p3

    mul-float v4, v4, p6

    add-float/2addr p2, v4

    aput p2, p1, p3

    .line 149
    add-int/2addr p4, v1

    aget p2, p1, p4

    mul-float p7, p7, p6

    add-float/2addr p2, p7

    aput p2, p1, p4

    .line 150
    return-void
.end method

.method private erode([FIIIFFF)V
    .locals 6

    .line 153
    mul-int v0, p4, p2

    add-int v1, v0, p3

    aget v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p5

    mul-float v4, v4, p7

    sub-float/2addr v3, p6

    mul-float v5, v4, v3

    sub-float/2addr v2, v5

    aput v2, p1, v1

    .line 154
    add-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    aget v2, p1, v0

    mul-float p7, p7, p5

    mul-float v3, v3, p7

    sub-float/2addr v2, v3

    aput v2, p1, v0

    .line 155
    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p2

    add-int/2addr p3, p4

    aget p2, p1, p3

    mul-float v4, v4, p6

    sub-float/2addr p2, v4

    aput p2, p1, p3

    .line 156
    add-int/2addr p4, v1

    aget p2, p1, p4

    mul-float p7, p7, p6

    sub-float/2addr p2, p7

    aput p2, p1, p4

    .line 157
    return-void
.end method


# virtual methods
.method public setDepositSpeed(F)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->depositSpeed:F

    .line 165
    return-void
.end method

.method public setErodeSpeed(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->erodeSpeed:F

    .line 161
    return-void
.end method

.method public setTalusAngleThreshold(F)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->talusAngleThreshold:F

    .line 169
    return-void
.end method

.method public simulateHydraulic([FIII)V
    .locals 29

    .line 35
    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    if-eqz p1, :cond_9

    const/4 v1, 0x2

    if-lt v2, v1, :cond_9

    if-ge v3, v1, :cond_0

    goto/16 :goto_7

    .line 37
    :cond_0
    const/4 v9, 0x0

    :goto_0
    move/from16 v10, p4

    if-ge v9, v10, :cond_8

    .line 38
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-int/lit8 v4, v2, -0x2

    int-to-float v4, v4

    mul-float v1, v1, v4

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v1, v11

    .line 39
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    add-int/lit8 v5, v3, -0x2

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v4, v11

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 46
    move v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move v4, v1

    const/4 v1, 0x0

    :goto_1
    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->maxDropletLifetime:I

    if-ge v13, v8, :cond_7

    .line 47
    float-to-int v8, v4

    .line 48
    const/high16 v16, 0x3f800000    # 1.0f

    float-to-int v11, v5

    .line 49
    const/16 v17, 0x0

    int-to-float v12, v8

    sub-float v18, v4, v12

    .line 50
    move/from16 v19, v6

    int-to-float v6, v11

    move/from16 v20, v6

    sub-float v6, v5, v20

    .line 53
    move/from16 v21, v8

    move v8, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v22

    .line 54
    move/from16 v23, v4

    move/from16 v24, v5

    add-int/lit8 v0, v21, 0x1

    int-to-float v4, v0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v20

    move/from16 v28, v12

    move v12, v4

    move/from16 v4, v28

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v25

    move/from16 v26, v4

    move/from16 v27, v5

    sub-float v20, v20, v25

    sub-float v0, v16, v6

    mul-float v20, v20, v0

    add-int/lit8 v0, v11, 0x1

    int-to-float v5, v0

    .line 55
    move-object/from16 v0, p0

    move v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v12

    move/from16 v25, v4

    move/from16 v4, v26

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v26

    sub-float v12, v12, v26

    mul-float v12, v12, v6

    add-float v20, v20, v12

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v12

    move/from16 v26, v5

    move/from16 v5, v27

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v4

    sub-float/2addr v12, v4

    sub-float v0, v16, v18

    mul-float v12, v12, v0

    .line 57
    move-object/from16 v0, p0

    move/from16 v4, v25

    move/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v25

    move/from16 v5, v27

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v4

    sub-float v25, v25, v4

    mul-float v25, v25, v18

    add-float v12, v12, v25

    .line 60
    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->inertia:F

    mul-float v1, v1, v19

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->inertia:F

    sub-float v2, v16, v2

    mul-float v20, v20, v2

    sub-float v1, v1, v20

    .line 61
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->inertia:F

    mul-float v7, v7, v2

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->inertia:F

    sub-float v2, v16, v2

    mul-float v12, v12, v2

    sub-float/2addr v7, v12

    .line 64
    mul-float v2, v1, v1

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 65
    cmpl-float v3, v2, v17

    if-eqz v3, :cond_1

    .line 66
    div-float/2addr v1, v2

    .line 67
    div-float/2addr v7, v2

    move v12, v1

    move/from16 v19, v7

    goto :goto_2

    .line 65
    :cond_1
    move v12, v1

    move/from16 v19, v7

    .line 70
    :goto_2
    add-float v4, v23, v12

    .line 71
    add-float v5, v24, v19

    .line 74
    cmpl-float v1, v12, v17

    if-nez v1, :cond_2

    cmpl-float v1, v19, v17

    if-eqz v1, :cond_7

    :cond_2
    cmpg-float v1, v4, v17

    if-ltz v1, :cond_7

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-gez v1, :cond_7

    cmpg-float v1, v5, v17

    if-ltz v1, :cond_7

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_3

    .line 75
    goto/16 :goto_6

    .line 79
    :cond_3
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->calculateHeight([FIIFF)F

    move-result v7

    .line 80
    move/from16 v20, v4

    move/from16 v23, v5

    sub-float v1, v7, v22

    .line 83
    neg-float v2, v1

    mul-float v3, v2, v14

    mul-float v3, v3, v15

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->sedimentCapacityFactor:F

    mul-float v3, v3, v4

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->minSedimentCapacity:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 85
    cmpl-float v4, v8, v3

    if-gtz v4, :cond_5

    cmpl-float v4, v1, v17

    if-lez v4, :cond_4

    move v4, v11

    move/from16 v5, v18

    move v11, v1

    goto :goto_3

    .line 93
    :cond_4
    sub-float/2addr v3, v8

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->erodeSpeed:F

    mul-float v3, v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 94
    move/from16 v2, p2

    move v4, v11

    move/from16 v5, v18

    move/from16 v3, v21

    move v11, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->erode([FIIIFFF)V

    .line 95
    add-float v1, v8, v7

    goto :goto_5

    .line 85
    :cond_5
    move v4, v11

    move/from16 v5, v18

    move v11, v1

    .line 87
    :goto_3
    cmpl-float v1, v11, v17

    if-lez v1, :cond_6

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    :cond_6
    sub-float v1, v8, v3

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->depositSpeed:F

    mul-float v1, v1, v2

    :goto_4
    move v7, v1

    .line 88
    sub-float/2addr v8, v7

    .line 90
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->deposit([FIIIFFF)V

    .line 91
    move v1, v8

    .line 98
    :goto_5
    mul-float v14, v14, v14

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->gravity:F

    mul-float v2, v2, v11

    add-float/2addr v14, v2

    const/4 v2, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v14, v3

    .line 99
    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->evaporateSpeed:F

    sub-float v11, v16, v3

    mul-float v15, v15, v11

    .line 46
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move v6, v12

    move/from16 v7, v19

    move/from16 v4, v20

    move/from16 v5, v23

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 37
    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_0

    .line 102
    :cond_8
    return-void

    .line 35
    :cond_9
    :goto_7
    return-void
.end method

.method public simulateThermal([FIII)V
    .locals 16

    .line 108
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    if-eqz p1, :cond_6

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    if-ge v2, v3, :cond_0

    goto :goto_4

    .line 110
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    move/from16 v5, p4

    if-ge v4, v5, :cond_5

    .line 111
    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_4

    .line 112
    const/4 v8, 0x1

    :goto_2
    add-int/lit8 v9, v1, -0x1

    if-ge v8, v9, :cond_3

    .line 113
    mul-int v9, v7, v1

    add-int/2addr v9, v8

    .line 114
    aget v10, p1, v9

    .line 117
    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v9, -0x1

    add-int v13, v9, v1

    sub-int v14, v9, v1

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v11

    .line 118
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x4

    if-ge v12, v13, :cond_2

    aget v13, v11, v12

    .line 119
    aget v14, p1, v13

    sub-float v14, v10, v14

    .line 120
    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->talusAngleThreshold:F

    cmpl-float v15, v14, v15

    if-lez v15, :cond_1

    .line 121
    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->talusAngleThreshold:F

    sub-float/2addr v14, v15

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;->thermalErosionRate:F

    mul-float v14, v14, v15

    .line 122
    aget v15, p1, v9

    sub-float/2addr v15, v14

    aput v15, p1, v9

    .line 123
    aget v15, p1, v13

    add-float/2addr v15, v14

    aput v15, p1, v13

    .line 118
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 112
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 111
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_5
    return-void

    .line 108
    :cond_6
    :goto_4
    return-void
.end method
