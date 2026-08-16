.class public Lcom/ardor3d/intersection/TriangleTriangleIntersect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPSILON:D = 1.0E-12


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coplanarTriTri(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z
    .locals 11

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    cmpl-double v0, v5, v0

    if-lez v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    move v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    cmpl-double v0, v5, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    const/4 v1, 0x3

    new-array v5, v1, [D

    move-object v6, p1

    invoke-virtual {p1, v5}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    new-array v6, v1, [D

    move-object v7, p2

    invoke-virtual {p2, v6}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    new-array v7, v1, [D

    move-object v8, p3

    invoke-virtual {p3, v7}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    new-array v8, v1, [D

    move-object v9, p4

    invoke-virtual {p4, v8}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    new-array v9, v1, [D

    move-object/from16 v10, p5

    invoke-virtual {v10, v9}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    new-array v1, v1, [D

    move-object/from16 v10, p6

    invoke-virtual {v10, v1}, Lcom/ardor3d/math/Vector3;->toArray([D)[D

    move-object p0, v5

    move-object p1, v6

    move-object p2, v8

    move-object p3, v9

    move-object p4, v1

    move/from16 p5, v0

    move/from16 p6, v2

    invoke-static/range {p0 .. p6}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeAgainstTriEdges([D[D[D[D[DII)Z

    move-result v10

    if-eqz v10, :cond_3

    return v4

    :cond_3
    move-object p0, v6

    move-object p1, v7

    move-object p2, v8

    move-object p3, v9

    move-object p4, v1

    move/from16 p5, v0

    move/from16 p6, v2

    invoke-static/range {p0 .. p6}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeAgainstTriEdges([D[D[D[D[DII)Z

    move-result v10

    if-eqz v10, :cond_4

    return v4

    :cond_4
    move-object p0, v7

    move-object p1, v5

    move-object p2, v8

    move-object p3, v9

    move-object p4, v1

    move/from16 p5, v0

    move/from16 p6, v2

    invoke-static/range {p0 .. p6}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeAgainstTriEdges([D[D[D[D[DII)Z

    move-result v10

    if-eqz v10, :cond_5

    return v4

    :cond_5
    move-object p0, v5

    move-object p1, v8

    move-object p2, v9

    move-object p3, v1

    move p4, v0

    move/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->pointInTri([D[D[D[DII)Z

    move-object p0, v8

    move-object p1, v5

    move-object p2, v6

    move-object p3, v7

    invoke-static/range {p0 .. p5}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->pointInTri([D[D[D[DII)Z

    return v3
.end method

.method private static edgeAgainstTriEdges([D[D[D[D[DII)Z
    .locals 14

    aget-wide v0, p1, p5

    aget-wide v2, p0, p5

    sub-double v9, v0, v2

    aget-wide v0, p1, p6

    aget-wide v2, p0, p6

    sub-double v11, v0, v2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v5, v9

    move-wide v7, v11

    invoke-static/range {v0 .. v8}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeEdgeTest([D[D[DIIDD)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    return v13

    :cond_0
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v5, v9

    move-wide v7, v11

    invoke-static/range {v0 .. v8}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeEdgeTest([D[D[DIIDD)Z

    move-result v0

    if-eqz v0, :cond_1

    return v13

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-wide v5, v9

    move-wide v7, v11

    invoke-static/range {v0 .. v8}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->edgeEdgeTest([D[D[DIIDD)Z

    move-result v0

    if-eqz v0, :cond_2

    return v13

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static edgeEdgeTest([D[D[DIIDD)Z
    .locals 12

    aget-wide v0, p1, p3

    aget-wide v2, p2, p3

    sub-double v2, v0, v2

    aget-wide v4, p1, p4

    aget-wide v6, p2, p4

    sub-double v6, v4, v6

    aget-wide v8, p0, p3

    sub-double/2addr v8, v0

    aget-wide v0, p0, p4

    sub-double/2addr v0, v4

    mul-double v4, p7, v2

    mul-double v10, p5, v6

    sub-double/2addr v4, v10

    mul-double/2addr v6, v8

    mul-double/2addr v2, v0

    sub-double/2addr v6, v2

    const-wide/16 v2, 0x0

    cmpl-double v10, v4, v2

    if-lez v10, :cond_0

    cmpl-double v11, v6, v2

    if-ltz v11, :cond_0

    cmpg-double v11, v6, v4

    if-lez v11, :cond_1

    :cond_0
    cmpg-double v11, v4, v2

    if-gez v11, :cond_3

    cmpg-double v11, v6, v2

    if-gtz v11, :cond_3

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_3

    :cond_1
    mul-double v0, v0, p5

    mul-double v6, p7, v8

    sub-double/2addr v0, v6

    const/4 v6, 0x1

    if-lez v10, :cond_2

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    return v6

    :cond_2
    cmpg-double v2, v0, v2

    if-gtz v2, :cond_3

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static intersectTriTri(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v9

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v10

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v11

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v12

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    :try_start_0
    invoke-virtual {v3, v0, v9}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v0, v10}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9, v10, v11}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v11, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v14

    neg-double v14, v14

    invoke-virtual {v11, v5}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v16

    add-double v16, v16, v14

    invoke-virtual {v11, v6}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v18

    add-double v18, v18, v14

    invoke-virtual {v11, v7}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    add-double v20, v20, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v22, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v14, v14, v22

    const-wide/16 v24, 0x0

    if-gez v14, :cond_0

    move-wide/from16 v32, v24

    goto :goto_0

    :cond_0
    move-wide/from16 v32, v16

    :goto_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v22

    if-gez v14, :cond_1

    move-wide/from16 v34, v24

    goto :goto_1

    :cond_1
    move-wide/from16 v34, v18

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v14, v14, v22

    if-gez v14, :cond_2

    move-wide/from16 v36, v24

    goto :goto_2

    :cond_2
    move-wide/from16 v36, v20

    :goto_2
    mul-double v38, v32, v34

    mul-double v40, v32, v36

    cmpl-double v14, v38, v24

    if-lez v14, :cond_3

    cmpl-double v14, v40, v24

    if-lez v14, :cond_3

    :goto_3
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v8

    :cond_3
    :try_start_1
    invoke-virtual {v6, v5, v9}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7, v5, v10}, Lcom/ardor3d/math/Vector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9, v10, v12}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v12, v5}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v14

    neg-double v14, v14

    invoke-virtual {v12, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v16

    add-double v16, v16, v14

    invoke-virtual {v12, v3}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v18

    add-double v18, v18, v14

    invoke-virtual {v12, v4}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    add-double v20, v20, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v22

    if-gez v14, :cond_4

    move-wide/from16 v48, v24

    goto :goto_4

    :cond_4
    move-wide/from16 v48, v16

    :goto_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v22

    if-gez v14, :cond_5

    move-wide/from16 v50, v24

    goto :goto_5

    :cond_5
    move-wide/from16 v50, v18

    :goto_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v22

    if-gez v14, :cond_6

    move-wide/from16 v52, v24

    goto :goto_6

    :cond_6
    move-wide/from16 v52, v20

    :goto_6
    mul-double v54, v48, v50

    mul-double v56, v48, v52

    cmpl-double v14, v54, v24

    if-lez v14, :cond_7

    cmpl-double v14, v56, v24

    if-lez v14, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v11, v12, v13}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    cmpl-double v20, v16, v14

    if-lez v20, :cond_8

    move v8, v2

    move-wide/from16 v14, v16

    :cond_8
    cmpl-double v14, v18, v14

    if-lez v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v19

    invoke-virtual/range {p3 .. p3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v21

    invoke-virtual/range {p4 .. p4}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v23

    invoke-virtual/range {p5 .. p5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v25

    :goto_7
    move-wide/from16 v42, v14

    move-wide/from16 v44, v17

    move-wide/from16 v46, v19

    move-wide/from16 v28, v23

    move-wide/from16 v30, v25

    move-wide/from16 v26, v21

    goto :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_9
    if-ne v8, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v19

    invoke-virtual/range {p3 .. p3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v21

    invoke-virtual/range {p4 .. p4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v23

    invoke-virtual/range {p5 .. p5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v25

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v19

    invoke-virtual/range {p3 .. p3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v21

    invoke-virtual/range {p4 .. p4}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v23

    invoke-virtual/range {p5 .. p5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v25

    goto :goto_7

    :goto_8
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v14

    move-object/from16 v58, v8

    move-object/from16 v59, v14

    invoke-static/range {v42 .. v59}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->newComputeIntervals(DDDDDDDDLcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector2;)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->coplanarTriTri(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v0

    :cond_b
    :try_start_2
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v15

    invoke-static {}, Lcom/ardor3d/math/Vector2;->fetchTempInstance()Lcom/ardor3d/math/Vector2;

    move-result-object v17

    move-object/from16 v42, v15

    move-object/from16 v43, v17

    invoke-static/range {v26 .. v43}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->newComputeIntervals(DDDDDDDDLcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector2;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->coplanarTriTri(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v0

    :cond_c
    :try_start_3
    invoke-virtual {v14}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v3

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v5

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v18

    mul-double v5, v5, v18

    mul-double v18, v3, v5

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v20

    mul-double v20, v20, v18

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v22

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v24

    mul-double v22, v22, v24

    mul-double v22, v22, v5

    add-double v22, v20, v22

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v24

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v26

    mul-double v24, v24, v26

    mul-double v24, v24, v5

    add-double v20, v20, v24

    new-array v0, v1, [D

    const/4 v5, 0x0

    aput-wide v22, v0, v5

    aput-wide v20, v0, v2

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    mul-double v5, v5, v18

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    mul-double v18, v18, v3

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v18, v5, v18

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    mul-double v20, v20, v3

    invoke-virtual/range {v17 .. v17}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v3

    mul-double v20, v20, v3

    add-double v5, v5, v20

    new-array v1, v1, [D

    const/4 v3, 0x0

    aput-wide v18, v1, v3

    aput-wide v5, v1, v2

    invoke-static {v8}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v15}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v14}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    invoke-static/range {v17 .. v17}, Lcom/ardor3d/math/Vector2;->releaseTempInstance(Lcom/ardor3d/math/Vector2;)V

    invoke-static {v0}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->sort([D)V

    invoke-static {v1}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->sort([D)V

    aget-wide v3, v0, v2

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    cmpg-double v3, v3, v6

    if-ltz v3, :cond_e

    aget-wide v3, v1, v2

    aget-wide v6, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmpg-double v0, v3, v6

    if-gez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v2

    :cond_e
    :goto_9
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const/4 v0, 0x0

    return v0

    :goto_a
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v12}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v13}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw v0
.end method

.method private static newComputeIntervals(DDDDDDDDLcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector2;)Z
    .locals 12

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p16

    move-object/from16 v7, p17

    const-wide/16 v8, 0x0

    cmpl-double v10, p12, v8

    if-lez v10, :cond_0

    invoke-virtual {v6, v4, v5}, Lcom/ardor3d/math/Vector3;->setX(D)V

    sub-double/2addr v0, v4

    mul-double v0, v0, p10

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    sub-double v0, v2, v4

    mul-double v0, v0, p10

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    sub-double v0, p10, p6

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    sub-double v0, p10, p8

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    goto/16 :goto_1

    :cond_0
    cmpl-double v10, p14, v8

    if-lez v10, :cond_1

    invoke-virtual {v6, p2, p3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    sub-double/2addr v0, v2

    mul-double v0, v0, p8

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    sub-double v0, v4, v2

    mul-double v0, v0, p8

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    sub-double v0, p8, p6

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    sub-double v0, p8, p10

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    goto :goto_1

    :cond_1
    mul-double v10, p8, p10

    cmpl-double v10, v10, v8

    if-gtz v10, :cond_5

    cmpl-double v10, p6, v8

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    cmpl-double v10, p8, v8

    if-eqz v10, :cond_3

    invoke-virtual {v6, p2, p3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    sub-double/2addr v0, v2

    mul-double v0, v0, p8

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    sub-double v0, v4, v2

    mul-double v0, v0, p8

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    sub-double v0, p8, p6

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    sub-double v0, p8, p10

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    goto :goto_1

    :cond_3
    cmpl-double v8, p10, v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v4, v5}, Lcom/ardor3d/math/Vector3;->setX(D)V

    sub-double/2addr v0, v4

    mul-double v0, v0, p10

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    sub-double v0, v2, v4

    mul-double v0, v0, p10

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    sub-double v0, p10, p6

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    sub-double v0, p10, p8

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    invoke-virtual {v6, p0, p1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    sub-double/2addr v2, v0

    mul-double v2, v2, p6

    invoke-virtual {v6, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    sub-double v0, v4, v0

    mul-double v0, v0, p6

    invoke-virtual {v6, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    sub-double v0, p6, p8

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    sub-double v0, p6, p10

    invoke-virtual {v7, v0, v1}, Lcom/ardor3d/math/Vector2;->setY(D)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static pointInTri([D[D[D[DII)Z
    .locals 22

    aget-wide v0, p2, p5

    aget-wide v2, p1, p5

    sub-double v4, v0, v2

    aget-wide v6, p2, p4

    aget-wide v8, p1, p4

    sub-double v10, v6, v8

    neg-double v10, v10

    neg-double v12, v4

    mul-double/2addr v12, v8

    mul-double v14, v10, v2

    sub-double/2addr v12, v14

    aget-wide v14, p0, p4

    mul-double/2addr v4, v14

    aget-wide v16, p0, p5

    mul-double v10, v10, v16

    add-double/2addr v4, v10

    add-double/2addr v4, v12

    aget-wide v10, p3, p5

    sub-double v12, v10, v0

    aget-wide v18, p3, p4

    move-wide/from16 p0, v4

    sub-double v4, v18, v6

    neg-double v4, v4

    move-wide/from16 v20, v8

    neg-double v8, v12

    mul-double/2addr v8, v6

    mul-double/2addr v0, v4

    sub-double/2addr v8, v0

    mul-double/2addr v12, v14

    mul-double v4, v4, v16

    add-double/2addr v12, v4

    add-double/2addr v12, v8

    sub-double/2addr v2, v10

    sub-double v8, v20, v18

    neg-double v0, v8

    neg-double v4, v2

    mul-double v4, v4, v18

    mul-double/2addr v10, v0

    sub-double/2addr v4, v10

    mul-double/2addr v2, v14

    mul-double v0, v0, v16

    add-double/2addr v2, v0

    add-double/2addr v2, v4

    move-wide/from16 v4, p0

    mul-double v0, v4, v12

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_0

    mul-double/2addr v4, v2

    cmpl-double v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static sort([D)V
    .locals 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    cmpl-double v6, v1, v4

    if-lez v6, :cond_0

    aput-wide v4, p0, v0

    aput-wide v1, p0, v3

    :cond_0
    return-void
.end method
