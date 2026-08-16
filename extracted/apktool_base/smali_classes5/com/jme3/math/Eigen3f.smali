.class public Lcom/jme3/math/Eigen3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ONE_THIRD_DOUBLE:D = 0.3333333333333333

.field static final ROOT_THREE_DOUBLE:D

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field eigenValues:[F

.field eigenVectors:[Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/math/Eigen3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/jme3/math/Eigen3f;->ROOT_THREE_DOUBLE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    .line 3
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Matrix3f;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    .line 6
    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/math/Eigen3f;->calculateEigen(Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method private computeRoots(Lcom/jme3/math/Matrix3f;[D)V
    .locals 21

    move-object/from16 v0, p1

    iget v1, v0, Lcom/jme3/math/Matrix3f;->m00:F

    float-to-double v1, v1

    iget v3, v0, Lcom/jme3/math/Matrix3f;->m01:F

    float-to-double v3, v3

    iget v5, v0, Lcom/jme3/math/Matrix3f;->m02:F

    float-to-double v5, v5

    iget v7, v0, Lcom/jme3/math/Matrix3f;->m11:F

    float-to-double v7, v7

    iget v9, v0, Lcom/jme3/math/Matrix3f;->m12:F

    float-to-double v9, v9

    iget v0, v0, Lcom/jme3/math/Matrix3f;->m22:F

    float-to-double v11, v0

    mul-double v13, v1, v7

    mul-double v15, v13, v11

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v19, v3, v17

    mul-double v19, v19, v5

    mul-double v19, v19, v9

    add-double v15, v15, v19

    mul-double v19, v1, v9

    mul-double v19, v19, v9

    sub-double v15, v15, v19

    mul-double v19, v7, v5

    mul-double v19, v19, v5

    sub-double v15, v15, v19

    mul-double v19, v11, v3

    mul-double v19, v19, v3

    sub-double v15, v15, v19

    mul-double/2addr v3, v3

    sub-double/2addr v13, v3

    mul-double v3, v1, v11

    add-double/2addr v13, v3

    mul-double/2addr v5, v5

    sub-double/2addr v13, v5

    mul-double v3, v7, v11

    add-double/2addr v13, v3

    mul-double/2addr v9, v9

    sub-double/2addr v13, v9

    add-double/2addr v1, v7

    add-double/2addr v1, v11

    const-wide v3, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double v5, v1, v3

    mul-double/2addr v1, v5

    sub-double v0, v13, v1

    mul-double/2addr v0, v3

    const-wide/16 v7, 0x0

    cmpl-double v2, v0, v7

    if-lez v2, :cond_0

    move-wide v0, v7

    :cond_0
    mul-double v9, v5, v17

    mul-double/2addr v9, v5

    sub-double/2addr v9, v13

    mul-double/2addr v9, v5

    add-double/2addr v15, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v15

    mul-double v11, v9, v9

    mul-double v13, v0, v0

    mul-double/2addr v13, v0

    add-double/2addr v11, v13

    cmpl-double v2, v11, v7

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v7, v11

    :goto_0
    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v17, v17, v0

    mul-double v17, v17, v2

    add-double v17, v5, v17

    sget-wide v9, Lcom/jme3/math/Eigen3f;->ROOT_THREE_DOUBLE:D

    mul-double v11, v9, v7

    add-double/2addr v11, v2

    mul-double/2addr v11, v0

    sub-double v11, v5, v11

    mul-double/2addr v9, v7

    sub-double/2addr v2, v9

    mul-double/2addr v0, v2

    sub-double/2addr v5, v0

    cmpl-double v0, v11, v17

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    aput-wide v17, p2, v1

    aput-wide v11, p2, v2

    goto :goto_1

    :cond_2
    aput-wide v11, p2, v1

    aput-wide v17, p2, v2

    :goto_1
    aget-wide v3, p2, v2

    cmpl-double v0, v5, v3

    const/4 v7, 0x2

    if-ltz v0, :cond_3

    aput-wide v5, p2, v7

    goto :goto_2

    :cond_3
    aput-wide v3, p2, v7

    aget-wide v3, p2, v1

    cmpl-double v0, v5, v3

    if-ltz v0, :cond_4

    aput-wide v5, p2, v2

    goto :goto_2

    :cond_4
    aput-wide v3, p2, v2

    aput-wide v5, p2, v1

    :goto_2
    return-void
.end method

.method private computeVectors(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;III)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v3, v4, v2}, Lcom/jme3/math/Vector3f;->generateComplementBasis(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v3}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget-object v6, v0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v6, v6, p5

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v7

    iget-object v8, v0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v8, v8, p5

    invoke-virtual {p1, v4}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v9

    invoke-static {v7}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    cmpl-float v11, v10, v9

    if-lez v11, :cond_0

    move v9, v10

    :cond_0
    invoke-static {v8}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    cmpl-float v11, v10, v9

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v11, :cond_1

    move v9, v10

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v13

    :goto_0
    const v11, 0x38d1b717    # 1.0E-4f

    cmpl-float v9, v9, v11

    if-ltz v9, :cond_3

    if-nez v10, :cond_2

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    invoke-static {v8}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v8

    mul-float/2addr v6, v8

    mul-float/2addr v7, v8

    iget-object v8, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v8, v8, p5

    invoke-virtual {v3, v7, v8}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v6}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_2
    mul-float v6, v8, v8

    mul-float v9, v7, v7

    add-float/2addr v6, v9

    invoke-static {v6}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v6

    mul-float/2addr v8, v6

    mul-float/2addr v7, v6

    iget-object v6, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v6, v6, p5

    invoke-virtual {v3, v8, v6}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v7}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_3
    if-nez v10, :cond_4

    iget-object v3, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aput-object v4, v3, p5

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aput-object v3, v4, p5

    :goto_1
    iget-object v3, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v3, v3, p5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v2, v5}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v4, v0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v4, v4, p3

    invoke-virtual {v2, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    iget-object v6, v0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v6, v6, p3

    invoke-virtual {p1, v3}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    sub-float/2addr v6, v1

    invoke-static {v4}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    invoke-static {v5}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v7

    cmpl-float v8, v7, v1

    if-lez v8, :cond_5

    move v1, v7

    :cond_5
    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v7

    cmpl-float v8, v7, v1

    if-lez v8, :cond_6

    move v1, v7

    goto :goto_2

    :cond_6
    move v12, v13

    :goto_2
    cmpl-float v1, v1, v11

    if-ltz v1, :cond_8

    if-nez v12, :cond_7

    mul-float v1, v4, v4

    mul-float v6, v5, v5

    add-float/2addr v1, v6

    invoke-static {v1}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v1

    mul-float/2addr v4, v1

    mul-float/2addr v5, v1

    iget-object v1, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, p3

    goto :goto_3

    :cond_7
    mul-float v1, v6, v6

    mul-float v4, v5, v5

    add-float/2addr v1, v4

    invoke-static {v1}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v1

    mul-float/2addr v6, v1

    mul-float/2addr v5, v1

    iget-object v1, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v6}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, p3

    goto :goto_3

    :cond_8
    if-nez v12, :cond_9

    iget-object v1, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v1, v1, p3

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_3

    :cond_9
    iget-object v1, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v1, v1, p3

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_3
    iget-object v1, v0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object v2, v1, p5

    aget-object v3, v1, p3

    aget-object v1, v1, p4

    invoke-virtual {v2, v3, v1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    new-instance p0, Lcom/jme3/math/Matrix3f;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    new-instance v0, Lcom/jme3/math/Eigen3f;

    invoke-direct {v0, p0}, Lcom/jme3/math/Eigen3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    sget-object v1, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    const-string v2, "eigenvalues = "

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Eigen3f;->getEigenValue(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "{0} "

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    const-string v4, "eigenvectors = "

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Eigen3f;->getEigenVector(I)Lcom/jme3/math/Vector3f;

    move-result-object v2

    sget-object v4, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/jme3/math/Matrix3f;->setColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method private positiveRank(Lcom/jme3/math/Matrix3f;[FLcom/jme3/math/Vector3f;)Z
    .locals 7

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, -0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v2, v4}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v5

    invoke-static {v5}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v5

    aget v6, p2, v1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    aput v5, p2, v1

    move v0, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix3f;->getRow(I)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    aget p1, p2, v1

    const p2, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private scaleMatrix(Lcom/jme3/math/Matrix3f;)F
    .locals 3

    iget v0, p1, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iget v1, p1, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget v1, p1, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    iget v1, p1, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    iget v1, p1, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix3f;->multLocal(F)Lcom/jme3/math/Matrix3f;

    :cond_5
    return v0
.end method


# virtual methods
.method public calculateEigen(Lcom/jme3/math/Matrix3f;)V
    .locals 12

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v6, Lcom/jme3/math/Matrix3f;

    invoke-direct {v6, p1}, Lcom/jme3/math/Matrix3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    invoke-direct {p0, v6}, Lcom/jme3/math/Eigen3f;->scaleMatrix(Lcom/jme3/math/Matrix3f;)F

    move-result p1

    const/4 v0, 0x3

    new-array v1, v0, [D

    invoke-direct {p0, v6, v1}, Lcom/jme3/math/Eigen3f;->computeRoots(Lcom/jme3/math/Matrix3f;[D)V

    iget-object v5, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget-wide v7, v1, v2

    double-to-float v7, v7

    aput v7, v5, v2

    aget-wide v7, v1, v3

    double-to-float v7, v7

    aput v7, v5, v3

    aget-wide v7, v1, v4

    double-to-float v1, v7

    aput v1, v5, v4

    new-array v1, v0, [F

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8}, Lcom/jme3/math/Vector3f;-><init>()V

    filled-new-array {v5, v7, v8}, [Lcom/jme3/math/Vector3f;

    move-result-object v5

    move v7, v2

    :goto_0
    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v7, v0, :cond_2

    new-instance v8, Lcom/jme3/math/Matrix3f;

    invoke-direct {v8, v6}, Lcom/jme3/math/Matrix3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    iget v9, v8, Lcom/jme3/math/Matrix3f;->m00:F

    iget-object v10, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v10, v10, v7

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/jme3/math/Matrix3f;->m00:F

    iget v9, v8, Lcom/jme3/math/Matrix3f;->m11:F

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/jme3/math/Matrix3f;->m11:F

    iget v9, v8, Lcom/jme3/math/Matrix3f;->m22:F

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/jme3/math/Matrix3f;->m22:F

    aget v9, v1, v7

    new-array v10, v3, [F

    aput v9, v10, v2

    aget-object v9, v5, v7

    invoke-direct {p0, v8, v10, v9}, Lcom/jme3/math/Eigen3f;->positiveRank(Lcom/jme3/math/Matrix3f;[FLcom/jme3/math/Vector3f;)Z

    move-result v8

    if-nez v8, :cond_1

    cmpl-float v1, p1, v11

    if-lez v1, :cond_0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v6, v5, v1

    mul-float/2addr v6, p1

    aput v6, v5, v1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object p1, p1, v2

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object p1, p1, v3

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object p1, p1, v4

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    :cond_1
    aget v8, v10, v2

    aput v8, v1, v7

    add-int/2addr v7, v3

    goto :goto_0

    :cond_2
    aget v7, v1, v2

    aget v8, v1, v3

    cmpl-float v9, v8, v7

    if-lez v9, :cond_3

    move v7, v8

    move v8, v3

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    aget v1, v1, v4

    cmpl-float v1, v1, v7

    if-lez v1, :cond_4

    move v8, v4

    :cond_4
    if-eqz v8, :cond_7

    if-eq v8, v3, :cond_6

    if-eq v8, v4, :cond_5

    goto :goto_3

    :cond_5
    aget-object v1, v5, v4

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    aget-object v7, v5, v4

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jme3/math/Eigen3f;->computeVectors(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;III)V

    goto :goto_3

    :cond_6
    aget-object v1, v5, v3

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    aget-object v7, v5, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x2

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jme3/math/Eigen3f;->computeVectors(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;III)V

    goto :goto_3

    :cond_7
    aget-object v1, v5, v2

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    aget-object v7, v5, v2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v8, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jme3/math/Eigen3f;->computeVectors(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;III)V

    :goto_3
    cmpl-float v1, p1, v11

    if-lez v1, :cond_8

    :goto_4
    if-ge v2, v0, :cond_8

    iget-object v1, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget v4, v1, v2

    mul-float/2addr v4, p1

    aput v4, v1, v2

    add-int/2addr v2, v3

    goto :goto_4

    :cond_8
    return-void
.end method

.method public getEigenValue(I)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    aget p1, v0, p1

    return p1
.end method

.method public getEigenValues()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    return-object v0
.end method

.method public getEigenVector(I)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getEigenVectors()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    return-object v0
.end method
