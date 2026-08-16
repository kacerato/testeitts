.class public Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private caldera:F

.field private jumps:I

.field private maxParticles:I

.field private minParticles:I

.field private peakWalk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-lez p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p4, p5, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p6, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    iput p2, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->jumps:I

    iput p3, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->peakWalk:I

    iput p4, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->minParticles:I

    iput p5, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->maxParticles:I

    iput p6, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->caldera:F

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->load()Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caldera level must be between 0 and 1"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "values must be greater than zero, and minParticles must be greater than maxParticles"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load()Z
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v9, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array/range {v2 .. v9}, [I

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v7, v1, -0x1

    add-int/lit8 v9, v1, -0x1

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    filled-new-array/range {v3 .. v10}, [I

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v7, 0x0

    aput v1, v5, v7

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iget v5, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    new-array v8, v4, [I

    aput v5, v8, v6

    aput v5, v8, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iget-object v8, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v8, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/2addr v8, v8

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    move v8, v7

    :goto_0
    iget v9, v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->jumps:I

    if-ge v8, v9, :cond_13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    iget v11, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    sub-int/2addr v11, v6

    int-to-double v11, v11

    mul-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    iget v12, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    sub-int/2addr v12, v6

    int-to-double v12, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    iget v13, v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->maxParticles:I

    iget v14, v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->minParticles:I

    sub-int/2addr v13, v14

    move/from16 v16, v8

    int-to-double v7, v13

    mul-double/2addr v11, v7

    int-to-double v7, v14

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    double-to-int v7, v7

    move v8, v9

    move v11, v10

    const/4 v12, 0x0

    :goto_1
    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v12, v7, :cond_6

    iget v14, v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->peakWalk:I

    if-eqz v14, :cond_1

    rem-int v14, v12, v14

    if-nez v14, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    const-wide/high16 v19, 0x401c000000000000L    # 7.0

    mul-double v17, v17, v19

    move/from16 v19, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v6, v6

    aget v7, v2, v6

    add-int/2addr v8, v7

    iget v7, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int/2addr v8, v7

    rem-int/2addr v8, v7

    aget v6, v3, v6

    add-int/2addr v11, v6

    add-int/2addr v11, v7

    rem-int/2addr v11, v7

    goto :goto_2

    :cond_1
    move/from16 v19, v7

    :goto_2
    aget-object v6, v1, v8

    aget v7, v6, v11

    add-float/2addr v7, v13

    aput v7, v6, v11

    move v7, v8

    move/from16 v17, v11

    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    const-wide/high16 v22, 0x4020000000000000L    # 8.0

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->rint(D)D

    move-result-wide v14

    double-to-int v14, v14

    const/4 v15, 0x0

    :goto_4
    const/16 v6, 0x8

    if-ge v15, v6, :cond_3

    add-int v21, v15, v14

    rem-int/lit8 v21, v21, 0x8

    aget v6, v2, v21

    add-int/2addr v6, v7

    iget v4, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    rem-int/2addr v6, v4

    aget v21, v3, v21

    add-int v21, v17, v21

    rem-int v21, v21, v4

    aget-object v4, v1, v6

    aget v23, v4, v21

    add-float v24, v23, v13

    aget-object v25, v1, v7

    aget v26, v25, v17

    cmpg-float v24, v24, v26

    if-gez v24, :cond_2

    add-float v23, v23, v13

    aput v23, v4, v21

    aget v4, v25, v17

    sub-float/2addr v4, v13

    aput v4, v25, v17

    move v7, v6

    move/from16 v17, v21

    const/4 v6, 0x0

    goto :goto_5

    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x2

    goto :goto_4

    :cond_3
    const/4 v6, 0x1

    :goto_5
    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    aget-object v4, v1, v7

    aget v4, v4, v17

    aget-object v6, v1, v9

    aget v6, v6, v10

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    move v9, v7

    move/from16 v10, v17

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v19

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_6
    aget-object v4, v1, v9

    aget v4, v4, v10

    iget v6, v0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->caldera:F

    sub-float/2addr v13, v6

    mul-float/2addr v13, v4

    aget-object v6, v5, v9

    const/4 v7, 0x1

    aput v7, v6, v10

    move v6, v9

    move v7, v10

    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_12

    move v12, v6

    move/from16 v17, v7

    move v11, v9

    move v15, v10

    const/4 v8, 0x1

    :goto_7
    if-gt v9, v6, :cond_11

    move-object/from16 v19, v2

    move v2, v10

    move/from16 v14, v17

    :goto_8
    if-gt v2, v7, :cond_10

    move-object/from16 v21, v3

    iget v3, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int v17, v9, v3

    rem-int v17, v17, v3

    add-int v23, v2, v3

    rem-int v23, v23, v3

    aget-object v24, v5, v17

    move/from16 v25, v6

    aget v6, v24, v23

    move/from16 v26, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x2

    aput v6, v24, v23

    aget-object v6, v1, v17

    aget v18, v6, v23

    cmpl-float v24, v18, v13

    if-lez v24, :cond_f

    cmpg-float v24, v18, v4

    if-gtz v24, :cond_f

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v13

    sub-float v8, v8, v18

    aput v8, v6, v23

    add-int/lit8 v17, v17, 0x1

    rem-int v17, v17, v3

    aget-object v6, v5, v17

    aget v8, v6, v23

    if-nez v8, :cond_8

    add-int/lit8 v8, v9, 0x1

    if-le v8, v12, :cond_7

    move v12, v8

    :cond_7
    const/4 v7, 0x1

    aput v7, v6, v23

    :cond_8
    add-int v17, v17, v3

    const/4 v7, 0x2

    add-int/lit8 v17, v17, -0x2

    rem-int v17, v17, v3

    aget-object v7, v5, v17

    aget v8, v7, v23

    if-nez v8, :cond_a

    add-int/lit8 v8, v9, -0x1

    if-ge v8, v11, :cond_9

    move v11, v8

    :cond_9
    const/4 v6, 0x1

    aput v6, v7, v23

    :cond_a
    add-int v7, v9, v3

    rem-int/2addr v7, v3

    add-int/lit8 v23, v23, 0x1

    rem-int v23, v23, v3

    aget-object v7, v5, v7

    aget v8, v7, v23

    if-nez v8, :cond_c

    add-int/lit8 v8, v2, 0x1

    if-le v8, v14, :cond_b

    move v14, v8

    :cond_b
    const/4 v6, 0x1

    aput v6, v7, v23

    :cond_c
    add-int v23, v23, v3

    const/16 v18, 0x2

    add-int/lit8 v23, v23, -0x2

    rem-int v23, v23, v3

    aget v3, v7, v23

    if-nez v3, :cond_e

    add-int/lit8 v3, v2, -0x1

    if-ge v3, v15, :cond_d

    move v15, v3

    :cond_d
    const/4 v3, 0x1

    aput v3, v7, v23

    :cond_e
    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    const/16 v18, 0x2

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v21

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_8

    :cond_10
    move-object/from16 v21, v3

    move/from16 v25, v6

    move/from16 v26, v7

    const/16 v18, 0x2

    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v14

    move-object/from16 v2, v19

    goto/16 :goto_7

    :cond_11
    move v9, v11

    move v6, v12

    move v10, v15

    move/from16 v7, v17

    goto/16 :goto_6

    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    const/16 v18, 0x2

    add-int/lit8 v8, v16, 0x1

    move/from16 v4, v18

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    :goto_a
    iget v4, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v2, v4, :cond_15

    const/4 v4, 0x0

    :goto_b
    iget v5, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_14

    aget-object v5, v1, v2

    aget v5, v5, v4

    invoke-virtual {v0, v5, v4, v2}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->setHeightAtPoint(FII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->erodeTerrain()V

    sget v1, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    sget-object v1, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->logger:Ljava/util/logging/Logger;

    const-string v2, "Created heightmap using Particle Deposition"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setCaldera(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->caldera:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Caldera level must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJumps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->jumps:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "jumps must be positive"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxParticles(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->maxParticles:I

    return-void
.end method

.method public setMinParticles(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->maxParticles:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->minParticles:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "minParticles must be less than the current maxParticles"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPeakWalk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/ParticleDepositionHeightMap;->peakWalk:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "peakWalk must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
