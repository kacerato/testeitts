.class public Lcom/ardor3d/math/Matrix4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyMatrix4;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

.field private static final MAT_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _data:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-class v0, Lcom/ardor3d/math/Matrix4;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Matrix4;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Matrix4;

    move-object v1, v0

    const-wide/16 v30, 0x0

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    invoke-direct/range {v1 .. v33}, Lcom/ardor3d/math/Matrix4;-><init>(DDDDDDDDDDDDDDDD)V

    sput-object v0, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-direct {p0, v0}, Lcom/ardor3d/math/Matrix4;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDDDDDDDD)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move-object v3, p0

    iput-object v1, v3, Lcom/ardor3d/math/Matrix4;->_data:[[D

    .line 4
    aget-object v5, v1, v4

    aput-wide p1, v5, v4

    .line 5
    aput-wide p3, v5, v2

    .line 6
    aput-wide p5, v5, v0

    const/4 v6, 0x3

    .line 7
    aput-wide p7, v5, v6

    .line 8
    aget-object v5, v1, v2

    aput-wide p9, v5, v4

    .line 9
    aput-wide p11, v5, v2

    .line 10
    aput-wide p13, v5, v0

    .line 11
    aput-wide p15, v5, v6

    .line 12
    aget-object v5, v1, v0

    aput-wide p17, v5, v4

    .line 13
    aput-wide p19, v5, v2

    .line 14
    aput-wide p21, v5, v0

    .line 15
    aput-wide p23, v5, v6

    .line 16
    aget-object v1, v1, v6

    aput-wide p25, v1, v4

    .line 17
    aput-wide p27, v1, v2

    .line 18
    aput-wide p29, v1, v0

    .line 19
    aput-wide p31, v1, v6

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    .line 22
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Matrix4;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Matrix4;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Matrix4;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p0, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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

.method public static final releaseTempInstance(Lcom/ardor3d/math/Matrix4;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Matrix4;->MAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/ardor3d/math/type/ReadOnlyMatrix4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 9

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Matrix4;

    invoke-direct {p2}, Lcom/ardor3d/math/Matrix4;-><init>()V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p2, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v3

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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

.method public addLocal(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 0

    invoke-virtual {p0, p1, p0}, Lcom/ardor3d/math/Matrix4;->add(Lcom/ardor3d/math/type/ReadOnlyMatrix4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public adjugate(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 68

    if-nez p1, :cond_0

    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget-wide v6, v4, v3

    const/4 v5, 0x1

    aget-object v8, v2, v5

    aget-wide v12, v8, v5

    mul-double v9, v6, v12

    aget-wide v14, v4, v5

    move-wide/from16 v16, v6

    aget-wide v5, v8, v3

    mul-double v18, v14, v5

    sub-double v32, v9, v18

    const/4 v7, 0x2

    aget-wide v20, v8, v7

    mul-double v9, v16, v20

    aget-wide v22, v4, v7

    mul-double v18, v22, v5

    sub-double v34, v9, v18

    const/4 v9, 0x3

    aget-wide v18, v8, v9

    mul-double v10, v16, v18

    aget-wide v24, v4, v9

    mul-double v26, v24, v5

    sub-double v36, v10, v26

    mul-double v10, v14, v20

    mul-double v26, v22, v12

    sub-double v38, v10, v26

    mul-double v10, v14, v18

    mul-double v26, v24, v12

    sub-double v40, v10, v26

    mul-double v10, v22, v18

    mul-double v26, v24, v20

    sub-double v42, v10, v26

    aget-object v4, v2, v7

    aget-wide v10, v4, v3

    aget-object v2, v2, v9

    const/4 v8, 0x1

    aget-wide v30, v2, v8

    mul-double v26, v10, v30

    move-wide/from16 v28, v10

    aget-wide v9, v4, v8

    aget-wide v7, v2, v3

    mul-double v44, v9, v7

    sub-double v44, v26, v44

    const/4 v3, 0x2

    aget-wide v46, v2, v3

    mul-double v26, v28, v46

    aget-wide v48, v4, v3

    mul-double v50, v48, v7

    sub-double v50, v26, v50

    const/4 v3, 0x3

    aget-wide v52, v2, v3

    mul-double v26, v28, v52

    aget-wide v54, v4, v3

    mul-double v2, v54, v7

    sub-double v56, v26, v2

    mul-double v2, v9, v46

    mul-double v26, v48, v30

    sub-double v58, v2, v26

    mul-double v2, v9, v52

    mul-double v26, v54, v30

    sub-double v60, v2, v26

    mul-double v2, v48, v52

    mul-double v26, v54, v46

    sub-double v62, v2, v26

    mul-double v2, v12, v62

    mul-double v26, v20, v60

    sub-double v2, v2, v26

    mul-double v26, v18, v58

    add-double v2, v2, v26

    move-wide/from16 v64, v7

    neg-double v7, v5

    mul-double v7, v7, v62

    mul-double v26, v20, v56

    add-double v7, v7, v26

    mul-double v26, v18, v50

    sub-double v7, v7, v26

    move-object/from16 p1, v1

    move-wide/from16 v66, v2

    move-wide v0, v9

    move-wide/from16 v2, v28

    move-wide v10, v7

    mul-double v7, v5, v60

    mul-double v26, v12, v56

    sub-double v7, v7, v26

    mul-double v18, v18, v44

    add-double v18, v7, v18

    neg-double v4, v5

    mul-double v4, v4, v58

    mul-double v12, v12, v50

    add-double/2addr v4, v12

    mul-double v20, v20, v44

    sub-double v26, v4, v20

    neg-double v4, v14

    mul-double v4, v4, v62

    mul-double v6, v22, v60

    add-double/2addr v4, v6

    mul-double v6, v24, v58

    sub-double/2addr v4, v6

    mul-double v6, v16, v62

    mul-double v8, v22, v56

    sub-double/2addr v6, v8

    mul-double v8, v24, v50

    add-double v12, v6, v8

    move-wide/from16 v6, v16

    neg-double v8, v6

    mul-double v8, v8, v60

    mul-double v56, v56, v14

    add-double v8, v8, v56

    mul-double v24, v24, v44

    sub-double v20, v8, v24

    mul-double v6, v6, v58

    mul-double v14, v14, v50

    sub-double/2addr v6, v14

    mul-double v22, v22, v44

    add-double v28, v6, v22

    mul-double v6, v30, v42

    mul-double v8, v46, v40

    sub-double/2addr v6, v8

    mul-double v8, v52, v38

    add-double/2addr v6, v8

    move-wide/from16 v8, v64

    neg-double v14, v8

    mul-double v14, v14, v42

    mul-double v16, v46, v36

    add-double v14, v14, v16

    mul-double v16, v52, v34

    sub-double v14, v14, v16

    mul-double v16, v8, v40

    mul-double v22, v30, v36

    sub-double v16, v16, v22

    mul-double v52, v52, v32

    add-double v22, v16, v52

    neg-double v8, v8

    mul-double v8, v8, v38

    mul-double v30, v30, v34

    add-double v8, v8, v30

    mul-double v46, v46, v32

    sub-double v30, v8, v46

    neg-double v8, v0

    mul-double v8, v8, v42

    mul-double v16, v48, v40

    add-double v8, v8, v16

    mul-double v16, v54, v38

    sub-double v8, v8, v16

    mul-double v16, v2, v42

    mul-double v24, v48, v36

    sub-double v16, v16, v24

    mul-double v24, v54, v34

    add-double v16, v16, v24

    move-wide/from16 v42, v4

    neg-double v4, v2

    mul-double v4, v4, v40

    mul-double v24, v0, v36

    add-double v4, v4, v24

    mul-double v54, v54, v32

    sub-double v24, v4, v54

    mul-double v2, v2, v38

    mul-double v0, v0, v34

    sub-double/2addr v2, v0

    mul-double v48, v48, v32

    add-double v32, v2, v48

    move-object/from16 v1, p1

    move-wide/from16 v4, v42

    move-wide/from16 v2, v66

    invoke-virtual/range {v1 .. v33}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public adjugateLocal()Lcom/ardor3d/math/Matrix4;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/ardor3d/math/Matrix4;->adjugate(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public applyPost(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 19

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Vector4;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v8

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-wide v12, v10, v11

    mul-double/2addr v12, v2

    const/4 v14, 0x1

    aget-wide v15, v10, v14

    mul-double/2addr v15, v4

    add-double/2addr v12, v15

    const/4 v15, 0x2

    aget-wide v16, v10, v15

    mul-double v16, v16, v6

    add-double v12, v12, v16

    const/16 v16, 0x3

    aget-wide v17, v10, v16

    mul-double v17, v17, v8

    add-double v12, v12, v17

    invoke-virtual {v1, v12, v13}, Lcom/ardor3d/math/Vector4;->setX(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v10, v10, v14

    aget-wide v12, v10, v11

    mul-double/2addr v12, v2

    aget-wide v17, v10, v14

    mul-double v17, v17, v4

    add-double v12, v12, v17

    aget-wide v17, v10, v15

    mul-double v17, v17, v6

    add-double v12, v12, v17

    aget-wide v17, v10, v16

    mul-double v17, v17, v8

    add-double v12, v12, v17

    invoke-virtual {v1, v12, v13}, Lcom/ardor3d/math/Vector4;->setY(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v10, v10, v15

    aget-wide v12, v10, v11

    mul-double/2addr v12, v2

    aget-wide v17, v10, v14

    mul-double v17, v17, v4

    add-double v12, v12, v17

    aget-wide v17, v10, v15

    mul-double v17, v17, v6

    add-double v12, v12, v17

    aget-wide v17, v10, v16

    mul-double v17, v17, v8

    add-double v12, v12, v17

    invoke-virtual {v1, v12, v13}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v10, v10, v16

    aget-wide v11, v10, v11

    mul-double/2addr v11, v2

    aget-wide v2, v10, v14

    mul-double/2addr v2, v4

    add-double/2addr v11, v2

    aget-wide v2, v10, v15

    mul-double/2addr v2, v6

    add-double/2addr v11, v2

    aget-wide v2, v10, v16

    mul-double/2addr v2, v8

    add-double/2addr v11, v2

    invoke-virtual {v1, v11, v12}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object v1
.end method

.method public applyPre(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 21

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Vector4;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v8

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v11, 0x0

    aget-object v12, v10, v11

    aget-wide v13, v12, v11

    mul-double/2addr v13, v2

    const/4 v12, 0x1

    aget-object v15, v10, v12

    aget-wide v16, v15, v11

    mul-double v16, v16, v4

    add-double v13, v13, v16

    const/4 v15, 0x2

    aget-object v16, v10, v15

    aget-wide v17, v16, v11

    mul-double v17, v17, v6

    add-double v13, v13, v17

    const/16 v16, 0x3

    aget-object v10, v10, v16

    aget-wide v17, v10, v11

    mul-double v17, v17, v8

    add-double v13, v13, v17

    invoke-virtual {v1, v13, v14}, Lcom/ardor3d/math/Vector4;->setX(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v13, v10, v11

    aget-wide v17, v13, v12

    mul-double v17, v17, v2

    aget-object v13, v10, v12

    aget-wide v19, v13, v12

    mul-double v19, v19, v4

    add-double v17, v17, v19

    aget-object v13, v10, v15

    aget-wide v19, v13, v12

    mul-double v19, v19, v6

    add-double v17, v17, v19

    aget-object v10, v10, v16

    aget-wide v13, v10, v12

    mul-double/2addr v13, v8

    add-double v13, v17, v13

    invoke-virtual {v1, v13, v14}, Lcom/ardor3d/math/Vector4;->setY(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v13, v10, v11

    aget-wide v17, v13, v15

    mul-double v17, v17, v2

    aget-object v13, v10, v12

    aget-wide v19, v13, v15

    mul-double v19, v19, v4

    add-double v17, v17, v19

    aget-object v13, v10, v15

    aget-wide v19, v13, v15

    mul-double v19, v19, v6

    add-double v17, v17, v19

    aget-object v10, v10, v16

    aget-wide v13, v10, v15

    mul-double/2addr v13, v8

    add-double v13, v17, v13

    invoke-virtual {v1, v13, v14}, Lcom/ardor3d/math/Vector4;->setZ(D)V

    iget-object v10, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v11, v10, v11

    aget-wide v13, v11, v16

    mul-double/2addr v13, v2

    aget-object v2, v10, v12

    aget-wide v11, v2, v16

    mul-double/2addr v11, v4

    add-double/2addr v13, v11

    aget-object v2, v10, v15

    aget-wide v3, v2, v16

    mul-double/2addr v3, v6

    add-double/2addr v13, v3

    aget-object v2, v10, v16

    aget-wide v3, v2, v16

    mul-double/2addr v3, v8

    add-double/2addr v13, v3

    invoke-virtual {v1, v13, v14}, Lcom/ardor3d/math/Vector4;->setW(D)V

    return-object v1
.end method

.method public clone()Lcom/ardor3d/math/Matrix4;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Matrix4;
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Matrix4;->clone()Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public determinant()D
    .locals 40

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-wide v4, v3, v2

    const/4 v6, 0x1

    aget-object v7, v1, v6

    aget-wide v8, v7, v6

    mul-double v10, v4, v8

    aget-wide v12, v3, v6

    aget-wide v14, v7, v2

    mul-double v16, v12, v14

    sub-double v10, v10, v16

    const/16 v16, 0x2

    aget-wide v17, v7, v16

    mul-double v19, v4, v17

    aget-wide v21, v3, v16

    mul-double v23, v21, v14

    sub-double v19, v19, v23

    const/16 v23, 0x3

    aget-wide v24, v7, v23

    mul-double v4, v4, v24

    aget-wide v26, v3, v23

    mul-double v14, v14, v26

    sub-double/2addr v4, v14

    mul-double v14, v12, v17

    mul-double v28, v21, v8

    sub-double v14, v14, v28

    mul-double v12, v12, v24

    mul-double v8, v8, v26

    sub-double/2addr v12, v8

    mul-double v21, v21, v24

    mul-double v26, v26, v17

    sub-double v21, v21, v26

    aget-object v3, v1, v16

    aget-wide v7, v3, v2

    aget-object v1, v1, v23

    aget-wide v17, v1, v6

    mul-double v24, v7, v17

    aget-wide v26, v3, v6

    aget-wide v28, v1, v2

    mul-double v30, v26, v28

    sub-double v24, v24, v30

    aget-wide v30, v1, v16

    mul-double v32, v7, v30

    aget-wide v34, v3, v16

    mul-double v36, v34, v28

    sub-double v32, v32, v36

    aget-wide v36, v1, v23

    mul-double v7, v7, v36

    aget-wide v1, v3, v23

    mul-double v28, v28, v1

    sub-double v7, v7, v28

    mul-double v28, v26, v30

    mul-double v38, v34, v17

    sub-double v28, v28, v38

    mul-double v26, v26, v36

    mul-double v17, v17, v1

    sub-double v26, v26, v17

    mul-double v34, v34, v36

    mul-double v1, v1, v30

    sub-double v34, v34, v1

    mul-double v10, v10, v34

    mul-double v19, v19, v26

    sub-double v10, v10, v19

    mul-double v4, v4, v28

    add-double/2addr v10, v4

    mul-double/2addr v14, v7

    add-double/2addr v10, v14

    mul-double v12, v12, v32

    sub-double/2addr v10, v12

    mul-double v21, v21, v24

    add-double v10, v10, v21

    return-wide v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move v1, v2

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/ardor3d/math/Matrix4;->getValue(II)D

    move-result-wide v5

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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

.method public fromAngleAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix4;
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ardor3d/math/Matrix4;->fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix4;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p0
.end method

.method public fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix4;
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

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

.method public fromArray([D)Lcom/ardor3d/math/Matrix4;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->fromArray([DZ)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public fromArray([DZ)Lcom/ardor3d/math/Matrix4;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p2, :cond_1

    move p2, v0

    :goto_0
    if-ge p2, v1, :cond_3

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 2
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, p2

    mul-int/lit8 v4, p2, 0x4

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
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v2

    mul-int/lit8 v4, p2, 0x4

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

.method public fromDoubleBuffer(Ljava/nio/DoubleBuffer;)Lcom/ardor3d/math/Matrix4;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->fromDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public fromDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Lcom/ardor3d/math/Matrix4;
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_3

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, p2

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_3

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v2

    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    aput-wide v4, v3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public fromFloatBuffer(Ljava/nio/FloatBuffer;)Lcom/ardor3d/math/Matrix4;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->fromFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public fromFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/ardor3d/math/Matrix4;
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_3

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, p2

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_2
    if-ge p2, v0, :cond_3

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v2

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Matrix4;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getColumn(ILcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector4;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v0

    aget-wide v2, v1, p1

    invoke-virtual {p2, v0, v2, v3}, Lcom/ardor3d/math/Vector4;->setValue(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
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

.method public getRow(ILcom/ardor3d/math/Vector4;)Lcom/ardor3d/math/Vector4;
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Vector4;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector4;-><init>()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, p1

    aget-wide v2, v1, v0

    invoke-virtual {p2, v0, v2, v3}, Lcom/ardor3d/math/Vector4;->setValue(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
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

    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public getValuef(II)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Matrix4;->getValue(II)D

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
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

.method public invert(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 56

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v17, 0x0

    aget-object v3, v2, v17

    aget-wide v4, v3, v17

    const/4 v9, 0x1

    aget-object v6, v2, v9

    aget-wide v7, v6, v9

    mul-double v10, v4, v7

    aget-wide v12, v3, v9

    aget-wide v14, v6, v17

    mul-double v18, v12, v14

    sub-double v33, v10, v18

    const/4 v10, 0x2

    aget-wide v18, v6, v10

    mul-double v20, v4, v18

    aget-wide v22, v3, v10

    mul-double v24, v22, v14

    sub-double v35, v20, v24

    const/16 v25, 0x3

    aget-wide v20, v6, v25

    mul-double v4, v4, v20

    aget-wide v26, v3, v25

    mul-double v14, v14, v26

    sub-double v37, v4, v14

    mul-double v3, v12, v18

    mul-double v5, v22, v7

    sub-double v39, v3, v5

    mul-double v12, v12, v20

    mul-double v7, v7, v26

    sub-double v41, v12, v7

    mul-double v22, v22, v20

    mul-double v26, v26, v18

    sub-double v43, v22, v26

    aget-object v3, v2, v10

    aget-wide v4, v3, v17

    aget-object v2, v2, v25

    aget-wide v6, v2, v9

    mul-double v11, v4, v6

    aget-wide v13, v3, v9

    aget-wide v15, v2, v17

    mul-double v18, v13, v15

    sub-double v23, v11, v18

    aget-wide v11, v2, v10

    mul-double v18, v4, v11

    aget-wide v20, v3, v10

    mul-double v26, v20, v15

    sub-double v29, v18, v26

    aget-wide v18, v2, v25

    mul-double v4, v4, v18

    aget-wide v2, v3, v25

    mul-double/2addr v15, v2

    sub-double v15, v4, v15

    mul-double v4, v13, v11

    mul-double v26, v20, v6

    sub-double v31, v4, v26

    mul-double v13, v13, v18

    mul-double/2addr v6, v2

    sub-double v7, v13, v6

    mul-double v20, v20, v18

    mul-double/2addr v2, v11

    sub-double v13, v20, v2

    mul-double v2, v33, v13

    mul-double v4, v35, v7

    sub-double/2addr v2, v4

    mul-double v4, v37, v31

    add-double/2addr v2, v4

    mul-double v4, v39, v15

    add-double/2addr v2, v4

    mul-double v4, v41, v29

    sub-double/2addr v2, v4

    mul-double v4, v43, v23

    add-double v45, v2, v4

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v2, v9

    aget-wide v21, v5, v9

    mul-double v3, v21, v13

    aget-wide v26, v5, v10

    mul-double v11, v26, v7

    sub-double/2addr v3, v11

    aget-wide v18, v5, v25

    mul-double v11, v18, v31

    add-double/2addr v3, v11

    aget-wide v11, v5, v17

    neg-double v5, v11

    mul-double/2addr v5, v13

    mul-double v47, v26, v15

    add-double v5, v5, v47

    mul-double v47, v18, v29

    sub-double v5, v5, v47

    move-wide v9, v11

    move-wide v11, v5

    mul-double v5, v9, v7

    mul-double v48, v21, v15

    sub-double v5, v5, v48

    mul-double v18, v18, v23

    add-double v19, v5, v18

    neg-double v5, v9

    mul-double v5, v5, v31

    mul-double v21, v21, v29

    add-double v5, v5, v21

    mul-double v26, v26, v23

    sub-double v27, v5, v26

    aget-object v9, v2, v17

    move-wide/from16 v48, v3

    const/4 v5, 0x1

    aget-wide v3, v9, v5

    neg-double v5, v3

    mul-double/2addr v5, v13

    const/4 v10, 0x2

    aget-wide v50, v9, v10

    mul-double v21, v50, v7

    add-double v5, v5, v21

    aget-wide v21, v9, v25

    mul-double v52, v21, v31

    sub-double v5, v5, v52

    move-wide/from16 v52, v5

    aget-wide v5, v9, v17

    mul-double/2addr v13, v5

    mul-double v9, v50, v15

    sub-double/2addr v13, v9

    mul-double v9, v21, v29

    add-double/2addr v13, v9

    neg-double v9, v5

    mul-double/2addr v9, v7

    mul-double/2addr v15, v3

    add-double/2addr v9, v15

    mul-double v21, v21, v23

    sub-double v21, v9, v21

    mul-double v5, v5, v31

    mul-double v3, v3, v29

    sub-double/2addr v5, v3

    mul-double v50, v50, v23

    add-double v29, v5, v50

    aget-object v3, v2, v25

    const/4 v4, 0x1

    aget-wide v5, v3, v4

    mul-double v7, v5, v43

    const/4 v4, 0x2

    aget-wide v9, v3, v4

    mul-double v15, v9, v41

    sub-double/2addr v7, v15

    aget-wide v23, v3, v25

    mul-double v15, v23, v39

    add-double/2addr v7, v15

    move-wide/from16 v50, v7

    aget-wide v7, v3, v17

    neg-double v3, v7

    mul-double v3, v3, v43

    mul-double v15, v9, v37

    add-double/2addr v3, v15

    mul-double v15, v23, v35

    sub-double v15, v3, v15

    mul-double v3, v7, v41

    mul-double v31, v5, v37

    sub-double v3, v3, v31

    mul-double v23, v23, v33

    add-double v23, v3, v23

    neg-double v3, v7

    mul-double v3, v3, v39

    mul-double v5, v5, v35

    add-double/2addr v3, v5

    mul-double v9, v9, v33

    sub-double v31, v3, v9

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    neg-double v6, v4

    mul-double v6, v6, v43

    aget-wide v54, v2, v3

    mul-double v8, v54, v41

    add-double/2addr v6, v8

    aget-wide v25, v2, v25

    mul-double v8, v25, v39

    sub-double v9, v6, v8

    aget-wide v6, v2, v17

    mul-double v43, v43, v6

    mul-double v2, v54, v37

    sub-double v43, v43, v2

    mul-double v2, v25, v35

    add-double v17, v43, v2

    neg-double v2, v6

    mul-double v2, v2, v41

    mul-double v37, v37, v4

    add-double v2, v2, v37

    mul-double v25, v25, v33

    sub-double v25, v2, v25

    mul-double v6, v6, v39

    mul-double v4, v4, v35

    sub-double/2addr v6, v4

    mul-double v54, v54, v33

    add-double v33, v6, v54

    move-object v2, v1

    move-wide/from16 v3, v48

    move-wide/from16 v7, v50

    move-wide/from16 v5, v52

    invoke-virtual/range {v2 .. v34}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, v45

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/math/Matrix4;->multiplyLocal(D)Lcom/ardor3d/math/Matrix4;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "This matrix cannot be inverted"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invertLocal()Lcom/ardor3d/math/Matrix4;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/ardor3d/math/Matrix4;->invert(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public isIdentity()Z
    .locals 1

    sget-object v0, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix4;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOrthonormal()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix4;->transpose(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix4;->invert(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Matrix4;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyMatrix4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    new-instance v2, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v2}, Lcom/ardor3d/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v14, 0x0

    aget-object v3, v3, v14

    aget-wide v4, v3, v14

    invoke-interface {v1, v14, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    const/4 v15, 0x1

    aget-wide v6, v3, v15

    invoke-interface {v1, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    const/4 v12, 0x2

    aget-wide v6, v3, v12

    invoke-interface {v1, v12, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    const/4 v13, 0x3

    aget-wide v6, v3, v13

    invoke-interface {v1, v13, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v6, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v15

    invoke-interface {v1, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v12

    invoke-interface {v1, v12, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v13

    invoke-interface {v1, v13, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v8, v3, v14

    invoke-interface {v1, v14, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v15

    invoke-interface {v1, v15, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v12

    invoke-interface {v1, v12, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v13

    invoke-interface {v1, v13, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    add-double/2addr v8, v10

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v10, v3, v14

    invoke-interface {v1, v14, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    mul-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v16, v3, v15

    invoke-interface {v1, v15, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v16, v3, v12

    invoke-interface {v1, v12, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v14

    aget-wide v16, v3, v13

    invoke-interface {v1, v13, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v10, v10, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v14

    invoke-interface {v1, v14, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v15

    invoke-interface {v1, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v12

    invoke-interface {v1, v12, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v13

    invoke-interface {v1, v13, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move v3, v12

    move-wide/from16 v12, v16

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v16, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    aget-wide v18, v3, v15

    invoke-interface {v1, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    const/4 v14, 0x2

    aget-wide v19, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v16, v16, v19

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v15

    const/4 v14, 0x3

    aget-wide v19, v3, v14

    invoke-interface {v1, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v16, v16, v19

    move v3, v15

    move-wide/from16 v14, v16

    move-wide/from16 v38, v4

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget-wide v16, v4, v5

    const/4 v4, 0x2

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v18

    mul-double v16, v16, v18

    iget-object v5, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v3

    aget-wide v18, v5, v3

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v5, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v3

    aget-wide v18, v5, v4

    invoke-interface {v1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v5, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v3

    const/4 v3, 0x3

    aget-wide v18, v5, v3

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-wide v18, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v20

    mul-double v18, v18, v20

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-wide v20, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-wide v20, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v20, 0x1

    aget-object v4, v4, v20

    aget-wide v20, v4, v3

    invoke-interface {v1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v5

    const/4 v3, 0x0

    aget-wide v20, v4, v3

    invoke-interface {v1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v22

    mul-double v20, v20, v22

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v22, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v22, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aget-wide v22, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v22, v4, v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v24

    mul-double v22, v22, v24

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v24, v3, v4

    invoke-interface {v1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v24, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v5, 0x3

    aget-wide v24, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v4, 0x0

    aget-wide v24, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v26

    mul-double v24, v24, v26

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v4, 0x1

    aget-wide v26, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v26, v3, v5

    invoke-interface {v1, v5, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    mul-double v26, v26, v3

    add-double v24, v24, v26

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v4, 0x3

    aget-wide v26, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v5, 0x0

    aget-wide v26, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v28

    mul-double v26, v26, v28

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x2

    aget-object v3, v3, v5

    const/4 v5, 0x1

    aget-wide v28, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x2

    aget-object v3, v3, v5

    aget-wide v28, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v28, v3, v4

    invoke-interface {v1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v30

    mul-double v28, v28, v30

    add-double v26, v26, v28

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v4

    const/4 v5, 0x0

    aget-wide v28, v3, v5

    invoke-interface {v1, v5, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v30

    mul-double v28, v28, v30

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-wide v30, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aget-wide v30, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aget-wide v30, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v32

    mul-double v30, v30, v32

    add-double v28, v28, v30

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v4

    aget-wide v30, v3, v5

    const/4 v3, 0x1

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v32

    mul-double v30, v30, v32

    iget-object v5, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v4

    aget-wide v32, v5, v3

    invoke-interface {v1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v35

    mul-double v32, v32, v35

    add-double v30, v30, v32

    iget-object v5, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v4

    const/4 v4, 0x2

    aget-wide v32, v5, v4

    invoke-interface {v1, v4, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v40

    mul-double v32, v32, v40

    add-double v30, v30, v32

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget-wide v32, v4, v5

    invoke-interface {v1, v5, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v35

    mul-double v32, v32, v35

    add-double v30, v30, v32

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v5

    const/4 v3, 0x0

    aget-wide v32, v4, v3

    const/4 v4, 0x2

    invoke-interface {v1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v36

    mul-double v32, v32, v36

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v5, 0x1

    aget-wide v40, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v42

    mul-double v40, v40, v42

    add-double v32, v32, v40

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget-wide v36, v3, v4

    invoke-interface {v1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v40

    mul-double v36, v36, v40

    add-double v32, v32, v36

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v36, v3, v5

    invoke-interface {v1, v5, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v40

    mul-double v36, v36, v40

    add-double v32, v32, v36

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v4, 0x0

    aget-wide v36, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    mul-double v36, v36, v3

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v4, 0x1

    aget-wide v34, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    mul-double v34, v34, v3

    add-double v36, v36, v34

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget-wide v34, v3, v4

    invoke-interface {v1, v4, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    mul-double v34, v34, v3

    add-double v36, v36, v34

    iget-object v3, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v5

    aget-wide v34, v3, v5

    invoke-interface {v1, v5, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    mul-double v34, v34, v3

    add-double v34, v36, v34

    move-object v3, v2

    move-wide/from16 v4, v38

    invoke-virtual/range {v3 .. v35}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    return-object v2
.end method

.method public multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 38

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v27, 0x0

    aget-object v4, v4, v27

    aget-wide v5, v4, v27

    mul-double v3, v2, v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v5

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v29, 0x1

    aget-wide v7, v2, v29

    mul-double/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v7

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v31, 0x2

    aget-wide v9, v2, v31

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v9

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v33, 0x3

    aget-wide v11, v2, v33

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v11

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v13, v2, v27

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v13

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v15, v2, v29

    mul-double/2addr v13, v15

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v15

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v17, v2, v31

    mul-double v15, v15, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v17

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v19, v2, v33

    mul-double v17, v17, v19

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v19

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v21, v2, v27

    mul-double v19, v19, v21

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v21

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v23, v2, v29

    mul-double v21, v21, v23

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v23

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v25, v2, v31

    mul-double v23, v23, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v25

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v34, v2, v33

    mul-double v25, v25, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v27, v2, v27

    mul-double v27, v27, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v29, v2, v29

    mul-double v29, v29, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v31, v2, v31

    mul-double v31, v31, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v36, v2, v33

    mul-double v33, v34, v36

    move-object v2, v1

    invoke-virtual/range {v2 .. v34}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    return-object v1
.end method

.method public multiplyDiagonalPre(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 38

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v27, 0x0

    aget-object v4, v4, v27

    aget-wide v5, v4, v27

    mul-double v3, v2, v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v5

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v29, 0x1

    aget-wide v7, v2, v29

    mul-double/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v7

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v31, 0x2

    aget-wide v9, v2, v31

    mul-double/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v9

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v27

    const/16 v33, 0x3

    aget-wide v11, v2, v33

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v11

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v13, v2, v27

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v13

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v15, v2, v29

    mul-double/2addr v13, v15

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v15

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v17, v2, v31

    mul-double v15, v15, v17

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v17

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v29

    aget-wide v19, v2, v33

    mul-double v17, v17, v19

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v19

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v21, v2, v27

    mul-double v19, v19, v21

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v21

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v23, v2, v29

    mul-double v21, v21, v23

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v23

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v25, v2, v31

    mul-double v23, v23, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v25

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v31

    aget-wide v34, v2, v33

    mul-double v25, v25, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v27, v2, v27

    mul-double v27, v27, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v29, v2, v29

    mul-double v29, v29, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v31, v2, v31

    mul-double v31, v31, v34

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    iget-object v2, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v2, v2, v33

    aget-wide v36, v2, v33

    mul-double v33, v34, v36

    move-object v2, v1

    invoke-virtual/range {v2 .. v34}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    return-object v1
.end method

.method public multiplyLocal(D)Lcom/ardor3d/math/Matrix4;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 2
    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Lcom/ardor3d/math/Matrix4;->multiply(Lcom/ardor3d/math/type/ReadOnlyMatrix4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

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
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-interface {v6, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

.method public scale(Lcom/ardor3d/math/type/ReadOnlyVector4;Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 37

    move-object/from16 v0, p0

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v27, 0x0

    aget-object v1, v1, v27

    aget-wide v3, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v27

    const/16 v29, 0x1

    aget-wide v5, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v27

    const/16 v31, 0x2

    aget-wide v7, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v27

    const/16 v33, 0x3

    aget-wide v9, v1, v33

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v11

    mul-double/2addr v9, v11

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v11, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v13

    mul-double/2addr v11, v13

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v13, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v15, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v17

    mul-double v15, v15, v17

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v17, v1, v33

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v19

    mul-double v17, v17, v19

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v19, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v21

    mul-double v19, v19, v21

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v21, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v23

    mul-double v21, v21, v23

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v23, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v25

    mul-double v23, v23, v25

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v25, v1, v33

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v34

    mul-double v25, v25, v34

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v33

    aget-wide v27, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v34

    mul-double v27, v27, v34

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v33

    aget-wide v29, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v34

    mul-double v29, v29, v34

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v33

    aget-wide v31, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v34

    mul-double v31, v31, v34

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v33

    aget-wide v33, v1, v33

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v35

    mul-double v33, v33, v35

    invoke-virtual/range {v2 .. v34}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    move-result-object v1

    return-object v1
.end method

.method public scaleLocal(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Matrix4;
    .locals 36

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    iget-object v1, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/16 v25, 0x0

    aget-object v1, v1, v25

    aget-wide v2, v1, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v4

    mul-double v1, v2, v4

    iget-object v3, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v25

    const/16 v27, 0x1

    aget-wide v4, v3, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v6

    mul-double v3, v4, v6

    iget-object v5, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v5, v5, v25

    const/16 v29, 0x2

    aget-wide v6, v5, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v8

    mul-double v5, v6, v8

    iget-object v7, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v7, v7, v25

    const/16 v31, 0x3

    aget-wide v8, v7, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v10

    mul-double v7, v8, v10

    iget-object v9, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v9, v9, v27

    aget-wide v10, v9, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v12

    mul-double v9, v10, v12

    iget-object v11, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v11, v11, v27

    aget-wide v12, v11, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v16

    mul-double v11, v12, v16

    iget-object v13, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v13, v13, v27

    aget-wide v16, v13, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v13

    mul-double v13, v13, v16

    move-object/from16 v33, v0

    iget-object v0, v15, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v27

    aget-wide v16, v0, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object v0, v15

    move-wide/from16 v15, v16

    move-wide/from16 v34, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v17, v1, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    mul-double v17, v17, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v19, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v1

    mul-double v19, v19, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v21, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v1

    mul-double v21, v21, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v29

    aget-wide v23, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v1

    mul-double v23, v23, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v25, v1, v25

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getX()D

    move-result-wide v1

    mul-double v25, v25, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v27, v1, v27

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getY()D

    move-result-wide v1

    mul-double v27, v27, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v29, v1, v29

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getZ()D

    move-result-wide v1

    mul-double v29, v29, v1

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v1, v1, v31

    aget-wide v31, v1, v31

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector4;->getW()D

    move-result-wide v1

    mul-double v31, v31, v1

    move-object/from16 v0, v33

    move-wide/from16 v1, v34

    invoke-virtual/range {v0 .. v32}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;
    .locals 7

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aput-wide p1, v3, v2

    const/4 v4, 0x1

    .line 2
    aput-wide p3, v3, v4

    const/4 v5, 0x2

    .line 3
    aput-wide p5, v3, v5

    const/4 v6, 0x3

    .line 4
    aput-wide p7, v3, v6

    .line 5
    aget-object v3, v1, v4

    aput-wide p9, v3, v2

    .line 6
    aput-wide p11, v3, v4

    .line 7
    aput-wide p13, v3, v5

    .line 8
    aput-wide p15, v3, v6

    .line 9
    aget-object v3, v1, v5

    aput-wide p17, v3, v2

    .line 10
    aput-wide p19, v3, v4

    .line 11
    aput-wide p21, v3, v5

    .line 12
    aput-wide p23, v3, v6

    .line 13
    aget-object v1, v1, v6

    aput-wide p25, v1, v2

    .line 14
    aput-wide p27, v1, v4

    .line 15
    aput-wide p29, v1, v5

    .line 16
    aput-wide p31, v1, v6

    return-object v0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix4;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 33
    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v4, v4, v1

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 18
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 19
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 20
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-interface {p1, v4, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v1

    .line 21
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 22
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 23
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 24
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    invoke-interface {p1, v4, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 25
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 26
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 27
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 28
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    invoke-interface {p1, v4, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 29
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v1

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 30
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v2

    invoke-interface {p1, v2, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 31
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v3

    invoke-interface {p1, v3, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 32
    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    invoke-interface {p1, v4, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v1

    aput-wide v1, v0, v4

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Matrix4;
    .locals 0

    .line 34
    invoke-interface {p1, p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->toRotationMatrix(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object p1

    return-object p1
.end method

.method public setColumn(I[D)Lcom/ardor3d/math/Matrix4;
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v3, p2, v1

    aput-wide v3, v2, p1

    const/4 v1, 0x1

    aget-object v2, v0, v1

    aget-wide v3, p2, v1

    aput-wide v3, v2, p1

    const/4 v1, 0x2

    aget-object v2, v0, v1

    aget-wide v3, p2, v1

    aput-wide v3, v2, p1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    aget-wide v1, p2, v1

    aput-wide v1, v0, p1

    return-object p0
.end method

.method public setIdentity()Lcom/ardor3d/math/Matrix4;
    .locals 1

    sget-object v0, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public setRow(I[D)Lcom/ardor3d/math/Matrix4;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aget-wide v1, p2, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p2, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    aget-wide v1, p2, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p2, v0

    aput-wide v1, p1, v0

    return-object p0
.end method

.method public setValue(IID)Lcom/ardor3d/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    move v1, v2

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v1, v4}, Lcom/ardor3d/math/Matrix4;->getValue(II)D

    move-result-wide v5

    invoke-interface {p1, v1, v4}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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

.method public toArray([D)[D
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->toArray([DZ)[D

    move-result-object p1

    return-object p1
.end method

.method public toArray([DZ)[D
    .locals 7

    const/16 v0, 0x10

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

    const/4 v1, 0x4

    if-eqz p2, :cond_2

    move p2, v0

    :goto_1
    if-ge p2, v1, :cond_4

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, v2

    .line 4
    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

    mul-int/lit8 v3, p2, 0x4

    add-int/2addr v3, v2

    .line 5
    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

    const-string p2, "store must be at least length 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDoubleBuffer(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->toDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Ljava/nio/DoubleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toDoubleBuffer(Ljava/nio/DoubleBuffer;Z)Ljava/nio/DoubleBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x10

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object p1

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    iget-object p2, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_1
    if-ge p2, v0, :cond_3

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, p2

    invoke-virtual {p1, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public toFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Matrix4;->toFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x10

    .line 2
    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_4

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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
    iget-object v3, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

    const-string v1, "com.ardor3d.math.Matrix4\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

.method public transpose(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 36

    if-nez p1, :cond_0

    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget-object v8, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v9, 0x0

    aget-object v26, v8, v9

    aget-wide v2, v26, v9

    const/16 v16, 0x1

    aget-object v28, v8, v16

    aget-wide v4, v28, v9

    const/16 v24, 0x2

    aget-object v30, v8, v24

    aget-wide v6, v30, v9

    const/16 v32, 0x3

    aget-object v33, v8, v32

    aget-wide v8, v33, v9

    aget-wide v10, v26, v16

    aget-wide v12, v28, v16

    aget-wide v14, v30, v16

    aget-wide v16, v33, v16

    aget-wide v18, v26, v24

    aget-wide v20, v28, v24

    aget-wide v22, v30, v24

    aget-wide v24, v33, v24

    aget-wide v34, v26, v32

    move-wide/from16 v26, v34

    aget-wide v34, v28, v32

    move-wide/from16 v28, v34

    aget-wide v34, v30, v32

    move-wide/from16 v30, v34

    aget-wide v32, v33, v32

    invoke-virtual/range {v1 .. v33}, Lcom/ardor3d/math/Matrix4;->set(DDDDDDDDDDDDDDDD)Lcom/ardor3d/math/Matrix4;

    move-result-object v1

    return-object v1
.end method

.method public transposeLocal()Lcom/ardor3d/math/Matrix4;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ardor3d/math/Matrix4;->_data:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x1

    aget-wide v5, v3, v4

    const/4 v7, 0x2

    aget-wide v8, v3, v7

    const/4 v10, 0x3

    aget-wide v11, v3, v10

    aget-object v13, v1, v4

    aget-wide v14, v13, v7

    aget-wide v16, v13, v10

    aget-object v18, v1, v7

    aget-wide v19, v18, v10

    aget-wide v21, v13, v2

    aput-wide v21, v3, v4

    aget-wide v21, v18, v2

    aput-wide v21, v3, v7

    aget-object v1, v1, v10

    aget-wide v21, v1, v2

    aput-wide v21, v3, v10

    aget-wide v21, v18, v4

    aput-wide v21, v13, v7

    aget-wide v21, v1, v4

    aput-wide v21, v13, v10

    aget-wide v21, v1, v7

    aput-wide v21, v18, v10

    aput-wide v5, v13, v2

    aput-wide v8, v18, v2

    aput-wide v11, v1, v2

    aput-wide v14, v18, v4

    aput-wide v16, v1, v4

    aput-wide v19, v1, v7

    return-object v0
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
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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

    sget-object v4, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-interface {v4, v1, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

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
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/ardor3d/math/Matrix4;->_data:[[D

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
