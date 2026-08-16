.class public Lcom/ardor3d/math/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyQuaternion;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final IDENTITY:Lcom/ardor3d/math/type/ReadOnlyQuaternion;

.field private static final QUAT_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _w:D

.field protected _x:D

.field protected _y:D

.field protected _z:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Lcom/ardor3d/math/Quaternion;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Quaternion;->QUAT_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Quaternion;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/ardor3d/math/Quaternion;-><init>(DDDD)V

    sput-object v0, Lcom/ardor3d/math/Quaternion;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/math/Quaternion;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    invoke-direct {p0, v0}, Lcom/ardor3d/math/Quaternion;-><init>(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/ardor3d/math/Quaternion;->_x:D

    .line 5
    iput-wide p3, p0, Lcom/ardor3d/math/Quaternion;->_y:D

    .line 6
    iput-wide p5, p0, Lcom/ardor3d/math/Quaternion;->_z:D

    .line 7
    iput-wide p7, p0, Lcom/ardor3d/math/Quaternion;->_w:D

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;-><init>(DDDD)V

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Quaternion;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Quaternion;->QUAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Quaternion;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Quaternion;

    invoke-direct {v0}, Lcom/ardor3d/math/Quaternion;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Quaternion;->QUAT_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method

.method public static slerp(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 11

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p4}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p4

    const-wide/16 v1, 0x0

    cmpl-double p4, p2, v1

    if-nez p4, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p2, v3

    if-nez p4, :cond_2

    .line 4
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-static {}, Lcom/ardor3d/math/Quaternion;->fetchTempInstance()Lcom/ardor3d/math/Quaternion;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 7
    invoke-virtual {v0, p0}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-interface {p0, p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->dot(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)D

    move-result-wide v5

    cmpg-double p4, v5, v1

    if-gez p4, :cond_4

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(D)Lcom/ardor3d/math/Quaternion;

    neg-double v5, v5

    :cond_4
    sub-double v1, v3, p2

    sub-double v7, v3, v5

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpl-double p4, v7, v9

    if-lez p4, :cond_5

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    .line 11
    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    mul-double/2addr v1, v5

    .line 12
    invoke-static {v1, v2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    mul-double/2addr p2, v5

    .line 13
    invoke-static {p2, p3}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide p2

    mul-double/2addr p2, v3

    .line 14
    :cond_5
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    .line 15
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v7

    mul-double/2addr v7, p2

    add-double/2addr v5, v7

    .line 16
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    .line 17
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v1, v9

    invoke-virtual {p1}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr p2, v9

    add-double/2addr p2, v1

    .line 18
    invoke-static {p1}, Lcom/ardor3d/math/Quaternion;->releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, p2

    .line 19
    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 9

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p2}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide p1

    add-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public addLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-object p0
.end method

.method public apply(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 15

    if-nez p2, :cond_0

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v9

    mul-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v5, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v11

    mul-double/2addr v11, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v11

    mul-double/2addr v11, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v11

    mul-double/2addr v11, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v7

    mul-double/2addr v11, v7

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v7

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v11

    mul-double/2addr v7, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v11

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v11

    mul-double/2addr v7, v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v1

    mul-double/2addr v7, v1

    add-double/2addr v7, v9

    move-object v1, v0

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    :goto_1
    return-object v0
.end method

.method public clone()Lcom/ardor3d/math/Quaternion;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Quaternion;
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->clone()Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public conjugate(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p1}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    neg-double v1, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    neg-double v3, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    return-object p1
.end method

.method public conjugateLocal()Lcom/ardor3d/math/Quaternion;
    .locals 11

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    neg-double v3, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    neg-double v5, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    neg-double v7, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    return-object p0
.end method

.method public dot(DDDD)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide p1

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide p1

    mul-double/2addr p1, p5

    add-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide p1

    mul-double/2addr p1, p7

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public dot(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)D
    .locals 9

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->dot(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public fromAngleAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;
    .locals 1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/ardor3d/math/type/ReadOnlyVector3;->normalize(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ardor3d/math/Quaternion;->fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1
.end method

.method public fromAngleNormalAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;
    .locals 11

    sget-object v0, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->setIdentity()Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v9

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide p1

    mul-double v3, v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide p1

    mul-double v5, v0, p1

    invoke-interface {p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide p1

    mul-double v7, v0, p1

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;
    .locals 19

    move-object/from16 v0, p0

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v7

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v9

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v13

    invoke-interface/range {p2 .. p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v15

    invoke-interface/range {p3 .. p3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v17

    invoke-virtual/range {v0 .. v18}, Lcom/ardor3d/math/Quaternion;->fromRotationMatrix(DDDDDDDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromAxes([Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/ardor3d/math/Quaternion;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "axes array must have at least three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromEulerAngles(DDD)Lcom/ardor3d/math/Quaternion;
    .locals 25

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v2, p1, v0

    .line 4
    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v4

    .line 5
    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v2

    mul-double v6, p3, v0

    .line 6
    invoke-static {v6, v7}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v8

    .line 7
    invoke-static {v6, v7}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, p5

    .line 8
    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v10

    .line 9
    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v0

    mul-double v12, v2, v6

    mul-double v14, v4, v8

    mul-double/2addr v2, v8

    mul-double/2addr v4, v6

    mul-double v6, v12, v0

    mul-double v8, v14, v10

    sub-double v23, v6, v8

    mul-double/2addr v12, v10

    mul-double/2addr v14, v0

    add-double v17, v12, v14

    mul-double v6, v4, v0

    mul-double v8, v2, v10

    add-double v19, v6, v8

    mul-double/2addr v2, v0

    mul-double/2addr v4, v10

    sub-double v21, v2, v4

    move-object/from16 v16, p0

    .line 10
    invoke-virtual/range {v16 .. v24}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->normalizeLocal()Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromEulerAngles([D)Lcom/ardor3d/math/Quaternion;
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Quaternion;->fromEulerAngles(DDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Angles array must have three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromRotationMatrix(DDDDDDDDD)Lcom/ardor3d/math/Quaternion;
    .locals 13

    add-double v0, p1, p9

    add-double v0, v0, p17

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-ltz v2, :cond_0

    add-double/2addr v0, v3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v2, v0, v5

    div-double/2addr v5, v0

    sub-double v0, p15, p11

    mul-double/2addr v0, v5

    sub-double v7, p5, p13

    mul-double/2addr v7, v5

    sub-double v9, p7, p3

    mul-double/2addr v9, v5

    goto :goto_1

    :cond_0
    cmpl-double v0, p1, p9

    if-lez v0, :cond_1

    cmpl-double v0, p1, p17

    if-lez v0, :cond_1

    add-double v0, p1, v3

    sub-double v0, v0, p9

    sub-double v0, v0, p17

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v2, v0, v5

    div-double/2addr v5, v0

    add-double v0, p7, p3

    mul-double v7, v0, v5

    add-double v0, p5, p13

    mul-double v9, v0, v5

    sub-double v0, p15, p11

    mul-double/2addr v0, v5

    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    goto :goto_1

    :cond_1
    cmpl-double v0, p9, p17

    if-lez v0, :cond_2

    add-double v0, p9, v3

    sub-double/2addr v0, p1

    sub-double v0, v0, p17

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v7, v0, v5

    div-double/2addr v5, v0

    add-double v0, p7, p3

    mul-double/2addr v0, v5

    add-double v2, p15, p11

    mul-double v9, v2, v5

    sub-double v2, p5, p13

    :goto_0
    mul-double/2addr v2, v5

    goto :goto_1

    :cond_2
    add-double v0, p17, v3

    sub-double/2addr v0, p1

    sub-double v0, v0, p9

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v9, v0, v5

    div-double/2addr v5, v0

    add-double v0, p5, p13

    mul-double/2addr v0, v5

    add-double v2, p15, p11

    mul-double v7, v2, v5

    sub-double v2, p7, p3

    goto :goto_0

    :goto_1
    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v7

    move-wide/from16 p6, v9

    move-wide/from16 p8, v2

    .line 6
    invoke-virtual/range {p1 .. p9}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromRotationMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Quaternion;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    const/4 v14, 0x0

    .line 1
    invoke-interface {v0, v14, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v2

    const/4 v15, 0x1

    invoke-interface {v0, v14, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v4

    const/4 v12, 0x2

    invoke-interface {v0, v14, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v6

    invoke-interface {v0, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v8

    invoke-interface {v0, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v10

    invoke-interface {v0, v15, v12}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    move-object/from16 v20, v1

    move v1, v12

    move-wide/from16 v12, v16

    invoke-interface {v0, v1, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    move-wide/from16 v21, v2

    move v2, v15

    move-wide/from16 v14, v16

    invoke-interface {v0, v1, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v16

    invoke-interface {v0, v1, v1}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->getValue(II)D

    move-result-wide v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual/range {v1 .. v19}, Lcom/ardor3d/math/Quaternion;->fromRotationMatrix(DDDDDDDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromVectorToVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;
    .locals 10

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->length()D

    move-result-wide v0

    invoke-interface {p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->length()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    :try_start_0
    invoke-interface {p1, p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v6

    div-double/2addr v6, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-interface {p1, p2, v2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->cross(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    const-wide/16 v8, 0x0

    cmpg-double p2, v6, v8

    if-gez p2, :cond_2

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v6

    cmpg-double p2, v6, v4

    if-gez p2, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double p2, v3, v5

    const/4 v3, 0x2

    if-lez p2, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p2, v4, v6

    if-lez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double p2, v4, v6

    if-lez p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    add-int/lit8 v4, p2, 0x1

    rem-int/lit8 v5, v4, 0x3

    invoke-interface {p1, v5}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getValue(I)D

    move-result-wide v5

    neg-double v5, v5

    invoke-virtual {v2, p2, v5, v6}, Lcom/ardor3d/math/Vector3;->setValue(ID)V

    rem-int/lit8 v4, v4, 0x3

    invoke-interface {p1, p2}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getValue(I)D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/ardor3d/math/Vector3;->setValue(ID)V

    add-int/2addr p2, v3

    rem-int/lit8 p2, p2, 0x3

    invoke-virtual {v2, p2, v8, v9}, Lcom/ardor3d/math/Vector3;->setValue(ID)V

    :cond_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/math/Quaternion;->fromAngleAxis(DLcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1

    :goto_1
    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->setIdentity()Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Quaternion;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRotationColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 25

    move/from16 v0, p1

    if-nez p2, :cond_0

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x0

    cmpl-double v1, v3, v9

    if-lez v1, :cond_2

    div-double/2addr v7, v3

    goto :goto_1

    :cond_2
    move-wide v7, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v11, v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v7

    mul-double/2addr v7, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v13

    mul-double/2addr v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v15

    mul-double/2addr v15, v11

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v17

    mul-double v17, v17, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    mul-double/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v19

    mul-double v19, v19, v11

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v21

    mul-double v21, v21, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v9, v11

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v23

    mul-double v23, v23, v11

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    add-double v15, v15, v21

    sub-double v19, v19, v17

    add-double/2addr v7, v3

    sub-double/2addr v5, v7

    move-wide v7, v5

    move-wide v3, v15

    move-wide/from16 v5, v19

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    sub-double v13, v13, v23

    add-double/2addr v7, v9

    sub-double/2addr v5, v7

    add-double v19, v19, v17

    move-wide v3, v13

    move-wide/from16 v7, v19

    goto :goto_2

    :cond_5
    add-double/2addr v3, v9

    sub-double/2addr v5, v3

    add-double v13, v13, v23

    sub-double v15, v15, v21

    move-wide v3, v5

    move-wide v5, v13

    move-wide v7, v15

    :goto_2
    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getW()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_w:D

    return-wide v0
.end method

.method public getWf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_w:D

    double-to-float v0, v0

    return v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_x:D

    return-wide v0
.end method

.method public getXf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_x:D

    double-to-float v0, v0

    return v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_y:D

    return-wide v0
.end method

.method public getYf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_y:D

    double-to-float v0, v0

    return v0
.end method

.method public getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_z:D

    return-wide v0
.end method

.method public getZf()F
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/Quaternion;->_z:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x220

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public invert(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p1}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Quaternion;->conjugate(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(D)Lcom/ardor3d/math/Quaternion;

    return-object p1
.end method

.method public invertLocal()Lcom/ardor3d/math/Quaternion;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->conjugateLocal()Lcom/ardor3d/math/Quaternion;

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(D)Lcom/ardor3d/math/Quaternion;

    return-object p0
.end method

.method public isIdentity()Z
    .locals 1

    sget-object v0, Lcom/ardor3d/math/Quaternion;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyQuaternion;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/math/Quaternion;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Quaternion;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->normalizeLocal()Lcom/ardor3d/math/Quaternion;

    invoke-static {v0}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    invoke-static {v2}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void
.end method

.method public magnitude()D
    .locals 5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public magnitudeSquared()D
    .locals 6

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public multiply(DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 9

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p3}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p3

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    mul-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    mul-double/2addr v3, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    mul-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 13

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p2}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p2

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 5
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    neg-double v3, v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 6
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 7
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v7

    neg-double v7, v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide p1

    mul-double/2addr v9, p1

    add-double/2addr v7, v9

    .line 8
    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public multiplyLocal(D)Lcom/ardor3d/math/Quaternion;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-object p0
.end method

.method public multiplyLocal(DDDD)Lcom/ardor3d/math/Quaternion;
    .locals 13

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    mul-double v0, v0, p7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    mul-double v2, v2, p5

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    mul-double v2, v2, p3

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double v5, v0, v2

    .line 11
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    neg-double v0, v0

    mul-double v0, v0, p5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    mul-double v2, v2, p7

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double v2, v2, p3

    add-double v7, v0, v2

    .line 12
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    mul-double v0, v0, p3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    mul-double v2, v2, p7

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double v2, v2, p5

    add-double v9, v0, v2

    .line 13
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    neg-double v0, v0

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    mul-double v2, v2, p3

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    mul-double v2, v2, p5

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double v2, v2, p7

    add-double v11, v0, v2

    move-object v4, p0

    .line 14
    invoke-virtual/range {v4 .. v12}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Quaternion;
    .locals 29

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v6

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/ardor3d/math/Quaternion;->fromRotationMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Quaternion;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v14

    mul-double v16, v0, v14

    mul-double v18, v2, v12

    add-double v16, v16, v18

    mul-double v18, v4, v10

    sub-double v16, v16, v18

    mul-double v18, v6, v8

    add-double v21, v16, v18

    move-wide/from16 v16, v6

    neg-double v6, v0

    mul-double v18, v6, v12

    mul-double v23, v2, v14

    add-double v18, v18, v23

    mul-double v23, v4, v8

    add-double v18, v18, v23

    mul-double v23, v16, v10

    add-double v23, v18, v23

    mul-double/2addr v0, v10

    mul-double v18, v2, v8

    sub-double v0, v0, v18

    mul-double v18, v4, v14

    add-double v0, v0, v18

    mul-double v18, v16, v12

    add-double v25, v0, v18

    mul-double/2addr v6, v8

    mul-double/2addr v2, v10

    sub-double/2addr v6, v2

    mul-double/2addr v4, v12

    sub-double/2addr v6, v4

    mul-double v0, v16, v14

    add-double v27, v6, v0

    move-object/from16 v20, p0

    .line 9
    invoke-virtual/range {v20 .. v28}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 9

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public normalize(Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 11

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p1}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->magnitude()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v9, v1

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public normalizeLocal()Lcom/ardor3d/math/Quaternion;
    .locals 13

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->magnitude()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v2

    mul-double v5, v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    mul-double v7, v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    mul-double v9, v2, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v2

    mul-double v11, v2, v0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "x"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    const-string v0, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    const-string v0, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    const-string v0, "w"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-void
.end method

.method public set(DDDD)Lcom/ardor3d/math/Quaternion;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    .line 3
    invoke-virtual {p0, p5, p6}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    .line 4
    invoke-virtual {p0, p7, p8}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-object p0
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    .line 7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    .line 8
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-object p0
.end method

.method public setIdentity()Lcom/ardor3d/math/Quaternion;
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setW(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Quaternion;->_w:D

    return-void
.end method

.method public setX(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Quaternion;->_x:D

    return-void
.end method

.method public setY(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Quaternion;->_y:D

    return-void
.end method

.method public setZ(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/Quaternion;->_z:D

    return-void
.end method

.method public slerp(Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ardor3d/math/Quaternion;->slerp(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;DLcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public slerpLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;D)Lcom/ardor3d/math/Quaternion;
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1, p2, p3}, Lcom/ardor3d/math/Quaternion;->slerpLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;D)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public slerpLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/type/ReadOnlyQuaternion;D)Lcom/ardor3d/math/Quaternion;
    .locals 15

    move-object v9, p0

    move-object/from16 v0, p2

    const-wide/16 v1, 0x0

    cmpl-double v3, p3, v1

    if-nez v3, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p3, v3

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    return-object v9

    .line 6
    :cond_2
    invoke-interface/range {p1 .. p2}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->dot(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)D

    move-result-wide v5

    .line 7
    invoke-static {}, Lcom/ardor3d/math/Quaternion;->fetchTempInstance()Lcom/ardor3d/math/Quaternion;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ardor3d/math/Quaternion;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;

    move-result-object v10

    cmpg-double v0, v5, v1

    if-gez v0, :cond_3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 8
    invoke-virtual {v10, v0, v1}, Lcom/ardor3d/math/Quaternion;->multiplyLocal(D)Lcom/ardor3d/math/Quaternion;

    neg-double v5, v5

    :cond_3
    sub-double v0, v3, p3

    sub-double v7, v3, v5

    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v7, v11

    if-lez v2, :cond_4

    .line 9
    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->acos(D)D

    move-result-wide v5

    .line 10
    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    mul-double/2addr v0, v5

    .line 11
    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    mul-double v5, v5, p3

    .line 12
    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v5

    mul-double v2, v5, v3

    goto :goto_0

    :cond_4
    move-wide/from16 v2, p3

    .line 13
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {v10}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-virtual {v10}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v11

    mul-double/2addr v11, v2

    add-double/2addr v6, v11

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v11, v0

    invoke-virtual {v10}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v13

    mul-double/2addr v13, v2

    add-double/2addr v11, v13

    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v13

    mul-double/2addr v0, v13

    invoke-virtual {v10}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v13

    mul-double/2addr v2, v13

    add-double v13, v0, v2

    move-object v0, p0

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v11

    move-wide v7, v13

    .line 17
    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    .line 18
    invoke-static {v10}, Lcom/ardor3d/math/Quaternion;->releaseTempInstance(Lcom/ardor3d/math/Quaternion;)V

    return-object v9
.end method

.method public subtract(Lcom/ardor3d/math/type/ReadOnlyQuaternion;Lcom/ardor3d/math/Quaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 9

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Quaternion;

    invoke-direct {p2}, Lcom/ardor3d/math/Quaternion;-><init>()V

    :cond_0
    move-object v0, p2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide p1

    sub-double/2addr v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ardor3d/math/Quaternion;->set(DDDD)Lcom/ardor3d/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public subtractLocal(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Quaternion;
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setX(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getY()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setY(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getZ()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setZ(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyQuaternion;->getW()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/math/Quaternion;->setW(D)V

    return-object p0
.end method

.method public toAngleAxis(Lcom/ardor3d/math/Vector3;)D
    .locals 9

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v2, v2, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3, v4}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    mul-double/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    :cond_1
    move-wide v0, v5

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public toArray([D)[D
    .locals 3

    const/4 v0, 0x4

    if-nez p1, :cond_0

    new-array p1, v0, [D

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-lt v1, v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v1

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v1

    aput-wide v1, p1, v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "store array must have at least three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toAxes([Lcom/ardor3d/math/Vector3;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Quaternion;->toRotationMatrix(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->getColumn(ILcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "axes array must have at least three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toEulerAngles([D)[D
    .locals 25

    move-object/from16 v0, p1

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-array v0, v1, [D

    goto :goto_0

    :cond_0
    array-length v2, v0

    if-lt v2, v1, :cond_3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v9, v3, v5

    add-double/2addr v9, v7

    add-double/2addr v9, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    const-wide v13, 0x3fdfef9db22d0e56L    # 0.499

    mul-double/2addr v13, v9

    cmpl-double v13, v11, v13

    const-wide/16 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    if-lez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    mul-double v1, v1, v19

    aput-wide v1, v0, v18

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    aput-wide v1, v0, v17

    aput-wide v14, v0, v16

    goto/16 :goto_1

    :cond_1
    const-wide v21, -0x402010624dd2f1aaL    # -0.499

    mul-double v21, v21, v9

    cmpg-double v13, v11, v21

    if-gez v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v1, v3

    aput-wide v1, v0, v18

    const-wide v1, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v1, v0, v17

    aput-wide v14, v0, v16

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v13

    mul-double v13, v13, v19

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v21

    mul-double v13, v13, v21

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v21

    mul-double v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v23

    mul-double v21, v21, v23

    sub-double v13, v13, v21

    sub-double v21, v3, v5

    sub-double v21, v21, v7

    move-wide/from16 v23, v7

    add-double v7, v21, v1

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    aput-wide v7, v0, v18

    mul-double v11, v11, v19

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    aput-wide v7, v0, v17

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v7

    mul-double v7, v7, v19

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v9

    mul-double/2addr v7, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v9

    mul-double v9, v9, v19

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    neg-double v3, v3

    add-double/2addr v3, v5

    sub-double v3, v3, v23

    add-double/2addr v3, v1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    aput-wide v1, v0, v16

    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "store array must have at least three elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toRotationMatrix(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;
    .locals 25

    if-nez p1, :cond_0

    .line 1
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix3;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v1

    .line 3
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    mul-double/2addr v1, v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v3

    mul-double/2addr v3, v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v9

    mul-double/2addr v9, v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v7

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v13

    mul-double/2addr v13, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v1

    mul-double/2addr v1, v5

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v15

    mul-double/2addr v15, v7

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v17

    mul-double v17, v17, v5

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v5

    mul-double/2addr v5, v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v19

    mul-double v19, v19, v7

    add-double v7, v1, v5

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v7, v21, v7

    move-wide/from16 v23, v1

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, v1, v7, v8}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    sub-double v7, v9, v19

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-double v7, v11, v17

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-double v9, v9, v19

    const/4 v7, 0x1

    .line 18
    invoke-virtual {v0, v7, v1, v9, v10}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-double/2addr v5, v3

    sub-double v5, v21, v5

    .line 19
    invoke-virtual {v0, v7, v7, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    sub-double v5, v15, v13

    .line 20
    invoke-virtual {v0, v7, v2, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    sub-double v11, v11, v17

    .line 21
    invoke-virtual {v0, v2, v1, v11, v12}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-double v5, v15, v13

    .line 22
    invoke-virtual {v0, v2, v7, v5, v6}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    add-double v3, v3, v23

    sub-double v3, v21, v3

    .line 23
    invoke-virtual {v0, v2, v2, v3, v4}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    return-object v0
.end method

.method public toRotationMatrix(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 24

    if-nez p1, :cond_0

    .line 24
    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->magnitudeSquared()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v5, v1, v8

    if-lez v5, :cond_2

    div-double/2addr v6, v1

    goto :goto_1

    :cond_2
    move-wide v6, v8

    .line 26
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    mul-double/2addr v1, v6

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v8

    mul-double/2addr v8, v6

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v10

    mul-double/2addr v10, v6

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v5

    mul-double/2addr v5, v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v12

    mul-double/2addr v12, v8

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v14

    mul-double/2addr v14, v10

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v16

    mul-double v16, v16, v1

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v1

    mul-double/2addr v1, v8

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v18

    mul-double v18, v18, v10

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v20

    mul-double v20, v20, v8

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v7

    mul-double/2addr v7, v10

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v22

    mul-double v22, v22, v10

    add-double v9, v1, v7

    sub-double v9, v3, v9

    const/4 v11, 0x0

    .line 38
    invoke-virtual {v0, v11, v11, v9, v10}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    sub-double v9, v12, v22

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v0, v11, v3, v9, v10}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    add-double v9, v14, v20

    const/4 v4, 0x2

    .line 40
    invoke-virtual {v0, v11, v4, v9, v10}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    add-double v12, v12, v22

    .line 41
    invoke-virtual {v0, v3, v11, v12, v13}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    add-double/2addr v7, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    .line 42
    invoke-virtual {v0, v3, v3, v7, v8}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    sub-double v7, v18, v16

    .line 43
    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    sub-double v14, v14, v20

    .line 44
    invoke-virtual {v0, v4, v11, v14, v15}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    add-double v7, v18, v16

    .line 45
    invoke-virtual {v0, v4, v3, v7, v8}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    add-double/2addr v5, v1

    sub-double v1, v9, v5

    .line 46
    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/ardor3d/math/Matrix4;->setValue(IID)Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Quaternion [X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", W="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v1

    const-string v3, "x"

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v7

    const-string v9, "y"

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v1

    const-string v3, "z"

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v7

    const-string v9, "w"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getX()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getY()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getZ()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Quaternion;->getW()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method
