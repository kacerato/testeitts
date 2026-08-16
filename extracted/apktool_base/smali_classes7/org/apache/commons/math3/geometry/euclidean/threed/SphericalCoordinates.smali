.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133299eL


# instance fields
.field private jacobian:[[D

.field private final phi:D

.field private phiHessian:[[D

.field private final r:D

.field private rHessian:[[D

.field private final theta:D

.field private thetaHessian:[[D

.field private final v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(DDD)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v3

    .line 8
    invoke-static/range {p3 .. p4}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    .line 9
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    .line 10
    invoke-static/range {p5 .. p6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v9

    .line 11
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    move-wide/from16 v11, p3

    .line 12
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    move-wide/from16 v11, p5

    .line 13
    iput-wide v11, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    .line 14
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    mul-double/2addr v3, v1

    mul-double v12, v3, v9

    mul-double v3, v1, v5

    mul-double/2addr v3, v9

    mul-double v16, v1, v7

    move-object v11, v14

    move-object v1, v14

    move-wide v14, v3

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getAlpha()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-void
.end method

.method private computeHessians()V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    mul-double v7, v1, v1

    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double v13, v7, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v15

    add-double v17, v13, v11

    move-wide/from16 v19, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v21, v1, v9

    div-double v23, v3, v9

    div-double v9, v5, v9

    div-double v25, v1, v13

    div-double v27, v3, v13

    div-double v21, v21, v17

    div-double v23, v23, v17

    div-double v9, v9, v17

    move-wide/from16 v29, v7

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/16 v31, 0x1

    const/16 v32, 0x3

    aput v32, v8, v31

    const/16 v33, 0x0

    aput v32, v8, v33

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    iput-object v8, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v34, v8, v33

    mul-double v35, v3, v23

    mul-double v37, v5, v9

    add-double v39, v35, v37

    aput-wide v39, v34, v33

    aget-object v39, v8, v31

    move-wide/from16 v40, v11

    neg-double v11, v1

    mul-double v23, v23, v11

    aput-wide v23, v39, v33

    move-wide/from16 v23, v11

    const/4 v11, 0x2

    aget-object v8, v8, v11

    neg-double v11, v5

    mul-double v11, v11, v21

    aput-wide v11, v8, v33

    mul-double v21, v21, v1

    add-double v37, v21, v37

    aput-wide v37, v39, v31

    move-wide/from16 v37, v1

    neg-double v1, v3

    mul-double/2addr v1, v9

    aput-wide v1, v8, v31

    add-double v21, v21, v35

    const/4 v1, 0x2

    aput-wide v21, v8, v1

    aget-wide v21, v39, v33

    aput-wide v21, v34, v31

    aput-wide v11, v34, v1

    aget-wide v11, v8, v31

    aput-wide v11, v39, v1

    new-array v2, v1, [I

    aput v1, v2, v31

    aput v1, v2, v33

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v2, v1, v33

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v21, v25, v11

    mul-double v21, v21, v27

    aput-wide v21, v2, v33

    aget-object v1, v1, v31

    mul-double v21, v27, v27

    mul-double v34, v25, v25

    sub-double v21, v21, v34

    aput-wide v21, v1, v33

    const-wide/high16 v34, -0x4000000000000000L    # -2.0

    mul-double v25, v25, v34

    mul-double v25, v25, v27

    aput-wide v25, v1, v31

    aput-wide v21, v2, v31

    mul-double v1, v15, v17

    mul-double v21, v15, v1

    mul-double v1, v1, v17

    mul-double v17, v1, v13

    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    mul-double v25, v25, v13

    add-double v25, v25, v40

    const/4 v8, 0x2

    new-array v11, v8, [I

    aput v32, v11, v31

    aput v32, v11, v33

    invoke-static {v7, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    iput-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v8, v7, v33

    mul-double v11, v29, v25

    sub-double v11, v21, v11

    mul-double/2addr v11, v5

    div-double v11, v11, v17

    aput-wide v11, v8, v33

    aget-object v11, v7, v31

    mul-double v23, v23, v3

    mul-double v23, v23, v5

    mul-double v23, v23, v25

    div-double v23, v23, v17

    aput-wide v23, v11, v33

    const/4 v12, 0x2

    aget-object v7, v7, v12

    sub-double v13, v13, v40

    mul-double v23, v37, v13

    div-double v23, v23, v1

    aput-wide v23, v7, v33

    mul-double v19, v19, v25

    sub-double v21, v21, v19

    mul-double v5, v5, v21

    div-double v5, v5, v17

    aput-wide v5, v11, v31

    mul-double/2addr v3, v13

    div-double/2addr v3, v1

    aput-wide v3, v7, v31

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v15, v1

    mul-double/2addr v15, v9

    iget-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double/2addr v15, v1

    const/4 v1, 0x2

    aput-wide v15, v7, v1

    aget-wide v2, v11, v33

    aput-wide v2, v8, v31

    aput-wide v23, v8, v1

    aget-wide v2, v7, v31

    aput-wide v2, v11, v1

    :cond_0
    return-void
.end method

.method private computeJacobian()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    mul-double v7, v1, v1

    mul-double v9, v3, v3

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double v11, v5, v5

    add-double/2addr v11, v7

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x1

    const/16 v16, 0x3

    aput v16, v14, v15

    const/16 v17, 0x0

    aput v16, v14, v17

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    iput-object v13, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v14, v13, v17

    move-wide/from16 v18, v9

    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    div-double v20, v1, v9

    aput-wide v20, v14, v17

    div-double v20, v3, v9

    aput-wide v20, v14, v15

    div-double v9, v5, v9

    const/16 v16, 0x2

    aput-wide v9, v14, v16

    aget-object v9, v13, v15

    move-wide/from16 v20, v11

    neg-double v10, v3

    div-double/2addr v10, v7

    aput-wide v10, v9, v17

    div-double v7, v1, v7

    aput-wide v7, v9, v15

    aget-object v7, v13, v16

    mul-double/2addr v1, v5

    mul-double v9, v18, v20

    div-double/2addr v1, v9

    aput-wide v1, v7, v17

    mul-double/2addr v3, v5

    div-double/2addr v3, v9

    aput-wide v3, v7, v15

    move-wide/from16 v1, v18

    neg-double v1, v1

    div-double v1, v1, v20

    aput-wide v1, v7, v16

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v3

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates$DataTransferObject;-><init>(DDD)V

    return-object v7
.end method


# virtual methods
.method public getCartesian()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPhi()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phi:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->theta:D

    return-wide v0
.end method

.method public toCartesianGradient([D)[D
    .locals 19

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v5, v4, v0

    aget-wide v6, v5, v0

    mul-double/2addr v6, v1

    const/4 v8, 0x1

    aget-wide v9, p1, v8

    aget-object v11, v4, v8

    aget-wide v12, v11, v0

    mul-double/2addr v12, v9

    add-double/2addr v6, v12

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    aget-object v4, v4, v12

    aget-wide v15, v4, v0

    mul-double/2addr v15, v13

    add-double/2addr v6, v15

    aget-wide v15, v5, v8

    mul-double/2addr v15, v1

    aget-wide v17, v11, v8

    mul-double v9, v9, v17

    add-double/2addr v15, v9

    aget-wide v9, v4, v8

    mul-double/2addr v9, v13

    add-double/2addr v15, v9

    aget-wide v9, v5, v12

    mul-double/2addr v1, v9

    aget-wide v9, v4, v12

    mul-double/2addr v13, v9

    add-double/2addr v1, v13

    const/4 v4, 0x3

    new-array v4, v4, [D

    aput-wide v6, v4, v0

    aput-wide v15, v4, v8

    aput-wide v1, v4, v12

    return-object v4
.end method

.method public toCartesianHessian([[D[D)[[D
    .locals 30

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeJacobian()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->computeHessians()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v7, v1, [I

    aput v4, v7, v3

    aput v4, v7, v5

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    aget-object v6, v2, v5

    aget-object v7, p1, v5

    aget-wide v8, v7, v5

    iget-object v10, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->jacobian:[[D

    aget-object v11, v10, v5

    aget-wide v12, v11, v5

    mul-double/2addr v8, v12

    aget-object v12, p1, v3

    aget-wide v13, v12, v5

    aget-object v15, v10, v3

    aget-wide v16, v15, v5

    mul-double v13, v13, v16

    add-double/2addr v8, v13

    aget-object v13, p1, v1

    aget-wide v16, v13, v5

    aget-object v10, v10, v1

    aget-wide v18, v10, v5

    mul-double v16, v16, v18

    add-double v8, v8, v16

    aput-wide v8, v6, v5

    aget-wide v8, v7, v5

    aget-wide v16, v11, v3

    mul-double v16, v16, v8

    aget-wide v18, v12, v5

    aget-wide v20, v15, v3

    mul-double v20, v20, v18

    add-double v16, v16, v20

    aget-wide v20, v13, v5

    aget-wide v22, v10, v3

    mul-double v22, v22, v20

    add-double v16, v16, v22

    aput-wide v16, v6, v3

    aget-wide v16, v11, v1

    mul-double v8, v8, v16

    aget-wide v16, v10, v1

    mul-double v20, v20, v16

    add-double v8, v8, v20

    aput-wide v8, v6, v1

    aget-object v7, v2, v3

    aget-wide v8, v11, v5

    mul-double v18, v18, v8

    aget-wide v8, v12, v3

    aget-wide v16, v15, v5

    mul-double v16, v16, v8

    add-double v18, v18, v16

    aget-wide v16, v13, v3

    aget-wide v20, v10, v5

    mul-double v20, v20, v16

    add-double v18, v18, v20

    aput-wide v18, v7, v5

    aget-wide v18, v12, v5

    aget-wide v20, v11, v3

    mul-double v18, v18, v20

    aget-wide v20, v15, v3

    mul-double v8, v8, v20

    add-double v18, v18, v8

    aget-wide v8, v10, v3

    mul-double v16, v16, v8

    add-double v18, v18, v16

    aput-wide v18, v7, v3

    aget-object v2, v2, v1

    aget-wide v8, v13, v5

    aget-wide v16, v11, v5

    mul-double v8, v8, v16

    aget-wide v16, v13, v3

    aget-wide v18, v15, v5

    mul-double v18, v18, v16

    add-double v8, v8, v18

    aget-wide v18, v13, v1

    aget-wide v20, v10, v5

    mul-double v20, v20, v18

    add-double v8, v8, v20

    aput-wide v8, v2, v5

    aget-wide v12, v13, v5

    aget-wide v20, v11, v3

    mul-double v20, v20, v12

    aget-wide v22, v15, v3

    mul-double v16, v16, v22

    add-double v20, v20, v16

    aget-wide v16, v10, v3

    mul-double v16, v16, v18

    add-double v20, v20, v16

    aput-wide v20, v2, v3

    aget-wide v16, v11, v1

    mul-double v12, v12, v16

    aget-wide v16, v10, v1

    mul-double v18, v18, v16

    add-double v12, v12, v18

    aput-wide v12, v2, v1

    aget-object v14, v4, v5

    aget-wide v16, v11, v5

    aget-wide v18, v6, v5

    mul-double v16, v16, v18

    aget-wide v18, v15, v5

    aget-wide v22, v7, v5

    mul-double v18, v18, v22

    add-double v16, v16, v18

    aget-wide v18, v10, v5

    mul-double v18, v18, v8

    add-double v16, v16, v18

    aput-wide v16, v14, v5

    aget-object v8, v4, v3

    aget-wide v16, v11, v3

    aget-wide v18, v6, v5

    mul-double v18, v18, v16

    aget-wide v22, v15, v3

    aget-wide v24, v7, v5

    mul-double v24, v24, v22

    add-double v18, v18, v24

    aget-wide v24, v10, v3

    aget-wide v26, v2, v5

    mul-double v26, v26, v24

    add-double v18, v18, v26

    aput-wide v18, v8, v5

    aget-object v9, v4, v1

    aget-wide v18, v11, v1

    aget-wide v26, v6, v5

    mul-double v26, v26, v18

    aget-wide v28, v10, v1

    aget-wide v10, v2, v5

    mul-double v10, v10, v28

    add-double v26, v26, v10

    aput-wide v26, v9, v5

    aget-wide v10, v6, v3

    mul-double v16, v16, v10

    aget-wide v10, v7, v3

    mul-double v22, v22, v10

    add-double v16, v16, v22

    mul-double v24, v24, v20

    add-double v16, v16, v24

    aput-wide v16, v8, v3

    aget-wide v10, v6, v3

    mul-double v10, v10, v18

    aget-wide v15, v2, v3

    mul-double v15, v15, v28

    add-double/2addr v10, v15

    aput-wide v10, v9, v3

    aget-wide v10, v6, v1

    mul-double v18, v18, v10

    mul-double v28, v28, v12

    add-double v18, v18, v28

    aput-wide v18, v9, v1

    aget-wide v6, v14, v5

    aget-wide v10, p2, v5

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->rHessian:[[D

    aget-object v12, v2, v5

    aget-wide v15, v12, v5

    mul-double/2addr v10, v15

    aget-wide v12, p2, v3

    iget-object v15, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->thetaHessian:[[D

    aget-object v16, v15, v5

    aget-wide v20, v16, v5

    mul-double v20, v20, v12

    add-double v10, v10, v20

    aget-wide v16, p2, v1

    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SphericalCoordinates;->phiHessian:[[D

    aget-object v21, v1, v5

    aget-wide v22, v21, v5

    mul-double v22, v22, v16

    add-double v10, v10, v22

    add-double/2addr v6, v10

    aput-wide v6, v14, v5

    aget-wide v6, v8, v5

    aget-wide v10, p2, v5

    aget-object v21, v2, v3

    aget-wide v22, v21, v5

    mul-double v10, v10, v22

    aget-object v15, v15, v3

    aget-wide v22, v15, v5

    mul-double v22, v22, v12

    add-double v10, v10, v22

    aget-object v22, v1, v3

    aget-wide v23, v22, v5

    mul-double v23, v23, v16

    add-double v10, v10, v23

    add-double/2addr v6, v10

    aput-wide v6, v8, v5

    aget-wide v6, v9, v5

    aget-wide v10, p2, v5

    const/16 v20, 0x2

    aget-object v2, v2, v20

    aget-wide v23, v2, v5

    mul-double v10, v10, v23

    aget-object v1, v1, v20

    aget-wide v23, v1, v5

    mul-double v23, v23, v16

    add-double v10, v10, v23

    add-double/2addr v6, v10

    aput-wide v6, v9, v5

    aget-wide v10, v8, v3

    aget-wide v23, p2, v5

    aget-wide v25, v21, v3

    mul-double v25, v25, v23

    aget-wide v27, v15, v3

    mul-double v12, v12, v27

    add-double v25, v25, v12

    aget-wide v12, v22, v3

    mul-double v12, v12, v16

    add-double v25, v25, v12

    add-double v10, v10, v25

    aput-wide v10, v8, v3

    aget-wide v10, v9, v3

    aget-wide v12, v2, v3

    mul-double v12, v12, v23

    aget-wide v21, v1, v3

    mul-double v21, v21, v16

    add-double v12, v12, v21

    add-double/2addr v10, v12

    aput-wide v10, v9, v3

    const/4 v10, 0x2

    aget-wide v11, v2, v10

    mul-double v23, v23, v11

    aget-wide v11, v1, v10

    mul-double v16, v16, v11

    add-double v23, v23, v16

    add-double v18, v18, v23

    aput-wide v18, v9, v10

    aget-wide v1, v8, v5

    aput-wide v1, v14, v3

    aput-wide v6, v14, v10

    aget-wide v1, v9, v3

    aput-wide v1, v8, v10

    return-object v4
.end method
