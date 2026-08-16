.class public Lcom/ardor3d/math/Matrix3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyMatrix3;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

.field private static final MAT_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Matrix3;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _data:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-class v0, Lcom/ardor3d/math/Matrix3;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Matrix3;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Matrix3;

    move-object v1, v0

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/ardor3d/math/Matrix3;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {p0, v0}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object v3, p0

    iput-object v1, v3, Lcom/ardor3d/math/Matrix3;->_data:[[D

    .line 4
    aget-object v5, v1, v4

    aput-wide p1, v5, v4

    .line 5
    aput-wide p3, v5, v2

    .line 6
    aput-wide p5, v5, v0

    .line 7
    aget-object v5, v1, v2

    aput-wide p7, v5, v4

    .line 8
    aput-wide p9, v5, v2

    .line 9
    aput-wide p11, v5, v0

    .line 10
    aget-object v1, v1, v0

    aput-wide p13, v1, v4

    .line 11
    aput-wide p15, v1, v2

    .line 12
    aput-wide p17, v1, v0

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    .line 15
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Matrix3;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Matrix3;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Matrix3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p0, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Matrix3;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 9

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Matrix3;

    invoke-direct {p2}, Lcom/ardor3d/math/Matrix3;-><init>()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p2, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v7

    add-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public addLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 0

    invoke-virtual {p0, p1, p0}, Lcom/ardor3d/math/Matrix3;->add(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public adjugate(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 30

    if-nez p1, :cond_0

    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v5, 0x1

    aget-object v8, v4, v5

    aget-wide v18, v8, v5

    const/4 v6, 0x2

    aget-object v9, v4, v6

    aget-wide v10, v9, v6

    mul-double v2, v18, v10

    aget-wide v12, v8, v6

    aget-wide v16, v9, v5

    mul-double v14, v12, v16

    sub-double/2addr v2, v14

    const/4 v14, 0x0

    aget-object v15, v4, v14

    aget-wide v20, v15, v6

    mul-double v6, v20, v16

    aget-wide v22, v15, v5

    mul-double v4, v22, v10

    sub-double v4, v6, v4

    mul-double v6, v22, v12

    mul-double v24, v20, v18

    sub-double v6, v6, v24

    aget-wide v24, v9, v14

    mul-double v26, v12, v24

    aget-wide v28, v8, v14

    mul-double v8, v28, v10

    sub-double v8, v26, v8

    aget-wide v26, v15, v14

    mul-double v10, v10, v26

    mul-double v14, v20, v24

    sub-double/2addr v10, v14

    mul-double v20, v20, v28

    mul-double v12, v12, v26

    sub-double v12, v20, v12

    mul-double v14, v28, v16

    mul-double v20, v18, v24

    sub-double v14, v14, v20

    mul-double v24, v24, v22

    mul-double v16, v16, v26

    sub-double v16, v24, v16

    mul-double v26, v26, v18

    mul-double v22, v22, v28

    sub-double v18, v26, v22

    invoke-virtual/range {v1 .. v19}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    return-object v1
.end method

.method public adjugateLocal()Lcom/ardor3d/math/Matrix3;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/ardor3d/math/Matrix3;->adjugate(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 13

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v4

    iget-object p1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v6, 0x0

    aget-object p1, p1, v6

    aget-wide v7, p1, v6

    mul-double/2addr v7, v0

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    mul-double/2addr v10, v2

    add-double/2addr v7, v10

    const/4 v10, 0x2

    aget-wide v11, p1, v10

    mul-double/2addr v11, v4

    add-double/2addr v7, v11

    invoke-virtual {p2, v7, v8}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object p1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, p1, v9

    aget-wide v7, p1, v6

    mul-double/2addr v7, v0

    aget-wide v11, p1, v9

    mul-double/2addr v11, v2

    add-double/2addr v7, v11

    aget-wide v11, p1, v10

    mul-double/2addr v11, v4

    add-double/2addr v7, v11

    invoke-virtual {p2, v7, v8}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object p1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, p1, v10

    aget-wide v6, p1, v6

    mul-double/2addr v6, v0

    aget-wide v0, p1, v9

    mul-double/2addr v0, v2

    add-double/2addr v6, v0

    aget-wide v0, p1, v10

    mul-double/2addr v0, v4

    add-double/2addr v6, v0

    invoke-virtual {p2, v6, v7}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p2
.end method

.method public applyPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 18

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    iget-object v8, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v9, 0x0

    aget-object v10, v8, v9

    aget-wide v11, v10, v9

    mul-double/2addr v11, v2

    const/4 v10, 0x1

    aget-object v13, v8, v10

    aget-wide v14, v13, v9

    mul-double/2addr v14, v4

    add-double/2addr v11, v14

    const/4 v13, 0x2

    aget-object v8, v8, v13

    aget-wide v14, v8, v9

    mul-double/2addr v14, v6

    add-double/2addr v11, v14

    invoke-virtual {v1, v11, v12}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v8, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v11, v8, v9

    aget-wide v14, v11, v10

    mul-double/2addr v14, v2

    aget-object v11, v8, v10

    aget-wide v16, v11, v10

    mul-double v16, v16, v4

    add-double v14, v14, v16

    aget-object v8, v8, v13

    aget-wide v11, v8, v10

    mul-double/2addr v11, v6

    add-double/2addr v14, v11

    invoke-virtual {v1, v14, v15}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v8, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v8, v9

    aget-wide v11, v9, v13

    mul-double/2addr v11, v2

    aget-object v2, v8, v10

    aget-wide v9, v2, v13

    mul-double/2addr v9, v4

    add-double/2addr v11, v9

    aget-object v2, v8, v13

    aget-wide v3, v2, v13

    mul-double/2addr v3, v6

    add-double/2addr v11, v3

    invoke-virtual {v1, v11, v12}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object v1
.end method

.method public clone()Lcom/ardor3d/math/Matrix3;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Matrix3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Matrix3;->clone()Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public determinant()D
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v2, 0x1

    aget-object v3, v1, v2

    aget-wide v4, v3, v2

    const/4 v6, 0x2

    aget-object v7, v1, v6

    aget-wide v8, v7, v6

    mul-double v10, v4, v8

    aget-wide v12, v3, v6

    aget-wide v14, v7, v2

    mul-double v16, v12, v14

    sub-double v10, v10, v16

    const/16 v16, 0x0

    aget-wide v17, v7, v16

    mul-double v12, v12, v17

    aget-wide v19, v3, v16

    mul-double v8, v8, v19

    sub-double/2addr v12, v8

    mul-double v19, v19, v14

    mul-double v4, v4, v17

    sub-double v19, v19, v4

    aget-object v1, v1, v16

    aget-wide v3, v1, v16

    mul-double/2addr v3, v10

    aget-wide v7, v1, v2

    mul-double/2addr v7, v12

    add-double/2addr v3, v7

    aget-wide v5, v1, v6

    mul-double v5, v5, v19

    add-double/2addr v3, v5

    return-wide v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public fromAngleAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ardor3d/math/Matrix3;->fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p0
.end method

.method public fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 28

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v1

    invoke-static/range {p1 .. p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v1

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v7

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v11

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v15

    mul-double/2addr v13, v15

    mul-double/2addr v13, v5

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v15

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v17

    mul-double v15, v15, v17

    mul-double/2addr v15, v5

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v17

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v19

    mul-double v17, v17, v19

    mul-double v17, v17, v5

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v19

    mul-double v19, v19, v3

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v21

    mul-double v21, v21, v3

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v23

    mul-double v23, v23, v3

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v4, 0x0

    aget-object v25, v3, v4

    mul-double/2addr v7, v5

    add-double/2addr v7, v1

    aput-wide v7, v25, v4

    sub-double v7, v13, v23

    const/16 v26, 0x1

    aput-wide v7, v25, v26

    add-double v7, v15, v21

    const/16 v27, 0x2

    aput-wide v7, v25, v27

    aget-object v7, v3, v26

    add-double v13, v13, v23

    aput-wide v13, v7, v4

    mul-double/2addr v9, v5

    add-double/2addr v9, v1

    aput-wide v9, v7, v26

    sub-double v8, v17, v19

    aput-wide v8, v7, v27

    aget-object v3, v3, v27

    sub-double v15, v15, v21

    aput-wide v15, v3, v4

    add-double v17, v17, v19

    aput-wide v17, v3, v26

    mul-double/2addr v11, v5

    add-double/2addr v11, v1

    aput-wide v11, v3, v27

    return-object v0
.end method

.method public fromAngles(DDD)Lcom/ardor3d/math/Matrix3;
    .locals 22

    move-object/from16 v0, p0

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget-object v13, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v14, 0x0

    aget-object v15, v13, v14

    mul-double v16, v1, v5

    aput-wide v16, v15, v14

    mul-double v16, v3, v11

    mul-double v18, v1, v7

    mul-double v20, v18, v9

    sub-double v16, v16, v20

    const/16 v20, 0x1

    aput-wide v16, v15, v20

    mul-double v18, v18, v11

    mul-double v16, v3, v9

    add-double v18, v18, v16

    const/16 v16, 0x2

    aput-wide v18, v15, v16

    aget-object v15, v13, v20

    aput-wide v7, v15, v14

    mul-double v17, v5, v9

    aput-wide v17, v15, v20

    move-wide/from16 v17, v1

    neg-double v0, v5

    mul-double/2addr v0, v11

    aput-wide v0, v15, v16

    aget-object v0, v13, v16

    neg-double v1, v3

    mul-double/2addr v5, v1

    aput-wide v5, v0, v14

    mul-double/2addr v3, v7

    mul-double/2addr v3, v9

    mul-double v5, v17, v11

    add-double/2addr v3, v5

    aput-wide v3, v0, v20

    mul-double/2addr v1, v7

    mul-double/2addr v1, v11

    mul-double v3, v17, v9

    add-double/2addr v1, v3

    aput-wide v1, v0, v16

    return-object p0
.end method

.method public fromArray([D)Lcom/ardor3d/math/Matrix3;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix3;->fromArray([DZ)Lcom/ardor3d/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public fromArray([DZ)Lcom/ardor3d/math/Matrix3;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    move p2, v0

    :goto_0
    if-ge p2, v1, :cond_3

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 2
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, p2

    mul-int/lit8 v4, p2, 0x3

    add-int/2addr v4, v2

    aget-wide v4, p1, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_2
    if-ge p2, v1, :cond_3

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v2

    mul-int/lit8 v4, p2, 0x3

    add-int/2addr v4, v2

    aget-wide v4, p1, v4

    aput-wide v4, v3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/math/Matrix3;->setColumn(ILcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Matrix3;->setColumn(ILcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Lcom/ardor3d/math/Matrix3;->setColumn(ILcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    return-object p0
.end method

.method public fromStartEndLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/ardor3d/math/Vector3;

    invoke-direct {v3}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface/range {p1 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    neg-double v8, v4

    goto :goto_0

    :cond_0
    move-wide v8, v4

    :goto_0
    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v8, v8, v10

    const/4 v11, 0x0

    if-lez v8, :cond_8

    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v12

    cmpl-double v8, v12, v6

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v12

    if-lez v8, :cond_1

    goto :goto_1

    :cond_1
    neg-double v12, v12

    :goto_1
    invoke-virtual {v5, v12, v13}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v12

    cmpl-double v8, v12, v6

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v12

    if-lez v8, :cond_2

    goto :goto_2

    :cond_2
    neg-double v12, v12

    :goto_2
    invoke-virtual {v5, v12, v13}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v12

    cmpl-double v6, v12, v6

    if-lez v6, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    goto :goto_3

    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    neg-double v6, v6

    :goto_3
    invoke-virtual {v5, v6, v7}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    cmpg-double v6, v6, v12

    if-gez v6, :cond_5

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    cmpg-double v6, v6, v12

    if-gez v6, :cond_4

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    goto :goto_4

    :cond_4
    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v12

    cmpg-double v6, v6, v12

    if-gez v6, :cond_6

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    const-wide/16 v17, 0x0

    const-wide/16 v13, 0x0

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    goto :goto_4

    :cond_6
    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :goto_4
    invoke-virtual {v4, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v5}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4, v4}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v1, v5, v1

    invoke-virtual {v3, v3}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v7

    div-double/2addr v5, v7

    mul-double v7, v1, v5

    invoke-virtual {v4, v3}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v12

    mul-double/2addr v7, v12

    move v12, v11

    :goto_5
    const/4 v13, 0x3

    if-ge v12, v13, :cond_9

    move v14, v11

    :goto_6
    if-ge v14, v13, :cond_7

    neg-double v9, v1

    invoke-virtual {v4, v12}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v17

    mul-double v9, v9, v17

    invoke-virtual {v4, v14}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v17

    mul-double v9, v9, v17

    invoke-virtual {v3, v12}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v17

    mul-double v17, v17, v5

    invoke-virtual {v3, v14}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v19

    mul-double v17, v17, v19

    sub-double v9, v9, v17

    invoke-virtual {v3, v12}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v17

    mul-double v17, v17, v7

    invoke-virtual {v4, v14}, Lcom/ardor3d/math/Vector3;->getValue(I)D

    move-result-wide v19

    mul-double v17, v17, v19

    add-double v9, v9, v17

    invoke-virtual {v0, v12, v14, v9, v10}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    iget-object v9, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v12

    aget-wide v13, v9, v12

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v9

    invoke-virtual {v0, v12, v12, v13, v14}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double v1, v4, v9

    div-double/2addr v9, v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    mul-double/2addr v1, v9

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    mul-double/2addr v6, v9

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    mul-double/2addr v12, v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v14

    mul-double/2addr v14, v1

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v16

    mul-double v16, v16, v6

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v18

    mul-double v1, v1, v18

    add-double/2addr v1, v4

    invoke-virtual {v0, v11, v11, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    sub-double v1, v12, v1

    const/4 v8, 0x1

    invoke-virtual {v0, v11, v8, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    add-double/2addr v1, v14

    const/4 v8, 0x2

    invoke-virtual {v0, v11, v8, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    add-double/2addr v12, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v11, v12, v13}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    mul-double/2addr v9, v12

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v12

    mul-double/2addr v9, v12

    add-double/2addr v9, v4

    invoke-virtual {v0, v1, v1, v9, v10}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    sub-double v9, v16, v9

    invoke-virtual {v0, v1, v8, v9, v10}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    sub-double/2addr v14, v9

    invoke-virtual {v0, v8, v11, v14, v15}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v9

    add-double v9, v16, v9

    invoke-virtual {v0, v8, v1, v9, v10}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    invoke-virtual {v0, v8, v8, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    :cond_9
    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Matrix3;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 4

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-wide v2, v1, p1

    invoke-virtual {p2, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-wide v2, v1, p1

    invoke-virtual {p2, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v1, v0

    aget-wide v1, v0, p1

    invoke-virtual {p2, v1, v2}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal column index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getRow(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 4

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {p2, v2, v3}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {p2, v2, v3}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object v1, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, v1, p1

    aget-wide v0, p1, v0

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    return-object p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal row index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getValue(II)D
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public getValuef(II)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public hashCode()I
    .locals 10

    const/16 v0, 0x11

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    mul-int/lit8 v7, v0, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v5, v8

    xor-long/2addr v5, v8

    long-to-int v5, v5

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 32

    if-nez p1, :cond_0

    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Matrix3;->determinant()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v1, v1, v3

    if-lez v1, :cond_1

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v5, 0x1

    aget-object v8, v4, v5

    aget-wide v18, v8, v5

    const/4 v6, 0x2

    aget-object v9, v4, v6

    aget-wide v10, v9, v6

    mul-double v2, v18, v10

    aget-wide v12, v8, v6

    aget-wide v16, v9, v5

    mul-double v14, v12, v16

    sub-double/2addr v2, v14

    const/4 v14, 0x0

    aget-object v15, v4, v14

    aget-wide v22, v15, v6

    mul-double v6, v22, v16

    aget-wide v24, v15, v5

    mul-double v4, v24, v10

    sub-double v4, v6, v4

    mul-double v6, v24, v12

    mul-double v26, v22, v18

    sub-double v6, v6, v26

    aget-wide v26, v9, v14

    mul-double v28, v12, v26

    aget-wide v30, v8, v14

    mul-double v8, v30, v10

    sub-double v8, v28, v8

    aget-wide v28, v15, v14

    mul-double v10, v10, v28

    mul-double v14, v22, v26

    sub-double/2addr v10, v14

    mul-double v22, v22, v30

    mul-double v12, v12, v28

    sub-double v12, v22, v12

    mul-double v14, v30, v16

    mul-double v22, v18, v26

    sub-double v14, v14, v22

    mul-double v26, v26, v24

    mul-double v16, v16, v28

    sub-double v16, v26, v16

    mul-double v28, v28, v18

    mul-double v24, v24, v30

    sub-double v18, v28, v24

    move-object v1, v0

    invoke-virtual/range {v1 .. v19}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v1, v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(D)Lcom/ardor3d/math/Matrix3;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "This matrix cannot be inverted."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invertLocal()Lcom/ardor3d/math/Matrix3;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/ardor3d/math/Matrix3;->invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public isIdentity()Z
    .locals 1

    sget-object v0, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOrthonormal()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix3;->transpose(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix3;->invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Matrix3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface {p2, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v0, v1}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    new-instance v2, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v2}, Lcom/ardor3d/math/Matrix3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v14, 0x0

    aget-object v3, v3, v14

    aget-wide v4, v3, v14

    invoke-interface {v1, v14, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    const/4 v15, 0x1

    aget-wide v6, v3, v15

    invoke-interface {v1, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    const/4 v12, 0x2

    aget-wide v6, v3, v12

    invoke-interface {v1, v12, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v6, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v15

    invoke-interface {v1, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v12

    invoke-interface {v1, v12, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v14

    invoke-interface {v1, v14, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v15

    invoke-interface {v1, v15, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v12

    invoke-interface {v1, v12, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v10, v3, v14

    invoke-interface {v1, v14, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v15

    invoke-interface {v1, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v12

    invoke-interface {v1, v12, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v15

    invoke-interface {v1, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v12

    invoke-interface {v1, v12, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move v3, v12

    move-wide/from16 v12, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v14

    const/4 v3, 0x2

    invoke-interface {v1, v14, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v14, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v14, v14, v15

    aget-wide v18, v14, v15

    invoke-interface {v1, v15, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v14, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v14, v14, v15

    aget-wide v18, v14, v3

    invoke-interface {v1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    move-wide/from16 v24, v4

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget-wide v16, v4, v5

    invoke-interface {v1, v5, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v3

    const/4 v3, 0x1

    aget-wide v18, v4, v3

    invoke-interface {v1, v3, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v21

    mul-double v18, v18, v21

    add-double v16, v16, v18

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v3, 0x2

    aget-object v4, v4, v3

    aget-wide v18, v4, v3

    invoke-interface {v1, v3, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v3

    aget-wide v18, v4, v5

    const/4 v4, 0x1

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v5, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v3

    aget-wide v20, v5, v4

    invoke-interface {v1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v26

    mul-double v20, v20, v26

    add-double v18, v18, v20

    iget-object v5, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v3

    aget-wide v20, v5, v3

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v26

    mul-double v20, v20, v26

    add-double v18, v18, v20

    iget-object v5, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v3

    const/4 v4, 0x0

    aget-wide v20, v5, v4

    invoke-interface {v1, v4, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    mul-double v20, v20, v4

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget-wide v22, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    mul-double v22, v22, v4

    add-double v20, v20, v22

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v3

    aget-wide v22, v4, v3

    invoke-interface {v1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v3

    mul-double v22, v22, v3

    add-double v20, v20, v22

    move-object v3, v2

    move-wide/from16 v4, v24

    invoke-virtual/range {v3 .. v21}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    return-object v2
.end method

.method public multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 24

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v15, 0x0

    aget-object v4, v4, v15

    aget-wide v5, v4, v15

    mul-double v3, v2, v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v5

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v15

    const/16 v17, 0x1

    aget-wide v7, v2, v17

    mul-double/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v7

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v15

    const/16 v19, 0x2

    aget-wide v9, v2, v19

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v11, v2, v15

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v13, v2, v17

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v20, v2, v19

    mul-double v13, v13, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v15, v2, v15

    mul-double v15, v15, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v17, v2, v17

    mul-double v17, v17, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v22, v2, v19

    mul-double v19, v20, v22

    move-object v2, v1

    invoke-virtual/range {v2 .. v20}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    return-object v1
.end method

.method public multiplyDiagonalPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 24

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v15, 0x0

    aget-object v4, v4, v15

    aget-wide v5, v4, v15

    mul-double v3, v2, v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v5

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v15

    const/16 v17, 0x1

    aget-wide v7, v2, v17

    mul-double/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v7

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v15

    const/16 v19, 0x2

    aget-wide v9, v2, v19

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v11, v2, v15

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v13, v2, v17

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v17

    aget-wide v20, v2, v19

    mul-double v13, v13, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v15, v2, v15

    mul-double v15, v15, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v17, v2, v17

    mul-double v17, v17, v20

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v20

    iget-object v2, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v2, v2, v19

    aget-wide v22, v2, v19

    mul-double v19, v20, v22

    move-object v2, v1

    invoke-virtual/range {v2 .. v20}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    return-object v1
.end method

.method public multiplyLocal(D)Lcom/ardor3d/math/Matrix3;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 2
    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    mul-double/2addr v5, p1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Lcom/ardor3d/math/Matrix3;->multiply(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-interface {v6, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scale(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 23

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v15, 0x0

    aget-object v1, v1, v15

    aget-wide v3, v1, v15

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v15

    const/16 v17, 0x1

    aget-wide v5, v1, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v15

    const/16 v19, 0x2

    aget-wide v7, v1, v19

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v17

    aget-wide v9, v1, v15

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    mul-double/2addr v9, v11

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v17

    aget-wide v11, v1, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    mul-double/2addr v11, v13

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v17

    aget-wide v13, v1, v19

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v20

    mul-double v13, v13, v20

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v19

    aget-wide v15, v1, v15

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v20

    mul-double v15, v15, v20

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v19

    aget-wide v17, v1, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v20

    mul-double v17, v17, v20

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v19

    aget-wide v19, v1, v19

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v21

    mul-double v19, v19, v21

    invoke-virtual/range {v2 .. v20}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    return-object v1
.end method

.method public scaleLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    iget-object v1, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v13, 0x0

    aget-object v1, v1, v13

    aget-wide v2, v1, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v4

    mul-double v1, v2, v4

    iget-object v3, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v13

    const/16 v16, 0x1

    aget-wide v4, v3, v16

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v6

    mul-double v3, v4, v6

    iget-object v5, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v13

    const/16 v17, 0x2

    aget-wide v6, v5, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v8

    mul-double v5, v6, v8

    iget-object v7, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v7, v7, v16

    aget-wide v8, v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v10

    mul-double v7, v8, v10

    iget-object v9, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v16

    aget-wide v10, v9, v16

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v18

    mul-double v9, v10, v18

    iget-object v11, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v11, v11, v16

    aget-wide v18, v11, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v11

    mul-double v11, v11, v18

    iget-object v14, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v14, v14, v17

    aget-wide v13, v14, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v18

    mul-double v13, v13, v18

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v17

    aget-wide v20, v0, v16

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v22

    mul-double v20, v20, v22

    move-object v0, v15

    move-wide/from16 v15, v20

    move-wide/from16 v20, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v1, v1, v17

    aget-wide v17, v1, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v1

    mul-double v17, v17, v1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual/range {v0 .. v18}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;
    .locals 6

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aput-wide p1, v3, v2

    const/4 v4, 0x1

    .line 2
    aput-wide p3, v3, v4

    const/4 v5, 0x2

    .line 3
    aput-wide p5, v3, v5

    .line 4
    aget-object v3, v1, v4

    aput-wide p7, v3, v2

    .line 5
    aput-wide p9, v3, v4

    .line 6
    aput-wide p11, v3, v5

    .line 7
    aget-object v1, v1, v5

    aput-wide p13, v1, v2

    .line 8
    aput-wide p15, v1, v4

    .line 9
    aput-wide p17, v1, v5

    return-object v0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 6

    .line 10
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 11
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 12
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 13
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 14
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 15
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 16
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 17
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 18
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v1

    aput-wide v1, v0, v3

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Matrix3;
    .locals 0

    .line 19
    invoke-interface {p1, p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->toRotationMatrix(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public setColumn(ILcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    aput-wide v1, v0, p1

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v1

    aput-wide v1, v0, p1

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v1

    aput-wide v1, v0, p1

    return-object p0
.end method

.method public setIdentity()Lcom/ardor3d/math/Matrix3;
    .locals 1

    sget-object v0, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    return-object v0
.end method

.method public setRow(ILcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, p1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, v0, p1

    const/4 v0, 0x2

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v1

    aput-wide v1, p1, v0

    return-object p0
.end method

.method public setValue(IID)Lcom/ardor3d/math/Matrix3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object p1, v0, p1

    aput-wide p3, p1, p2

    return-object p0
.end method

.method public strictEquals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/ardor3d/math/Matrix3;->getValue(II)D

    move-result-wide v5

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public toAngles([D)[D
    .locals 11

    const/4 v0, 0x3

    if-nez p1, :cond_0

    new-array p1, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-lt v1, v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide v6, 0x3fefef9db22d0e56L    # 0.998

    cmpl-double v2, v4, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    aget-wide v4, v2, v8

    aget-object v0, v0, v8

    aget-wide v9, v0, v8

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_1

    :cond_1
    const-wide v9, -0x401010624dd2f1aaL    # -0.998

    cmpg-double v2, v4, v9

    if-gez v2, :cond_2

    aget-object v2, v0, v3

    aget-wide v4, v2, v8

    aget-object v0, v0, v8

    aget-wide v9, v0, v8

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v9, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_1

    :cond_2
    aget-object v2, v0, v8

    aget-wide v4, v2, v3

    neg-double v4, v4

    aget-object v0, v0, v3

    aget-wide v6, v0, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v1

    aget-wide v6, v0, v8

    neg-double v6, v6

    aget-wide v9, v0, v1

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v1

    aget-wide v9, v0, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    :goto_1
    aput-wide v6, p1, v3

    aput-wide v4, p1, v1

    aput-wide v9, p1, v8

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "store array must have at least three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toArray([D)[D
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix3;->toArray([DZ)[D

    move-result-object p1

    return-object p1
.end method

.method public toArray([DZ)[D
    .locals 7

    const/16 v0, 0x9

    if-nez p1, :cond_0

    .line 2
    new-array p1, v0, [D

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, p1

    if-lt v1, v0, :cond_5

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p2, :cond_2

    move p2, v0

    :goto_1
    if-ge p2, v1, :cond_4

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, v2

    .line 4
    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, p2

    aget-wide v5, v4, v2

    aput-wide v5, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_3
    if-ge p2, v1, :cond_4

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_3

    mul-int/lit8 v3, p2, 0x3

    add-int/2addr v3, v2

    .line 5
    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, p2

    aput-wide v5, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-object p1

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "store must be at least length 9."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDoubleBuffer(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix3;->toDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Ljava/nio/DoubleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Ljava/nio/DoubleBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, p2

    aget-wide v4, v3, v2

    invoke-virtual {p1, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_4

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    .line 4
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, p2

    invoke-virtual {p1, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix3;->toFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, p2

    aget-wide v4, v3, v2

    double-to-float v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_4

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    .line 4
    iget-object v3, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, p2

    double-to-float v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "com.ardor3d.math.Matrix3\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 22

    if-nez p1, :cond_0

    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget-object v6, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v7, 0x0

    aget-object v14, v6, v7

    aget-wide v2, v14, v7

    const/4 v12, 0x1

    aget-object v16, v6, v12

    aget-wide v4, v16, v7

    const/16 v18, 0x2

    aget-object v19, v6, v18

    aget-wide v6, v19, v7

    aget-wide v8, v14, v12

    aget-wide v10, v16, v12

    aget-wide v12, v19, v12

    aget-wide v20, v14, v18

    move-wide/from16 v14, v20

    aget-wide v20, v16, v18

    move-wide/from16 v16, v20

    aget-wide v18, v19, v18

    invoke-virtual/range {v1 .. v19}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    return-object v1
.end method

.method public transposeLocal()Lcom/ardor3d/math/Matrix3;
    .locals 14

    iget-object v0, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-wide v4, v2, v3

    const/4 v6, 0x2

    aget-wide v7, v2, v6

    aget-object v9, v0, v3

    aget-wide v10, v9, v6

    aget-wide v12, v9, v1

    aput-wide v12, v2, v3

    aget-object v0, v0, v6

    aget-wide v12, v0, v1

    aput-wide v12, v2, v6

    aget-wide v12, v0, v3

    aput-wide v12, v9, v6

    aput-wide v4, v9, v1

    aput-wide v7, v0, v1

    aput-wide v10, v0, v3

    return-object p0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    aget-wide v6, v4, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-interface {v4, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v9

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    invoke-interface {p1, v5, v6}, Ljava/io/DataOutput;->writeDouble(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
