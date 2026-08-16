.class public Lcom/ardor3d/math/Triangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyTriangle;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field private static final TRI_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Triangle;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _center:Lcom/ardor3d/math/Vector3;

.field private _dirtyCenter:Z

.field private _dirtyNormal:Z

.field protected _index:I

.field protected transient _normal:Lcom/ardor3d/math/Vector3;

.field protected final _pointA:Lcom/ardor3d/math/Vector3;

.field protected final _pointB:Lcom/ardor3d/math/Vector3;

.field protected final _pointC:Lcom/ardor3d/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ardor3d/math/Triangle;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Triangle;->TRI_POOL:Lcom/ardor3d/math/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ardor3d/math/Triangle;->_index:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    .line 7
    iput-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ardor3d/math/Triangle;-><init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;I)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    .line 11
    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    .line 12
    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    const/4 v3, 0x0

    .line 13
    iput v3, p0, Lcom/ardor3d/math/Triangle;->_index:I

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    .line 15
    iput-boolean v3, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    .line 16
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 17
    invoke-virtual {v1, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 18
    invoke-virtual {v2, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 19
    iput p4, p0, Lcom/ardor3d/math/Triangle;->_index:I

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Triangle;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Triangle;->TRI_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Triangle;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Triangle;

    invoke-direct {v0}, Lcom/ardor3d/math/Triangle;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/Triangle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-static {p0}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final releaseTempInstance(Lcom/ardor3d/math/Triangle;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Triangle;->TRI_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateCenter()V
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    const-wide v1, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    return-void
.end method

.method public calculateNormal()V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v2

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v3, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    sub-double v3, v0, v3

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v5, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    sub-double v5, v0, v5

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    iget-object v7, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    sub-double v7, v0, v7

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->crossLocal(DDD)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    return-void
.end method

.method public clone()Lcom/ardor3d/math/Triangle;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Triangle;

    .line 3
    iget-object v1, v0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-object v1, v0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object v1, v0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 6
    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    .line 7
    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->clone()Lcom/ardor3d/math/Vector3;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->clone()Lcom/ardor3d/math/Triangle;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyTriangle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyTriangle;

    iget v1, p0, Lcom/ardor3d/math/Triangle;->_index:I

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTriangle;->getIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTriangle;->getA()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTriangle;->getB()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTriangle;->getC()Lcom/ardor3d/math/type/ReadOnlyVector3;

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

.method public get(I)Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->getC()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->getB()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->getA()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    return-object p1
.end method

.method public getA()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getB()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getC()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->calculateCenter()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_center:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Triangle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/Triangle;->_index:I

    return v0
.end method

.method public getNormal()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->calculateNormal()V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_normal:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/ardor3d/math/Triangle;->_index:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "a"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "b"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "c"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "index"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ardor3d/math/Triangle;->_index:I

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Triangle;->setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Triangle;->setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/Triangle;->setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Triangle;->setIndex(I)V

    return-void
.end method

.method public set(ILcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Triangle;->setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index must be 0, 1 or 2 (corresponding to A, B or C.)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Triangle;->setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Triangle;->setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public setA(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    return-void
.end method

.method public setB(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    return-void
.end method

.method public setC(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyNormal:Z

    iput-boolean p1, p0, Lcom/ardor3d/math/Triangle;->_dirtyCenter:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/Triangle;->_index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Triangle [A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ardor3d/math/Triangle;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "a"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "b"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "c"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget v0, p0, Lcom/ardor3d/math/Triangle;->_index:I

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointA:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointB:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Triangle;->_pointC:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Triangle;->getIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
