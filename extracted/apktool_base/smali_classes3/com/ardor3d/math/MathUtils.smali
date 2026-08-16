.class public Lcom/ardor3d/math/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEG_TO_RAD:D = 0.017453292519943295

.field public static final EPSILON:D = 2.220446049250313E-16

.field public static final HALF_PI:D = 1.5707963267948966

.field public static final INV_PI:D = 0.3183098861837907

.field public static final INV_TWO_PI:D = 0.15915494309189535

.field public static final ONE_THIRD:D = 0.3333333333333333

.field public static final PI:D = 3.141592653589793

.field public static final QUARTER_PI:D = 0.7853981633974483

.field public static final RAD_TO_DEG:D = 57.29577951308232

.field public static final SQUARED_PI:D = 9.869604401089358

.field public static final THREE_PI_HALVES:D = 4.71238898038469

.field public static final TWO_PI:D = 6.283185307179586

.field public static final ZERO_TOLERANCE:D = 1.0E-4

.field public static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/ardor3d/math/MathUtils;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acos(D)D
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->acos(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static asin(D)D
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->asin(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static atan(D)D
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->atan(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static cartesianToSpherical(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 15

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    :goto_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    mul-double v6, v2, v2

    mul-double v8, v0, v0

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lcom/ardor3d/math/MathUtils;->atan(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    :cond_1
    add-double v11, v4, v6

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->asin(D)D

    move-result-wide v13

    if-nez p1, :cond_2

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object/from16 v8, p1

    :goto_1
    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public static cartesianZToSpherical(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 15

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    :goto_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    mul-double v6, v2, v2

    mul-double v8, v0, v0

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->asin(D)D

    move-result-wide v11

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Lcom/ardor3d/math/MathUtils;->atan(D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    :cond_1
    add-double v13, v0, v4

    if-nez p1, :cond_2

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object/from16 v8, p1

    :goto_1
    invoke-virtual/range {v8 .. v14}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public static clamp(DDD)D
    .locals 1

    .line 1
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 1

    .line 2
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    .line 3
    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static cos(D)D
    .locals 2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static floor(F)I
    .locals 2

    .line 1
    float-to-int v0, p0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    int-to-float v1, v0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static floor(D)J
    .locals 4

    .line 2
    double-to-long v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    long-to-double v2, v0

    cmpl-double p0, p0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static inverseSqrt(D)D
    .locals 2

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->inverseSqrt(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lerp(DDD)D
    .locals 2

    .line 1
    cmpl-double v0, p2, p4

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double/2addr v0, p2

    mul-double/2addr p0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static lerp(FFF)F
    .locals 1

    .line 2
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static log(DD)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static matrixFrustum(DDDDDDLcom/ardor3d/math/Matrix4;)V
    .locals 33

    move-object/from16 v0, p12

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v5, p8, v3

    sub-double v7, p2, p0

    div-double v1, v5, v7

    sub-double v9, p6, p4

    div-double v11, v5, v9

    add-double v5, p2, p0

    div-double v17, v5, v7

    add-double v5, p6, p4

    div-double v19, v5, v9

    add-double v5, p10, p8

    neg-double v5, v5

    sub-double v7, p10, p8

    div-double v21, v5, v7

    mul-double v3, v3, p10

    mul-double v3, v3, p8

    neg-double v3, v3

    div-double v29, v3, v7

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    const-wide/16 v25, 0x0

    invoke-virtual/range {v0 .. v32}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public static matrixLookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)V
    .locals 22

    move-object/from16 v0, p3

    .line 11
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v15

    .line 12
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v13

    .line 13
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v14

    move-object/from16 v1, p1

    .line 14
    invoke-virtual {v15, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-object/from16 v1, p2

    .line 15
    invoke-virtual {v15, v1, v13}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 16
    invoke-virtual {v13, v15, v14}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 17
    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    invoke-virtual {v14}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v13}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-wide/from16 v13, v16

    invoke-virtual/range {v20 .. v20}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v16

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    move-wide/from16 p0, v1

    invoke-virtual/range {v21 .. v21}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    neg-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v1, p0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v18}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    .line 18
    invoke-static/range {v20 .. v20}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 19
    invoke-static/range {v19 .. v19}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 20
    invoke-static/range {v21 .. v21}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static matrixLookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix4;)V
    .locals 40

    move-object/from16 v0, p3

    .line 1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v15

    .line 2
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v7

    .line 3
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v8

    move-object/from16 v1, p1

    .line 4
    invoke-virtual {v15, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    move-object/from16 v13, p0

    invoke-virtual {v1, v13}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    move-object/from16 v1, p2

    .line 5
    invoke-virtual {v15, v1, v7}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    .line 6
    invoke-virtual {v7, v15, v8}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 7
    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v13

    neg-double v13, v13

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v17

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v19

    move-wide/from16 p1, v1

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    neg-double v0, v0

    move-wide/from16 v21, v0

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    move-wide/from16 v33, v3

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    move-wide/from16 v35, v5

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double v25, v0, v2

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double v27, v0, v2

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    neg-double v0, v0

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    neg-double v2, v2

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {v15}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    neg-double v2, v2

    invoke-interface/range {p0 .. p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v2, v4

    add-double v29, v0, v2

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-wide v7, v0

    move-object/from16 v39, v15

    move-wide v15, v0

    const-wide/16 v23, 0x0

    move-wide/from16 v1, p1

    move-object/from16 v0, p3

    move-wide/from16 v3, v33

    move-wide/from16 v5, v35

    invoke-virtual/range {v0 .. v32}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    .line 8
    invoke-static/range {v38 .. v38}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 9
    invoke-static/range {v37 .. v37}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 10
    invoke-static/range {v39 .. v39}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public static matrixOrtho(DDDDDDLcom/ardor3d/math/Matrix4;)V
    .locals 33

    move-object/from16 v0, p12

    sub-double v3, p2, p0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v1, v5, v3

    sub-double v7, p6, p4

    div-double v11, v5, v7

    sub-double v5, p10, p8

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    div-double v21, v9, v5

    add-double v9, p2, p0

    neg-double v9, v9

    div-double v25, v9, v3

    add-double v3, p6, p4

    neg-double v3, v3

    div-double v27, v3, v7

    add-double v3, p10, p8

    neg-double v3, v3

    div-double v29, v3, v5

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    invoke-virtual/range {v0 .. v32}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public static matrixPerspective(DDDDLcom/ardor3d/math/Matrix4;)V
    .locals 15

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->tan(D)D

    move-result-wide v0

    mul-double v8, p4, v0

    mul-double v4, v8, p2

    neg-double v2, v4

    neg-double v6, v8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    invoke-static/range {v2 .. v14}, Lcom/ardor3d/math/MathUtils;->matrixFrustum(DDDDDDLcom/ardor3d/math/Matrix4;)V

    return-void
.end method

.method public static moduloPositive(DD)D
    .locals 3

    .line 1
    rem-double/2addr p0, p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static moduloPositive(FF)F
    .locals 2

    .line 2
    rem-float/2addr p0, p1

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    add-float/2addr p0, p1

    return p0
.end method

.method public static moduloPositive(II)I
    .locals 0

    .line 3
    rem-int/2addr p0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static nearestPowerOfTwo(I)I
    .locals 6

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static nextRandomDouble()D
    .locals 2

    sget-object v0, Lcom/ardor3d/math/MathUtils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextRandomFloat()F
    .locals 1

    sget-object v0, Lcom/ardor3d/math/MathUtils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static nextRandomInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/math/MathUtils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextRandomInt(II)I
    .locals 1

    .line 2
    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static pow2(I)I
    .locals 2

    const/4 v0, 0x1

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    sub-int/2addr p0, v0

    shl-int p0, v1, p0

    return p0
.end method

.method private static reduceSinAngle(D)D
    .locals 6

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    sub-double/2addr p0, v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    sub-double p0, v4, p0

    :cond_1
    return-wide p0
.end method

.method public static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    .line 1
    invoke-static {p0}, Lcom/ardor3d/math/MathUtils;->floor(F)I

    move-result p0

    return p0
.end method

.method public static round(D)J
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    .line 2
    invoke-static {p0, p1}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static scurve3(D)D
    .locals 4

    .line 1
    mul-double v0, p0, p0

    mul-double/2addr p0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static scurve3(F)F
    .locals 2

    .line 2
    mul-float v0, p0, p0

    mul-float/2addr p0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static scurve5(D)D
    .locals 6

    .line 1
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double v2, p0, v0

    mul-double/2addr p0, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr p0, v4

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, v4

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static scurve5(F)F
    .locals 3

    .line 2
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float v1, p0, v0

    mul-float/2addr p0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    sub-float/2addr p0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method public static setRandomSeed(J)V
    .locals 1

    sget-object v0, Lcom/ardor3d/math/MathUtils;->rand:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public static sin(D)D
    .locals 4

    invoke-static {p0, p1}, Lcom/ardor3d/math/MathUtils;->reduceSinAngle(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->sin(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v1, p0

    if-eqz v0, :cond_2

    invoke-static {v1, v2}, Lcom/ardor3d/math/FastMath;->cos(D)D

    move-result-wide p0

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static sphericalToCartesian(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 11

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    mul-double v5, v0, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    mul-double v9, v0, v2

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sphericalToCartesianZ(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 11

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    mul-double v5, v0, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    mul-double v7, v0, v2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v2

    mul-double v9, v0, v2

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object p0

    return-object p0
.end method

.method public static sqrt(D)D
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->sqrt(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static tan(D)D
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useFastMath:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ardor3d/math/FastMath;->tan(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
