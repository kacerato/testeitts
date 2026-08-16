.class public Lcom/jme3/terrain/heightmap/HillHeightMap;
.super Lcom/jme3/terrain/heightmap/AbstractHeightMap;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private iterations:I

.field private maxRadius:F

.field private minRadius:F

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/heightmap/HillHeightMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/heightmap/HillHeightMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/jme3/terrain/heightmap/HillHeightMap;-><init>(IIFFJ)V

    return-void
.end method

.method public constructor <init>(IIFFJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v0, p4, v0

    if-lez v0, :cond_0

    cmpl-float v0, p3, p4

    if-gez v0, :cond_0

    .line 2
    sget-object v0, Lcom/jme3/terrain/heightmap/HillHeightMap;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing hill heightmap using seed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    .line 4
    iput-wide p5, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->seed:J

    .line 5
    iput p2, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->iterations:I

    .line 6
    iput p3, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->minRadius:F

    .line 7
    iput p4, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->maxRadius:F

    .line 8
    invoke-virtual {p0}, Lcom/jme3/terrain/heightmap/HillHeightMap;->load()Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Either size of the terrain is not greater than zero, or number of iterations is not greater than zero, or minimum or maximum radius are not greater than zero, or minimum radius is greater than maximum radius, or power of flattening is below one"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private randomRange(Ljava/util/Random;FF)F
    .locals 0

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    const/high16 p3, 0x4f000000

    div-float/2addr p1, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public addHill([[FLjava/util/Random;)V
    .locals 10

    iget v0, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->minRadius:F

    iget v1, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->maxRadius:F

    invoke-direct {p0, p2, v0, v1}, Lcom/jme3/terrain/heightmap/HillHeightMap;->randomRange(Ljava/util/Random;FF)F

    move-result v0

    neg-float v1, v0

    iget v2, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-direct {p0, p2, v1, v2}, Lcom/jme3/terrain/heightmap/HillHeightMap;->randomRange(Ljava/util/Random;FF)F

    move-result v2

    iget v3, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-direct {p0, p2, v1, v3}, Lcom/jme3/terrain/heightmap/HillHeightMap;->randomRange(Ljava/util/Random;FF)F

    move-result p2

    mul-float v1, v0, v0

    sub-float v3, v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v5, v2, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-float v6, p2, v0

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-float/2addr v0, p2

    add-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v4, 0x0

    if-gez v3, :cond_0

    move v3, v4

    :cond_0
    iget v7, p0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->size:I

    if-le v5, v7, :cond_1

    add-int/lit8 v5, v7, -0x1

    :cond_1
    if-gez v6, :cond_2

    move v6, v4

    :cond_2
    if-le v0, v7, :cond_3

    add-int/lit8 v0, v7, -0x1

    :cond_3
    :goto_0
    if-gt v3, v5, :cond_6

    move v4, v6

    :goto_1
    if-gt v4, v0, :cond_5

    int-to-float v7, v3

    sub-float v7, v2, v7

    mul-float/2addr v7, v7

    int-to-float v8, v4

    sub-float v8, p2, v8

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    sub-float v7, v1, v7

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    aget-object v8, p1, v3

    aget v9, v8, v4

    add-float/2addr v9, v7

    aput v9, v8, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
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

    iget-wide v4, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->seed:J

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->iterations:I

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/terrain/heightmap/HillHeightMap;->addHill([[FLjava/util/Random;)V

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

    invoke-virtual {p0, v5, v4, v1}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->setHeightAtPoint(FII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->NORMALIZE_RANGE:F

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->normalizeTerrain(F)V

    sget-object v0, Lcom/jme3/terrain/heightmap/HillHeightMap;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created Heightmap using the Hill Algorithm"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2
.end method

.method public setIterations(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-lez p1, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->iterations:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Number of iterations is not greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxRadius(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->minRadius:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->maxRadius:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The maximum radius is not greater than 0, or not greater than the minimum radius"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinRadius(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->maxRadius:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/jme3/terrain/heightmap/HillHeightMap;->minRadius:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "The minimum radius is not greater than 0, or not lower than the maximum radius"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
