.class public Lcom/jme3/terrain/heightmap/FluidSimHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field coefA:F

.field coefB:F

.field coefC:F

.field private iterations:I

.field private maxInitialHeight:F

.field private minInitialHeight:F

.field private nodeDistance:F

.field private seed:J

.field private timeStep:F

.field private viscosity:F

.field private waveSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 20
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->waveSpeed:F

    const v1, 0x3d072b02    # 0.033f

    .line 21
    iput v1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->timeStep:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 22
    iput v1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->nodeDistance:F

    .line 23
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->viscosity:F

    const/high16 v0, -0x3c060000    # -500.0f

    .line 24
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->minInitialHeight:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 25
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->maxInitialHeight:F

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 26
    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 27
    iput p2, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->iterations:I

    .line 28
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->load()Z

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Either size of the terrain is not greater than zero, or number of iterations is not greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IIFFFFFFJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->waveSpeed:F

    const v1, 0x3d072b02    # 0.033f

    .line 3
    iput v1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->timeStep:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    iput v1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->nodeDistance:F

    .line 5
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->viscosity:F

    const/high16 v0, -0x3c060000    # -500.0f

    .line 6
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->minInitialHeight:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 7
    iput v0, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->maxInitialHeight:F

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    cmpl-float v0, p3, p4

    if-gez v0, :cond_0

    .line 8
    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 9
    iput-wide p9, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->seed:J

    .line 10
    iput p2, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->iterations:I

    .line 11
    iput p3, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->minInitialHeight:F

    .line 12
    iput p4, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->maxInitialHeight:F

    .line 13
    iput p5, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->viscosity:F

    .line 14
    iput p6, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->waveSpeed:F

    .line 15
    iput p7, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->timeStep:F

    .line 16
    iput p8, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->nodeDistance:F

    .line 17
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->load()Z

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Either size of the terrain is not greater that zero, or number of iterations is not greater that zero, or minimum height greater or equal as the maximum, or maximum height smaller or equal as the minimum."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private randomRange(Ljava/util/Random;FF)F
    .locals 0

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public load()Z
    .locals 14

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int v1, v0, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int/2addr v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    new-instance v2, Ljava/util/Random;

    iget-wide v4, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->seed:J

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    iget v4, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->waveSpeed:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v4

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->timeStep:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->nodeDistance:F

    mul-float v8, v7, v7

    div-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v8, v5

    iget v5, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->viscosity:F

    mul-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    iput v8, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefA:F

    mul-float v8, v5, v6

    sub-float/2addr v8, v10

    mul-float v9, v5, v6

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    iput v8, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefB:F

    mul-float v8, v4, v10

    mul-float/2addr v8, v4

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    mul-float/2addr v7, v7

    div-float/2addr v8, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v10

    div-float/2addr v8, v5

    iput v8, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefC:F

    move v4, v0

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_2

    move v5, v0

    :goto_1
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_1

    aget-object v7, v1, v0

    mul-int v8, v4, v6

    add-int/2addr v8, v5

    aget-object v9, v1, v3

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    iget v10, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->minInitialHeight:F

    iget v11, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->maxInitialHeight:F

    invoke-direct {p0, v2, v10, v11}, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->randomRange(Ljava/util/Random;FF)F

    move-result v10

    aput v10, v9, v6

    aput v10, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    move v4, v2

    :goto_2
    iget v5, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->iterations:I

    if-ge v2, v5, :cond_a

    rsub-int/lit8 v5, v4, 0x1

    aget-object v6, v1, v5

    aget-object v4, v1, v4

    move v7, v0

    :goto_3
    iget v8, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v7, v8, :cond_9

    move v8, v0

    :goto_4
    iget v9, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v8, v9, :cond_8

    mul-int v10, v7, v9

    add-int/2addr v10, v8

    const/4 v11, 0x0

    if-lez v8, :cond_3

    add-int/lit8 v12, v10, -0x1

    aget v12, v4, v12

    add-float/2addr v11, v12

    move v12, v3

    goto :goto_5

    :cond_3
    move v12, v0

    :goto_5
    add-int/lit8 v13, v9, -0x1

    if-ge v8, v13, :cond_4

    add-int/lit8 v13, v10, 0x1

    aget v13, v4, v13

    add-float/2addr v11, v13

    add-int/lit8 v12, v12, 0x1

    :cond_4
    if-lez v7, :cond_5

    sub-int v13, v10, v9

    aget v13, v4, v13

    add-float/2addr v11, v13

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v13, v9, -0x1

    if-ge v7, v13, :cond_6

    add-int/2addr v9, v10

    aget v9, v4, v9

    add-float/2addr v11, v9

    add-int/lit8 v12, v12, 0x1

    :cond_6
    const/4 v9, 0x4

    if-eq v12, v9, :cond_7

    div-int/2addr v9, v12

    int-to-float v9, v9

    mul-float/2addr v11, v9

    :cond_7
    iget v9, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefA:F

    aget v12, v4, v10

    mul-float/2addr v9, v12

    iget v12, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefB:F

    aget v13, v6, v10

    mul-float/2addr v12, v13

    add-float/2addr v9, v12

    iget v12, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->coefC:F

    mul-float/2addr v12, v11

    add-float/2addr v9, v12

    aput v9, v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_2

    :cond_a
    move v2, v0

    :goto_6
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v2, v5, :cond_c

    move v5, v0

    :goto_7
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_b

    iget-object v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    mul-int v8, v2, v6

    add-int/2addr v8, v5

    aget-object v9, v1, v4

    mul-int/2addr v6, v2

    add-int/2addr v6, v5

    aget v6, v9, v6

    aput v6, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    sget v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    sget-object v0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created Heightmap using fluid simulation"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v3
.end method

.method public setIterations(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->iterations:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Number of iterations is not greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxInitialHeight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->maxInitialHeight:F

    return-void
.end method

.method public setMinInitialHeight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->minInitialHeight:F

    return-void
.end method

.method public setNodeDistance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->nodeDistance:F

    return-void
.end method

.method public setTimeStep(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->timeStep:F

    return-void
.end method

.method public setViscosity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->viscosity:F

    return-void
.end method

.method public setWaveSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FluidSimHeightMap;->waveSpeed:F

    return-void
.end method
