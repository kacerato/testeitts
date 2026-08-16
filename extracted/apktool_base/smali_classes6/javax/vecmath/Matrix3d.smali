.class public Ljavax/vecmath/Matrix3d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EPS:D = 1.110223024E-16

.field private static final ERR_EPS:D = 1.0E-8

.field static final serialVersionUID:J = 0x5ee3cf78d011e116L

.field private static xin:D

.field private static xout:D

.field private static yin:D

.field private static yout:D

.field private static zin:D

.field private static zout:D


# instance fields
.field public m00:D

.field public m01:D

.field public m02:D

.field public m10:D

.field public m11:D

.field public m12:D

.field public m20:D

.field public m21:D

.field public m22:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 43
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 44
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 45
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 46
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 47
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 48
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 49
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 50
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide v1, p7

    .line 5
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide v1, p9

    .line 6
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide v1, p11

    .line 7
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v1, p13

    .line 8
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide/from16 v1, p15

    .line 9
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    move-wide/from16 v1, p17

    .line 10
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 27
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 28
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 29
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 30
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 33
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 34
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 35
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 36
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 37
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 38
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 39
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 40
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v0, 0x1

    .line 13
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v0, 0x2

    .line 14
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x3

    .line 15
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v0, 0x4

    .line 16
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v0, 0x5

    .line 17
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v0, 0x6

    .line 18
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v0, 0x7

    .line 19
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v0, 0x8

    .line 20
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method private static final almostEqual(DD)Z
    .locals 4

    cmpl-double v0, p0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-double v2, p0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p0, p2

    :goto_0
    const-wide p2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p2, v2, p2

    if-gez p2, :cond_2

    return v1

    :cond_2
    div-double/2addr v2, p0

    const-wide p0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p0, v2, p0

    if-gez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static compute_2X2(DDD[D[D[D[D[DI)I
    .locals 51

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    aget-wide v7, p6, v6

    const/4 v9, 0x1

    aget-wide v10, p6, v9

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v12

    if-lez v16, :cond_0

    move/from16 v16, v9

    goto :goto_0

    :cond_0
    move/from16 v16, v6

    :goto_0
    if-eqz v16, :cond_1

    move-wide/from16 v17, v0

    move-wide/from16 v19, v7

    const/16 v21, 0x3

    move-wide v6, v4

    move-wide/from16 v49, v12

    move-wide v12, v14

    move-wide/from16 v14, v49

    goto :goto_1

    :cond_1
    move-wide/from16 v17, v4

    move-wide/from16 v19, v7

    move/from16 v21, v9

    move-wide v6, v0

    :goto_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v26, v22, v24

    if-nez v26, :cond_2

    aput-wide v14, p6, v9

    const/4 v0, 0x0

    aput-wide v12, p6, v0

    goto/16 :goto_12

    :cond_2
    cmpl-double v26, v22, v12

    const-wide v27, 0x3c9fffffffb29c00L    # 1.110223024E-16

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-lez v26, :cond_5

    div-double v29, v12, v22

    cmpg-double v21, v29, v27

    if-gez v21, :cond_4

    cmpl-double v10, v14, v8

    if-lez v10, :cond_3

    div-double v10, v22, v14

    div-double v10, v12, v10

    goto :goto_2

    :cond_3
    mul-double v29, v29, v14

    move-wide/from16 v10, v29

    :goto_2
    div-double v19, v17, v2

    div-double v29, v6, v2

    move-wide/from16 v34, v8

    move-wide/from16 v36, v34

    move-wide/from16 v32, v29

    const/16 v21, 0x0

    const/16 v31, 0x2

    move-wide/from16 v29, v19

    move-wide/from16 v19, v22

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v24

    move-wide/from16 v32, v29

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    const/16 v21, 0x1

    const/16 v31, 0x2

    goto :goto_3

    :cond_5
    move/from16 v31, v21

    move-wide/from16 v29, v24

    move-wide/from16 v32, v29

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    const/16 v21, 0x1

    :goto_3
    if-eqz v21, :cond_10

    sub-double v8, v12, v14

    cmpl-double v38, v8, v12

    if-nez v38, :cond_6

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_6
    div-double v39, v8, v12

    :goto_4
    div-double v41, v2, v6

    move-wide/from16 v43, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double v45, v10, v39

    mul-double v47, v41, v41

    mul-double v45, v45, v45

    add-double v45, v45, v47

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    cmpl-double v45, v39, v24

    if-nez v45, :cond_7

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(D)D

    goto :goto_5

    :cond_7
    mul-double v39, v39, v39

    add-double v39, v39, v47

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    :goto_5
    if-lez v26, :cond_a

    div-double v39, v12, v22

    cmpg-double v26, v39, v27

    if-gez v26, :cond_9

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v19, v14, v26

    if-lez v19, :cond_8

    div-double v19, v22, v14

    div-double v19, v12, v19

    goto :goto_6

    :cond_8
    mul-double v39, v39, v14

    move-wide/from16 v19, v39

    :goto_6
    div-double v29, v17, v2

    div-double v32, v6, v2

    move-wide/from16 v43, v19

    const/16 v21, 0x0

    const/16 v31, 0x2

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    move-wide/from16 v22, v19

    const/16 v31, 0x2

    goto :goto_7

    :cond_a
    move-wide/from16 v22, v19

    :goto_7
    if-eqz v21, :cond_f

    if-nez v38, :cond_b

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_8

    :cond_b
    div-double v19, v8, v12

    :goto_8
    sub-double v21, v10, v19

    mul-double v26, v21, v21

    add-double v26, v26, v47

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    cmpl-double v23, v19, v24

    if-nez v23, :cond_c

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    goto :goto_9

    :cond_c
    mul-double v29, v19, v19

    add-double v29, v29, v47

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v29

    :goto_9
    add-double v32, v26, v29

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    mul-double v32, v32, v34

    div-double v14, v14, v32

    mul-double v12, v12, v32

    cmpl-double v28, v47, v24

    if-nez v28, :cond_e

    if-nez v23, :cond_d

    invoke-static {v10, v11, v6, v7}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v2, v3}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v19

    :goto_a
    mul-double v8, v8, v19

    goto :goto_b

    :cond_d
    invoke-static {v8, v9, v6, v7}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v8

    div-double v8, v2, v8

    div-double v10, v41, v21

    add-double/2addr v8, v10

    goto :goto_b

    :cond_e
    add-double v26, v26, v21

    div-double v8, v41, v26

    add-double v29, v29, v19

    div-double v10, v41, v29

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v19, v32, v10

    goto :goto_a

    :goto_b
    mul-double v10, v8, v8

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    add-double v10, v10, v19

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v19, v19, v10

    div-double v36, v8, v10

    mul-double v41, v41, v36

    add-double v41, v19, v41

    div-double v34, v41, v32

    div-double v17, v17, v6

    mul-double v17, v17, v36

    div-double v29, v17, v32

    move-wide v10, v14

    move-wide/from16 v32, v19

    :goto_c
    move/from16 v6, v31

    goto :goto_d

    :cond_f
    move-wide/from16 v12, v22

    move/from16 v6, v31

    move-wide/from16 v10, v43

    goto :goto_d

    :cond_10
    move-wide/from16 v43, v10

    move-wide/from16 v12, v19

    goto :goto_c

    :goto_d
    if-eqz v16, :cond_11

    const/4 v7, 0x0

    aput-wide v36, p8, v7

    aput-wide v32, p7, v7

    aput-wide v29, p10, v7

    aput-wide v34, p9, v7

    :goto_e
    const/4 v8, 0x1

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    aput-wide v34, p8, v7

    aput-wide v29, p7, v7

    aput-wide v32, p10, v7

    aput-wide v36, p9, v7

    goto :goto_e

    :goto_f
    if-ne v6, v8, :cond_12

    aget-wide v8, p10, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v8

    move-wide/from16 v17, v10

    aget-wide v10, p8, v7

    invoke-static {v14, v15, v10, v11}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v14, v15, v0, v1}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v10

    mul-double v24, v8, v10

    :goto_10
    const/4 v8, 0x2

    goto :goto_11

    :cond_12
    move-wide/from16 v17, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_10

    :goto_11
    if-ne v6, v8, :cond_13

    aget-wide v8, p9, v7

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v8

    aget-wide v10, p8, v7

    invoke-static {v14, v15, v10, v11}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v2

    mul-double v24, v8, v2

    :cond_13
    const/4 v2, 0x3

    if-ne v6, v2, :cond_14

    aget-wide v2, p9, v7

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v2

    aget-wide v8, p7, v7

    invoke-static {v14, v15, v8, v9}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-static {v14, v15, v4, v5}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v6

    mul-double v24, v2, v6

    :cond_14
    move-wide/from16 v2, v24

    invoke-static {v12, v13, v2, v3}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v6

    aput-wide v6, p6, p11

    invoke-static {v14, v15, v0, v1}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-static {v14, v15, v4, v5}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v0

    mul-double/2addr v2, v0

    const/4 v0, 0x1

    add-int/lit8 v0, p11, 0x1

    move-wide/from16 v14, v17

    invoke-static {v14, v15, v2, v3}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static compute_qr([D[D[D[D)I
    .locals 35

    const/4 v12, 0x2

    new-array v13, v12, [D

    new-array v14, v12, [D

    new-array v15, v12, [D

    new-array v11, v12, [D

    const/16 v16, 0x1

    aget-wide v0, p1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v8, 0x3cf605c9419ea60aL    # 4.89E-15

    cmpg-double v0, v0, v8

    const/16 v17, 0x0

    if-ltz v0, :cond_1

    aget-wide v0, p1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, v16

    :goto_1
    move v10, v0

    move/from16 v18, v16

    move/from16 v7, v17

    :goto_2
    const/16 v0, 0xa

    const/16 v19, 0x8

    const/16 v20, 0x6

    const/16 v21, 0x7

    const/16 v22, 0x5

    const/16 v23, 0x3

    const/16 v24, 0x4

    if-ge v7, v0, :cond_4

    if-nez v10, :cond_4

    aget-wide v1, p0, v16

    aget-wide v3, p1, v16

    aget-wide v5, p0, v12

    invoke-static/range {v1 .. v6}, Ljavax/vecmath/Matrix3d;->compute_shift(DDD)D

    move-result-wide v0

    aget-wide v2, p0, v17

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double/2addr v2, v0

    aget-wide v4, p0, v17

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v4, v5}, Ljavax/vecmath/Matrix3d;->d_sign(DD)D

    move-result-wide v4

    aget-wide v8, p0, v17

    div-double/2addr v0, v8

    add-double/2addr v4, v0

    mul-double v0, v2, v4

    aget-wide v2, p1, v17

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, v14

    move v8, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Ljavax/vecmath/Matrix3d;->compute_rot(DD[D[DII)D

    aget-wide v0, v14, v17

    aget-wide v2, p0, v17

    mul-double v4, v0, v2

    aget-wide v6, v11, v17

    aget-wide v25, p1, v17

    mul-double v27, v6, v25

    add-double v4, v4, v27

    mul-double v0, v0, v25

    mul-double/2addr v6, v2

    sub-double/2addr v0, v6

    aput-wide v0, p1, v17

    aget-wide v0, v11, v17

    aget-wide v2, p0, v16

    mul-double v6, v0, v2

    aget-wide v0, v14, v17

    mul-double/2addr v0, v2

    aput-wide v0, p0, v16

    const/4 v9, 0x0

    move-wide v0, v4

    move-wide v2, v6

    move-object v4, v15

    move-object v5, v13

    move v6, v9

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Ljavax/vecmath/Matrix3d;->compute_rot(DD[D[DII)D

    move-result-wide v0

    aput-wide v0, p0, v17

    aget-wide v0, v13, v17

    aget-wide v2, p1, v17

    mul-double v4, v0, v2

    aget-wide v6, v15, v17

    aget-wide v25, p0, v16

    mul-double v27, v6, v25

    add-double v4, v4, v27

    mul-double v25, v25, v0

    mul-double/2addr v2, v6

    sub-double v25, v25, v2

    aput-wide v25, p0, v16

    aget-wide v2, p1, v16

    mul-double/2addr v6, v2

    mul-double/2addr v0, v2

    aput-wide v0, p1, v16

    const/4 v9, 0x1

    const/16 v18, 0x0

    move-wide v0, v4

    move-wide v2, v6

    move-object v4, v11

    move-object v5, v14

    move v6, v9

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Ljavax/vecmath/Matrix3d;->compute_rot(DD[D[DII)D

    move-result-wide v0

    aput-wide v0, p1, v17

    aget-wide v0, v14, v16

    aget-wide v2, p0, v16

    mul-double v4, v0, v2

    aget-wide v6, v11, v16

    aget-wide v25, p1, v16

    mul-double v27, v6, v25

    add-double v4, v4, v27

    mul-double v0, v0, v25

    mul-double/2addr v6, v2

    sub-double/2addr v0, v6

    aput-wide v0, p1, v16

    aget-wide v0, v11, v16

    aget-wide v2, p0, v12

    mul-double v6, v0, v2

    aget-wide v0, v14, v16

    mul-double/2addr v0, v2

    aput-wide v0, p0, v12

    move-wide v0, v4

    move-wide v2, v6

    move-object v4, v15

    move-object v5, v13

    move v6, v9

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Ljavax/vecmath/Matrix3d;->compute_rot(DD[D[DII)D

    move-result-wide v0

    aput-wide v0, p0, v16

    aget-wide v0, v13, v16

    aget-wide v2, p1, v16

    mul-double v4, v0, v2

    aget-wide v6, v15, v16

    aget-wide v25, p0, v12

    mul-double v27, v6, v25

    add-double v4, v4, v27

    mul-double v0, v0, v25

    mul-double/2addr v6, v2

    sub-double/2addr v0, v6

    aput-wide v0, p0, v12

    aput-wide v4, p1, v16

    aget-wide v0, p2, v17

    aget-wide v2, v13, v17

    mul-double/2addr v2, v0

    aget-wide v4, v15, v17

    aget-wide v6, p2, v23

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p2, v17

    aget-wide v2, v15, v17

    neg-double v4, v2

    mul-double/2addr v4, v0

    aget-wide v0, v13, v17

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p2, v23

    aget-wide v6, p2, v16

    mul-double v25, v0, v6

    aget-wide v27, p2, v24

    mul-double v29, v2, v27

    add-double v25, v25, v29

    aput-wide v25, p2, v16

    move-object/from16 v26, v13

    neg-double v12, v2

    mul-double/2addr v12, v6

    mul-double v27, v27, v0

    add-double v12, v12, v27

    aput-wide v12, p2, v24

    const/4 v6, 0x2

    aget-wide v27, p2, v6

    mul-double v29, v0, v27

    aget-wide v31, p2, v22

    mul-double v33, v2, v31

    add-double v29, v29, v33

    aput-wide v29, p2, v6

    neg-double v2, v2

    mul-double v2, v2, v27

    mul-double v0, v0, v31

    add-double/2addr v2, v0

    aput-wide v2, p2, v22

    aget-wide v0, v26, v16

    mul-double v6, v0, v4

    move/from16 v27, v10

    aget-wide v9, v15, v16

    aget-wide v28, p2, v20

    mul-double v30, v9, v28

    add-double v6, v6, v30

    aput-wide v6, p2, v23

    neg-double v6, v9

    mul-double/2addr v6, v4

    mul-double v28, v28, v0

    add-double v6, v6, v28

    aput-wide v6, p2, v20

    mul-double v4, v0, v12

    aget-wide v6, p2, v21

    mul-double v28, v9, v6

    add-double v4, v4, v28

    aput-wide v4, p2, v24

    neg-double v4, v9

    mul-double/2addr v4, v12

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p2, v21

    mul-double v4, v0, v2

    aget-wide v6, p2, v19

    mul-double v12, v9, v6

    add-double/2addr v4, v12

    aput-wide v4, p2, v22

    neg-double v4, v9

    mul-double/2addr v4, v2

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    aput-wide v4, p2, v19

    aget-wide v0, p3, v17

    aget-wide v2, v14, v17

    mul-double/2addr v2, v0

    aget-wide v4, v11, v17

    aget-wide v6, p3, v16

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p3, v17

    aget-wide v2, v11, v17

    neg-double v4, v2

    mul-double/2addr v4, v0

    aget-wide v0, v14, v17

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p3, v16

    aget-wide v6, p3, v23

    mul-double v9, v0, v6

    aget-wide v12, p3, v24

    mul-double v28, v2, v12

    add-double v9, v9, v28

    aput-wide v9, p3, v23

    neg-double v9, v2

    mul-double/2addr v9, v6

    mul-double/2addr v12, v0

    add-double/2addr v9, v12

    aput-wide v9, p3, v24

    aget-wide v6, p3, v20

    mul-double v12, v0, v6

    aget-wide v28, p3, v21

    mul-double v30, v2, v28

    add-double v12, v12, v30

    aput-wide v12, p3, v20

    neg-double v2, v2

    mul-double/2addr v2, v6

    mul-double v0, v0, v28

    add-double/2addr v2, v0

    aput-wide v2, p3, v21

    aget-wide v0, v14, v16

    mul-double/2addr v0, v4

    aget-wide v6, v11, v16

    const/4 v12, 0x2

    aget-wide v28, p3, v12

    mul-double v6, v6, v28

    add-double/2addr v0, v6

    aput-wide v0, p3, v16

    aget-wide v0, v11, v16

    neg-double v6, v0

    mul-double/2addr v6, v4

    aget-wide v4, v14, v16

    mul-double v28, v28, v4

    add-double v6, v6, v28

    aput-wide v6, p3, v12

    mul-double v6, v4, v9

    aget-wide v12, p3, v22

    mul-double v28, v0, v12

    add-double v6, v6, v28

    aput-wide v6, p3, v24

    neg-double v6, v0

    mul-double/2addr v6, v9

    mul-double/2addr v12, v4

    add-double/2addr v6, v12

    aput-wide v6, p3, v22

    mul-double v6, v4, v2

    aget-wide v9, p3, v19

    mul-double v12, v0, v9

    add-double/2addr v6, v12

    aput-wide v6, p3, v21

    neg-double v0, v0

    mul-double/2addr v0, v2

    mul-double/2addr v4, v9

    add-double/2addr v0, v4

    aput-wide v0, p3, v19

    aget-wide v0, p0, v17

    aget-wide v0, p1, v17

    aget-wide v0, p0, v16

    aget-wide v0, p1, v16

    const/4 v2, 0x2

    aget-wide v3, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3cf605c9419ea60aL    # 4.89E-15

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3

    aget-wide v0, p1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v10, v27

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v10, v16

    :goto_4
    add-int/lit8 v7, v8, 0x1

    move-object/from16 v13, v26

    const-wide v8, 0x3cf605c9419ea60aL    # 4.89E-15

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v26, v13

    aget-wide v0, p1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3cf605c9419ea60aL    # 4.89E-15

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    aget-wide v0, p0, v17

    aget-wide v2, p1, v17

    aget-wide v4, p0, v16

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, v26

    move-object v9, v11

    move-object v10, v14

    move-object v13, v11

    move v11, v12

    invoke-static/range {v0 .. v11}, Ljavax/vecmath/Matrix3d;->compute_2X2(DDD[D[D[D[D[DI)I

    aget-wide v0, p2, v17

    aget-wide v2, v26, v17

    mul-double/2addr v2, v0

    aget-wide v4, v15, v17

    aget-wide v6, p2, v23

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p2, v17

    aget-wide v2, v15, v17

    neg-double v4, v2

    mul-double/2addr v4, v0

    aget-wide v0, v26, v17

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p2, v23

    aget-wide v4, p2, v16

    mul-double v6, v0, v4

    aget-wide v8, p2, v24

    mul-double v10, v2, v8

    add-double/2addr v6, v10

    aput-wide v6, p2, v16

    neg-double v6, v2

    mul-double/2addr v6, v4

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, p2, v24

    const/4 v4, 0x2

    aget-wide v5, p2, v4

    mul-double v7, v0, v5

    aget-wide v9, p2, v22

    mul-double v11, v2, v9

    add-double/2addr v7, v11

    aput-wide v7, p2, v4

    neg-double v2, v2

    mul-double/2addr v2, v5

    mul-double/2addr v0, v9

    add-double/2addr v2, v0

    aput-wide v2, p2, v22

    aget-wide v0, p3, v17

    aget-wide v2, v14, v17

    mul-double/2addr v2, v0

    aget-wide v4, v13, v17

    aget-wide v6, p3, v16

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p3, v17

    aget-wide v2, v13, v17

    neg-double v4, v2

    mul-double/2addr v4, v0

    aget-wide v0, v14, v17

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    aput-wide v4, p3, v16

    aget-wide v4, p3, v23

    mul-double v6, v0, v4

    aget-wide v8, p3, v24

    mul-double v10, v2, v8

    add-double/2addr v6, v10

    aput-wide v6, p3, v23

    neg-double v6, v2

    mul-double/2addr v6, v4

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    aput-wide v6, p3, v24

    aget-wide v4, p3, v20

    mul-double v6, v0, v4

    aget-wide v8, p3, v21

    mul-double v10, v2, v8

    add-double/2addr v6, v10

    aput-wide v6, p3, v20

    neg-double v2, v2

    mul-double/2addr v2, v4

    mul-double/2addr v0, v8

    add-double/2addr v2, v0

    aput-wide v2, p3, v21

    goto/16 :goto_5

    :cond_5
    move-object v13, v11

    aget-wide v0, p0, v16

    aget-wide v2, p1, v16

    const/4 v4, 0x2

    aget-wide v5, p0, v4

    const/4 v11, 0x1

    move-wide v4, v5

    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, v26

    move-object v9, v13

    move-object v10, v14

    invoke-static/range {v0 .. v11}, Ljavax/vecmath/Matrix3d;->compute_2X2(DDD[D[D[D[D[DI)I

    aget-wide v0, p2, v23

    aget-wide v2, v26, v17

    mul-double v4, v2, v0

    aget-wide v6, v15, v17

    aget-wide v8, p2, v20

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    aput-wide v4, p2, v23

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v8, v2

    add-double/2addr v4, v8

    aput-wide v4, p2, v20

    aget-wide v0, p2, v24

    mul-double v4, v2, v0

    aget-wide v8, p2, v21

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    aput-wide v4, p2, v24

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v8, v2

    add-double/2addr v4, v8

    aput-wide v4, p2, v21

    aget-wide v0, p2, v22

    mul-double v4, v2, v0

    aget-wide v8, p2, v19

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    aput-wide v4, p2, v22

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v2, v8

    add-double/2addr v4, v2

    aput-wide v4, p2, v19

    aget-wide v0, p3, v16

    aget-wide v2, v14, v17

    mul-double v4, v2, v0

    aget-wide v6, v13, v17

    const/4 v8, 0x2

    aget-wide v9, p3, v8

    mul-double v11, v6, v9

    add-double/2addr v4, v11

    aput-wide v4, p3, v16

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v9, v2

    add-double/2addr v4, v9

    aput-wide v4, p3, v8

    aget-wide v0, p3, v24

    mul-double v4, v2, v0

    aget-wide v8, p3, v22

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    aput-wide v4, p3, v24

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v8, v2

    add-double/2addr v4, v8

    aput-wide v4, p3, v22

    aget-wide v0, p3, v21

    mul-double v4, v2, v0

    aget-wide v8, p3, v19

    mul-double v10, v6, v8

    add-double/2addr v4, v10

    aput-wide v4, p3, v21

    neg-double v4, v6

    mul-double/2addr v4, v0

    mul-double/2addr v2, v8

    add-double/2addr v4, v2

    aput-wide v4, p3, v19

    :goto_5
    return v17
.end method

.method public static compute_rot(DD[D[DII)D
    .locals 17

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-nez v2, :cond_0

    move-wide v11, v3

    move-wide/from16 v2, p0

    goto/16 :goto_5

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    move-wide v11, v0

    move-wide v0, v3

    move-wide/from16 v2, p2

    goto/16 :goto_5

    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljavax/vecmath/Matrix3d;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x5e30000000000000L    # 4.994797680505588E145

    cmpl-double v6, v2, v4

    const/4 v7, 0x0

    const-wide/high16 v8, 0x21b0000000000000L    # 2.002083095183101E-146

    if-ltz v6, :cond_3

    move-wide/from16 v11, p0

    move-wide/from16 v13, p2

    :goto_0
    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    add-int/lit8 v7, v7, 0x1

    mul-double/2addr v11, v8

    mul-double/2addr v13, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-wide v15, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljavax/vecmath/Matrix3d;->max(DD)D

    move-result-wide v2

    move-wide v11, v15

    goto :goto_0

    :cond_2
    mul-double v2, v11, v11

    mul-double v8, v13, v13

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v11, v2

    div-double/2addr v13, v2

    const/4 v10, 0x1

    :goto_1
    if-gt v10, v7, :cond_7

    mul-double/2addr v2, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    cmpg-double v6, v2, v8

    if-gtz v6, :cond_6

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    :goto_2
    cmpg-double v2, v2, v8

    if-gtz v2, :cond_4

    add-int/lit8 v7, v7, 0x1

    mul-double/2addr v10, v4

    mul-double/2addr v12, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljavax/vecmath/Matrix3d;->max(DD)D

    move-result-wide v2

    goto :goto_2

    :cond_4
    mul-double v2, v10, v10

    mul-double v4, v12, v12

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v4, v10, v2

    div-double v13, v12, v2

    const/4 v10, 0x1

    :goto_3
    if-gt v10, v7, :cond_5

    mul-double/2addr v2, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move-wide v11, v4

    goto :goto_4

    :cond_6
    mul-double v2, p0, p0

    mul-double v4, p2, p2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v11, p0, v2

    div-double v13, p2, v2

    :cond_7
    :goto_4
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_8

    cmpg-double v0, v11, v0

    if-gez v0, :cond_8

    neg-double v0, v11

    neg-double v4, v13

    neg-double v2, v2

    move-wide v11, v0

    move-wide v0, v4

    goto :goto_5

    :cond_8
    move-wide v0, v13

    :goto_5
    aput-wide v0, p4, p6

    aput-wide v11, p5, p6

    return-wide v2
.end method

.method public static compute_shift(DDD)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    invoke-static {p0, p1, p4, p5}, Ljavax/vecmath/Matrix3d;->min(DD)D

    move-result-wide v0

    invoke-static {p0, p1, p4, p5}, Ljavax/vecmath/Matrix3d;->max(DD)D

    move-result-wide p0

    const-wide/16 p4, 0x0

    cmpl-double v2, v0, p4

    if-nez v2, :cond_1

    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljavax/vecmath/Matrix3d;->min(DD)D

    invoke-static {p0, p1, p2, p3}, Ljavax/vecmath/Matrix3d;->max(DD)D

    goto :goto_0

    :cond_1
    cmpg-double v2, p2, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_2

    div-double p4, v0, p0

    add-double/2addr p4, v3

    sub-double v2, p0, v0

    div-double/2addr v2, p0

    div-double/2addr p2, p0

    mul-double/2addr p2, p2

    mul-double/2addr p4, p4

    add-double/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr v2, v2

    add-double/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr p2, p0

    mul-double p4, v0, p2

    goto :goto_0

    :cond_2
    div-double v5, p0, p2

    cmpl-double p4, v5, p4

    if-nez p4, :cond_3

    mul-double/2addr v0, p0

    div-double p4, v0, p2

    goto :goto_0

    :cond_3
    div-double p2, v0, p0

    add-double/2addr p2, v3

    sub-double p4, p0, v0

    div-double/2addr p4, p0

    mul-double/2addr p2, v5

    mul-double/2addr p4, v5

    mul-double/2addr p2, p2

    add-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr p4, p4

    add-double/2addr p4, v3

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    div-double/2addr v3, p0

    mul-double/2addr v0, v3

    mul-double/2addr v0, v5

    add-double p4, v0, v0

    :goto_0
    return-wide p4
.end method

.method public static compute_svd([D[D[D)V
    .locals 45

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x9

    new-array v3, v2, [D

    new-array v4, v2, [D

    new-array v5, v2, [D

    new-array v6, v2, [D

    new-array v7, v2, [D

    const/4 v8, 0x3

    new-array v9, v8, [D

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v2, :cond_0

    aget-wide v12, p0, v11

    aput-wide v12, v7, v11

    add-int/2addr v11, v1

    goto :goto_0

    :cond_0
    aget-wide v11, p0, v8

    mul-double v13, v11, v11

    const-wide v15, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v13, v13, v15

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    move-object/from16 v19, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0x6

    const/16 v21, 0x8

    const/16 v22, 0x7

    const/16 v23, 0x5

    const/16 v24, 0x4

    const-wide/16 v25, 0x0

    if-gez v13, :cond_1

    aput-wide v8, v3, v10

    aput-wide v25, v3, v1

    aput-wide v25, v3, v0

    const/4 v11, 0x3

    aput-wide v25, v3, v11

    aput-wide v8, v3, v24

    aput-wide v25, v3, v23

    aput-wide v25, v3, v20

    aput-wide v25, v3, v22

    aput-wide v8, v3, v21

    goto/16 :goto_1

    :cond_1
    aget-wide v27, p0, v10

    mul-double v29, v27, v27

    cmpg-double v13, v29, v15

    if-gez v13, :cond_2

    aput-wide v27, v5, v10

    aget-wide v27, p0, v1

    aput-wide v27, v5, v1

    aget-wide v27, p0, v0

    aput-wide v27, v5, v0

    aput-wide v11, p0, v10

    aget-wide v11, p0, v24

    aput-wide v11, p0, v1

    aget-wide v11, p0, v23

    aput-wide v11, p0, v0

    aget-wide v11, v5, v10

    neg-double v11, v11

    const/4 v13, 0x3

    aput-wide v11, p0, v13

    aget-wide v11, v5, v1

    neg-double v11, v11

    aput-wide v11, p0, v24

    aget-wide v11, v5, v0

    neg-double v11, v11

    aput-wide v11, p0, v23

    aput-wide v25, v3, v10

    aput-wide v8, v3, v1

    aput-wide v25, v3, v0

    aput-wide v17, v3, v13

    aput-wide v25, v3, v24

    aput-wide v25, v3, v23

    aput-wide v25, v3, v20

    aput-wide v25, v3, v22

    aput-wide v8, v3, v21

    goto :goto_1

    :cond_2
    mul-double v27, v27, v27

    mul-double/2addr v11, v11

    add-double v27, v27, v11

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double v11, v8, v11

    aget-wide v27, p0, v10

    mul-double v29, v27, v11

    const/4 v13, 0x3

    aget-wide v31, p0, v13

    mul-double v11, v11, v31

    mul-double v27, v27, v29

    mul-double v33, v11, v31

    add-double v27, v27, v33

    aput-wide v27, v5, v10

    aget-wide v33, p0, v1

    mul-double v33, v33, v29

    aget-wide v35, p0, v24

    mul-double v37, v11, v35

    add-double v33, v33, v37

    aput-wide v33, v5, v1

    aget-wide v37, p0, v0

    mul-double v37, v37, v29

    aget-wide v39, p0, v23

    mul-double v41, v11, v39

    add-double v37, v37, v41

    aput-wide v37, v5, v0

    neg-double v14, v11

    aget-wide v43, p0, v10

    mul-double v43, v43, v14

    mul-double v31, v31, v29

    add-double v43, v43, v31

    const/4 v13, 0x3

    aput-wide v43, p0, v13

    aget-wide v31, p0, v1

    mul-double v31, v31, v14

    mul-double v35, v35, v29

    add-double v31, v31, v35

    aput-wide v31, p0, v24

    aget-wide v31, p0, v0

    mul-double v31, v31, v14

    mul-double v39, v39, v29

    add-double v31, v31, v39

    aput-wide v31, p0, v23

    aput-wide v27, p0, v10

    aput-wide v33, p0, v1

    aput-wide v37, p0, v0

    aput-wide v29, v3, v10

    aput-wide v11, v3, v1

    aput-wide v25, v3, v0

    const/4 v11, 0x3

    aput-wide v14, v3, v11

    aput-wide v29, v3, v24

    aput-wide v25, v3, v23

    aput-wide v25, v3, v20

    aput-wide v25, v3, v22

    aput-wide v8, v3, v21

    :goto_1
    aget-wide v11, p0, v20

    mul-double v15, v11, v11

    const-wide v27, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v13, v15, v27

    if-gez v13, :cond_3

    goto/16 :goto_2

    :cond_3
    aget-wide v15, p0, v10

    mul-double v29, v15, v15

    cmpg-double v13, v29, v27

    if-gez v13, :cond_4

    aput-wide v15, v5, v10

    aget-wide v15, p0, v1

    aput-wide v15, v5, v1

    aget-wide v15, p0, v0

    aput-wide v15, v5, v0

    aput-wide v11, p0, v10

    aget-wide v11, p0, v22

    aput-wide v11, p0, v1

    aget-wide v11, p0, v21

    aput-wide v11, p0, v0

    aget-wide v11, v5, v10

    neg-double v11, v11

    aput-wide v11, p0, v20

    aget-wide v11, v5, v1

    neg-double v11, v11

    aput-wide v11, p0, v22

    aget-wide v11, v5, v0

    neg-double v11, v11

    aput-wide v11, p0, v21

    aget-wide v11, v3, v10

    aput-wide v11, v5, v10

    aget-wide v11, v3, v1

    aput-wide v11, v5, v1

    aget-wide v11, v3, v0

    aput-wide v11, v5, v0

    aget-wide v11, v3, v20

    aput-wide v11, v3, v10

    aget-wide v11, v3, v22

    aput-wide v11, v3, v1

    aget-wide v11, v3, v21

    aput-wide v11, v3, v0

    aget-wide v11, v5, v10

    neg-double v11, v11

    aput-wide v11, v3, v20

    aget-wide v11, v5, v1

    neg-double v11, v11

    aput-wide v11, v3, v22

    aget-wide v11, v5, v0

    neg-double v11, v11

    aput-wide v11, v3, v21

    goto/16 :goto_2

    :cond_4
    mul-double/2addr v15, v15

    mul-double/2addr v11, v11

    add-double/2addr v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double v11, v8, v11

    aget-wide v15, p0, v10

    mul-double v27, v15, v11

    aget-wide v29, p0, v20

    mul-double v11, v11, v29

    mul-double v15, v15, v27

    mul-double v31, v11, v29

    add-double v15, v15, v31

    aput-wide v15, v5, v10

    aget-wide v31, p0, v1

    mul-double v31, v31, v27

    aget-wide v33, p0, v22

    mul-double v35, v11, v33

    add-double v31, v31, v35

    aput-wide v31, v5, v1

    aget-wide v35, p0, v0

    mul-double v35, v35, v27

    aget-wide v37, p0, v21

    mul-double v39, v11, v37

    add-double v35, v35, v39

    aput-wide v35, v5, v0

    neg-double v8, v11

    aget-wide v43, p0, v10

    mul-double v43, v43, v8

    mul-double v29, v29, v27

    add-double v43, v43, v29

    aput-wide v43, p0, v20

    aget-wide v29, p0, v1

    mul-double v29, v29, v8

    mul-double v33, v33, v27

    add-double v29, v29, v33

    aput-wide v29, p0, v22

    aget-wide v29, p0, v0

    mul-double v8, v8, v29

    mul-double v37, v37, v27

    add-double v8, v8, v37

    aput-wide v8, p0, v21

    aput-wide v15, p0, v10

    aput-wide v31, p0, v1

    aput-wide v35, p0, v0

    aget-wide v8, v3, v10

    mul-double v8, v8, v27

    aput-wide v8, v5, v10

    aget-wide v15, v3, v1

    mul-double v15, v15, v27

    aput-wide v15, v5, v1

    aput-wide v11, v3, v0

    move-wide/from16 v29, v15

    aget-wide v14, v3, v10

    neg-double v14, v14

    mul-double/2addr v14, v11

    aput-wide v14, v5, v20

    move-wide/from16 v31, v14

    aget-wide v13, v3, v1

    neg-double v13, v13

    mul-double/2addr v13, v11

    aput-wide v13, v5, v22

    aput-wide v27, v3, v21

    aput-wide v8, v3, v10

    aput-wide v29, v3, v1

    aput-wide v31, v3, v20

    aput-wide v13, v3, v22

    :goto_2
    aget-wide v8, p0, v0

    mul-double v11, v8, v8

    const-wide v13, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v11, v11, v13

    if-gez v11, :cond_5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v4, v10

    aput-wide v25, v4, v1

    aput-wide v25, v4, v0

    const/4 v8, 0x3

    aput-wide v25, v4, v8

    aput-wide v11, v4, v24

    aput-wide v25, v4, v23

    aput-wide v25, v4, v20

    aput-wide v25, v4, v22

    aput-wide v11, v4, v21

    :goto_3
    move-object/from16 v27, v3

    goto/16 :goto_4

    :cond_5
    aget-wide v11, p0, v1

    mul-double v15, v11, v11

    const-wide v27, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v13, v15, v27

    if-gez v13, :cond_6

    aput-wide v8, v5, v0

    aget-wide v8, p0, v23

    aput-wide v8, v5, v23

    aget-wide v8, p0, v21

    aput-wide v8, v5, v21

    neg-double v8, v11

    aput-wide v8, p0, v0

    aget-wide v8, p0, v24

    neg-double v8, v8

    aput-wide v8, p0, v23

    aget-wide v8, p0, v22

    neg-double v8, v8

    aput-wide v8, p0, v21

    aget-wide v8, v5, v0

    aput-wide v8, p0, v1

    aget-wide v8, v5, v23

    aput-wide v8, p0, v24

    aget-wide v8, v5, v21

    aput-wide v8, p0, v22

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    aput-wide v15, v4, v10

    aput-wide v25, v4, v1

    aput-wide v25, v4, v0

    const/4 v8, 0x3

    aput-wide v25, v4, v8

    aput-wide v25, v4, v24

    aput-wide v17, v4, v23

    aput-wide v25, v4, v20

    aput-wide v15, v4, v22

    aput-wide v25, v4, v21

    goto :goto_3

    :cond_6
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v11, v11

    mul-double/2addr v8, v8

    add-double/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v15, v8

    aget-wide v11, p0, v1

    mul-double v15, v11, v8

    aget-wide v17, p0, v0

    mul-double v8, v8, v17

    mul-double/2addr v11, v15

    mul-double v27, v8, v17

    add-double v11, v11, v27

    aput-wide v11, v5, v1

    move-object/from16 v27, v3

    neg-double v2, v8

    aget-wide v28, p0, v1

    mul-double v28, v28, v2

    mul-double v17, v17, v15

    add-double v28, v28, v17

    aput-wide v28, p0, v0

    aput-wide v11, p0, v1

    aget-wide v11, p0, v24

    mul-double/2addr v11, v15

    aget-wide v17, p0, v23

    mul-double v28, v8, v17

    add-double v11, v11, v28

    aput-wide v11, v5, v24

    aget-wide v28, p0, v24

    mul-double v28, v28, v2

    mul-double v17, v17, v15

    add-double v28, v28, v17

    aput-wide v28, p0, v23

    aput-wide v11, p0, v24

    aget-wide v11, p0, v22

    mul-double/2addr v11, v15

    aget-wide v17, p0, v21

    mul-double v28, v8, v17

    add-double v11, v11, v28

    aput-wide v11, v5, v22

    aget-wide v28, p0, v22

    mul-double v28, v28, v2

    mul-double v17, v17, v15

    add-double v28, v28, v17

    aput-wide v28, p0, v21

    aput-wide v11, p0, v22

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v4, v10

    aput-wide v25, v4, v1

    aput-wide v25, v4, v0

    const/4 v11, 0x3

    aput-wide v25, v4, v11

    aput-wide v15, v4, v24

    aput-wide v2, v4, v23

    aput-wide v25, v4, v20

    aput-wide v8, v4, v22

    aput-wide v15, v4, v21

    :goto_4
    aget-wide v2, p0, v22

    mul-double v8, v2, v2

    const-wide v11, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v8, v8, v11

    if-gez v8, :cond_7

    goto/16 :goto_5

    :cond_7
    aget-wide v8, p0, v24

    mul-double v15, v8, v8

    cmpg-double v15, v15, v11

    if-gez v15, :cond_8

    const/4 v11, 0x3

    aget-wide v14, p0, v11

    aput-wide v14, v5, v11

    aput-wide v8, v5, v24

    aget-wide v8, p0, v23

    aput-wide v8, v5, v23

    aget-wide v8, p0, v20

    aput-wide v8, p0, v11

    aput-wide v2, p0, v24

    aget-wide v2, p0, v21

    aput-wide v2, p0, v23

    aget-wide v2, v5, v11

    neg-double v2, v2

    aput-wide v2, p0, v20

    aget-wide v2, v5, v24

    neg-double v2, v2

    aput-wide v2, p0, v22

    aget-wide v2, v5, v23

    neg-double v2, v2

    aput-wide v2, p0, v21

    aget-wide v2, v27, v11

    aput-wide v2, v5, v11

    aget-wide v2, v27, v24

    aput-wide v2, v5, v24

    aget-wide v2, v27, v23

    aput-wide v2, v5, v23

    aget-wide v2, v27, v20

    aput-wide v2, v27, v11

    aget-wide v2, v27, v22

    aput-wide v2, v27, v24

    aget-wide v2, v27, v21

    aput-wide v2, v27, v23

    aget-wide v2, v5, v11

    neg-double v2, v2

    aput-wide v2, v27, v20

    aget-wide v2, v5, v24

    neg-double v2, v2

    aput-wide v2, v27, v22

    aget-wide v2, v5, v23

    neg-double v2, v2

    aput-wide v2, v27, v21

    goto/16 :goto_5

    :cond_8
    mul-double/2addr v8, v8

    mul-double/2addr v2, v2

    add-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v2, v8, v2

    aget-wide v8, p0, v24

    mul-double v11, v8, v2

    aget-wide v15, p0, v22

    mul-double/2addr v2, v15

    const/4 v14, 0x3

    aget-wide v17, p0, v14

    mul-double v17, v17, v11

    aget-wide v28, p0, v20

    mul-double v30, v2, v28

    add-double v17, v17, v30

    aput-wide v17, v5, v14

    neg-double v0, v2

    aget-wide v32, p0, v14

    mul-double v32, v32, v0

    mul-double v28, v28, v11

    add-double v32, v32, v28

    aput-wide v32, p0, v20

    aput-wide v17, p0, v14

    mul-double/2addr v8, v11

    mul-double v17, v2, v15

    add-double v8, v8, v17

    aput-wide v8, v5, v24

    aget-wide v17, p0, v24

    mul-double v17, v17, v0

    mul-double/2addr v15, v11

    add-double v17, v17, v15

    aput-wide v17, p0, v22

    aput-wide v8, p0, v24

    aget-wide v8, p0, v23

    mul-double/2addr v8, v11

    aget-wide v15, p0, v21

    mul-double v17, v2, v15

    add-double v8, v8, v17

    aput-wide v8, v5, v23

    aget-wide v17, p0, v23

    mul-double v17, v17, v0

    mul-double/2addr v15, v11

    add-double v17, v17, v15

    aput-wide v17, p0, v21

    aput-wide v8, p0, v23

    const/4 v8, 0x3

    aget-wide v14, v27, v8

    mul-double/2addr v14, v11

    aget-wide v16, v27, v20

    mul-double v28, v2, v16

    add-double v14, v14, v28

    aput-wide v14, v5, v8

    aget-wide v28, v27, v8

    mul-double v28, v28, v0

    mul-double v16, v16, v11

    add-double v28, v28, v16

    aput-wide v28, v27, v20

    aput-wide v14, v27, v8

    aget-wide v8, v27, v24

    mul-double/2addr v8, v11

    aget-wide v15, v27, v22

    mul-double v17, v2, v15

    add-double v8, v8, v17

    aput-wide v8, v5, v24

    aget-wide v17, v27, v24

    mul-double v17, v17, v0

    mul-double/2addr v15, v11

    add-double v17, v17, v15

    aput-wide v17, v27, v22

    aput-wide v8, v27, v24

    aget-wide v8, v27, v23

    mul-double/2addr v8, v11

    aget-wide v15, v27, v21

    mul-double/2addr v2, v15

    add-double/2addr v8, v2

    aput-wide v8, v5, v23

    aget-wide v2, v27, v23

    mul-double/2addr v0, v2

    mul-double/2addr v11, v15

    add-double/2addr v0, v11

    aput-wide v0, v27, v21

    aput-wide v8, v27, v23

    :goto_5
    aget-wide v0, p0, v10

    aput-wide v0, v6, v10

    aget-wide v0, p0, v24

    const/4 v2, 0x1

    aput-wide v0, v6, v2

    aget-wide v0, p0, v21

    const/4 v3, 0x2

    aput-wide v0, v6, v3

    aget-wide v0, p0, v2

    aput-wide v0, v19, v10

    aget-wide v8, p0, v23

    aput-wide v8, v19, v2

    mul-double/2addr v0, v0

    const-wide v2, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    mul-double/2addr v8, v8

    cmpg-double v0, v8, v2

    if-gez v0, :cond_9

    move-object/from16 v0, v27

    goto :goto_6

    :cond_9
    move-object/from16 v1, v19

    move-object/from16 v0, v27

    invoke-static {v6, v1, v0, v4}, Ljavax/vecmath/Matrix3d;->compute_qr([D[D[D[D)I

    :goto_6
    aget-wide v1, v6, v10

    const/4 v3, 0x1

    aget-wide v8, v6, v3

    const/4 v11, 0x2

    aget-wide v15, v6, v11

    const/4 v12, 0x3

    new-array v14, v12, [D

    move-object v12, v14

    aput-wide v1, v12, v10

    aput-wide v8, v12, v3

    aput-wide v15, v12, v11

    aget-wide v1, v12, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v8, v9}, Ljavax/vecmath/Matrix3d;->almostEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_e

    aget-wide v1, v12, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Ljavax/vecmath/Matrix3d;->almostEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_e

    aget-wide v1, v12, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2, v8, v9}, Ljavax/vecmath/Matrix3d;->almostEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_e

    move v2, v10

    move v3, v2

    const/4 v1, 0x3

    :goto_7
    if-ge v2, v1, :cond_b

    aget-wide v8, v12, v2

    cmpg-double v8, v8, v25

    if-gez v8, :cond_a

    const/4 v8, 0x1

    add-int/2addr v3, v8

    goto :goto_8

    :cond_a
    const/4 v8, 0x1

    :goto_8
    add-int/2addr v2, v8

    goto :goto_7

    :cond_b
    const/4 v8, 0x1

    const/4 v1, 0x2

    if-eqz v3, :cond_c

    if-ne v3, v1, :cond_e

    :cond_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, p1, v1

    aput-wide v2, p1, v8

    aput-wide v2, p1, v10

    const/16 v0, 0x9

    :goto_9
    if-ge v10, v0, :cond_d

    aget-wide v1, v7, v10

    aput-wide v1, p2, v10

    add-int/2addr v10, v8

    goto :goto_9

    :cond_d
    return-void

    :cond_e
    invoke-static {v0, v5}, Ljavax/vecmath/Matrix3d;->transpose_mat([D[D)V

    invoke-static {v4, v6}, Ljavax/vecmath/Matrix3d;->transpose_mat([D[D)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Ljavax/vecmath/Matrix3d;->svdReorder([D[D[D[D[D[D)V

    return-void
.end method

.method public static d_sign(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-double p0, p0

    :goto_0
    cmpl-double p2, p2, v0

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    neg-double p0, p0

    :goto_1
    return-wide p0
.end method

.method private final invertGeneral(Ljavax/vecmath/Matrix3d;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    new-array v3, v2, [D

    const/4 v4, 0x3

    new-array v5, v4, [I

    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v8, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v12, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v14, v1, Ljavax/vecmath/Matrix3d;->m11:D

    move-object/from16 v16, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    move-object/from16 v17, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide/from16 v18, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v0, v1, Ljavax/vecmath/Matrix3d;->m22:D

    move-wide/from16 v20, v0

    const/16 v0, 0x9

    new-array v1, v0, [D

    const/4 v0, 0x0

    aput-wide v6, v1, v0

    const/4 v6, 0x1

    aput-wide v8, v1, v6

    const/4 v7, 0x2

    aput-wide v10, v1, v7

    const/4 v8, 0x3

    aput-wide v12, v1, v8

    const/4 v8, 0x4

    aput-wide v14, v1, v8

    const/4 v9, 0x5

    aput-wide v4, v1, v9

    const/4 v4, 0x6

    aput-wide v18, v1, v4

    const/4 v5, 0x7

    aput-wide v2, v1, v5

    const/16 v2, 0x8

    aput-wide v20, v1, v2

    move-object/from16 v3, v16

    invoke-static {v1, v3}, Ljavax/vecmath/Matrix3d;->luDecomposition([D[I)Z

    move-result v10

    if-eqz v10, :cond_1

    move v11, v0

    const/16 v10, 0x9

    :goto_0
    if-ge v11, v10, :cond_0

    const-wide/16 v12, 0x0

    aput-wide v12, v17, v11

    add-int/2addr v11, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v17, v0

    aput-wide v10, v17, v8

    aput-wide v10, v17, v2

    move-object/from16 v10, v17

    invoke-static {v1, v3, v10}, Ljavax/vecmath/Matrix3d;->luBacksubstitution([D[I[D)V

    aget-wide v0, v10, v0

    move-object/from16 v3, p0

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m00:D

    aget-wide v0, v10, v6

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m01:D

    aget-wide v0, v10, v7

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x3

    aget-wide v0, v10, v0

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m10:D

    aget-wide v0, v10, v8

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m11:D

    aget-wide v0, v10, v9

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m12:D

    aget-wide v0, v10, v4

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m20:D

    aget-wide v0, v10, v5

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m21:D

    aget-wide v0, v10, v2

    iput-wide v0, v3, Ljavax/vecmath/Matrix3d;->m22:D

    return-void

    :cond_1
    move-object/from16 v3, p0

    new-instance v0, Ljavax/vecmath/SingularMatrixException;

    const-string v1, "Matrix3d12"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static luBacksubstitution([D[I[D)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const/4 v3, -0x1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, p1, v4

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    aget-wide v6, p2, v5

    mul-int/lit8 v8, v4, 0x3

    add-int v9, v1, v8

    aget-wide v10, p2, v9

    aput-wide v10, p2, v5

    if-ltz v3, :cond_0

    move v5, v3

    :goto_2
    add-int/lit8 v10, v4, -0x1

    if-gt v5, v10, :cond_1

    add-int v10, v8, v5

    aget-wide v10, p0, v10

    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v1

    aget-wide v12, p2, v12

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x0

    cmpl-double v5, v6, v10

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    aput-wide v6, p2, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x6

    aget-wide v3, p2, v2

    const/16 v5, 0x8

    aget-wide v5, p0, v5

    div-double/2addr v3, v5

    aput-wide v3, p2, v2

    add-int/lit8 v5, v1, 0x3

    aget-wide v6, p2, v5

    const/4 v8, 0x5

    aget-wide v8, p0, v8

    mul-double/2addr v8, v3

    sub-double/2addr v6, v8

    const/4 v3, 0x4

    aget-wide v3, p0, v3

    div-double/2addr v6, v3

    aput-wide v6, p2, v5

    aget-wide v3, p2, v1

    const/4 v5, 0x1

    aget-wide v8, p0, v5

    mul-double/2addr v8, v6

    sub-double/2addr v3, v8

    const/4 v5, 0x2

    aget-wide v5, p0, v5

    aget-wide v7, p2, v2

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    aget-wide v5, p0, v0

    div-double/2addr v3, v5

    aput-wide v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static luDecomposition([D[I)Z
    .locals 24

    const/4 v0, 0x3

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_3

    move v3, v0

    move-wide v11, v9

    :goto_1
    add-int/lit8 v13, v3, -0x1

    if-eqz v3, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget-wide v14, p0, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v4, v14, v11

    if-lez v4, :cond_0

    move v4, v3

    move v3, v13

    move-wide v11, v14

    goto :goto_1

    :cond_0
    move v4, v3

    move v3, v13

    goto :goto_1

    :cond_1
    cmpl-double v3, v11, v9

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v5, 0x1

    div-double/2addr v7, v11

    aput-wide v7, v1, v5

    move v5, v3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v0, :cond_e

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_5

    mul-int/lit8 v6, v5, 0x3

    add-int v11, v6, v3

    aget-wide v12, p0, v11

    move v15, v3

    move v14, v5

    :goto_4
    add-int/lit8 v16, v14, -0x1

    if-eqz v14, :cond_4

    aget-wide v17, p0, v6

    aget-wide v19, p0, v15

    mul-double v17, v17, v19

    sub-double v12, v12, v17

    add-int/2addr v6, v4

    add-int/2addr v15, v0

    move/from16 v14, v16

    goto :goto_4

    :cond_4
    aput-wide v12, p0, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    move v6, v3

    move-wide v11, v9

    :goto_5
    if-ge v6, v0, :cond_8

    mul-int/lit8 v13, v6, 0x3

    add-int v14, v13, v3

    aget-wide v15, p0, v14

    move/from16 v17, v3

    move/from16 v18, v17

    :goto_6
    add-int/lit8 v19, v17, -0x1

    if-eqz v17, :cond_6

    aget-wide v20, p0, v13

    aget-wide v22, p0, v18

    mul-double v20, v20, v22

    sub-double v15, v15, v20

    add-int/2addr v13, v4

    add-int/lit8 v18, v18, 0x3

    move/from16 v17, v19

    goto :goto_6

    :cond_6
    aput-wide v15, p0, v14

    aget-wide v13, v1, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    cmpl-double v15, v13, v11

    if-ltz v15, :cond_7

    move v5, v6

    move-wide v11, v13

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    if-ltz v5, :cond_d

    if-eq v3, v5, :cond_a

    mul-int/lit8 v4, v5, 0x3

    mul-int/lit8 v6, v3, 0x3

    move v11, v0

    :goto_7
    add-int/lit8 v12, v11, -0x1

    if-eqz v11, :cond_9

    aget-wide v13, p0, v4

    add-int/lit8 v11, v4, 0x1

    aget-wide v15, p0, v6

    aput-wide v15, p0, v4

    add-int/lit8 v4, v6, 0x1

    aput-wide v13, p0, v6

    move v6, v4

    move v4, v11

    move v11, v12

    goto :goto_7

    :cond_9
    aget-wide v11, v1, v3

    aput-wide v11, v1, v5

    :cond_a
    aput v5, p1, v3

    mul-int/lit8 v4, v3, 0x3

    add-int/2addr v4, v3

    aget-wide v4, p0, v4

    cmpl-double v6, v4, v9

    if-nez v6, :cond_b

    return v2

    :cond_b
    const/4 v6, 0x2

    if-eq v3, v6, :cond_c

    div-double v4, v7, v4

    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    rsub-int/lit8 v11, v3, 0x2

    :goto_8
    add-int/lit8 v12, v11, -0x1

    if-eqz v11, :cond_c

    aget-wide v13, p0, v6

    mul-double/2addr v13, v4

    aput-wide v13, p0, v6

    add-int/2addr v6, v0

    move v11, v12

    goto :goto_8

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix3d13"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v4
.end method

.method public static mat_mul([D[D[D)V
    .locals 46

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double v5, v1, v3

    const/4 v7, 0x1

    aget-wide v8, p0, v7

    const/4 v10, 0x3

    aget-wide v11, p1, v10

    mul-double v13, v8, v11

    add-double/2addr v5, v13

    const/4 v13, 0x2

    aget-wide v14, p0, v13

    const/16 v16, 0x6

    aget-wide v17, p1, v16

    mul-double v19, v14, v17

    add-double v5, v5, v19

    aget-wide v19, p1, v7

    mul-double v21, v1, v19

    const/16 v23, 0x4

    aget-wide v24, p1, v23

    mul-double v26, v8, v24

    add-double v21, v21, v26

    const/16 v26, 0x7

    aget-wide v27, p1, v26

    mul-double v29, v14, v27

    add-double v21, v21, v29

    aget-wide v29, p1, v13

    mul-double v1, v1, v29

    const/16 v31, 0x5

    aget-wide v32, p1, v31

    mul-double v8, v8, v32

    add-double/2addr v1, v8

    const/16 v8, 0x8

    aget-wide v34, p1, v8

    mul-double v14, v14, v34

    add-double/2addr v1, v14

    aget-wide v14, p0, v10

    mul-double v36, v14, v3

    aget-wide v38, p0, v23

    mul-double v40, v38, v11

    add-double v36, v36, v40

    aget-wide v40, p0, v31

    mul-double v42, v40, v17

    add-double v36, v36, v42

    mul-double v42, v14, v19

    mul-double v44, v38, v24

    add-double v42, v42, v44

    mul-double v44, v40, v27

    add-double v42, v42, v44

    mul-double v14, v14, v29

    mul-double v38, v38, v32

    add-double v14, v14, v38

    mul-double v40, v40, v34

    add-double v14, v14, v40

    aget-wide v38, p0, v16

    mul-double v3, v3, v38

    aget-wide v40, p0, v26

    mul-double v11, v11, v40

    add-double/2addr v3, v11

    aget-wide v11, p0, v8

    mul-double v17, v17, v11

    add-double v3, v3, v17

    mul-double v19, v19, v38

    mul-double v24, v24, v40

    add-double v19, v19, v24

    mul-double v27, v27, v11

    add-double v19, v19, v27

    mul-double v38, v38, v29

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v11, v11, v34

    add-double v38, v38, v11

    const/16 v9, 0x9

    new-array v11, v9, [D

    aput-wide v5, v11, v0

    aput-wide v21, v11, v7

    aput-wide v1, v11, v13

    aput-wide v36, v11, v10

    aput-wide v42, v11, v23

    aput-wide v14, v11, v31

    aput-wide v3, v11, v16

    aput-wide v19, v11, v26

    aput-wide v38, v11, v8

    :goto_0
    if-ge v0, v9, :cond_0

    aget-wide v1, v11, v0

    aput-wide v1, p2, v0

    add-int/2addr v0, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static max(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static max3([D)D
    .locals 6

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    cmpl-double v4, v0, v2

    const/4 v5, 0x2

    if-lez v4, :cond_1

    aget-wide v2, p0, v5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    return-wide v2

    :cond_1
    aget-wide v0, p0, v5

    cmpl-double p0, v2, v0

    if-lez p0, :cond_2

    return-wide v2

    :cond_2
    return-wide v0
.end method

.method public static min(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static print_det([D)V
    .locals 22

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x4

    aget-wide v2, p0, v2

    mul-double v4, v0, v2

    const/16 v6, 0x8

    aget-wide v6, p0, v6

    mul-double/2addr v4, v6

    const/4 v8, 0x1

    aget-wide v8, p0, v8

    const/4 v10, 0x5

    aget-wide v10, p0, v10

    mul-double v12, v8, v10

    const/4 v14, 0x6

    aget-wide v14, p0, v14

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    const/4 v12, 0x2

    aget-wide v12, p0, v12

    const/16 v16, 0x3

    aget-wide v16, p0, v16

    mul-double v18, v12, v16

    const/16 v20, 0x7

    aget-wide v20, p0, v20

    mul-double v18, v18, v20

    add-double v4, v4, v18

    mul-double/2addr v12, v2

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    mul-double/2addr v0, v10

    mul-double v0, v0, v20

    sub-double/2addr v4, v0

    mul-double v8, v8, v16

    mul-double/2addr v8, v6

    sub-double/2addr v4, v8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "det= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static print_mat([D)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x3

    aget-wide v4, p0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    aget-wide v5, p0, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    aget-wide v3, p0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static svdReorder([D[D[D[D[D[D)V
    .locals 20

    move-object/from16 v0, p2

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/16 v3, 0x9

    new-array v4, v3, [D

    const/4 v5, 0x0

    aget-wide v6, p3, v5

    const-wide/16 v8, 0x0

    cmpg-double v10, v6, v8

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-gez v10, :cond_0

    neg-double v6, v6

    aput-wide v6, p3, v5

    aget-wide v6, v0, v5

    neg-double v6, v6

    aput-wide v6, v0, v5

    aget-wide v6, v0, v12

    neg-double v6, v6

    aput-wide v6, v0, v12

    aget-wide v6, v0, v11

    neg-double v6, v6

    aput-wide v6, v0, v11

    :cond_0
    aget-wide v6, p3, v12

    cmpg-double v10, v6, v8

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-gez v10, :cond_1

    neg-double v6, v6

    aput-wide v6, p3, v12

    aget-wide v6, v0, v1

    neg-double v6, v6

    aput-wide v6, v0, v1

    aget-wide v6, v0, v14

    neg-double v6, v6

    aput-wide v6, v0, v14

    aget-wide v6, v0, v13

    neg-double v6, v6

    aput-wide v6, v0, v13

    :cond_1
    aget-wide v6, p3, v11

    cmpg-double v8, v6, v8

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v15, 0x6

    if-gez v8, :cond_2

    neg-double v6, v6

    aput-wide v6, p3, v11

    aget-wide v6, v0, v15

    neg-double v6, v6

    aput-wide v6, v0, v15

    aget-wide v6, v0, v10

    neg-double v6, v6

    aput-wide v6, v0, v10

    aget-wide v6, v0, v9

    neg-double v6, v6

    aput-wide v6, v0, v9

    :cond_2
    move-object/from16 v6, p1

    invoke-static {v6, v0, v4}, Ljavax/vecmath/Matrix3d;->mat_mul([D[D[D)V

    aget-wide v6, p3, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    aget-wide v16, p3, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljavax/vecmath/Matrix3d;->almostEqual(DD)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-wide v6, p3, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    aget-wide v9, p3, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljavax/vecmath/Matrix3d;->almostEqual(DD)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    :goto_0
    if-ge v0, v3, :cond_3

    aget-wide v6, v4, v0

    aput-wide v6, p4, v0

    add-int/2addr v0, v12

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v5, v1, :cond_f

    aget-wide v2, p3, v5

    aput-wide v2, p5, v5

    add-int/2addr v5, v12

    goto :goto_1

    :cond_4
    aget-wide v6, p3, v5

    aget-wide v9, p3, v12

    cmpl-double v3, v6, v9

    if-lez v3, :cond_7

    aget-wide v16, p3, v11

    cmpl-double v3, v6, v16

    if-lez v3, :cond_6

    cmpl-double v3, v16, v9

    if-lez v3, :cond_5

    aput v5, v2, v5

    aput v11, v2, v12

    aput v12, v2, v11

    goto :goto_2

    :cond_5
    aput v5, v2, v5

    aput v12, v2, v12

    aput v11, v2, v11

    goto :goto_2

    :cond_6
    aput v11, v2, v5

    aput v5, v2, v12

    aput v12, v2, v11

    goto :goto_2

    :cond_7
    aget-wide v16, p3, v11

    cmpl-double v3, v9, v16

    if-lez v3, :cond_9

    cmpl-double v3, v16, v6

    if-lez v3, :cond_8

    aput v12, v2, v5

    aput v11, v2, v12

    aput v5, v2, v11

    goto :goto_2

    :cond_8
    aput v12, v2, v5

    aput v5, v2, v12

    aput v11, v2, v11

    goto :goto_2

    :cond_9
    aput v11, v2, v5

    aput v12, v2, v12

    aput v5, v2, v11

    :goto_2
    aget-wide v6, p0, v5

    mul-double/2addr v6, v6

    aget-wide v9, p0, v12

    mul-double/2addr v9, v9

    add-double/2addr v6, v9

    aget-wide v9, p0, v11

    mul-double/2addr v9, v9

    add-double/2addr v6, v9

    aget-wide v9, p0, v1

    mul-double/2addr v9, v9

    aget-wide v16, p0, v14

    mul-double v16, v16, v16

    add-double v9, v9, v16

    aget-wide v16, p0, v13

    mul-double v16, v16, v16

    add-double v9, v9, v16

    aget-wide v16, p0, v15

    mul-double v16, v16, v16

    const/4 v3, 0x7

    aget-wide v18, p0, v3

    mul-double v18, v18, v18

    add-double v16, v16, v18

    const/16 v0, 0x8

    aget-wide v18, p0, v0

    mul-double v18, v18, v18

    add-double v16, v16, v18

    new-array v3, v1, [D

    aput-wide v6, v3, v5

    aput-wide v9, v3, v12

    aput-wide v16, v3, v11

    aget-wide v6, v3, v5

    aget-wide v9, v3, v12

    cmpl-double v16, v6, v9

    if-lez v16, :cond_c

    aget-wide v16, v3, v11

    cmpl-double v3, v6, v16

    if-lez v3, :cond_b

    cmpl-double v3, v16, v9

    if-lez v3, :cond_a

    move v3, v5

    move v6, v11

    :goto_3
    move v7, v12

    goto :goto_6

    :cond_a
    move v3, v5

    move v7, v11

    :goto_4
    move v6, v12

    goto :goto_6

    :cond_b
    move v7, v5

    move v6, v11

    :goto_5
    move v3, v12

    goto :goto_6

    :cond_c
    aget-wide v16, v3, v11

    cmpl-double v3, v9, v16

    if-lez v3, :cond_e

    cmpl-double v3, v16, v6

    if-lez v3, :cond_d

    move v6, v5

    move v3, v11

    goto :goto_3

    :cond_d
    move v6, v5

    move v7, v11

    goto :goto_5

    :cond_e
    move v7, v5

    move v3, v11

    goto :goto_4

    :goto_6
    aget v3, v2, v3

    aget-wide v9, p3, v3

    aput-wide v9, p5, v5

    aget v6, v2, v6

    aget-wide v9, p3, v6

    aput-wide v9, p5, v12

    aget v2, v2, v7

    aget-wide v9, p3, v2

    aput-wide v9, p5, v11

    aget-wide v9, v4, v3

    aput-wide v9, p4, v5

    add-int/lit8 v5, v3, 0x3

    aget-wide v9, v4, v5

    aput-wide v9, p4, v1

    add-int/2addr v3, v15

    aget-wide v9, v4, v3

    aput-wide v9, p4, v15

    aget-wide v9, v4, v6

    aput-wide v9, p4, v12

    add-int/lit8 v3, v6, 0x3

    aget-wide v9, v4, v3

    aput-wide v9, p4, v14

    add-int/2addr v6, v15

    aget-wide v5, v4, v6

    const/4 v3, 0x7

    aput-wide v5, p4, v3

    aget-wide v5, v4, v2

    aput-wide v5, p4, v11

    add-int/2addr v1, v2

    aget-wide v5, v4, v1

    aput-wide v5, p4, v13

    add-int/2addr v2, v15

    aget-wide v1, v4, v2

    const/16 v0, 0x8

    aput-wide v1, p4, v0

    :cond_f
    return-void
.end method

.method public static transpose_mat([D[D)V
    .locals 6

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aput-wide v1, p1, v3

    const/4 v1, 0x6

    aget-wide v4, p0, v1

    const/4 v2, 0x2

    aput-wide v4, p1, v2

    aget-wide v3, p0, v3

    aput-wide v3, p1, v0

    const/4 v0, 0x4

    aget-wide v3, p0, v0

    aput-wide v3, p1, v0

    const/4 v0, 0x7

    aget-wide v3, p0, v0

    const/4 v5, 0x5

    aput-wide v3, p1, v5

    aget-wide v2, p0, v2

    aput-wide v2, p1, v1

    aget-wide v1, p0, v5

    aput-wide v1, p1, v0

    const/16 v0, 0x8

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method


# virtual methods
.method public final add(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final add(DLjavax/vecmath/Matrix3d;)V
    .locals 2

    .line 10
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m00:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m02:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 13
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m10:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m12:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m20:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m21:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix3d;)V
    .locals 4

    .line 28
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 29
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m01:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 30
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 31
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 32
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 33
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 34
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 35
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 36
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 4

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m00:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 20
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m01:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 21
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m02:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m10:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m20:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 27
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide p1, p2, Ljavax/vecmath/Matrix3d;->m22:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Matrix3d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final determinant()D
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v7, v3, v5

    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v13, v9, v11

    sub-double/2addr v7, v13

    mul-double/2addr v1, v7

    iget-wide v7, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v13, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v9, v13

    move-wide v15, v3

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v5, v3

    sub-double/2addr v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v11

    mul-double v7, v15, v13

    sub-double/2addr v3, v7

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    return-wide v1
.end method

.method public epsilonEquals(Ljavax/vecmath/Matrix3d;D)Z
    .locals 8

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    neg-double v0, v0

    :cond_0
    cmpl-double v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    neg-double v4, v4

    :cond_2
    cmpl-double v0, v4, p2

    if-lez v0, :cond_3

    return v1

    :cond_3
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m02:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_4

    neg-double v4, v4

    :cond_4
    cmpl-double v0, v4, p2

    if-lez v0, :cond_5

    return v1

    :cond_5
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m10:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_6

    neg-double v4, v4

    :cond_6
    cmpl-double v0, v4, p2

    if-lez v0, :cond_7

    return v1

    :cond_7
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m11:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_8

    neg-double v4, v4

    :cond_8
    cmpl-double v0, v4, p2

    if-lez v0, :cond_9

    return v1

    :cond_9
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_a

    neg-double v4, v4

    :cond_a
    cmpl-double v0, v4, p2

    if-lez v0, :cond_b

    return v1

    :cond_b
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_c

    neg-double v4, v4

    :cond_c
    cmpl-double v0, v4, p2

    if-lez v0, :cond_d

    return v1

    :cond_d
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m21:D

    sub-double/2addr v4, v6

    cmpg-double v0, v4, v2

    if-gez v0, :cond_e

    neg-double v4, v4

    :cond_e
    cmpl-double v0, v4, p2

    if-lez v0, :cond_f

    return v1

    :cond_f
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m22:D

    sub-double/2addr v4, v6

    cmpg-double p1, v4, v2

    if-gez p1, :cond_10

    neg-double v4, v4

    :cond_10
    cmpl-double p1, v4, p2

    if-lez p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Matrix3d;

    .line 3
    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m00:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m01:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m02:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m10:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m11:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m12:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m20:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m21:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m22:D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Matrix3d;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m00:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m01:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m02:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m10:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m11:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m12:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m20:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m21:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide v3, p1, Ljavax/vecmath/Matrix3d;->m22:D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final getColumn(ILjavax/vecmath/Vector3d;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getColumn(I[D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 11
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m00:D

    aput-wide v3, p2, v0

    .line 12
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m10:D

    aput-wide v3, p2, v2

    .line 13
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 14
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m01:D

    aput-wide v3, p2, v0

    .line 15
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m11:D

    aput-wide v3, p2, v2

    .line 16
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 17
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m02:D

    aput-wide v3, p2, v0

    .line 18
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m12:D

    aput-wide v3, p2, v2

    .line 19
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m22:D

    aput-wide v2, p2, v1

    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d4"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getElement(II)D
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_6

    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-wide p1

    :cond_0
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    return-wide p1

    :cond_1
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    return-wide p1

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_6

    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    return-wide p1

    :cond_3
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    return-wide p1

    :cond_4
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    return-wide p1

    :cond_5
    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_6

    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    return-wide p1

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m01:D

    return-wide p1

    :cond_8
    iget-wide p1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    return-wide p1
.end method

.method public final getM00()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    return-wide v0
.end method

.method public final getM01()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    return-wide v0
.end method

.method public final getM02()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    return-wide v0
.end method

.method public final getM10()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    return-wide v0
.end method

.method public final getM11()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    return-wide v0
.end method

.method public final getM12()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    return-wide v0
.end method

.method public final getM20()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    return-wide v0
.end method

.method public final getM21()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    return-wide v0
.end method

.method public final getM22()D
    .locals 2

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-wide v0
.end method

.method public final getRow(ILjavax/vecmath/Vector3d;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->z:D

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRow(I[D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 11
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m00:D

    aput-wide v3, p2, v0

    .line 12
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m01:D

    aput-wide v3, p2, v2

    .line 13
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 14
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m10:D

    aput-wide v3, p2, v0

    .line 15
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m11:D

    aput-wide v3, p2, v2

    .line 16
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    aput-wide v2, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 17
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m20:D

    aput-wide v3, p2, v0

    .line 18
    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m21:D

    aput-wide v3, p2, v2

    .line 19
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m22:D

    aput-wide v2, p2, v1

    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d2"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getScale()D
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/16 v1, 0x9

    new-array v1, v1, [D

    invoke-virtual {p0, v0, v1}, Ljavax/vecmath/Matrix3d;->getScaleRotate([D[D)V

    invoke-static {v0}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleRotate([D[D)V
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v5, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v7, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v9, v0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v11, v0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v13, v0, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide v15, v13

    iget-wide v13, v0, Ljavax/vecmath/Matrix3d;->m21:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Ljavax/vecmath/Matrix3d;->m22:D

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/16 v19, 0x0

    aput-wide v1, v0, v19

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v5, v0, v1

    const/4 v1, 0x3

    aput-wide v7, v0, v1

    const/4 v1, 0x4

    aput-wide v9, v0, v1

    const/4 v1, 0x5

    aput-wide v11, v0, v1

    const/4 v1, 0x6

    aput-wide v15, v0, v1

    const/4 v1, 0x7

    aput-wide v17, v0, v1

    const/16 v1, 0x8

    aput-wide v13, v0, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    return-void
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    invoke-static {v0, v1}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m01:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m02:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m12:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m20:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m21:D

    invoke-static {v4, v5}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m22:D

    invoke-static {v2, v3}, Ljavax/vecmath/VecMathUtil;->doubleToLongBits(D)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final invert()V
    .locals 0

    .line 2
    invoke-direct {p0, p0}, Ljavax/vecmath/Matrix3d;->invertGeneral(Ljavax/vecmath/Matrix3d;)V

    return-void
.end method

.method public final invert(Ljavax/vecmath/Matrix3d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/vecmath/Matrix3d;->invertGeneral(Ljavax/vecmath/Matrix3d;)V

    return-void
.end method

.method public final mul(D)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final mul(DLjavax/vecmath/Matrix3d;)V
    .locals 2

    .line 10
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 13
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    iget-wide v0, p3, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix3d;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 19
    iget-wide v2, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v12, v8, v10

    add-double/2addr v6, v12

    iget-wide v12, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v14, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v16, v12, v14

    add-double v6, v6, v16

    move-wide/from16 v16, v6

    .line 20
    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v18, v2, v6

    move-wide/from16 v20, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v22, v8, v6

    add-double v18, v18, v22

    move-wide/from16 v22, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v24, v12, v6

    move-wide/from16 v26, v6

    add-double v6, v18, v24

    move-wide/from16 v18, v6

    .line 21
    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v2, v6

    move-wide/from16 v24, v6

    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v8, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v12, v8

    add-double/2addr v2, v12

    .line 22
    iget-wide v12, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v28, v12, v4

    move-wide/from16 v30, v2

    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v32, v1, v10

    add-double v28, v28, v32

    move-wide/from16 v32, v10

    iget-wide v10, v0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v34, v10, v14

    move-wide/from16 v36, v14

    add-double v14, v28, v34

    mul-double v28, v12, v20

    mul-double v34, v1, v22

    add-double v28, v28, v34

    mul-double v34, v10, v26

    move-wide/from16 v38, v14

    add-double v14, v28, v34

    mul-double v12, v12, v24

    mul-double/2addr v1, v6

    add-double/2addr v12, v1

    mul-double/2addr v10, v8

    add-double/2addr v12, v10

    .line 23
    iget-wide v1, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v4, v1

    iget-wide v10, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v28, v10, v32

    add-double v4, v4, v28

    move-wide/from16 v28, v12

    iget-wide v12, v0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v32, v12, v36

    add-double v4, v4, v32

    mul-double v20, v20, v1

    mul-double v22, v22, v10

    add-double v20, v20, v22

    mul-double v22, v12, v26

    move-wide/from16 v26, v4

    add-double v3, v20, v22

    mul-double v1, v1, v24

    mul-double/2addr v10, v6

    add-double/2addr v1, v10

    mul-double/2addr v12, v8

    add-double/2addr v1, v12

    move-wide/from16 v6, v16

    .line 24
    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide/from16 v5, v18

    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v5, v30

    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v5, v38

    .line 25
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v14, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v12, v28

    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v5, v26

    .line 26
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 27
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v9, v5, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v13, v9, v11

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 28
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v13, v3

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v5, v11

    add-double/2addr v13, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v17, v9, v5

    add-double v13, v13, v17

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 29
    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v17, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v13, v5

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v9, v13

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 30
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v9

    move-wide/from16 v19, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v21, v7, v15

    add-double v3, v3, v21

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 31
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide/from16 v21, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v23, v3, v13

    mul-double/2addr v9, v11

    add-double v23, v23, v9

    mul-double v9, v7, v17

    add-double v9, v23, v9

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 32
    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v9

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v11, v5

    add-double/2addr v3, v11

    mul-double v7, v7, v21

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 33
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v3, v3, v19

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v11, v7, v15

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 34
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v13, v3

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v5, v11

    add-double/2addr v13, v5

    mul-double v5, v7, v17

    add-double/2addr v13, v5

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v3, v9

    .line 35
    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v1, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    mul-double v7, v7, v21

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto/16 :goto_0

    .line 36
    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v7

    .line 37
    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v19, v3, v7

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v23, v9, v7

    add-double v19, v19, v23

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v25, v13, v7

    move-wide/from16 v27, v7

    add-double v7, v19, v25

    move-wide/from16 v19, v7

    .line 38
    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    .line 39
    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v29, v13, v5

    move-wide/from16 v31, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v33, v2, v15

    add-double v29, v29, v33

    move-wide/from16 v33, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v35, v4, v11

    move-wide/from16 v37, v11

    add-double v11, v29, v35

    mul-double v29, v13, v21

    mul-double v35, v2, v23

    add-double v29, v29, v35

    mul-double v35, v4, v27

    move-wide/from16 v39, v11

    add-double v11, v29, v35

    mul-double v13, v13, v25

    mul-double/2addr v2, v7

    add-double/2addr v13, v2

    mul-double/2addr v4, v9

    add-double/2addr v13, v4

    .line 40
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v5, v2, v33

    move-wide/from16 v29, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    move-wide v15, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v33, v11, v37

    add-double v5, v5, v33

    mul-double v21, v21, v2

    mul-double v23, v23, v13

    add-double v21, v21, v23

    mul-double v23, v11, v27

    move-wide/from16 p1, v5

    add-double v4, v21, v23

    mul-double v2, v2, v25

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double/2addr v11, v9

    add-double/2addr v2, v11

    move-wide/from16 v7, v17

    .line 41
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide/from16 v6, v19

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v6, v31

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v6, v39

    .line 42
    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide v6, v15

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v13, v29

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v6, p1

    .line 43
    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v2, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final mulNormalize(Ljavax/vecmath/Matrix3d;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 1
    new-array v3, v2, [D

    const/4 v4, 0x3

    .line 2
    new-array v5, v4, [D

    .line 3
    iget-wide v6, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v8, v1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v10, v6, v8

    iget-wide v12, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v14, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v16, v12, v14

    add-double v10, v10, v16

    move-object/from16 v17, v5

    iget-wide v4, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-object/from16 v18, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v19, v4, v2

    add-double v10, v10, v19

    move-wide/from16 v19, v10

    .line 4
    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v21, v6, v10

    move-wide/from16 v23, v10

    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v25, v12, v10

    add-double v21, v21, v25

    move-wide/from16 v25, v10

    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v27, v4, v10

    add-double v21, v21, v27

    move-wide/from16 v27, v10

    .line 5
    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v6, v10

    move-wide/from16 v29, v10

    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v12, v10

    add-double/2addr v6, v12

    iget-wide v12, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v4, v12

    add-double/2addr v6, v4

    .line 6
    iget-wide v4, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v31, v4, v8

    move-wide/from16 v33, v6

    iget-wide v6, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v35, v6, v14

    add-double v31, v31, v35

    move-wide/from16 v35, v14

    iget-wide v14, v0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v37, v14, v2

    add-double v31, v31, v37

    mul-double v37, v4, v23

    mul-double v39, v6, v25

    add-double v37, v37, v39

    mul-double v39, v14, v27

    add-double v37, v37, v39

    mul-double v4, v4, v29

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    mul-double/2addr v14, v12

    add-double/2addr v4, v14

    .line 7
    iget-wide v6, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v8, v6

    iget-wide v14, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v35, v35, v14

    add-double v8, v8, v35

    move-wide/from16 v35, v4

    iget-wide v4, v0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v2, v4

    add-double/2addr v8, v2

    mul-double v1, v6, v23

    mul-double v23, v14, v25

    add-double v1, v1, v23

    mul-double v23, v4, v27

    add-double v1, v1, v23

    mul-double v6, v6, v29

    mul-double/2addr v14, v10

    add-double/2addr v6, v14

    mul-double/2addr v4, v12

    add-double/2addr v6, v4

    const/16 v3, 0x9

    .line 8
    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v19, v3, v4

    const/4 v5, 0x1

    aput-wide v21, v3, v5

    const/4 v10, 0x2

    aput-wide v33, v3, v10

    const/4 v11, 0x3

    aput-wide v31, v3, v11

    const/4 v11, 0x4

    aput-wide v37, v3, v11

    const/4 v12, 0x5

    aput-wide v35, v3, v12

    const/4 v13, 0x6

    aput-wide v8, v3, v13

    const/4 v8, 0x7

    aput-wide v1, v3, v8

    const/16 v1, 0x8

    aput-wide v6, v3, v1

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    .line 9
    invoke-static {v3, v6, v2}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 10
    aget-wide v3, v2, v4

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    aget-wide v3, v2, v5

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    aget-wide v3, v2, v10

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v3, 0x3

    .line 13
    aget-wide v3, v2, v3

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    aget-wide v3, v2, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    aget-wide v3, v2, v12

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    aget-wide v3, v2, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    aget-wide v3, v2, v8

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    aget-wide v1, v2, v1

    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final mulNormalize(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x9

    .line 19
    new-array v4, v3, [D

    const/4 v5, 0x3

    .line 20
    new-array v6, v5, [D

    .line 21
    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v11, v7, v9

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m01:D

    move-object v15, v6

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v16, v13, v5

    add-double v11, v11, v16

    move-object/from16 v17, v4

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v18, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v20, v3, v5

    add-double v11, v11, v20

    move-wide/from16 v20, v11

    .line 22
    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v22, v7, v11

    move-wide/from16 v24, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v26, v13, v11

    add-double v22, v22, v26

    move-wide/from16 v26, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v28, v3, v11

    add-double v22, v22, v28

    move-wide/from16 v28, v11

    .line 23
    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v7, v11

    move-wide/from16 v30, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v13, v11

    add-double/2addr v7, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v3, v13

    add-double/2addr v7, v3

    .line 24
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v32, v2, v9

    move-wide/from16 v34, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v36, v7, v18

    add-double v32, v32, v36

    move-wide/from16 v36, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v38, v9, v5

    add-double v32, v32, v38

    mul-double v38, v2, v24

    mul-double v40, v7, v26

    add-double v38, v38, v40

    mul-double v40, v9, v28

    add-double v38, v38, v40

    mul-double v2, v2, v30

    mul-double/2addr v7, v11

    add-double/2addr v2, v7

    mul-double/2addr v9, v13

    add-double/2addr v2, v9

    .line 25
    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v9, v7, v36

    move-wide/from16 v36, v2

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v18, v18, v2

    add-double v9, v9, v18

    iget-wide v0, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v5, v0

    add-double/2addr v9, v5

    mul-double v4, v7, v24

    mul-double v18, v2, v26

    add-double v4, v4, v18

    mul-double v18, v0, v28

    add-double v4, v4, v18

    mul-double v7, v7, v30

    mul-double/2addr v2, v11

    add-double/2addr v7, v2

    mul-double/2addr v0, v13

    add-double/2addr v7, v0

    const/16 v0, 0x9

    .line 26
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v20, v0, v1

    const/4 v2, 0x1

    aput-wide v22, v0, v2

    const/4 v3, 0x2

    aput-wide v34, v0, v3

    const/4 v6, 0x3

    aput-wide v32, v0, v6

    const/4 v6, 0x4

    aput-wide v38, v0, v6

    const/4 v11, 0x5

    aput-wide v36, v0, v11

    const/4 v12, 0x6

    aput-wide v9, v0, v12

    const/4 v9, 0x7

    aput-wide v4, v0, v9

    const/16 v4, 0x8

    aput-wide v7, v0, v4

    move-object v7, v15

    move-object/from16 v5, v17

    .line 27
    invoke-static {v0, v7, v5}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 28
    aget-wide v0, v5, v1

    move-object/from16 v7, p0

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m00:D

    .line 29
    aget-wide v0, v5, v2

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m01:D

    .line 30
    aget-wide v0, v5, v3

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x3

    .line 31
    aget-wide v0, v5, v0

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m10:D

    .line 32
    aget-wide v0, v5, v6

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m11:D

    .line 33
    aget-wide v0, v5, v11

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m12:D

    .line 34
    aget-wide v0, v5, v12

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m20:D

    .line 35
    aget-wide v0, v5, v9

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m21:D

    .line 36
    aget-wide v0, v5, v4

    iput-wide v0, v7, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final mulTransposeBoth(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v9, v3

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v13, v5, v11

    add-double/2addr v9, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v15, v7, v13

    add-double/2addr v9, v15

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v9

    move-wide v15, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v17, v3, v7

    move-wide/from16 v19, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v21, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v23, v7, v5

    add-double v17, v17, v23

    move-wide/from16 v23, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m21:D

    move-wide/from16 v25, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v27, v5, v9

    move-wide/from16 v29, v9

    add-double v9, v17, v27

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v17, v3, v9

    mul-double/2addr v7, v11

    add-double v17, v17, v7

    mul-double/2addr v13, v5

    add-double v7, v17, v13

    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v3, v15

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v7, v7, v25

    add-double/2addr v3, v7

    mul-double v5, v5, v21

    add-double/2addr v3, v5

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v7, v3, v19

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v11, v5, v23

    add-double/2addr v7, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v13, v11, v29

    add-double/2addr v7, v13

    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v9, v3

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v7, v5

    add-double/2addr v9, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v7

    iget-wide v1, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    mul-double v11, v11, v21

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v19, v3, v7

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v23, v9, v7

    add-double v19, v19, v23

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v25, v13, v7

    move-wide/from16 v27, v7

    add-double v7, v19, v25

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v29, v13, v5

    move-wide/from16 v31, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v33, v2, v15

    add-double v29, v29, v33

    move-wide/from16 v33, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v35, v4, v11

    move-wide/from16 v37, v11

    add-double v11, v29, v35

    mul-double v29, v13, v21

    mul-double v35, v2, v23

    add-double v29, v29, v35

    mul-double v35, v4, v27

    move-wide/from16 v39, v11

    add-double v11, v29, v35

    mul-double v13, v13, v25

    mul-double/2addr v2, v7

    add-double/2addr v13, v2

    mul-double/2addr v4, v9

    add-double/2addr v13, v4

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v5, v2, v33

    move-wide/from16 v29, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    move-wide v15, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v33, v11, v37

    add-double v5, v5, v33

    mul-double v21, v21, v2

    mul-double v23, v23, v13

    add-double v21, v21, v23

    mul-double v23, v11, v27

    move-wide/from16 p1, v5

    add-double v4, v21, v23

    mul-double v2, v2, v25

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double/2addr v11, v9

    add-double/2addr v2, v11

    move-wide/from16 v7, v17

    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide/from16 v6, v19

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v6, v31

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v6, v39

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide v6, v15

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v13, v29

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v6, p1

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v2, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final mulTransposeLeft(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v9, v5, v7

    add-double/2addr v3, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v13, v9, v11

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v13, v3

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v17, v5, v11

    add-double v13, v13, v17

    move-wide/from16 v17, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v19, v9, v11

    add-double v13, v13, v19

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v5, v13

    add-double/2addr v3, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v9, v5

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v19, v3, v9

    move-wide/from16 v21, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v7, v9

    add-double v19, v19, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v23, v7, v15

    move-wide/from16 v25, v5

    add-double v5, v19, v23

    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v19, v3, v5

    mul-double v9, v9, v17

    add-double v19, v19, v9

    mul-double v9, v7, v11

    add-double v9, v19, v9

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v9

    move-wide/from16 v17, v9

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v9, v13

    add-double/2addr v3, v9

    mul-double v7, v7, v25

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v9, v3, v21

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v13, v7

    add-double/2addr v9, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v15, v13

    add-double/2addr v9, v15

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v5, v3

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    mul-double/2addr v11, v13

    add-double/2addr v5, v11

    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v3, v3, v17

    iget-wide v1, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v7, v1

    add-double/2addr v3, v7

    mul-double v13, v13, v25

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v19, v3, v7

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v23, v9, v7

    add-double v19, v19, v23

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v25, v13, v7

    move-wide/from16 v27, v7

    add-double v7, v19, v25

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v29, v13, v5

    move-wide/from16 v31, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v33, v2, v15

    add-double v29, v29, v33

    move-wide/from16 v33, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v35, v4, v11

    move-wide/from16 v37, v11

    add-double v11, v29, v35

    mul-double v29, v13, v21

    mul-double v35, v2, v23

    add-double v29, v29, v35

    mul-double v35, v4, v27

    move-wide/from16 v39, v11

    add-double v11, v29, v35

    mul-double v13, v13, v25

    mul-double/2addr v2, v7

    add-double/2addr v13, v2

    mul-double/2addr v4, v9

    add-double/2addr v13, v4

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v5, v2, v33

    move-wide/from16 v29, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    move-wide v15, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v33, v11, v37

    add-double v5, v5, v33

    mul-double v21, v21, v2

    mul-double v23, v23, v13

    add-double v21, v21, v23

    mul-double v23, v11, v27

    move-wide/from16 p1, v5

    add-double v4, v21, v23

    mul-double v2, v2, v25

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double/2addr v11, v9

    add-double/2addr v2, v11

    move-wide/from16 v7, v17

    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide/from16 v6, v19

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v6, v31

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v6, v39

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide v6, v15

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v13, v29

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v6, p1

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v2, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final mulTransposeRight(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v9, v3

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v5, v11

    add-double/2addr v9, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v13, v7, v5

    add-double/2addr v9, v13

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v9

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide v15, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v7, v13

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v3, v7

    move-wide/from16 v17, v7

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v19, v13

    iget-wide v13, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v21, v7, v13

    add-double v3, v3, v21

    move-wide/from16 v21, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v23, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v25, v13, v9

    add-double v3, v3, v25

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide/from16 v25, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v27, v3, v9

    mul-double/2addr v7, v11

    add-double v27, v27, v7

    mul-double/2addr v5, v13

    add-double v5, v27, v5

    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v3, v15

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v5, v5, v23

    add-double/2addr v3, v5

    mul-double v13, v13, v19

    add-double/2addr v3, v13

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v3, v3, v17

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v13, v5, v21

    add-double/2addr v3, v13

    iget-wide v7, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v11, v7, v25

    add-double/2addr v3, v11

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v9, v3

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v5, v11

    add-double/2addr v9, v5

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v5, v7

    add-double/2addr v9, v5

    iput-wide v9, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v5

    iget-wide v5, v1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v1, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    mul-double v7, v7, v19

    add-double/2addr v3, v7

    iput-wide v3, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto/16 :goto_0

    :cond_0
    iget-wide v3, v1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v5, v2, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v7, v3, v5

    iget-wide v9, v1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v13, v9, v11

    add-double/2addr v7, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide v15, v11

    iget-wide v11, v2, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double v17, v13, v11

    add-double v7, v7, v17

    move-wide/from16 v17, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v19, v3, v7

    move-wide/from16 v21, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v23, v9, v7

    add-double v19, v19, v23

    move-wide/from16 v23, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v25, v13, v7

    move-wide/from16 v27, v7

    add-double v7, v19, v25

    move-wide/from16 v19, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v3, v7

    move-wide/from16 v25, v7

    iget-wide v7, v2, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    iget-wide v9, v2, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v29, v13, v5

    move-wide/from16 v31, v3

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v33, v2, v15

    add-double v29, v29, v33

    move-wide/from16 v33, v5

    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v35, v4, v11

    move-wide/from16 v37, v11

    add-double v11, v29, v35

    mul-double v29, v13, v21

    mul-double v35, v2, v23

    add-double v29, v29, v35

    mul-double v35, v4, v27

    move-wide/from16 v39, v11

    add-double v11, v29, v35

    mul-double v13, v13, v25

    mul-double/2addr v2, v7

    add-double/2addr v13, v2

    mul-double/2addr v4, v9

    add-double/2addr v13, v4

    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v5, v2, v33

    move-wide/from16 v29, v13

    iget-wide v13, v1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v15, v13

    add-double/2addr v5, v15

    move-wide v15, v11

    iget-wide v11, v1, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double v33, v11, v37

    add-double v5, v5, v33

    mul-double v21, v21, v2

    mul-double v23, v23, v13

    add-double v21, v21, v23

    mul-double v23, v11, v27

    move-wide/from16 p1, v5

    add-double v4, v21, v23

    mul-double v2, v2, v25

    mul-double/2addr v13, v7

    add-double/2addr v2, v13

    mul-double/2addr v11, v9

    add-double/2addr v2, v11

    move-wide/from16 v7, v17

    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    move-wide/from16 v6, v19

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m01:D

    move-wide/from16 v6, v31

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m02:D

    move-wide/from16 v6, v39

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m10:D

    move-wide v6, v15

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m11:D

    move-wide/from16 v13, v29

    iput-wide v13, v0, Ljavax/vecmath/Matrix3d;->m12:D

    move-wide/from16 v6, p1

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v4, v0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v2, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final negate()V
    .locals 2

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 2
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 3
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 8
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final negate(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final normalize()V
    .locals 4

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [D

    const/4 v1, 0x3

    .line 2
    new-array v2, v1, [D

    .line 3
    invoke-virtual {p0, v2, v0}, Ljavax/vecmath/Matrix3d;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    .line 4
    aget-wide v2, v0, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v2, 0x1

    .line 5
    aget-wide v2, v0, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v2, 0x2

    .line 6
    aget-wide v2, v0, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 7
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v1, 0x4

    .line 8
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v1, 0x5

    .line 9
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v1, 0x6

    .line 10
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v1, 0x7

    .line 11
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v1, 0x8

    .line 12
    aget-wide v1, v0, v1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Matrix3d;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 13
    new-array v3, v2, [D

    const/4 v4, 0x3

    .line 14
    new-array v5, v4, [D

    .line 15
    iget-wide v6, v1, Ljavax/vecmath/Matrix3d;->m00:D

    .line 16
    iget-wide v8, v1, Ljavax/vecmath/Matrix3d;->m01:D

    .line 17
    iget-wide v10, v1, Ljavax/vecmath/Matrix3d;->m02:D

    .line 18
    iget-wide v12, v1, Ljavax/vecmath/Matrix3d;->m10:D

    .line 19
    iget-wide v14, v1, Ljavax/vecmath/Matrix3d;->m11:D

    move-object/from16 v16, v5

    .line 20
    iget-wide v4, v1, Ljavax/vecmath/Matrix3d;->m12:D

    move-object/from16 v17, v3

    .line 21
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m20:D

    move-wide/from16 v18, v2

    .line 22
    iget-wide v2, v1, Ljavax/vecmath/Matrix3d;->m21:D

    .line 23
    iget-wide v0, v1, Ljavax/vecmath/Matrix3d;->m22:D

    move-wide/from16 v20, v0

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v6, v0, v1

    const/4 v6, 0x1

    aput-wide v8, v0, v6

    const/4 v7, 0x2

    aput-wide v10, v0, v7

    const/4 v8, 0x3

    aput-wide v12, v0, v8

    const/4 v8, 0x4

    aput-wide v14, v0, v8

    const/4 v9, 0x5

    aput-wide v4, v0, v9

    const/4 v4, 0x6

    aput-wide v18, v0, v4

    const/4 v5, 0x7

    aput-wide v2, v0, v5

    const/16 v2, 0x8

    aput-wide v20, v0, v2

    move-object/from16 v10, v16

    move-object/from16 v3, v17

    .line 24
    invoke-static {v0, v10, v3}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 25
    aget-wide v0, v3, v1

    move-object/from16 v10, p0

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m00:D

    .line 26
    aget-wide v0, v3, v6

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m01:D

    .line 27
    aget-wide v0, v3, v7

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x3

    .line 28
    aget-wide v0, v3, v0

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m10:D

    .line 29
    aget-wide v0, v3, v8

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m11:D

    .line 30
    aget-wide v0, v3, v9

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m12:D

    .line 31
    aget-wide v0, v3, v4

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m20:D

    .line 32
    aget-wide v0, v3, v5

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m21:D

    .line 33
    aget-wide v0, v3, v2

    iput-wide v0, v10, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final normalizeCP()V
    .locals 14

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 2
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 3
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 4
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, v0

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 6
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 7
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v4, v2

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 8
    iget-wide v6, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v6, v2

    iput-wide v6, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v8, v2, v6

    iget-wide v10, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v12, v4, v10

    sub-double/2addr v8, v12

    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v10, v0

    .line 10
    iget-wide v8, p0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v6, v8

    sub-double/2addr v10, v6

    iput-wide v10, p0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v8, v4

    mul-double/2addr v0, v2

    sub-double/2addr v8, v0

    .line 11
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final normalizeCP(Ljavax/vecmath/Matrix3d;)V
    .locals 14

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v0, v0

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 13
    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 14
    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 15
    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, v0

    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 18
    iget-wide v4, p1, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v4, v2

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 19
    iget-wide v6, p1, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v6, v2

    iput-wide v6, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 20
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v8, v2, v6

    iget-wide v10, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v12, v4, v10

    sub-double/2addr v8, v12

    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v10, v0

    .line 21
    iget-wide v8, p0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double/2addr v6, v8

    sub-double/2addr v10, v6

    iput-wide v10, p0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v8, v4

    mul-double/2addr v0, v2

    sub-double/2addr v8, v0

    .line 22
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final rotX(D)V
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    neg-double v4, v0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final rotY(D)V
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    neg-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final rotZ(D)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    neg-double v2, v0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set(D)V
    .locals 2

    .line 94
    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 96
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 97
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 98
    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 99
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 100
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 101
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 102
    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v2, v2

    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    iget-wide v4, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v4, v2, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gez v4, :cond_0

    .line 11
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 13
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 14
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 15
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 16
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 17
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 18
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 19
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    :cond_0
    div-double v2, v5, v2

    .line 20
    iget-wide v7, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v7, v2

    .line 21
    iget-wide v9, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v9, v2

    .line 22
    iget-wide v11, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v11, v2

    .line 23
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 24
    iget-wide v13, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    sub-double/2addr v5, v13

    mul-double v15, v7, v11

    mul-double v17, v7, v9

    mul-double v19, v9, v11

    mul-double v21, v5, v7

    mul-double v21, v21, v7

    move-wide/from16 v23, v7

    add-double v7, v21, v13

    .line 25
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v17, v17, v5

    mul-double v7, v2, v11

    move-wide/from16 v21, v11

    sub-double v11, v17, v7

    .line 26
    iput-wide v11, v0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v15, v5

    mul-double v11, v2, v9

    move-wide/from16 v25, v2

    add-double v1, v15, v11

    .line 27
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    add-double v1, v17, v7

    .line 28
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v1, v5, v9

    mul-double/2addr v1, v9

    add-double/2addr v1, v13

    .line 29
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v19, v19, v5

    mul-double v2, v25, v23

    sub-double v7, v19, v2

    .line 30
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double v7, v15, v11

    .line 31
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m20:D

    add-double v1, v19, v2

    .line 32
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v5, v5, v21

    mul-double v5, v5, v21

    add-double/2addr v5, v13

    .line 33
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 43
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v2, v2

    iget v3, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3c9fffffffb29c00L    # 1.110223024E-16

    cmpg-double v4, v2, v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gez v4, :cond_0

    .line 44
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v1, 0x0

    .line 45
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 46
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 47
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 48
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 49
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 50
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 51
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 52
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    :cond_0
    div-double v2, v5, v2

    .line 53
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->x:F

    float-to-double v7, v4

    mul-double/2addr v7, v2

    .line 54
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->y:F

    float-to-double v9, v4

    mul-double/2addr v9, v2

    .line 55
    iget v4, v1, Ljavax/vecmath/AxisAngle4f;->z:F

    float-to-double v11, v4

    mul-double/2addr v11, v2

    .line 56
    iget v2, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 57
    iget v1, v1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    sub-double/2addr v5, v13

    mul-double v15, v7, v11

    mul-double v17, v7, v9

    mul-double v19, v9, v11

    mul-double v21, v5, v7

    mul-double v21, v21, v7

    move-wide/from16 v23, v7

    add-double v7, v21, v13

    .line 58
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m00:D

    mul-double v17, v17, v5

    mul-double v7, v2, v11

    move-wide/from16 v21, v11

    sub-double v11, v17, v7

    .line 59
    iput-wide v11, v0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double/2addr v15, v5

    mul-double v11, v2, v9

    move-wide/from16 v25, v2

    add-double v1, v15, v11

    .line 60
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m02:D

    add-double v1, v17, v7

    .line 61
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v1, v5, v9

    mul-double/2addr v1, v9

    add-double/2addr v1, v13

    .line 62
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v19, v19, v5

    mul-double v2, v25, v23

    sub-double v7, v19, v2

    .line 63
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double v7, v15, v11

    .line 64
    iput-wide v7, v0, Ljavax/vecmath/Matrix3d;->m20:D

    add-double v1, v19, v2

    .line 65
    iput-wide v1, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v5, v5, v21

    mul-double v5, v5, v21

    add-double/2addr v5, v13

    .line 66
    iput-wide v5, v0, Ljavax/vecmath/Matrix3d;->m22:D

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 76
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 77
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 78
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 79
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 80
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 81
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 82
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 83
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 84
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 67
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 68
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 69
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 70
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 71
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 72
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 73
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 74
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    float-to-double v0, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 75
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Ljavax/vecmath/Tuple4d;->y:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    iget-wide v10, v1, Ljavax/vecmath/Tuple4d;->z:D

    mul-double v12, v10, v4

    mul-double/2addr v12, v10

    sub-double/2addr v6, v12

    iput-wide v6, v0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 2
    iget-wide v6, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v12, v6, v2

    iget-wide v14, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v16, v14, v10

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 3
    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double v12, v6, v2

    mul-double v16, v14, v10

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 4
    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m01:D

    mul-double v12, v6, v4

    mul-double/2addr v12, v6

    sub-double v12, v8, v12

    mul-double v16, v10, v4

    mul-double v16, v16, v10

    sub-double v12, v12, v16

    .line 5
    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double v12, v2, v10

    mul-double v16, v14, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 6
    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    .line 7
    iput-wide v12, v0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-double/2addr v10, v2

    mul-double/2addr v14, v6

    sub-double/2addr v10, v14

    mul-double/2addr v10, v4

    .line 8
    iput-wide v10, v0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double v10, v6, v4

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v8, v4

    .line 9
    iput-wide v8, v0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 14

    .line 34
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    float-to-double v5, v0

    mul-double/2addr v1, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v1, v5, v1

    iget v7, p1, Ljavax/vecmath/Tuple4f;->z:F

    float-to-double v8, v7

    mul-double/2addr v8, v3

    float-to-double v10, v7

    mul-double/2addr v8, v10

    sub-double/2addr v1, v8

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 35
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v2, v1, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v8, p1, v7

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-float v2, v1, v7

    mul-float v8, p1, v0

    sub-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 36
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-float v2, v1, v0

    mul-float v8, p1, v7

    sub-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 37
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m01:D

    float-to-double v8, v1

    mul-double/2addr v8, v3

    float-to-double v10, v1

    mul-double/2addr v8, v10

    sub-double v8, v5, v8

    float-to-double v10, v7

    mul-double/2addr v10, v3

    float-to-double v12, v7

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 38
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-float v2, v0, v7

    mul-float v8, p1, v1

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 39
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-float v2, v1, v7

    mul-float v8, p1, v0

    add-float/2addr v2, v8

    float-to-double v8, v2

    mul-double/2addr v8, v3

    .line 40
    iput-wide v8, p0, Ljavax/vecmath/Matrix3d;->m02:D

    mul-float/2addr v7, v0

    mul-float/2addr p1, v1

    sub-float/2addr v7, p1

    float-to-double v7, v7

    mul-double/2addr v7, v3

    .line 41
    iput-wide v7, p0, Ljavax/vecmath/Matrix3d;->m12:D

    float-to-double v7, v1

    mul-double/2addr v7, v3

    float-to-double v1, v1

    mul-double/2addr v7, v1

    sub-double/2addr v5, v7

    float-to-double v1, v0

    mul-double/2addr v1, v3

    float-to-double v3, v0

    mul-double/2addr v1, v3

    sub-double/2addr v5, v1

    .line 42
    iput-wide v5, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final set([D)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v0, 0x1

    .line 86
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v0, 0x2

    .line 87
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    const/4 v0, 0x3

    .line 88
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v0, 0x4

    .line 89
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v0, 0x5

    .line 90
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v0, 0x6

    .line 91
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v0, 0x7

    .line 92
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v0, 0x8

    .line 93
    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final setColumn(IDDD)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 2
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 3
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 6
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 7
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m21:D

    goto :goto_0

    .line 8
    :cond_2
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 9
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 10
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m20:D

    :goto_0
    return-void
.end method

.method public final setColumn(ILjavax/vecmath/Vector3d;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 11
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 12
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 13
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 16
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 17
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    goto :goto_0

    .line 18
    :cond_2
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 19
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 20
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    :goto_0
    return-void
.end method

.method public final setColumn(I[D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 21
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 22
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 23
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 26
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 27
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    goto :goto_0

    .line 28
    :cond_2
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 29
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 30
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    :goto_0
    return-void
.end method

.method public final setElement(IID)V
    .locals 3

    const-string v0, "Matrix3d0"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m21:D

    goto :goto_0

    :cond_2
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m20:D

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-ne p2, v1, :cond_5

    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m12:D

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m11:D

    goto :goto_0

    :cond_7
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m10:D

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_a

    if-ne p2, v1, :cond_9

    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m02:D

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m01:D

    goto :goto_0

    :cond_b
    iput-wide p3, p0, Ljavax/vecmath/Matrix3d;->m00:D

    :goto_0
    return-void
.end method

.method public final setIdentity()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final setM00(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    return-void
.end method

.method public final setM01(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m01:D

    return-void
.end method

.method public final setM02(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    return-void
.end method

.method public final setM10(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    return-void
.end method

.method public final setM11(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    return-void
.end method

.method public final setM12(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    return-void
.end method

.method public final setM20(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    return-void
.end method

.method public final setM21(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    return-void
.end method

.method public final setM22(D)V
    .locals 0

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final setRow(IDDD)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 2
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 3
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 6
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 7
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m12:D

    goto :goto_0

    .line 8
    :cond_2
    iput-wide p2, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 9
    iput-wide p4, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 10
    iput-wide p6, p0, Ljavax/vecmath/Matrix3d;->m02:D

    :goto_0
    return-void
.end method

.method public final setRow(ILjavax/vecmath/Vector3d;)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 11
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 12
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 13
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 16
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 17
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    goto :goto_0

    .line 18
    :cond_2
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 19
    iget-wide v0, p2, Ljavax/vecmath/Tuple3d;->y:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 20
    iget-wide p1, p2, Ljavax/vecmath/Tuple3d;->z:D

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    :goto_0
    return-void
.end method

.method public final setRow(I[D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 21
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 22
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 23
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3d6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 26
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 27
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    goto :goto_0

    .line 28
    :cond_2
    aget-wide v3, p2, v0

    iput-wide v3, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 29
    aget-wide v2, p2, v2

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 30
    aget-wide p1, p2, v1

    iput-wide p1, p0, Ljavax/vecmath/Matrix3d;->m02:D

    :goto_0
    return-void
.end method

.method public final setScale(D)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v2, v1, [D

    invoke-virtual {p0, v2, v0}, Ljavax/vecmath/Matrix3d;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m00:D

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    mul-double/2addr v2, p1

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m10:D

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m11:D

    const/4 v1, 0x5

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m12:D

    const/4 v1, 0x6

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m20:D

    const/4 v1, 0x7

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m21:D

    const/16 v1, 0x8

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    iput-wide v1, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final setZero()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix3d;)V
    .locals 4

    .line 10
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m00:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m02:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 13
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m10:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide v2, p1, Ljavax/vecmath/Matrix3d;->m22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix3d;Ljavax/vecmath/Matrix3d;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m00:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 2
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m01:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 3
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m02:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 4
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m10:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 5
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 6
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 7
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m20:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 8
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iget-wide v2, p2, Ljavax/vecmath/Matrix3d;->m21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iget-wide p1, p2, Ljavax/vecmath/Matrix3d;->m22:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m10:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m11:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m12:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m20:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m21:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m22:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Ljavax/vecmath/Tuple3d;)V
    .locals 13

    .line 1
    iget-wide v1, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v3, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v1, v3

    iget-wide v5, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v7, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v5, v7

    add-double/2addr v1, v5

    iget-wide v5, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v9, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v5, v9

    add-double/2addr v1, v5

    .line 2
    iget-wide v5, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v5, v3

    iget-wide v11, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v11, v7

    add-double/2addr v5, v11

    iget-wide v11, p0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    .line 3
    iget-wide v11, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v11, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v3, v7

    add-double/2addr v11, v3

    iget-wide v3, p0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v3, v9

    add-double v7, v11, v3

    move-object v0, p1

    move-wide v3, v5

    move-wide v5, v7

    .line 4
    invoke-virtual/range {v0 .. v6}, Ljavax/vecmath/Tuple3d;->set(DDD)V

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple3d;Ljavax/vecmath/Tuple3d;)V
    .locals 12

    .line 5
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    iget-wide v2, p1, Ljavax/vecmath/Tuple3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iget-wide v6, p1, Ljavax/vecmath/Tuple3d;->y:D

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iget-wide v8, p1, Ljavax/vecmath/Tuple3d;->z:D

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    .line 6
    iget-wide v4, p0, Ljavax/vecmath/Matrix3d;->m10:D

    mul-double/2addr v4, v2

    iget-wide v10, p0, Ljavax/vecmath/Matrix3d;->m11:D

    mul-double/2addr v10, v6

    add-double/2addr v4, v10

    iget-wide v10, p0, Ljavax/vecmath/Matrix3d;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    .line 7
    iget-wide v10, p0, Ljavax/vecmath/Matrix3d;->m20:D

    mul-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    mul-double/2addr v2, v6

    add-double/2addr v10, v2

    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m22:D

    mul-double/2addr v2, v8

    add-double/2addr v10, v2

    iput-wide v10, p2, Ljavax/vecmath/Tuple3d;->z:D

    .line 8
    iput-wide v0, p2, Ljavax/vecmath/Tuple3d;->x:D

    .line 9
    iput-wide v4, p2, Ljavax/vecmath/Tuple3d;->y:D

    return-void
.end method

.method public final transpose()V
    .locals 4

    .line 1
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 2
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 3
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 4
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 5
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 6
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 7
    iget-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 8
    iget-wide v2, p0, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v2, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 9
    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    return-void
.end method

.method public final transpose(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    if-eq p0, p1, :cond_0

    .line 10
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m00:D

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m01:D

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m02:D

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m10:D

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m11:D

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m12:D

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m20:D

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m21:D

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    iput-wide v0, p0, Ljavax/vecmath/Matrix3d;->m22:D

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljavax/vecmath/Matrix3d;->transpose()V

    :goto_0
    return-void
.end method
