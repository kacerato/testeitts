.class public Ljavax/vecmath/Matrix3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EPS:D = 1.0E-8

.field static final serialVersionUID:J = 0x49351d1ffefaaeaL


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m20:F

.field public m21:F

.field public m22:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 43
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 44
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 45
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 46
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 47
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 48
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 49
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 50
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 3
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 4
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 5
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 6
    iput p5, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 7
    iput p6, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 8
    iput p7, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 9
    iput p8, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 10
    iput p9, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 23
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 24
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 25
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 26
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 27
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 28
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 29
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 30
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 33
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 34
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 35
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 36
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 37
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 38
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 39
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 40
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v0, 0x1

    .line 13
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v0, 0x2

    .line 14
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v0, 0x3

    .line 15
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v0, 0x4

    .line 16
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v0, 0x5

    .line 17
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v0, 0x6

    .line 18
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v0, 0x7

    .line 19
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v0, 0x8

    .line 20
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method private final invertGeneral(Ljavax/vecmath/Matrix3f;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    new-array v3, v2, [D

    const/4 v4, 0x3

    new-array v5, v4, [I

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v6, v6

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v8, v8

    iget v10, v1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v10, v10

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v12, v12

    iget v14, v1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v14, v14

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m12:F

    move-object/from16 v16, v3

    float-to-double v2, v4

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m20:F

    move-object/from16 v17, v5

    float-to-double v4, v4

    iget v0, v1, Ljavax/vecmath/Matrix3f;->m21:F

    move-wide/from16 v18, v4

    float-to-double v4, v0

    iget v0, v1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, v0

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

    aput-wide v2, v1, v9

    const/4 v2, 0x6

    aput-wide v18, v1, v2

    const/4 v3, 0x7

    aput-wide v4, v1, v3

    const/16 v4, 0x8

    aput-wide v20, v1, v4

    move-object/from16 v5, v17

    invoke-static {v1, v5}, Ljavax/vecmath/Matrix3f;->luDecomposition([D[I)Z

    move-result v10

    if-eqz v10, :cond_1

    move v11, v0

    const/16 v10, 0x9

    :goto_0
    if-ge v11, v10, :cond_0

    const-wide/16 v12, 0x0

    aput-wide v12, v16, v11

    add-int/2addr v11, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v16, v0

    aput-wide v10, v16, v8

    aput-wide v10, v16, v4

    move-object/from16 v10, v16

    invoke-static {v1, v5, v10}, Ljavax/vecmath/Matrix3f;->luBacksubstitution([D[I[D)V

    aget-wide v0, v10, v0

    double-to-float v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m00:F

    aget-wide v5, v10, v6

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m01:F

    aget-wide v5, v10, v7

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v0, 0x3

    aget-wide v5, v10, v0

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m10:F

    aget-wide v5, v10, v8

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m11:F

    aget-wide v5, v10, v9

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m12:F

    aget-wide v5, v10, v2

    double-to-float v0, v5

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m20:F

    aget-wide v2, v10, v3

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m21:F

    aget-wide v2, v10, v4

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m22:F

    return-void

    :cond_1
    move-object/from16 v1, p0

    new-instance v0, Ljavax/vecmath/SingularMatrixException;

    const-string v2, "Matrix3f12"

    invoke-static {v2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/vecmath/SingularMatrixException;-><init>(Ljava/lang/String;)V

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

    const-string v1, "Matrix3f13"

    invoke-static {v1}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return v4
.end method


# virtual methods
.method public final add(F)V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final add(FLjavax/vecmath/Matrix3f;)V
    .locals 1

    .line 10
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m00:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m01:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 13
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m10:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m12:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m21:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    iget p2, p2, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr p2, p1

    iput p2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 28
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 29
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 30
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 31
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 32
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 33
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 34
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 35
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 36
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 19
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 20
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 21
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 22
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 23
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 24
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 25
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 26
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 27
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iget p2, p2, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Matrix3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final determinant()F
    .locals 8

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float v3, v1, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v5, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v6, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v4, v6

    iget v7, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v2, v7

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v7, v5

    mul-float/2addr v1, v6

    sub-float/2addr v7, v1

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    return v0
.end method

.method public epsilonEquals(Ljavax/vecmath/Matrix3f;F)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m00:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m02:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m10:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m11:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_5

    move v0, v1

    :cond_5
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_6

    move v0, v1

    :cond_6
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v3, p1, Ljavax/vecmath/Matrix3f;->m21:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_7

    move v0, v1

    :cond_7
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v0

    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Matrix3f;

    .line 3
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m00:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m01:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m02:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m12:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Matrix3f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m00:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m01:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m02:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m12:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final getColumn(ILjavax/vecmath/Vector3f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 2
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 3
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 5
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 6
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 8
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 9
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f3"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getColumn(I[F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 11
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    aput p1, p2, v0

    .line 12
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    aput p1, p2, v2

    .line 13
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 14
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    aput p1, p2, v0

    .line 15
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    aput p1, p2, v2

    .line 16
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    aput p1, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 17
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    aput p1, p2, v0

    .line 18
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    aput p1, p2, v2

    .line 19
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    aput p1, p2, v1

    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f3"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getElement(II)F
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_6

    iget p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return p1

    :cond_0
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    return p1

    :cond_1
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    return p1

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_6

    iget p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    return p1

    :cond_3
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    return p1

    :cond_4
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    return p1

    :cond_5
    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_6

    iget p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    return p1

    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f5"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    return p1

    :cond_8
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    return p1
.end method

.method public final getM00()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    return v0
.end method

.method public final getM01()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    return v0
.end method

.method public final getM02()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    return v0
.end method

.method public final getM10()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    return v0
.end method

.method public final getM11()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    return v0
.end method

.method public final getM12()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    return v0
.end method

.method public final getM20()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    return v0
.end method

.method public final getM21()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    return v0
.end method

.method public final getM22()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return v0
.end method

.method public final getRow(ILjavax/vecmath/Vector3f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 2
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 3
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 5
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 6
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 8
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    .line 9
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getRow(I[F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 11
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    aput p1, p2, v0

    .line 12
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    aput p1, p2, v2

    .line 13
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    aput p1, p2, v1

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 14
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    aput p1, p2, v0

    .line 15
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    aput p1, p2, v2

    .line 16
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    aput p1, p2, v1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 17
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    aput p1, p2, v0

    .line 18
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    aput p1, p2, v2

    .line 19
    iget p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    aput p1, p2, v1

    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f1"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v1, v1, [D

    invoke-virtual {p0, v1, v0}, Ljavax/vecmath/Matrix3f;->getScaleRotate([D[D)V

    invoke-static {v1}, Ljavax/vecmath/Matrix3d;->max3([D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleRotate([D[D)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v1, v1

    iget v3, v0, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v3, v3

    iget v5, v0, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v5, v5

    iget v7, v0, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v7, v7

    iget v9, v0, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v9, v9

    iget v11, v0, Ljavax/vecmath/Matrix3f;->m12:F

    float-to-double v11, v11

    iget v13, v0, Ljavax/vecmath/Matrix3f;->m20:F

    float-to-double v13, v13

    iget v15, v0, Ljavax/vecmath/Matrix3f;->m21:F

    move-wide/from16 v16, v13

    float-to-double v13, v15

    iget v15, v0, Ljavax/vecmath/Matrix3f;->m22:F

    move-wide/from16 v18, v13

    float-to-double v13, v15

    const/16 v15, 0x9

    new-array v15, v15, [D

    const/16 v20, 0x0

    aput-wide v1, v15, v20

    const/4 v1, 0x1

    aput-wide v3, v15, v1

    const/4 v1, 0x2

    aput-wide v5, v15, v1

    const/4 v1, 0x3

    aput-wide v7, v15, v1

    const/4 v1, 0x4

    aput-wide v9, v15, v1

    const/4 v1, 0x5

    aput-wide v11, v15, v1

    const/4 v1, 0x6

    aput-wide v16, v15, v1

    const/4 v1, 0x7

    aput-wide v18, v15, v1

    const/16 v1, 0x8

    aput-wide v13, v15, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v15, v1, v2}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    return-void
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    invoke-static {v0}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m01:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m02:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m10:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m11:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m20:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m21:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    invoke-static {v2}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v2

    int-to-long v2, v2

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
    invoke-direct {p0, p0}, Ljavax/vecmath/Matrix3f;->invertGeneral(Ljavax/vecmath/Matrix3f;)V

    return-void
.end method

.method public final invert(Ljavax/vecmath/Matrix3f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/vecmath/Matrix3f;->invertGeneral(Ljavax/vecmath/Matrix3f;)V

    return-void
.end method

.method public final mul(F)V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final mul(FLjavax/vecmath/Matrix3f;)V
    .locals 1

    .line 10
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 13
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    iget v0, p2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    iget p2, p2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix3f;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 19
    iget v2, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v4, v2, v3

    iget v5, v0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v7, v5, v6

    add-float/2addr v4, v7

    iget v7, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v9, v7, v8

    add-float/2addr v4, v9

    .line 20
    iget v9, v1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v10, v2, v9

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v12, v5, v11

    add-float/2addr v10, v12

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v13, v7, v12

    add-float/2addr v10, v13

    .line 21
    iget v13, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v2, v13

    iget v14, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v5, v14

    add-float/2addr v2, v5

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v7, v1

    add-float/2addr v2, v7

    .line 22
    iget v5, v0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v7, v5, v3

    iget v15, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v15, v6

    add-float v7, v7, v16

    move/from16 p1, v2

    iget v2, v0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v16, v2, v8

    add-float v7, v7, v16

    mul-float v16, v5, v9

    mul-float v17, v15, v11

    add-float v16, v16, v17

    mul-float v17, v2, v12

    move/from16 v18, v7

    add-float v7, v16, v17

    mul-float/2addr v5, v13

    mul-float/2addr v15, v14

    add-float/2addr v5, v15

    mul-float/2addr v2, v1

    add-float/2addr v5, v2

    .line 23
    iget v2, v0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v2

    iget v15, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v6, v0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    mul-float/2addr v9, v2

    mul-float/2addr v11, v15

    add-float/2addr v9, v11

    mul-float/2addr v12, v6

    add-float/2addr v9, v12

    mul-float/2addr v2, v13

    mul-float/2addr v15, v14

    add-float/2addr v2, v15

    mul-float/2addr v6, v1

    add-float/2addr v2, v6

    .line 24
    iput v4, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m01:F

    move/from16 v1, p1

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    move/from16 v1, v18

    .line 25
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v7, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v5, v0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 26
    iput v3, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v9, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final mul(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 27
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 28
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v8, v3

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v4, v9

    add-float/2addr v8, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v10, v6, v4

    add-float/2addr v8, v10

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 29
    iget v8, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v8

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 30
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v6

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v5, v11

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v12, v5, v7

    add-float/2addr v3, v12

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 31
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v13, v3, v12

    mul-float/2addr v11, v9

    add-float/2addr v13, v11

    mul-float v9, v5, v4

    add-float/2addr v13, v9

    iput v13, v0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 32
    iget v9, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v9

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v11, v10

    add-float/2addr v3, v11

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 33
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v6

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v7, v6

    add-float/2addr v3, v7

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 34
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v12, v3

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v5, v7

    add-float/2addr v12, v5

    mul-float/2addr v4, v6

    add-float/2addr v12, v4

    iput v12, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v3, v9

    .line 35
    iget v1, v1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    goto/16 :goto_0

    .line 36
    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    .line 37
    iget v10, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v11, v3, v10

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    .line 38
    iget v14, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v14

    iget v15, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    .line 39
    iget v6, v1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v8, v6, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 v16, v11

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v17, v11, v9

    add-float v8, v8, v17

    mul-float v17, v6, v10

    mul-float v18, v3, v12

    add-float v17, v17, v18

    mul-float v18, v11, v13

    move/from16 v19, v8

    add-float v8, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v2

    add-float/2addr v6, v11

    .line 40
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v4, v3

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v9, v1

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v1

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 41
    iput v5, v0, Ljavax/vecmath/Matrix3f;->m00:F

    move/from16 v11, v16

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m01:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    move/from16 v1, v19

    .line 42
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 43
    iput v4, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final mulNormalize(Ljavax/vecmath/Matrix3f;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x9

    .line 1
    new-array v3, v2, [D

    const/4 v4, 0x3

    .line 2
    new-array v5, v4, [D

    .line 3
    iget v6, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v7, v1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v8, v6, v7

    iget v9, v0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v10, v1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v11, v9, v10

    add-float/2addr v8, v11

    iget v11, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v13, v11, v12

    add-float/2addr v8, v13

    float-to-double v13, v8

    .line 4
    iget v8, v1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v15, v6, v8

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v9, v4

    add-float v15, v15, v16

    iget v2, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v17, v11, v2

    add-float v15, v15, v17

    move-wide/from16 v17, v13

    float-to-double v13, v15

    .line 5
    iget v15, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v6, v15

    move-object/from16 v19, v3

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v9, v3

    add-float/2addr v6, v9

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v11, v1

    add-float/2addr v6, v11

    move-object v9, v5

    float-to-double v5, v6

    .line 6
    iget v11, v0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v20, v11, v7

    move-object/from16 p1, v9

    iget v9, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v21, v9, v10

    add-float v20, v20, v21

    move-wide/from16 v21, v5

    iget v5, v0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v6, v5, v12

    add-float v6, v20, v6

    move-wide/from16 v23, v13

    float-to-double v13, v6

    mul-float v6, v11, v8

    mul-float v20, v9, v4

    add-float v6, v6, v20

    mul-float v20, v5, v2

    add-float v6, v6, v20

    move-wide/from16 v25, v13

    float-to-double v13, v6

    mul-float/2addr v11, v15

    mul-float/2addr v9, v3

    add-float/2addr v11, v9

    mul-float/2addr v5, v1

    add-float/2addr v11, v5

    float-to-double v5, v11

    .line 7
    iget v9, v0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v7, v9

    iget v11, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    iget v10, v0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v12, v10

    add-float/2addr v7, v12

    move-wide/from16 v27, v5

    float-to-double v5, v7

    mul-float/2addr v8, v9

    mul-float/2addr v4, v11

    add-float/2addr v8, v4

    mul-float/2addr v2, v10

    add-float/2addr v8, v2

    float-to-double v7, v8

    mul-float/2addr v9, v15

    mul-float/2addr v11, v3

    add-float/2addr v9, v11

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    float-to-double v1, v9

    const/16 v3, 0x9

    .line 8
    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v17, v3, v4

    const/4 v9, 0x1

    aput-wide v23, v3, v9

    const/4 v10, 0x2

    aput-wide v21, v3, v10

    const/4 v11, 0x3

    aput-wide v25, v3, v11

    const/4 v11, 0x4

    aput-wide v13, v3, v11

    const/4 v12, 0x5

    aput-wide v27, v3, v12

    const/4 v13, 0x6

    aput-wide v5, v3, v13

    const/4 v5, 0x7

    aput-wide v7, v3, v5

    const/16 v6, 0x8

    aput-wide v1, v3, v6

    move-object/from16 v2, p1

    move-object/from16 v1, v19

    .line 9
    invoke-static {v3, v2, v1}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 10
    aget-wide v2, v1, v4

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    aget-wide v2, v1, v9

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    aget-wide v2, v1, v10

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v2, 0x3

    .line 13
    aget-wide v2, v1, v2

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    aget-wide v2, v1, v11

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    aget-wide v2, v1, v12

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    aget-wide v2, v1, v13

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    aget-wide v2, v1, v5

    double-to-float v2, v2

    iput v2, v0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    aget-wide v2, v1, v6

    double-to-float v1, v2

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final mulNormalize(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 29

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
    iget v7, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v9, v7, v8

    iget v10, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v11, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v12, v10, v11

    add-float/2addr v9, v12

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v14, v12, v13

    add-float/2addr v9, v14

    float-to-double v14, v9

    .line 22
    iget v9, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v16, v7, v9

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v17, v10, v5

    add-float v16, v16, v17

    iget v3, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v18, v12, v3

    add-float v0, v16, v18

    move-wide/from16 v18, v14

    float-to-double v14, v0

    .line 23
    iget v0, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v7, v0

    move-object/from16 v16, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v10, v4

    add-float/2addr v7, v10

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v12, v2

    add-float/2addr v7, v12

    move-object v10, v6

    float-to-double v6, v7

    .line 24
    iget v12, v1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v20, v12, v8

    move-object/from16 p2, v10

    iget v10, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v21, v10, v11

    add-float v20, v20, v21

    move-wide/from16 v21, v6

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v7, v6, v13

    add-float v7, v20, v7

    move-wide/from16 v23, v14

    float-to-double v14, v7

    mul-float v7, v12, v9

    mul-float v20, v10, v5

    add-float v7, v7, v20

    mul-float v20, v6, v3

    add-float v7, v7, v20

    move-wide/from16 v25, v14

    float-to-double v14, v7

    mul-float/2addr v12, v0

    mul-float/2addr v10, v4

    add-float/2addr v12, v10

    mul-float/2addr v6, v2

    add-float/2addr v12, v6

    float-to-double v6, v12

    .line 25
    iget v10, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v8, v10

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v13, v1

    add-float/2addr v8, v13

    move-wide/from16 v27, v6

    float-to-double v6, v8

    mul-float/2addr v9, v10

    mul-float/2addr v5, v12

    add-float/2addr v9, v5

    mul-float/2addr v3, v1

    add-float/2addr v9, v3

    float-to-double v8, v9

    mul-float/2addr v10, v0

    mul-float/2addr v12, v4

    add-float/2addr v10, v12

    mul-float/2addr v1, v2

    add-float/2addr v10, v1

    float-to-double v0, v10

    const/16 v2, 0x9

    .line 26
    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide v18, v2, v3

    const/4 v4, 0x1

    aput-wide v23, v2, v4

    const/4 v5, 0x2

    aput-wide v21, v2, v5

    const/4 v10, 0x3

    aput-wide v25, v2, v10

    const/4 v10, 0x4

    aput-wide v14, v2, v10

    const/4 v11, 0x5

    aput-wide v27, v2, v11

    const/4 v12, 0x6

    aput-wide v6, v2, v12

    const/4 v6, 0x7

    aput-wide v8, v2, v6

    const/16 v7, 0x8

    aput-wide v0, v2, v7

    move-object/from16 v1, p2

    move-object/from16 v0, v16

    .line 27
    invoke-static {v2, v1, v0}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 28
    aget-wide v1, v0, v3

    double-to-float v1, v1

    move-object/from16 v2, p0

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m00:F

    .line 29
    aget-wide v3, v0, v4

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m01:F

    .line 30
    aget-wide v3, v0, v5

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v1, 0x3

    .line 31
    aget-wide v3, v0, v1

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m10:F

    .line 32
    aget-wide v3, v0, v10

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m11:F

    .line 33
    aget-wide v3, v0, v11

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m12:F

    .line 34
    aget-wide v3, v0, v12

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m20:F

    .line 35
    aget-wide v3, v0, v6

    double-to-float v1, v3

    iput v1, v2, Ljavax/vecmath/Matrix3f;->m21:F

    .line 36
    aget-wide v3, v0, v7

    double-to-float v0, v3

    iput v0, v2, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final mulTransposeBoth(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v6, v3

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v8, v4, v7

    add-float/2addr v6, v8

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v9, v5, v8

    add-float/2addr v6, v9

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v6

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v10, v3, v5

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m11:F

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v13, v11, v12

    add-float/2addr v10, v13

    iget v13, v1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v14, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float v15, v13, v14

    add-float/2addr v10, v15

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v15, v3, v10

    mul-float/2addr v11, v7

    add-float/2addr v15, v11

    mul-float/2addr v8, v13

    add-float/2addr v15, v8

    iput v15, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v6, v9

    add-float/2addr v3, v6

    mul-float/2addr v13, v4

    add-float/2addr v3, v13

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v5, v3

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v12, v6

    add-float/2addr v5, v12

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v14, v1

    add-float/2addr v5, v14

    iput v5, v0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v10, v3

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v5, v6

    add-float/2addr v10, v5

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v5, v1

    add-float/2addr v10, v5

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v5

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v11, v3, v10

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    iget v14, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v14

    iget v15, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v8, v6, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 v16, v11

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v17, v11, v9

    add-float v8, v8, v17

    mul-float v17, v6, v10

    mul-float v18, v3, v12

    add-float v17, v17, v18

    mul-float v18, v11, v13

    move/from16 v19, v8

    add-float v8, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v2

    add-float/2addr v6, v11

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v4, v3

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v9, v1

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v1

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v5, v0, Ljavax/vecmath/Matrix3f;->m00:F

    move/from16 v11, v16

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m01:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    move/from16 v1, v19

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v4, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final mulTransposeLeft(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v8, v3

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v10, v4, v9

    add-float/2addr v8, v10

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v11, v6, v10

    add-float/2addr v8, v11

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v8

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v11, v3, v6

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v5, v12

    add-float/2addr v11, v5

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v13, v5, v7

    add-float/2addr v11, v13

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v11, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v13, v3, v11

    mul-float/2addr v12, v9

    add-float/2addr v13, v12

    mul-float v9, v5, v10

    add-float/2addr v13, v9

    iput v13, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v9

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v12, v8

    add-float/2addr v3, v12

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v6, v3

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m12:F

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v8, v5

    add-float/2addr v6, v8

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v11, v3

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v6, v5

    add-float/2addr v11, v6

    mul-float/2addr v10, v1

    add-float/2addr v11, v10

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v3, v9

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    mul-float/2addr v1, v4

    add-float/2addr v3, v1

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v11, v3, v10

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    iget v14, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v3, v14

    iget v15, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v8, v6, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 v16, v11

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v17, v11, v9

    add-float v8, v8, v17

    mul-float v17, v6, v10

    mul-float v18, v3, v12

    add-float v17, v17, v18

    mul-float v18, v11, v13

    move/from16 v19, v8

    add-float v8, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v2

    add-float/2addr v6, v11

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v4, v3

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v9, v1

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v1

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v5, v0, Ljavax/vecmath/Matrix3f;->m00:F

    move/from16 v11, v16

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m01:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    move/from16 v1, v19

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v4, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final mulTransposeRight(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v6, v3

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v4, v7

    add-float/2addr v6, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v8, v5, v4

    add-float/2addr v6, v8

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v6

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    iget v8, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v5, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v5

    iget v10, v1, Ljavax/vecmath/Matrix3f;->m11:F

    iget v11, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v12, v10, v11

    add-float/2addr v3, v12

    iget v12, v1, Ljavax/vecmath/Matrix3f;->m12:F

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float v14, v12, v13

    add-float/2addr v3, v14

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v14, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v15, v3, v14

    mul-float/2addr v10, v7

    add-float/2addr v15, v10

    mul-float/2addr v4, v12

    add-float/2addr v15, v4

    iput v15, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v3, v6

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    mul-float/2addr v12, v8

    add-float/2addr v3, v12

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v5

    iget v4, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v11, v4

    add-float/2addr v3, v11

    iget v5, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v13, v5

    add-float/2addr v3, v13

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v14, v3

    iget v6, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v4, v6

    add-float/2addr v14, v4

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v4, v5

    add-float/2addr v14, v4

    iput v14, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v4

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    goto/16 :goto_0

    :cond_0
    iget v3, v1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v4, v2, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float v5, v3, v4

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v7, v2, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v9, v2, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v2, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v11, v3, v10

    iget v12, v2, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v2, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    iget v14, v2, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v3, v14

    iget v15, v2, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v2, v2, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    iget v6, v1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v8, v6, v4

    move/from16 p2, v3

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 v16, v11

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float v17, v11, v9

    add-float v8, v8, v17

    mul-float v17, v6, v10

    mul-float v18, v3, v12

    add-float v17, v17, v18

    mul-float v18, v11, v13

    move/from16 v19, v8

    add-float v8, v17, v18

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v2

    add-float/2addr v6, v11

    iget v3, v1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v4, v3

    iget v11, v1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v1, v1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v9, v1

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v1

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    iput v5, v0, Ljavax/vecmath/Matrix3f;->m00:F

    move/from16 v11, v16

    iput v11, v0, Ljavax/vecmath/Matrix3f;->m01:F

    move/from16 v1, p2

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    move/from16 v1, v19

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v8, v0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v4, v0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v10, v0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v3, v0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final negate()V
    .locals 1

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 2
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 3
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final negate(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    .line 10
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 13
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

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
    invoke-virtual {p0, v2, v0}, Ljavax/vecmath/Matrix3f;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    .line 4
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v2, 0x1

    .line 5
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v2, 0x2

    .line 6
    aget-wide v2, v0, v2

    double-to-float v2, v2

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 7
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v1, 0x4

    .line 8
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v1, 0x5

    .line 9
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v1, 0x6

    .line 10
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v1, 0x7

    .line 11
    aget-wide v1, v0, v1

    double-to-float v1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v1, 0x8

    .line 12
    aget-wide v1, v0, v1

    double-to-float v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final normalize(Ljavax/vecmath/Matrix3f;)V
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
    iget v6, v1, Ljavax/vecmath/Matrix3f;->m00:F

    float-to-double v6, v6

    .line 16
    iget v8, v1, Ljavax/vecmath/Matrix3f;->m01:F

    float-to-double v8, v8

    .line 17
    iget v10, v1, Ljavax/vecmath/Matrix3f;->m02:F

    float-to-double v10, v10

    .line 18
    iget v12, v1, Ljavax/vecmath/Matrix3f;->m10:F

    float-to-double v12, v12

    .line 19
    iget v14, v1, Ljavax/vecmath/Matrix3f;->m11:F

    float-to-double v14, v14

    .line 20
    iget v4, v1, Ljavax/vecmath/Matrix3f;->m12:F

    move-object/from16 v16, v3

    float-to-double v2, v4

    .line 21
    iget v4, v1, Ljavax/vecmath/Matrix3f;->m20:F

    move-object/from16 v17, v5

    float-to-double v4, v4

    .line 22
    iget v0, v1, Ljavax/vecmath/Matrix3f;->m21:F

    move-wide/from16 v18, v4

    float-to-double v4, v0

    .line 23
    iget v0, v1, Ljavax/vecmath/Matrix3f;->m22:F

    float-to-double v0, v0

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

    aput-wide v2, v0, v9

    const/4 v2, 0x6

    aput-wide v18, v0, v2

    const/4 v3, 0x7

    aput-wide v4, v0, v3

    const/16 v4, 0x8

    aput-wide v20, v0, v4

    move-object/from16 v5, v16

    move-object/from16 v10, v17

    .line 24
    invoke-static {v0, v10, v5}, Ljavax/vecmath/Matrix3d;->compute_svd([D[D[D)V

    .line 25
    aget-wide v0, v5, v1

    double-to-float v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m00:F

    .line 26
    aget-wide v10, v5, v6

    double-to-float v0, v10

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m01:F

    .line 27
    aget-wide v6, v5, v7

    double-to-float v0, v6

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v0, 0x3

    .line 28
    aget-wide v6, v5, v0

    double-to-float v0, v6

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m10:F

    .line 29
    aget-wide v6, v5, v8

    double-to-float v0, v6

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m11:F

    .line 30
    aget-wide v6, v5, v9

    double-to-float v0, v6

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m12:F

    .line 31
    aget-wide v6, v5, v2

    double-to-float v0, v6

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m20:F

    .line 32
    aget-wide v2, v5, v3

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m21:F

    .line 33
    aget-wide v2, v5, v4

    double-to-float v0, v2

    iput v0, v1, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final normalizeCP()V
    .locals 7

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 2
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 3
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 4
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, v0

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    .line 6
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 7
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v2, v1

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 8
    iget v3, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v3, v1

    iput v3, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v4, v1, v3

    iget v5, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v6, v2, v5

    sub-float/2addr v4, v6

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v5, v0

    .line 10
    iget v4, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    iput v5, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v4, v2

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    .line 11
    iput v4, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final normalizeCP(Ljavax/vecmath/Matrix3f;)V
    .locals 6

    .line 12
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 13
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 14
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 15
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 16
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, v0

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    iget v2, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 18
    iget v2, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v2, v1

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 19
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 20
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v3, v1, p1

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v5, v2, v4

    sub-float/2addr v3, v5

    iput v3, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v4, v0

    .line 21
    iget v3, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr p1, v3

    sub-float/2addr v4, p1

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v3, v2

    mul-float/2addr v0, v1

    sub-float/2addr v3, v0

    .line 22
    iput v3, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final rotX(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    neg-float v2, p1

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final rotY(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final rotZ(F)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    neg-float v1, p1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set(F)V
    .locals 1

    .line 94
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 96
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 97
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 98
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 99
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 100
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 101
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 102
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4d;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 34
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

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v2, 0x0

    .line 36
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 37
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 38
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 39
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 40
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 41
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 42
    iput v2, v0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 43
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    .line 44
    iget-wide v6, v1, Ljavax/vecmath/AxisAngle4d;->x:D

    mul-double/2addr v6, v2

    .line 45
    iget-wide v8, v1, Ljavax/vecmath/AxisAngle4d;->y:D

    mul-double/2addr v8, v2

    .line 46
    iget-wide v10, v1, Ljavax/vecmath/AxisAngle4d;->z:D

    mul-double/2addr v10, v2

    .line 47
    iget-wide v2, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 48
    iget-wide v12, v1, Ljavax/vecmath/AxisAngle4d;->angle:D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v4, v12

    mul-double v14, v6, v10

    mul-double v16, v6, v8

    mul-double v18, v8, v10

    mul-double v20, v4, v6

    mul-double v20, v20, v6

    move-wide/from16 v22, v6

    add-double v6, v20, v12

    double-to-float v1, v6

    .line 49
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-double v16, v16, v4

    mul-double v6, v2, v10

    move-wide/from16 v20, v10

    sub-double v10, v16, v6

    double-to-float v1, v10

    .line 50
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-double/2addr v14, v4

    mul-double v10, v2, v8

    move-wide/from16 v24, v2

    add-double v1, v14, v10

    double-to-float v1, v1

    .line 51
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    add-double v1, v16, v6

    double-to-float v1, v1

    .line 52
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-double v1, v4, v8

    mul-double/2addr v1, v8

    add-double/2addr v1, v12

    double-to-float v1, v1

    .line 53
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-double v18, v18, v4

    mul-double v2, v24, v22

    sub-double v6, v18, v2

    double-to-float v1, v6

    .line 54
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m12:F

    sub-double/2addr v14, v10

    double-to-float v1, v14

    .line 55
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m20:F

    add-double v1, v18, v2

    double-to-float v1, v1

    .line 56
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-double v4, v4, v20

    mul-double v4, v4, v20

    add-double/2addr v4, v12

    double-to-float v1, v4

    .line 57
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/AxisAngle4f;)V
    .locals 11

    .line 10
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v0

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 11
    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 13
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 14
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 15
    iput v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 16
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 17
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 18
    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 19
    iput v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    :cond_0
    div-float v0, v2, v0

    .line 20
    iget v1, p1, Ljavax/vecmath/AxisAngle4f;->x:F

    mul-float/2addr v1, v0

    .line 21
    iget v3, p1, Ljavax/vecmath/AxisAngle4f;->y:F

    mul-float/2addr v3, v0

    .line 22
    iget v4, p1, Ljavax/vecmath/AxisAngle4f;->z:F

    mul-float/2addr v4, v0

    .line 23
    iget v0, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 24
    iget p1, p1, Ljavax/vecmath/AxisAngle4f;->angle:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float p1, v5

    sub-float/2addr v2, p1

    mul-float v5, v1, v4

    mul-float v6, v1, v3

    mul-float v7, v3, v4

    mul-float v8, v2, v1

    mul-float/2addr v8, v1

    add-float/2addr v8, p1

    .line 25
    iput v8, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v6, v2

    mul-float v8, v0, v4

    sub-float v9, v6, v8

    .line 26
    iput v9, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v5, v2

    mul-float v9, v0, v3

    add-float v10, v5, v9

    .line 27
    iput v10, p0, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v6, v8

    .line 28
    iput v6, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v6, v2, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, p1

    .line 29
    iput v6, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v7, v2

    mul-float/2addr v0, v1

    sub-float v1, v7, v0

    .line 30
    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v5, v9

    .line 31
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v7, v0

    .line 32
    iput v7, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v2, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, p1

    .line 33
    iput v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    :goto_0
    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3d;)V
    .locals 2

    .line 85
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m00:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 86
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m01:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 87
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m02:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 88
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m10:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 89
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m11:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 90
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m12:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 91
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m20:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 92
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m21:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 93
    iget-wide v0, p1, Ljavax/vecmath/Matrix3d;->m22:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    .line 76
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 77
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 78
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 79
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 80
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 81
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 82
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 83
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 84
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 58
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

    double-to-float v6, v6

    iput v6, v0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 59
    iget-wide v6, v1, Ljavax/vecmath/Tuple4d;->x:D

    mul-double v12, v6, v2

    iget-wide v14, v1, Ljavax/vecmath/Tuple4d;->w:D

    mul-double v16, v14, v10

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    iput v1, v0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 60
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-double v12, v6, v2

    mul-double v16, v14, v10

    sub-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 61
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-double v12, v6, v4

    mul-double/2addr v12, v6

    sub-double v12, v8, v12

    mul-double v16, v10, v4

    mul-double v16, v16, v10

    sub-double v12, v12, v16

    double-to-float v1, v12

    .line 62
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-double v12, v2, v10

    mul-double v16, v14, v6

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 63
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-double v12, v6, v10

    mul-double v16, v14, v2

    add-double v12, v12, v16

    mul-double/2addr v12, v4

    double-to-float v1, v12

    .line 64
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-double/2addr v10, v2

    mul-double/2addr v14, v6

    sub-double/2addr v10, v14

    mul-double/2addr v10, v4

    double-to-float v1, v10

    .line 65
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-double v10, v6, v4

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    sub-double/2addr v8, v4

    double-to-float v1, v8

    .line 66
    iput v1, v0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Quat4f;)V
    .locals 7

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v5, v4, v1

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 2
    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v5, v2, v0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v6, p1, v4

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    iput v5, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 3
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float v5, v2, v0

    mul-float v6, p1, v4

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 4
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float v5, v2, v1

    mul-float/2addr v5, v2

    sub-float v5, v3, v5

    mul-float v6, v4, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 5
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float v5, v0, v4

    mul-float v6, p1, v2

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 6
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float v5, v2, v4

    mul-float v6, p1, v0

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    .line 7
    iput v5, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v4, v0

    mul-float/2addr p1, v2

    sub-float/2addr v4, p1

    mul-float/2addr v4, v1

    .line 8
    iput v4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float p1, v2, v1

    mul-float/2addr p1, v2

    sub-float/2addr v3, p1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    .line 9
    iput v3, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v0, 0x1

    .line 68
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 v0, 0x2

    .line 69
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v0, 0x3

    .line 70
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v0, 0x4

    .line 71
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 v0, 0x5

    .line 72
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v0, 0x6

    .line 73
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v0, 0x7

    .line 74
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v0, 0x8

    .line 75
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final setColumn(IFFF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 2
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 3
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 6
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 7
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m21:F

    goto :goto_0

    .line 8
    :cond_2
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 9
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 10
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m20:F

    :goto_0
    return-void
.end method

.method public final setColumn(ILjavax/vecmath/Vector3f;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 11
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 12
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 13
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 16
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 17
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    goto :goto_0

    .line 18
    :cond_2
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 19
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 20
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    :goto_0
    return-void
.end method

.method public final setColumn(I[F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 21
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 22
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 23
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f9"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 26
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 27
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    goto :goto_0

    .line 28
    :cond_2
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 29
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 30
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    :goto_0
    return-void
.end method

.method public final setElement(IIF)V
    .locals 3

    const-string v0, "Matrix3f0"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    iput p3, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m21:F

    goto :goto_0

    :cond_2
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m20:F

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

    iput p3, p0, Ljavax/vecmath/Matrix3f;->m12:F

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m11:F

    goto :goto_0

    :cond_7
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m10:F

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_a

    if-ne p2, v1, :cond_9

    iput p3, p0, Ljavax/vecmath/Matrix3f;->m02:F

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v0}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m01:F

    goto :goto_0

    :cond_b
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m00:F

    :goto_0
    return-void
.end method

.method public final setIdentity()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v1, 0x0

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final setM00(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    return-void
.end method

.method public final setM01(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    return-void
.end method

.method public final setM02(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    return-void
.end method

.method public final setM10(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    return-void
.end method

.method public final setM11(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    return-void
.end method

.method public final setM12(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    return-void
.end method

.method public final setM20(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    return-void
.end method

.method public final setM21(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    return-void
.end method

.method public final setM22(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final setRow(IFFF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 2
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 3
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 6
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 7
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    goto :goto_0

    .line 8
    :cond_2
    iput p2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 9
    iput p3, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 10
    iput p4, p0, Ljavax/vecmath/Matrix3f;->m02:F

    :goto_0
    return-void
.end method

.method public final setRow(ILjavax/vecmath/Vector3f;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 11
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 12
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 13
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 16
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 17
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    goto :goto_0

    .line 18
    :cond_2
    iget p1, p2, Ljavax/vecmath/Tuple3f;->x:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 19
    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 20
    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    :goto_0
    return-void
.end method

.method public final setRow(I[F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 21
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 22
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 23
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Matrix3f6"

    invoke-static {p2}, Ljavax/vecmath/VecMathI18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 26
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 27
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    goto :goto_0

    .line 28
    :cond_2
    aget p1, p2, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 29
    aget p1, p2, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 30
    aget p1, p2, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    :goto_0
    return-void
.end method

.method public final setScale(F)V
    .locals 6

    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v1, 0x3

    new-array v2, v1, [D

    invoke-virtual {p0, v2, v0}, Ljavax/vecmath/Matrix3f;->getScaleRotate([D[D)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 p1, 0x1

    aget-wide v2, v0, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/4 p1, 0x2

    aget-wide v2, v0, p1

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    aget-wide v1, v0, v1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 p1, 0x4

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/4 p1, 0x5

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 p1, 0x6

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 p1, 0x7

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 p1, 0x8

    aget-wide v1, v0, p1

    mul-double/2addr v1, v4

    double-to-float p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final setZero()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 10
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m00:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m02:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 13
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m10:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m11:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p1, Ljavax/vecmath/Matrix3f;->m21:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    sub-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m00:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m02:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 4
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m10:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m11:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 6
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 7
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 8
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iget v1, p2, Ljavax/vecmath/Matrix3f;->m21:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iget p2, p2, Ljavax/vecmath/Matrix3f;->m22:F

    sub-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m10:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m11:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m12:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m20:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m21:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Ljavax/vecmath/Tuple3f;)V
    .locals 6

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v4, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 2
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v2, v1

    iget v5, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v5, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    .line 3
    iget v5, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v5, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    .line 4
    invoke-virtual {p1, v0, v2, v5}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public final transform(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V
    .locals 5

    .line 5
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v3, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 6
    iget v2, p0, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v2, v1

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    .line 7
    iget v4, p0, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v4, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    iput v4, p2, Ljavax/vecmath/Tuple3f;->z:F

    .line 8
    iput v0, p2, Ljavax/vecmath/Tuple3f;->x:F

    .line 9
    iput v2, p2, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public final transpose()V
    .locals 2

    .line 1
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 2
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 3
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 5
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 6
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 8
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 9
    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    return-void
.end method

.method public final transpose(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    if-eq p0, p1, :cond_0

    .line 10
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    .line 11
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    .line 12
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    .line 13
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    .line 14
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    .line 15
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    .line 16
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    .line 17
    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    .line 18
    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljavax/vecmath/Matrix3f;->transpose()V

    :goto_0
    return-void
.end method
