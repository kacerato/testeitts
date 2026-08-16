.class public Lcom/ardor3d/math/Ray3;
.super Lcom/ardor3d/math/Line3Base;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/type/ReadOnlyRay3;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final RAY_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Ray3;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/Ray3;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Ray3;->RAY_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {p0, v0, v1}, Lcom/ardor3d/math/Line3Base;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/math/Line3Base;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Ray3;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Ray3;->RAY_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Ray3;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Ray3;

    invoke-direct {v0}, Lcom/ardor3d/math/Ray3;-><init>()V

    return-object v0
.end method

.method private intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;ZZ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 6
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    iget-object v4, v0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v8

    .line 7
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v9

    .line 8
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v10

    .line 9
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v11

    .line 10
    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v11}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v1, v3, v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_0

    move-wide v12, v6

    goto :goto_0

    :cond_0
    const-wide/high16 v12, -0x4350000000000000L    # -2.220446049250313E-16

    cmpg-double v1, v3, v12

    if-gez v1, :cond_5

    neg-double v3, v3

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 11
    :goto_0
    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v8, v10, v10}, Lcom/ardor3d/math/Vector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v14

    mul-double/2addr v14, v12

    const-wide/16 v16, 0x0

    cmpl-double v1, v14, v16

    if-ltz v1, :cond_4

    .line 12
    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v9, v8}, Lcom/ardor3d/math/Vector3;->crossLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v18

    mul-double v18, v18, v12

    cmpl-double v1, v18, v16

    if-ltz v1, :cond_4

    if-eqz p6, :cond_1

    add-double v20, v14, v18

    cmpg-double v1, v20, v3

    if-gtz v1, :cond_4

    goto :goto_1

    :cond_1
    cmpg-double v1, v18, v3

    if-gtz v1, :cond_4

    :goto_1
    neg-double v12, v12

    .line 13
    invoke-virtual {v8, v11}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v20

    mul-double v12, v12, v20

    cmpl-double v1, v12, v16

    if-ltz v1, :cond_4

    const/16 v16, 0x1

    if-nez v2, :cond_2

    return v16

    :cond_2
    div-double/2addr v6, v3

    mul-double v3, v12, v6

    if-nez p5, :cond_3

    .line 14
    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v17

    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    mul-double v18, v1, v3

    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    mul-double v20, v1, v3

    iget-object v1, v0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    mul-double v22, v1, v3

    invoke-virtual/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    goto :goto_2

    :cond_3
    mul-double v12, v14, v6

    mul-double v6, v6, v18

    move-object/from16 v1, p4

    move-wide v2, v3

    move-wide v4, v12

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :goto_2
    move/from16 v5, v16

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 16
    :goto_3
    invoke-static {v8}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 17
    invoke-static {v9}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 18
    invoke-static {v10}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    .line 19
    invoke-static {v11}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return v5

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Ray3;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Ray3;->RAY_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/ardor3d/math/Line3Base;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Ray3;->clone()Lcom/ardor3d/math/Ray3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ardor3d/math/Ray3;
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/ardor3d/math/Line3Base;->clone()Lcom/ardor3d/math/Line3Base;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Ray3;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Ray3;->clone()Lcom/ardor3d/math/Ray3;

    move-result-object v0

    return-object v0
.end method

.method public distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)D
    .locals 5

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_1
    invoke-interface {p1, v0, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->subtract(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->lengthSquared()D

    move-result-wide p1

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyRay3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyRay3;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDistanceToPrimitive([Lcom/ardor3d/math/Vector3;)D
    .locals 3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/math/Ray3;->intersects([Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-wide v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :goto_0
    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw p1
.end method

.method public intersects(Lcom/ardor3d/math/type/ReadOnlyPlane;Lcom/ardor3d/math/Vector3;)Z
    .locals 11

    .line 20
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    const-wide/high16 v3, -0x4350000000000000L    # -2.220446049250313E-16

    cmpl-double v3, v1, v3

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3cb0000000000000L    # 2.220446049250313E-16

    if-lez v3, :cond_0

    cmpg-double v3, v1, v5

    if-gez v3, :cond_0

    return v4

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v7

    neg-double v7, v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyPlane;->getConstant()D

    move-result-wide v9

    add-double/2addr v7, v9

    div-double/2addr v7, v1

    cmpg-double p1, v7, v5

    if-gez p1, :cond_1

    return v4

    :cond_1
    if-eqz p2, :cond_2

    .line 23
    iget-object p1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object p2, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;Z)Z
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Ray3;->intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;ZZ)Z

    move-result p1

    return p1
.end method

.method public intersects([Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z
    .locals 11

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2
    aget-object v5, p1, v2

    aget-object v6, p1, v1

    const/4 v0, 0x2

    aget-object v7, p1, v0

    const/4 v9, 0x1

    move-object v4, p0

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/ardor3d/math/Ray3;->intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 4
    aget-object v6, p1, v2

    aget-object v7, p1, v1

    aget-object v8, p1, v3

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/ardor3d/math/Ray3;->intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;Z)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method public intersectsPlanar(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;Z)Z
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/math/Ray3;->intersects(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;ZZ)Z

    move-result p1

    return p1
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/math/Ray3;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyLine3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Ray [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_origin:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Line3Base;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
