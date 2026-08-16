.class public Lcom/ardor3d/spline/CatmullRomSpline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/spline/Spline;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;D)Lcom/ardor3d/math/Vector3;
    .locals 8

    .line 1
    new-instance v7, Lcom/ardor3d/math/Vector3;

    invoke-direct {v7}, Lcom/ardor3d/math/Vector3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ardor3d/spline/CatmullRomSpline;->interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 23

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    const-wide/16 v3, 0x0

    cmpg-double v3, p5, v3

    if-gtz v3, :cond_0

    .line 2
    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto/16 :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p5, v3

    if-ltz v3, :cond_1

    .line 3
    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto/16 :goto_0

    :cond_1
    mul-double v3, p5, p5

    mul-double v5, v3, p5

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    neg-double v11, v11

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double v11, v11, p5

    add-double/2addr v7, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v9

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v17

    add-double/2addr v11, v13

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double/2addr v11, v3

    add-double/2addr v7, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    neg-double v11, v11

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v13, v13, v19

    add-double/2addr v11, v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    mul-double v13, v13, v19

    sub-double/2addr v11, v13

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v11

    invoke-virtual {v2, v7, v8}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v7

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    add-double v13, v13, v21

    mul-double v13, v13, p5

    add-double/2addr v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    mul-double/2addr v13, v9

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    mul-double v21, v21, v15

    sub-double v13, v13, v21

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    mul-double v21, v21, v17

    add-double v13, v13, v21

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    sub-double v13, v13, v21

    mul-double/2addr v13, v3

    add-double/2addr v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    mul-double v21, v21, v19

    add-double v13, v13, v21

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    mul-double v21, v21, v19

    sub-double v13, v13, v21

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    add-double v13, v13, v21

    mul-double/2addr v13, v5

    add-double/2addr v7, v13

    mul-double/2addr v7, v11

    invoke-virtual {v2, v7, v8}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 6
    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    neg-double v13, v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v21

    add-double v13, v13, v21

    mul-double v13, v13, p5

    add-double/2addr v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    mul-double/2addr v13, v9

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, v15

    sub-double/2addr v13, v9

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double v9, v9, v17

    add-double/2addr v13, v9

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    sub-double/2addr v13, v9

    mul-double/2addr v13, v3

    add-double/2addr v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v3

    neg-double v3, v3

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double v9, v9, v19

    add-double/2addr v3, v9

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    mul-double v0, v0, v19

    sub-double/2addr v3, v0

    invoke-interface/range {p4 .. p4}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    add-double/2addr v3, v0

    mul-double/2addr v3, v5

    add-double/2addr v7, v3

    mul-double/2addr v7, v11

    invoke-virtual {v2, v7, v8}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_2
    :goto_0
    return-object v2
.end method
