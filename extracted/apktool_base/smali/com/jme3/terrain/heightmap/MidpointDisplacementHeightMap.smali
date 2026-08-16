.class public Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private persistence:F

.field private range:F

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;-><init>(IFFJ)V

    return-void
.end method

.method public constructor <init>(IFFJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 2
    invoke-static {v0}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 4
    iput p2, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->range:F

    .line 5
    iput p3, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->persistence:F

    .line 6
    iput-wide p4, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->seed:J

    .line 7
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->load()Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The size is negative or not of the form 2^N +1 (a power of two plus one)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doDiamondStep([[F[IIFLjava/util/Random;)[I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    div-int/lit8 v7, v2, 0x2

    filled-new-array {v3, v7, v2, v7}, [I

    move-result-object v8

    neg-int v9, v2

    div-int/lit8 v9, v9, 0x2

    filled-new-array {v3, v9, v3, v7}, [I

    move-result-object v10

    const/4 v11, 0x0

    move v12, v3

    move v13, v12

    :goto_0
    const/4 v14, 0x4

    if-ge v12, v14, :cond_3

    aget v14, v8, v12

    add-int/2addr v14, v4

    if-ltz v14, :cond_2

    iget v15, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int/lit8 v3, v15, -0x1

    if-le v14, v3, :cond_0

    goto :goto_1

    :cond_0
    aget v3, v10, v12

    add-int/2addr v3, v6

    if-ltz v3, :cond_2

    add-int/lit8 v15, v15, -0x1

    if-le v3, v15, :cond_1

    goto :goto_1

    :cond_1
    aget-object v14, p1, v14

    aget v3, v14, v3

    add-float/2addr v11, v3

    add-int/lit8 v13, v13, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    int-to-float v3, v13

    div-float/2addr v11, v3

    move/from16 v3, p4

    move-object/from16 v8, p5

    invoke-virtual {v0, v8, v3, v1, v11}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->getOffset(Ljava/util/Random;F[IF)F

    move-result v1

    add-int v3, v4, v7

    aget-object v3, p1, v3

    add-float/2addr v11, v1

    aput v11, v3, v6

    mul-int/lit8 v1, v2, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v3, v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v1, v3, :cond_4

    add-int/2addr v4, v2

    filled-new-array {v4, v6}, [I

    move-result-object v1

    return-object v1

    :cond_4
    add-int/2addr v6, v7

    if-ge v6, v3, :cond_6

    add-int/2addr v4, v2

    sub-int/2addr v3, v5

    if-ne v4, v3, :cond_5

    filled-new-array {v9, v6}, [I

    move-result-object v1

    return-object v1

    :cond_5
    const/4 v1, 0x0

    filled-new-array {v1, v6}, [I

    move-result-object v1

    return-object v1

    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public doSquareStep([[F[IIFLjava/util/Random;)[I
    .locals 8

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    aget-object v3, p1, v1

    aget v4, v3, v2

    const/4 v5, 0x0

    add-float/2addr v4, v5

    add-int v5, v1, p3

    aget-object v6, p1, v5

    aget v7, v6, v2

    add-float/2addr v4, v7

    add-int v7, v2, p3

    aget v6, v6, v7

    add-float/2addr v4, v6

    aget v3, v3, v7

    add-float/2addr v4, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v4, v3

    invoke-virtual {p0, p5, p4, p2, v4}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->getOffset(Ljava/util/Random;F[IF)F

    move-result p2

    div-int/lit8 p4, p3, 0x2

    add-int p5, v1, p4

    aget-object p1, p1, p5

    add-int/2addr p4, v2

    add-float/2addr v4, p2

    aput v4, p1, p4

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    iget p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v1, p1, :cond_0

    filled-new-array {v5, v2}, [I

    move-result-object p1

    return-object p1

    :cond_0
    add-int/2addr v2, p3

    if-ge v2, p1, :cond_1

    filled-new-array {v0, v7}, [I

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOffset(Ljava/util/Random;F[IF)F
    .locals 0

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    sub-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    return p1
.end method

.method public getPersistence()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->persistence:F

    return v0
.end method

.method public getRange()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->range:F

    return v0
.end method

.method public getSeed()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->seed:J

    return-wide v0
.end method

.method public load()Z
    .locals 13

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int v1, v0, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    new-instance v2, Ljava/util/Random;

    iget-wide v5, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->seed:J

    invoke-direct {v2, v5, v6}, Ljava/util/Random;-><init>(J)V

    aget-object v5, v0, v4

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    aget-object v5, v0, v4

    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    sub-int/2addr v6, v3

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v5, v6

    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    sub-int/2addr v5, v3

    aget-object v5, v0, v5

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    sub-int/2addr v5, v3

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v6, v5

    iget v5, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->range:F

    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    sub-int/2addr v6, v3

    move v11, v5

    move v12, v6

    :goto_0
    if-le v12, v3, :cond_3

    new-array v5, v1, [I

    aput v4, v5, v4

    aput v4, v5, v3

    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_1

    move-object v5, p0

    move-object v6, v0

    move v8, v12

    move v9, v11

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->doSquareStep([[F[IIFLjava/util/Random;)[I

    move-result-object v7

    goto :goto_1

    :cond_1
    new-array v5, v1, [I

    aput v4, v5, v4

    aput v4, v5, v3

    move-object v7, v5

    :goto_2
    if-eqz v7, :cond_2

    move-object v5, p0

    move-object v6, v0

    move v8, v12

    move v9, v11

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->doDiamondStep([[F[IIFLjava/util/Random;)[I

    move-result-object v7

    goto :goto_2

    :cond_2
    div-int/lit8 v12, v12, 0x2

    iget v5, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->persistence:F

    mul-float/2addr v11, v5

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_3
    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v1, v2, :cond_5

    move v2, v4

    :goto_4
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v2, v5, :cond_4

    aget-object v5, v0, v1

    aget v5, v5, v2

    invoke-virtual {p0, v5, v2, v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->setHeightAtPoint(FII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sget v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    sget-object v0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Midpoint displacement heightmap generated"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v3
.end method

.method public setPersistence(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->persistence:F

    return-void
.end method

.method public setRange(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->range:F

    return-void
.end method

.method public setSeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/terrain/heightmap/MidpointDisplacementHeightMap;->seed:J

    return-void
.end method
