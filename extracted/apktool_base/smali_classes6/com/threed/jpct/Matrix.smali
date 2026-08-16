.class public Lcom/threed/jpct/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final cpi:F

.field private static final cpih:F

.field private static globalTmpMat:Lcom/threed/jpct/Matrix; = null

.field private static final mcpi:F

.field private static final mcpih:F

.field private static final mpi:F = -3.1415927f

.field private static final mpih:F = -1.5707964f

.field private static final mspi:F

.field private static final mspih:F

.field private static final pi:F = 3.1415927f

.field private static final pih:F = 1.5707964f

.field private static final serialVersionUID:J = 0x2L

.field private static final spi:F

.field private static final spih:F


# instance fields
.field private lastCos:F

.field private lastRot:F

.field private lastSin:F

.field mat:[[F

.field private mat0:[F

.field private mat1:[F

.field private mat2:[F

.field private mat3:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v0, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    const v0, 0x40490fdb    # (float)Math.PI

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sput v1, Lcom/threed/jpct/Matrix;->spi:F

    const v1, -0x3fb6f025

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    sput v2, Lcom/threed/jpct/Matrix;->mspi:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/threed/jpct/Matrix;->cpi:F

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/threed/jpct/Matrix;->mcpi:F

    const v0, 0x3fc90fdb

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sput v1, Lcom/threed/jpct/Matrix;->spih:F

    const v1, -0x4036f025

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    sput v2, Lcom/threed/jpct/Matrix;->mspih:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/threed/jpct/Matrix;->cpih:F

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/threed/jpct/Matrix;->mcpih:F

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 3
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    const/4 v1, 0x2

    .line 5
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 6
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    .line 7
    aget-object v6, v2, v3

    iput-object v6, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    .line 8
    aget-object v7, v2, v1

    iput-object v7, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v8, 0x3

    .line 9
    aget-object v2, v2, v8

    iput-object v2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    .line 10
    aput v0, v4, v5

    .line 11
    aput v0, v6, v3

    .line 12
    aput v0, v7, v1

    .line 13
    aput v0, v2, v8

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Matrix;)V
    .locals 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastRot:F

    .line 16
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastSin:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/threed/jpct/Matrix;->lastCos:F

    const/4 v0, 0x2

    .line 18
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    .line 19
    aget-object v3, v1, v4

    iput-object v3, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    .line 20
    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    .line 21
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v0, 0x3

    .line 22
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    .line 23
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    return-void
.end method


# virtual methods
.method public final cloneMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/threed/jpct/Matrix;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/threed/jpct/Matrix;

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v0

    aget v4, v2, v1

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v0

    aget v6, v5, v1

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    return v1

    :cond_1
    aget v4, v2, v3

    aget v3, v5, v3

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x2

    aget v4, v2, v3

    aget v3, v5, v3

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x3

    aget v2, v2, v3

    aget v3, v5, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public final fillDump([F)[F
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [F

    goto :goto_0

    :cond_0
    array-length v2, p1

    if-eq v2, v0, :cond_1

    const-string v0, "Dump array has to have a length of 16!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v3, 0x2

    aget v4, v0, v3

    aput v4, p1, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    aput v0, p1, v4

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v5, v0, v1

    const/4 v6, 0x4

    aput v5, p1, v6

    aget v5, v0, v2

    const/4 v6, 0x5

    aput v5, p1, v6

    aget v5, v0, v3

    const/4 v6, 0x6

    aput v5, p1, v6

    aget v0, v0, v4

    const/4 v5, 0x7

    aput v0, p1, v5

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v5, v0, v1

    const/16 v6, 0x8

    aput v5, p1, v6

    aget v5, v0, v2

    const/16 v6, 0x9

    aput v5, p1, v6

    aget v5, v0, v3

    const/16 v6, 0xa

    aput v5, p1, v6

    aget v0, v0, v4

    const/16 v5, 0xb

    aput v0, p1, v5

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v1, v0, v1

    const/16 v5, 0xc

    aput v1, p1, v5

    aget v1, v0, v2

    const/16 v2, 0xd

    aput v1, p1, v2

    aget v1, v0, v3

    const/16 v2, 0xe

    aput v1, p1, v2

    aget v0, v0, v4

    const/16 v1, 0xf

    aput v0, p1, v1

    return-object p1
.end method

.method public final get(II)F
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getDump()[F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v0

    return-object v0
.end method

.method public final getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getXAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p1
.end method

.method public final getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getYAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p1
.end method

.method public final getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public final getZAxis(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p1
.end method

.method public final interpolate(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;F)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_1

    move p3, v1

    :cond_1
    :goto_0
    sub-float/2addr v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/threed/jpct/Matrix;->orthonormalize()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v2

    iget-object v4, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v2

    aget v5, v4, v1

    mul-float/2addr v5, v0

    iget-object v6, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v6, v2

    aget v7, v6, v1

    mul-float/2addr v7, p3

    add-float/2addr v5, v7

    aput v5, v3, v1

    const/4 v5, 0x1

    aget v7, v4, v5

    mul-float/2addr v7, v0

    aget v8, v6, v5

    mul-float/2addr v8, p3

    add-float/2addr v7, v8

    aput v7, v3, v5

    const/4 v5, 0x2

    aget v7, v4, v5

    mul-float/2addr v7, v0

    aget v8, v6, v5

    mul-float/2addr v8, p3

    add-float/2addr v7, v8

    aput v7, v3, v5

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v4, v0

    aget v6, v6, v5

    mul-float/2addr v6, p3

    add-float/2addr v4, v6

    aput v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final invert()Lcom/threed/jpct/Matrix;
    .locals 1

    .line 1
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 3
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 4
    aget v8, v2, v7

    const/4 v9, 0x3

    .line 5
    aget v2, v2, v9

    .line 6
    iget-object v10, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v11, v10, v3

    .line 7
    aget v12, v10, v5

    .line 8
    aget v13, v10, v7

    .line 9
    aget v10, v10, v9

    .line 10
    iget-object v14, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v15, v14, v3

    .line 11
    aget v16, v14, v5

    .line 12
    aget v17, v14, v7

    .line 13
    aget v14, v14, v9

    .line 14
    iget-object v9, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v19, v9, v3

    .line 15
    aget v20, v9, v5

    .line 16
    aget v21, v9, v7

    const/16 v18, 0x3

    .line 17
    aget v9, v9, v18

    mul-float v22, v17, v9

    mul-float v23, v21, v14

    mul-float v24, v13, v9

    mul-float v25, v21, v10

    mul-float v26, v13, v14

    mul-float v27, v17, v10

    mul-float v28, v8, v9

    mul-float v29, v21, v2

    mul-float v30, v8, v14

    mul-float v31, v17, v2

    mul-float v32, v8, v10

    mul-float v33, v13, v2

    mul-float v34, v22, v12

    mul-float v35, v25, v16

    add-float v34, v34, v35

    mul-float v35, v26, v20

    add-float v34, v34, v35

    mul-float v35, v23, v12

    mul-float v36, v24, v16

    add-float v35, v35, v36

    mul-float v36, v27, v20

    add-float v35, v35, v36

    sub-float v34, v34, v35

    mul-float v35, v23, v6

    mul-float v36, v28, v16

    add-float v35, v35, v36

    mul-float v36, v31, v20

    add-float v35, v35, v36

    mul-float v36, v22, v6

    mul-float v37, v29, v16

    add-float v36, v36, v37

    mul-float v37, v30, v20

    add-float v36, v36, v37

    sub-float v35, v35, v36

    mul-float v36, v24, v6

    mul-float v37, v29, v12

    add-float v36, v36, v37

    mul-float v37, v32, v20

    add-float v36, v36, v37

    mul-float v37, v25, v6

    mul-float v38, v28, v12

    add-float v37, v37, v38

    mul-float v38, v33, v20

    add-float v37, v37, v38

    sub-float v36, v36, v37

    mul-float v37, v27, v6

    mul-float v38, v30, v12

    add-float v37, v37, v38

    mul-float v38, v33, v16

    add-float v37, v37, v38

    mul-float v38, v26, v6

    mul-float v39, v31, v12

    add-float v38, v38, v39

    mul-float v39, v32, v16

    add-float v38, v38, v39

    sub-float v37, v37, v38

    mul-float v38, v23, v11

    mul-float v39, v24, v15

    add-float v38, v38, v39

    mul-float v39, v27, v19

    add-float v38, v38, v39

    mul-float v39, v22, v11

    mul-float v40, v25, v15

    add-float v39, v39, v40

    mul-float v40, v26, v19

    add-float v39, v39, v40

    sub-float v38, v38, v39

    mul-float v22, v22, v4

    mul-float v39, v29, v15

    add-float v22, v22, v39

    mul-float v39, v30, v19

    add-float v22, v22, v39

    mul-float v23, v23, v4

    mul-float v39, v28, v15

    add-float v23, v23, v39

    mul-float v39, v31, v19

    add-float v23, v23, v39

    sub-float v22, v22, v23

    mul-float v25, v25, v4

    mul-float v28, v28, v11

    add-float v25, v25, v28

    mul-float v23, v33, v19

    add-float v25, v25, v23

    mul-float v24, v24, v4

    mul-float v29, v29, v11

    add-float v24, v24, v29

    mul-float v23, v32, v19

    add-float v24, v24, v23

    sub-float v25, v25, v24

    mul-float v26, v26, v4

    mul-float v31, v31, v11

    add-float v26, v26, v31

    mul-float v32, v32, v15

    add-float v26, v26, v32

    mul-float v27, v27, v4

    mul-float v30, v30, v11

    add-float v27, v27, v30

    mul-float v33, v33, v15

    add-float v27, v27, v33

    sub-float v26, v26, v27

    mul-float v23, v15, v20

    mul-float v24, v19, v16

    mul-float v27, v11, v20

    mul-float v28, v19, v12

    mul-float v29, v11, v16

    mul-float v30, v15, v12

    mul-float v20, v20, v4

    mul-float v31, v19, v6

    mul-float v16, v16, v4

    mul-float v32, v15, v6

    mul-float/2addr v12, v4

    mul-float/2addr v6, v11

    mul-float v33, v23, v10

    mul-float v39, v28, v14

    add-float v33, v33, v39

    mul-float v39, v29, v9

    add-float v33, v33, v39

    mul-float v39, v24, v10

    mul-float v40, v27, v14

    add-float v39, v39, v40

    mul-float v40, v30, v9

    add-float v39, v39, v40

    sub-float v33, v33, v39

    mul-float v39, v24, v2

    mul-float v40, v20, v14

    add-float v39, v39, v40

    mul-float v40, v32, v9

    add-float v39, v39, v40

    mul-float v40, v23, v2

    mul-float v41, v31, v14

    add-float v40, v40, v41

    mul-float v41, v16, v9

    add-float v40, v40, v41

    sub-float v39, v39, v40

    mul-float v40, v27, v2

    mul-float v41, v31, v10

    add-float v40, v40, v41

    mul-float v41, v12, v9

    add-float v40, v40, v41

    mul-float v41, v28, v2

    mul-float v42, v20, v10

    add-float v41, v41, v42

    mul-float/2addr v9, v6

    add-float v41, v41, v9

    sub-float v40, v40, v41

    mul-float v9, v30, v2

    mul-float v41, v16, v10

    add-float v9, v9, v41

    mul-float v41, v6, v14

    add-float v9, v9, v41

    mul-float v2, v2, v29

    mul-float v10, v10, v32

    add-float/2addr v2, v10

    mul-float/2addr v14, v12

    add-float/2addr v2, v14

    sub-float/2addr v9, v2

    mul-float v2, v27, v17

    mul-float v10, v30, v21

    add-float/2addr v2, v10

    mul-float v10, v24, v13

    add-float/2addr v2, v10

    mul-float v10, v29, v21

    mul-float v14, v23, v13

    add-float/2addr v10, v14

    mul-float v14, v28, v17

    add-float/2addr v10, v14

    sub-float/2addr v2, v10

    mul-float v10, v16, v21

    mul-float v23, v23, v8

    add-float v10, v10, v23

    mul-float v14, v31, v17

    add-float/2addr v10, v14

    mul-float v14, v20, v17

    mul-float v23, v32, v21

    add-float v14, v14, v23

    mul-float v24, v24, v8

    add-float v14, v14, v24

    sub-float/2addr v10, v14

    mul-float v20, v20, v13

    mul-float v14, v6, v21

    add-float v20, v20, v14

    mul-float v28, v28, v8

    add-float v20, v20, v28

    mul-float v21, v21, v12

    mul-float v27, v27, v8

    add-float v21, v21, v27

    mul-float v31, v31, v13

    add-float v21, v21, v31

    sub-float v20, v20, v21

    mul-float v12, v12, v17

    mul-float v29, v29, v8

    add-float v12, v12, v29

    mul-float v32, v32, v13

    add-float v12, v12, v32

    mul-float v16, v16, v13

    mul-float v6, v6, v17

    add-float v16, v16, v6

    mul-float v30, v30, v8

    add-float v16, v16, v30

    sub-float v12, v12, v16

    mul-float v4, v4, v34

    mul-float v11, v11, v35

    add-float/2addr v4, v11

    mul-float v15, v15, v36

    add-float/2addr v4, v15

    mul-float v19, v19, v37

    add-float v4, v4, v19

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v4

    .line 18
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat0:[F

    mul-float v34, v34, v6

    aput v34, v4, v3

    mul-float v35, v35, v6

    .line 19
    aput v35, v4, v5

    mul-float v36, v36, v6

    .line 20
    aput v36, v4, v7

    mul-float v37, v37, v6

    const/4 v8, 0x3

    .line 21
    aput v37, v4, v8

    .line 22
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat1:[F

    mul-float v38, v38, v6

    aput v38, v4, v3

    mul-float v22, v22, v6

    .line 23
    aput v22, v4, v5

    mul-float v25, v25, v6

    .line 24
    aput v25, v4, v7

    mul-float v26, v26, v6

    .line 25
    aput v26, v4, v8

    .line 26
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat2:[F

    mul-float v33, v33, v6

    aput v33, v4, v3

    mul-float v39, v39, v6

    .line 27
    aput v39, v4, v5

    mul-float v40, v40, v6

    .line 28
    aput v40, v4, v7

    mul-float/2addr v9, v6

    .line 29
    aput v9, v4, v8

    .line 30
    iget-object v4, v1, Lcom/threed/jpct/Matrix;->mat3:[F

    mul-float/2addr v2, v6

    aput v2, v4, v3

    mul-float/2addr v10, v6

    .line 31
    aput v10, v4, v5

    mul-float v20, v20, v6

    .line 32
    aput v20, v4, v7

    mul-float/2addr v12, v6

    .line 33
    aput v12, v4, v8

    return-object v1
.end method

.method public final invert3x3()Lcom/threed/jpct/Matrix;
    .locals 1

    .line 1
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 10

    .line 2
    iget-object v0, p1, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v1, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 3
    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v5, v3, v2

    const/4 v6, 0x2

    aput v5, v0, v6

    .line 4
    iget-object v5, p1, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v7, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v8, v7, v4

    aput v8, v5, v2

    .line 5
    aget v8, v3, v4

    aput v8, v5, v6

    .line 6
    iget-object v8, p1, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v9, v7, v6

    aput v9, v8, v2

    .line 7
    aget v9, v1, v6

    aput v9, v8, v4

    .line 8
    aget v7, v7, v2

    aput v7, v0, v2

    .line 9
    aget v0, v1, v4

    aput v0, v5, v4

    .line 10
    aget v0, v3, v6

    aput v0, v8, v6

    return-object p1
.end method

.method public final isIdentity()Z
    .locals 10

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v4, 0x1

    aget v5, v2, v4

    cmpl-float v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v6, 0x2

    aget v7, v5, v6

    cmpl-float v7, v7, v3

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v8, 0x3

    aget v9, v7, v8

    cmpl-float v3, v9, v3

    if-nez v3, :cond_0

    aget v3, v0, v4

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-nez v3, :cond_0

    aget v3, v0, v6

    cmpl-float v3, v3, v9

    if-nez v3, :cond_0

    aget v0, v0, v8

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v2, v1

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v2, v6

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v2, v8

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v5, v4

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v5, v1

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v5, v8

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v7, v4

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v7, v6

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    aget v0, v7, v1

    cmpl-float v0, v0, v9

    if-nez v0, :cond_0

    return v4

    :cond_0
    return v1
.end method

.method public final matMul(Lcom/threed/jpct/Matrix;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v10, v2, v9

    iget-object v11, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v12, v11, v3

    aget v13, v11, v5

    aget v14, v11, v7

    aget v15, v11, v9

    iget-object v9, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v17, v9, v3

    aget v18, v9, v5

    aget v19, v9, v7

    const/16 v16, 0x3

    aget v20, v9, v16

    iget-object v7, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v22, v7, v3

    aget v23, v7, v5

    const/16 v21, 0x2

    aget v24, v7, v21

    aget v25, v7, v16

    iget-object v5, v1, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v3, v1, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v0, v1, Lcom/threed/jpct/Matrix;->mat2:[F

    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat3:[F

    const/16 v27, 0x0

    aget v28, v5, v27

    const/16 v26, 0x1

    aget v29, v5, v26

    aget v30, v5, v21

    aget v5, v5, v16

    aget v31, v3, v27

    aget v32, v3, v26

    aget v33, v3, v21

    aget v3, v3, v16

    aget v34, v0, v27

    aget v35, v0, v26

    aget v36, v0, v21

    aget v0, v0, v16

    aget v37, v1, v27

    aget v38, v1, v26

    aget v39, v1, v21

    aget v1, v1, v16

    mul-float v40, v4, v28

    mul-float v41, v6, v31

    add-float v40, v40, v41

    mul-float v41, v8, v34

    add-float v40, v40, v41

    mul-float v41, v10, v37

    add-float v40, v40, v41

    aput v40, v2, v27

    mul-float v40, v4, v29

    mul-float v41, v6, v32

    add-float v40, v40, v41

    mul-float v41, v8, v35

    add-float v40, v40, v41

    mul-float v41, v10, v38

    add-float v40, v40, v41

    const/16 v26, 0x1

    aput v40, v2, v26

    mul-float v40, v4, v30

    mul-float v41, v6, v33

    add-float v40, v40, v41

    mul-float v41, v8, v36

    add-float v40, v40, v41

    mul-float v41, v10, v39

    add-float v40, v40, v41

    const/16 v21, 0x2

    aput v40, v2, v21

    mul-float/2addr v4, v5

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    mul-float/2addr v8, v0

    add-float/2addr v4, v8

    mul-float/2addr v10, v1

    add-float/2addr v4, v10

    const/4 v6, 0x3

    aput v4, v2, v6

    mul-float v2, v12, v28

    mul-float v4, v13, v31

    add-float/2addr v2, v4

    mul-float v4, v14, v34

    add-float/2addr v2, v4

    mul-float v4, v15, v37

    add-float/2addr v2, v4

    const/4 v4, 0x0

    aput v2, v11, v4

    mul-float v2, v12, v29

    mul-float v4, v13, v32

    add-float/2addr v2, v4

    mul-float v4, v14, v35

    add-float/2addr v2, v4

    mul-float v4, v15, v38

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v11, v4

    mul-float v2, v12, v30

    mul-float v4, v13, v33

    add-float/2addr v2, v4

    mul-float v4, v14, v36

    add-float/2addr v2, v4

    mul-float v4, v15, v39

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v11, v4

    mul-float/2addr v12, v5

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    mul-float/2addr v14, v0

    add-float/2addr v12, v14

    mul-float/2addr v15, v1

    add-float/2addr v12, v15

    const/4 v2, 0x3

    aput v12, v11, v2

    mul-float v2, v17, v28

    mul-float v4, v18, v31

    add-float/2addr v2, v4

    mul-float v4, v19, v34

    add-float/2addr v2, v4

    mul-float v4, v20, v37

    add-float/2addr v2, v4

    const/4 v4, 0x0

    aput v2, v9, v4

    mul-float v2, v17, v29

    mul-float v4, v18, v32

    add-float/2addr v2, v4

    mul-float v4, v19, v35

    add-float/2addr v2, v4

    mul-float v4, v20, v38

    add-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v9, v4

    mul-float v2, v17, v30

    mul-float v4, v18, v33

    add-float/2addr v2, v4

    mul-float v4, v19, v36

    add-float/2addr v2, v4

    mul-float v4, v20, v39

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v9, v4

    mul-float v17, v17, v5

    mul-float v18, v18, v3

    add-float v17, v17, v18

    mul-float v19, v19, v0

    add-float v17, v17, v19

    mul-float v20, v20, v1

    add-float v17, v17, v20

    const/4 v2, 0x3

    aput v17, v9, v2

    mul-float v28, v28, v22

    mul-float v31, v31, v23

    add-float v28, v28, v31

    mul-float v34, v34, v24

    add-float v28, v28, v34

    mul-float v37, v37, v25

    add-float v28, v28, v37

    const/4 v2, 0x0

    aput v28, v7, v2

    mul-float v29, v29, v22

    mul-float v32, v32, v23

    add-float v29, v29, v32

    mul-float v35, v35, v24

    add-float v29, v29, v35

    mul-float v38, v38, v25

    add-float v29, v29, v38

    const/4 v2, 0x1

    aput v29, v7, v2

    mul-float v30, v30, v22

    mul-float v33, v33, v23

    add-float v30, v30, v33

    mul-float v36, v36, v24

    add-float v30, v30, v36

    mul-float v39, v39, v25

    add-float v30, v30, v39

    const/4 v2, 0x2

    aput v30, v7, v2

    mul-float v22, v22, v5

    mul-float v23, v23, v3

    add-float v22, v22, v23

    mul-float v24, v24, v0

    add-float v22, v22, v24

    mul-float v25, v25, v1

    add-float v22, v22, v25

    const/4 v0, 0x3

    aput v22, v7, v0

    return-void
.end method

.method public final orthonormalize()V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v4, v4, v1

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v4, v4

    add-float/2addr v2, v4

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v4, v2, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v4, v2, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v4, v2, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v4, v3, v1

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v6, v5, v1

    iget-object v7, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v8, v7, v1

    aget v9, v3, v2

    aget v10, v5, v2

    aget v11, v7, v2

    mul-float v12, v4, v9

    mul-float/2addr v10, v6

    add-float/2addr v12, v10

    mul-float/2addr v11, v8

    add-float/2addr v12, v11

    mul-float/2addr v4, v12

    sub-float/2addr v9, v4

    aput v9, v3, v2

    aget v3, v5, v2

    mul-float/2addr v6, v12

    sub-float/2addr v3, v6

    aput v3, v5, v2

    aget v3, v7, v2

    mul-float/2addr v8, v12

    sub-float/2addr v3, v8

    aput v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    iget v2, v1, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    iput v0, v1, Lcom/threed/jpct/Matrix;->lastRot:F

    invoke-static/range {p2 .. p2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    iput v2, v1, Lcom/threed/jpct/Matrix;->lastSin:F

    invoke-static/range {p2 .. p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Matrix;->lastCos:F

    :cond_0
    iget v0, v1, Lcom/threed/jpct/Matrix;->lastCos:F

    iget v2, v1, Lcom/threed/jpct/Matrix;->lastSin:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    move-object/from16 v4, p1

    invoke-virtual {v4, v4}, Lcom/threed/jpct/SimpleVector;->normalize(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    iget v5, v4, Lcom/threed/jpct/SimpleVector;->x:F

    iget v6, v4, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->z:F

    sget-object v7, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/threed/jpct/Matrix;->globalTmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v8}, Lcom/threed/jpct/Matrix;->setIdentity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float v9, v2, v6

    mul-float v10, v2, v5

    mul-float/2addr v2, v4

    mul-float v11, v3, v5

    mul-float v12, v11, v6

    mul-float v13, v11, v4

    mul-float v14, v3, v6

    mul-float v15, v14, v4

    :try_start_1
    iget-object v1, v8, Lcom/threed/jpct/Matrix;->mat0:[F

    mul-float/2addr v11, v5

    add-float/2addr v11, v0

    const/4 v5, 0x0

    aput v11, v1, v5

    iget-object v11, v8, Lcom/threed/jpct/Matrix;->mat1:[F

    add-float v16, v12, v2

    aput v16, v11, v5

    iget-object v5, v8, Lcom/threed/jpct/Matrix;->mat2:[F

    sub-float v16, v13, v9

    const/16 v17, 0x0

    aput v16, v5, v17

    sub-float/2addr v12, v2

    const/4 v2, 0x1

    aput v12, v1, v2

    mul-float/2addr v14, v6

    add-float/2addr v14, v0

    aput v14, v11, v2

    add-float v6, v15, v10

    aput v6, v5, v2

    add-float/2addr v13, v9

    const/4 v2, 0x2

    aput v13, v1, v2

    sub-float/2addr v15, v10

    aput v15, v11, v2

    mul-float/2addr v3, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    aput v3, v5, v2

    invoke-virtual {v8}, Lcom/threed/jpct/Matrix;->orthonormalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    invoke-virtual {v1, v8}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final rotateX(F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x40490fdb    # (float)Math.PI

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    sget v1, Lcom/threed/jpct/Matrix;->cpi:F

    sget v2, Lcom/threed/jpct/Matrix;->spi:F

    goto :goto_0

    :cond_0
    const v2, -0x3fb6f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    sget v1, Lcom/threed/jpct/Matrix;->mcpi:F

    sget v2, Lcom/threed/jpct/Matrix;->mspi:F

    goto :goto_0

    :cond_1
    const v2, 0x3fc90fdb

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    sget v1, Lcom/threed/jpct/Matrix;->cpih:F

    sget v2, Lcom/threed/jpct/Matrix;->spih:F

    goto :goto_0

    :cond_2
    const v2, -0x4036f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    sget v1, Lcom/threed/jpct/Matrix;->mcpih:F

    sget v2, Lcom/threed/jpct/Matrix;->mspih:F

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    iput v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    :cond_4
    iget v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    iget v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    :goto_0
    iget-object v3, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v4, 0x1

    aget v5, v3, v4

    const/4 v6, 0x2

    aget v7, v3, v6

    iget-object v8, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v9, v8, v4

    aget v10, v8, v6

    iget-object v11, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v12, v11, v4

    aget v13, v11, v6

    iget-object v14, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v15, v14, v4

    aget v16, v14, v6

    mul-float v17, v5, v1

    mul-float v18, v7, v2

    add-float v17, v17, v18

    aput v17, v3, v4

    neg-float v4, v2

    mul-float/2addr v5, v4

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    aput v5, v3, v6

    mul-float v3, v9, v1

    mul-float v5, v10, v2

    add-float/2addr v3, v5

    const/4 v5, 0x1

    aput v3, v8, v5

    mul-float/2addr v9, v4

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v6

    mul-float v3, v12, v1

    mul-float v7, v13, v2

    add-float/2addr v3, v7

    aput v3, v11, v5

    mul-float/2addr v12, v4

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    aput v12, v11, v6

    mul-float v3, v15, v1

    mul-float v2, v2, v16

    add-float/2addr v3, v2

    aput v3, v14, v5

    mul-float/2addr v15, v4

    mul-float v16, v16, v1

    add-float v15, v15, v16

    aput v15, v14, v6

    return-void
.end method

.method public final rotateY(F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x40490fdb    # (float)Math.PI

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    sget v1, Lcom/threed/jpct/Matrix;->cpi:F

    sget v2, Lcom/threed/jpct/Matrix;->spi:F

    goto :goto_0

    :cond_0
    const v2, -0x3fb6f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    sget v1, Lcom/threed/jpct/Matrix;->mcpi:F

    sget v2, Lcom/threed/jpct/Matrix;->mspi:F

    goto :goto_0

    :cond_1
    const v2, 0x3fc90fdb

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    sget v1, Lcom/threed/jpct/Matrix;->cpih:F

    sget v2, Lcom/threed/jpct/Matrix;->spih:F

    goto :goto_0

    :cond_2
    const v2, -0x4036f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    sget v1, Lcom/threed/jpct/Matrix;->mcpih:F

    sget v2, Lcom/threed/jpct/Matrix;->mspih:F

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    iput v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    :cond_4
    iget v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    iget v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    :goto_0
    iget-object v3, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x2

    aget v7, v3, v6

    iget-object v8, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v9, v8, v4

    aget v10, v8, v6

    iget-object v11, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v12, v11, v4

    aget v13, v11, v6

    iget-object v14, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v15, v14, v4

    aget v16, v14, v6

    mul-float v17, v5, v1

    mul-float v18, v7, v2

    add-float v17, v17, v18

    aput v17, v3, v4

    neg-float v4, v2

    mul-float/2addr v5, v4

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    aput v5, v3, v6

    mul-float v3, v9, v1

    mul-float v5, v10, v2

    add-float/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v8, v5

    mul-float/2addr v9, v4

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v6

    mul-float v3, v12, v1

    mul-float v7, v13, v2

    add-float/2addr v3, v7

    aput v3, v11, v5

    mul-float/2addr v12, v4

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    aput v12, v11, v6

    mul-float v3, v15, v1

    mul-float v2, v2, v16

    add-float/2addr v3, v2

    aput v3, v14, v5

    mul-float/2addr v15, v4

    mul-float v16, v16, v1

    add-float v15, v15, v16

    aput v15, v14, v6

    return-void
.end method

.method public final rotateZ(F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x40490fdb    # (float)Math.PI

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    sget v1, Lcom/threed/jpct/Matrix;->cpi:F

    sget v2, Lcom/threed/jpct/Matrix;->spi:F

    goto :goto_0

    :cond_0
    const v2, -0x3fb6f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    sget v1, Lcom/threed/jpct/Matrix;->mcpi:F

    sget v2, Lcom/threed/jpct/Matrix;->mspi:F

    goto :goto_0

    :cond_1
    const v2, 0x3fc90fdb

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    sget v1, Lcom/threed/jpct/Matrix;->cpih:F

    sget v2, Lcom/threed/jpct/Matrix;->spih:F

    goto :goto_0

    :cond_2
    const v2, -0x4036f025

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    sget v1, Lcom/threed/jpct/Matrix;->mcpih:F

    sget v2, Lcom/threed/jpct/Matrix;->mspih:F

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastRot:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    iput v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    invoke-static/range {p1 .. p1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    :cond_4
    iget v1, v0, Lcom/threed/jpct/Matrix;->lastCos:F

    iget v2, v0, Lcom/threed/jpct/Matrix;->lastSin:F

    :goto_0
    iget-object v3, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v7, v3, v6

    iget-object v8, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v9, v8, v4

    aget v10, v8, v6

    iget-object v11, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v12, v11, v4

    aget v13, v11, v6

    iget-object v14, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v15, v14, v4

    aget v16, v14, v6

    mul-float v17, v5, v1

    mul-float v18, v7, v2

    add-float v17, v17, v18

    aput v17, v3, v4

    neg-float v4, v2

    mul-float/2addr v5, v4

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    aput v5, v3, v6

    mul-float v3, v9, v1

    mul-float v5, v10, v2

    add-float/2addr v3, v5

    const/4 v5, 0x0

    aput v3, v8, v5

    mul-float/2addr v9, v4

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v6

    mul-float v3, v12, v1

    mul-float v7, v13, v2

    add-float/2addr v3, v7

    aput v3, v11, v5

    mul-float/2addr v12, v4

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    aput v12, v11, v6

    mul-float v3, v15, v1

    mul-float v2, v2, v16

    add-float/2addr v3, v2

    aput v3, v14, v5

    mul-float/2addr v15, v4

    mul-float v16, v16, v1

    add-float v15, v15, v16

    aput v15, v14, v6

    return-void
.end method

.method public final scalarMul(F)V
    .locals 6

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget v3, v2, v1

    mul-float/2addr v3, p1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    mul-float/2addr v4, p1

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, v2, v4

    mul-float/2addr v5, p1

    aput v5, v2, v4

    aget-object v2, v0, v3

    aget v5, v2, v1

    mul-float/2addr v5, p1

    aput v5, v2, v1

    aget v5, v2, v3

    mul-float/2addr v5, p1

    aput v5, v2, v3

    aget v5, v2, v4

    mul-float/2addr v5, p1

    aput v5, v2, v4

    aget-object v0, v0, v4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    aget v1, v0, v3

    mul-float/2addr v1, p1

    aput v1, v0, v3

    aget v1, v0, v4

    mul-float/2addr v1, p1

    aput v1, v0, v4

    return-void
.end method

.method public final set(IIF)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object p1, v0, p1

    aput p3, p1, p2

    :cond_0
    return-void
.end method

.method public final setColumn(IFFFF)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aput p2, v0, p1

    iget-object p2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aput p3, p2, p1

    iget-object p2, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aput p4, p2, p1

    iget-object p2, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aput p5, p2, p1

    :cond_0
    return-void
.end method

.method public final setDump([F)V
    .locals 6

    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v1, p1, v2

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v3, p1, v1

    aput v3, v0, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    aput v4, v0, v3

    const/4 v4, 0x3

    aget v5, p1, v4

    aput v5, v0, v4

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v5, 0x4

    aget v5, p1, v5

    aput v5, v0, v2

    const/4 v5, 0x5

    aget v5, p1, v5

    aput v5, v0, v1

    const/4 v5, 0x6

    aget v5, p1, v5

    aput v5, v0, v3

    const/4 v5, 0x7

    aget v5, p1, v5

    aput v5, v0, v4

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/16 v5, 0x8

    aget v5, p1, v5

    aput v5, v0, v2

    const/16 v5, 0x9

    aget v5, p1, v5

    aput v5, v0, v1

    const/16 v5, 0xa

    aget v5, p1, v5

    aput v5, v0, v3

    const/16 v5, 0xb

    aget v5, p1, v5

    aput v5, v0, v4

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/16 v5, 0xc

    aget v5, p1, v5

    aput v5, v0, v2

    const/16 v2, 0xd

    aget v2, p1, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    aput v1, v0, v3

    const/16 v1, 0xf

    aget p1, p1, v1

    aput p1, v0, v4

    goto :goto_0

    :cond_0
    const-string p1, "Not a valid matrix dump!"

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final setIdentity()V
    .locals 9

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v4, 0x1

    aput v2, v3, v4

    iget-object v5, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    const/4 v6, 0x2

    aput v2, v5, v6

    iget-object v7, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v8, 0x3

    aput v2, v7, v8

    const/4 v2, 0x0

    aput v2, v0, v4

    aput v2, v0, v6

    aput v2, v0, v8

    aput v2, v3, v1

    aput v2, v3, v6

    aput v2, v3, v8

    aput v2, v5, v4

    aput v2, v5, v1

    aput v2, v5, v8

    aput v2, v7, v4

    aput v2, v7, v6

    aput v2, v7, v1

    return-void
.end method

.method public final setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V

    return-void
.end method

.method public final setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)V
    .locals 10

    .line 2
    invoke-virtual {p2}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, p3, v5

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v8, v7, v5

    .line 6
    aget-object v8, p3, v4

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v9, v8, v5

    .line 7
    aget-object v9, p3, v3

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v0, v9, v5

    .line 8
    aget-object p3, p3, v2

    aput v6, p3, v5

    .line 9
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v0, v7, v4

    .line 10
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v0, v8, v4

    .line 11
    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput p2, v9, v4

    .line 12
    aput v6, p3, v4

    .line 13
    iget p2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput p2, v7, v3

    .line 14
    iget p2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput p2, v8, v3

    .line 15
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput p1, v9, v3

    .line 16
    aput v6, p3, v3

    .line 17
    aput v6, v7, v2

    .line 18
    aput v6, v8, v2

    .line 19
    aput v6, v9, v2

    .line 20
    aput v1, p3, v2

    goto :goto_0

    .line 21
    :cond_0
    iget-object p3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v7, p3, v5

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->x:F

    aput v8, v7, v5

    .line 22
    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    aput v8, v7, v4

    .line 23
    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    aput v0, v7, v3

    .line 24
    aput v6, v7, v2

    .line 25
    aget-object v0, p3, v4

    iget v7, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v7, v0, v5

    .line 26
    iget v7, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v7, v0, v4

    .line 27
    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput p2, v0, v3

    .line 28
    aput v6, v0, v2

    .line 29
    aget-object p2, p3, v3

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v0, p2, v5

    .line 30
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v0, p2, v4

    .line 31
    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    aput p1, p2, v3

    .line 32
    aput v6, p2, v2

    .line 33
    aget-object p1, p3, v2

    aput v6, p1, v5

    .line 34
    aput v6, p1, v4

    .line 35
    aput v6, p1, v3

    .line 36
    aput v1, p1, v2

    :goto_0
    return-void
.end method

.method public final setRow(IFFFF)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    :cond_0
    return-void
.end method

.method public final setTo(Lcom/threed/jpct/Matrix;)V
    .locals 8

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object p1, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, p1, v1

    aget v4, v3, v1

    aput v4, v2, v1

    const/4 v4, 0x1

    aget v5, v3, v4

    aput v5, v2, v4

    const/4 v5, 0x2

    aget v6, v3, v5

    aput v6, v2, v5

    const/4 v6, 0x3

    aget v3, v3, v6

    aput v3, v2, v6

    aget-object v2, v0, v4

    aget-object v3, p1, v4

    aget v7, v3, v1

    aput v7, v2, v1

    aget v7, v3, v4

    aput v7, v2, v4

    aget v7, v3, v5

    aput v7, v2, v5

    aget v3, v3, v6

    aput v3, v2, v6

    aget-object v2, v0, v5

    aget-object v3, p1, v5

    aget v7, v3, v1

    aput v7, v2, v1

    aget v7, v3, v4

    aput v7, v2, v4

    aget v7, v3, v5

    aput v7, v2, v5

    aget v3, v3, v6

    aput v3, v2, v6

    aget-object v0, v0, v6

    aget-object p1, p1, v6

    aget v2, p1, v1

    aput v2, v0, v1

    aget v1, p1, v4

    aput v1, v0, v4

    aget v1, p1, v5

    aput v1, v0, v5

    aget p1, p1, v6

    aput p1, v0, v6

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "(\n"

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v2

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v2

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public transformToGL()V
    .locals 5

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x2

    aget v4, v0, v2

    mul-float/2addr v4, v3

    aput v4, v0, v2

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    aget v4, v0, v1

    mul-float/2addr v4, v3

    aput v4, v0, v1

    aget v4, v0, v2

    mul-float/2addr v4, v3

    aput v4, v0, v2

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v4, v0, v1

    mul-float/2addr v4, v3

    aput v4, v0, v1

    aget v4, v0, v2

    mul-float/2addr v4, v3

    aput v4, v0, v2

    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v4, v0, v1

    mul-float/2addr v4, v3

    aput v4, v0, v1

    aget v1, v0, v2

    mul-float/2addr v1, v3

    aput v1, v0, v2

    return-void
.end method

.method public final translate(FFF)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    .line 5
    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x2

    .line 6
    aget p2, v0, p1

    add-float/2addr p2, p3

    aput p2, v0, p1

    return-void
.end method

.method public final translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 2
    aget v2, v0, v1

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 3
    aget v2, v0, v1

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    add-float/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public final transpose()Lcom/threed/jpct/Matrix;
    .locals 14

    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat0:[F

    iget-object v2, p0, Lcom/threed/jpct/Matrix;->mat1:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aput v4, v1, v5

    iget-object v4, p0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v6, v4, v3

    const/4 v7, 0x2

    aput v6, v1, v7

    iget-object v6, p0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v8, v6, v3

    const/4 v9, 0x3

    aput v8, v1, v9

    iget-object v8, v0, Lcom/threed/jpct/Matrix;->mat1:[F

    iget-object v10, p0, Lcom/threed/jpct/Matrix;->mat0:[F

    aget v11, v10, v5

    aput v11, v8, v3

    aget v11, v4, v5

    aput v11, v8, v7

    aget v11, v6, v5

    aput v11, v8, v9

    iget-object v11, v0, Lcom/threed/jpct/Matrix;->mat2:[F

    aget v12, v10, v7

    aput v12, v11, v3

    aget v12, v2, v7

    aput v12, v11, v5

    aget v12, v6, v7

    aput v12, v11, v9

    iget-object v12, v0, Lcom/threed/jpct/Matrix;->mat3:[F

    aget v13, v10, v9

    aput v13, v12, v3

    aget v13, v2, v9

    aput v13, v12, v5

    aget v13, v4, v9

    aput v13, v12, v7

    aget v10, v10, v3

    aput v10, v1, v3

    aget v1, v2, v5

    aput v1, v8, v5

    aget v1, v4, v7

    aput v1, v11, v7

    aget v1, v6, v9

    aput v1, v12, v9

    return-object v0
.end method
