.class public Lcom/jme3/terrain/heightmap/FaultHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field public static final FAULTSHAPE_CIRCLE:I = 0xb

.field public static final FAULTSHAPE_LINE:I = 0xa

.field public static final FAULTTYPE_COSINE:I = 0x2

.field public static final FAULTTYPE_LINEAR:I = 0x1

.field public static final FAULTTYPE_SINE:I = 0x3

.field public static final FAULTTYPE_STEP:I

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private faultShape:I

.field private faultType:I

.field private iterations:I

.field private maxFaultHeight:F

.field private maxRadius:F

.field private maxRange:F

.field private minFaultHeight:F

.field private minRadius:F

.field private minRange:F

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/FaultHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/jme3/terrain/heightmap/FaultHeightMap;-><init>(IIIIFFJ)V

    return-void
.end method

.method public constructor <init>(IIIIFFJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2
    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 3
    iput p2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->iterations:I

    .line 4
    iput p3, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultType:I

    .line 5
    iput p4, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultShape:I

    .line 6
    iput p5, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minFaultHeight:F

    .line 7
    iput p6, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxFaultHeight:F

    .line 8
    iput-wide p7, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->seed:J

    .line 9
    iput p5, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRange:F

    .line 10
    iput p6, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRange:F

    .line 11
    div-int/lit8 p2, p1, 0xa

    int-to-float p2, p2

    iput p2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRadius:F

    .line 12
    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRadius:F

    .line 13
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->load()Z

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Size and iterations must be greater than 0!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCircleFault([[FLjava/util/Random;FF)V
    .locals 10

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRadius:F

    iget v2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRadius:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v2, v1

    iget v4, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    add-int/2addr v4, v3

    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_3

    move v5, v1

    :goto_1
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_2

    if-ne v4, v2, :cond_1

    if-eq v5, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    sub-int v6, v4, v2

    sub-int v7, v5, v3

    int-to-float v6, v6

    invoke-static {v6}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v8

    int-to-float v7, v7

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v9

    add-float/2addr v8, v9

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v8

    int-to-float v9, v2

    div-float/2addr v6, v8

    mul-float/2addr v6, v0

    add-float/2addr v9, v6

    int-to-float v6, v3

    div-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    sub-float/2addr v8, v0

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result v7

    int-to-float v8, v4

    sub-float/2addr v8, v9

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v8

    int-to-float v9, v5

    sub-float/2addr v9, v6

    invoke-static {v9}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v6

    add-float/2addr v8, v6

    invoke-static {v8}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v6

    mul-float/2addr v6, v7

    :goto_3
    aget-object v7, p1, v4

    aget v8, v7, v5

    invoke-virtual {p0, v6, p2, p3, p4}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->calcHeight(FLjava/util/Random;FF)F

    move-result v6

    add-float/2addr v8, v6

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addFault([[FLjava/util/Random;)V
    .locals 5

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minFaultHeight:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxFaultHeight:F

    iget v3, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minFaultHeight:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRange:F

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRange:F

    iget v4, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRange:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultShape:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->addCircleFault([[FLjava/util/Random;FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->addLineFault([[FLjava/util/Random;FF)V

    :goto_0
    return-void
.end method

.method public addLineFault([[FLjava/util/Random;FF)V
    .locals 11

    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v3, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    invoke-virtual {p2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v5, v6, :cond_1

    move v6, v4

    :goto_1
    iget v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v6, v7, :cond_0

    sub-int v7, v1, v0

    sub-int v8, v6, v2

    mul-int/2addr v8, v7

    sub-int v9, v3, v2

    sub-int v10, v5, v0

    mul-int/2addr v10, v9

    sub-int/2addr v8, v10

    int-to-float v8, v8

    int-to-float v7, v7

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v7

    int-to-float v9, v9

    invoke-static {v9}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v9

    add-float/2addr v7, v9

    invoke-static {v7}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v7

    div-float/2addr v8, v7

    aget-object v7, p1, v5

    aget v9, v7, v6

    invoke-virtual {p0, v8, p2, p3, p4}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->calcHeight(FLjava/util/Random;FF)F

    move-result v8

    add-float/2addr v9, v8

    aput v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public calcHeight(FLjava/util/Random;FF)F
    .locals 4

    iget p2, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultType:I

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    const v1, 0x40490fdb    # (float)Math.PI

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_0

    neg-float p1, p3

    return p1

    :cond_0
    div-float/2addr p1, p4

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    mul-float/2addr p1, p3

    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Code needs update to switch allcases"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, p3

    return p1

    :cond_3
    div-float/2addr p1, p4

    add-float/2addr p1, v2

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    mul-float/2addr p1, p3

    return p1

    :cond_4
    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_5

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result p1

    mul-float/2addr p1, p3

    return p1

    :cond_5
    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p2

    div-float/2addr p2, p4

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result p1

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    return p1

    :cond_6
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sign(F)F

    move-result p1

    mul-float/2addr p1, p3

    return p1
.end method

.method public getFaultShape()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultShape:I

    return v0
.end method

.method public getFaultType()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultType:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->iterations:I

    return v0
.end method

.method public getMaxFaultHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxFaultHeight:F

    return v0
.end method

.method public getMaxRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRadius:F

    return v0
.end method

.method public getMaxRange()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRange:F

    return v0
.end method

.method public getMinFaultHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minFaultHeight:F

    return v0
.end method

.method public getMinRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRadius:F

    return v0
.end method

.method public getMinRange()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRange:F

    return v0
.end method

.method public getSeed()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->seed:J

    return-wide v0
.end method

.method public load()Z
    .locals 6

    iget-object v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->unloadHeightMap()V

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    mul-int v1, v0, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->heightData:[F

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    new-instance v1, Ljava/util/Random;

    iget-wide v4, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->seed:J

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->iterations:I

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/terrain/heightmap/FaultHeightMap;->addFault([[FLjava/util/Random;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    iget v4, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v1, v4, :cond_3

    move v4, v3

    :goto_2
    iget v5, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v1

    aget v5, v5, v4

    invoke-virtual {p0, v5, v1, v4}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->setHeightAtPoint(FII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    sget-object v0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Fault heightmap generated"

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v2
.end method

.method public setFaultShape(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultShape:I

    return-void
.end method

.method public setFaultType(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->faultType:I

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->iterations:I

    return-void
.end method

.method public setMaxFaultHeight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxFaultHeight:F

    return-void
.end method

.method public setMaxRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRadius:F

    return-void
.end method

.method public setMaxRange(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->maxRange:F

    return-void
.end method

.method public setMinFaultHeight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minFaultHeight:F

    return-void
.end method

.method public setMinRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRadius:F

    return-void
.end method

.method public setMinRange(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->minRange:F

    return-void
.end method

.method public setSeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/terrain/heightmap/FaultHeightMap;->seed:J

    return-void
.end method
