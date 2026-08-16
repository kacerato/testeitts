.class public Lcom/ardor3d/math/Transform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ardor3d/util/export/Savable;
.implements Ljava/io/Externalizable;
.implements Lcom/ardor3d/math/type/ReadOnlyTransform;
.implements Lcom/ardor3d/math/Poolable;


# static fields
.field public static final IDENTITY:Lcom/ardor3d/math/type/ReadOnlyTransform;

.field private static final TRANS_POOL:Lcom/ardor3d/math/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ardor3d/math/ObjectPool<",
            "Lcom/ardor3d/math/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _identity:Z

.field protected final _matrix:Lcom/ardor3d/math/Matrix3;

.field protected _rotationMatrix:Z

.field protected final _scale:Lcom/ardor3d/math/Vector3;

.field protected final _translation:Lcom/ardor3d/math/Vector3;

.field protected _uniformScale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/ardor3d/math/Transform;

    sget v1, Lcom/ardor3d/util/Constants;->maxPoolSize:I

    invoke-static {v0, v1}, Lcom/ardor3d/math/ObjectPool;->create(Ljava/lang/Class;I)Lcom/ardor3d/math/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/Transform;->TRANS_POOL:Lcom/ardor3d/math/ObjectPool;

    new-instance v0, Lcom/ardor3d/math/Transform;

    sget-object v2, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    sget-object v4, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ardor3d/math/Transform;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;ZZZ)V

    sput-object v0, Lcom/ardor3d/math/Transform;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyTransform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    sget-object v1, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    .line 6
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    .line 7
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;ZZZ)V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    sget-object v1, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    .line 20
    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    .line 21
    new-instance v2, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    .line 22
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    .line 23
    invoke-virtual {v2, p2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 24
    invoke-virtual {v1, p3}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 25
    iput-boolean p4, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    .line 26
    iput-boolean p5, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    .line 27
    iput-boolean p6, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/math/type/ReadOnlyTransform;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    sget-object v1, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iput-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    .line 10
    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    .line 11
    new-instance v2, Lcom/ardor3d/math/Vector3;

    sget-object v3, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    .line 12
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    .line 13
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 14
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 15
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isIdentity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    .line 16
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    .line 17
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isUniformScale()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void
.end method

.method public static final fetchTempInstance()Lcom/ardor3d/math/Transform;
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Transform;->TRANS_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0}, Lcom/ardor3d/math/ObjectPool;->fetch()Lcom/ardor3d/math/Poolable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Transform;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ardor3d/math/Transform;

    invoke-direct {v0}, Lcom/ardor3d/math/Transform;-><init>()V

    return-object v0
.end method

.method public static isValid(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/math/Matrix3;->isValid(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Z

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

.method public static final releaseTempInstance(Lcom/ardor3d/math/Transform;)V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->useMathPools:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ardor3d/math/Transform;->TRANS_POOL:Lcom/ardor3d/math/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/ardor3d/math/ObjectPool;->release(Lcom/ardor3d/math/Poolable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    mul-double v5, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    mul-double v7, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    mul-double v9, v0, v2

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 6
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 8
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-object p1
.end method

.method public applyForward(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 0

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 10
    :cond_0
    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 11
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Transform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    mul-double v5, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    mul-double v7, v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    mul-double v9, v0, v2

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    return-object p1
.end method

.method public applyForwardVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 0

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 8
    :cond_0
    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 9
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Transform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public applyInverse(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 6
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 9
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 10
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 13
    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    :goto_0
    return-object p1
.end method

.method public applyInverse(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 0

    if-nez p2, :cond_0

    .line 14
    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 15
    :cond_0
    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 16
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Transform;->applyInverse(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public applyInverseVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPre(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setX(D)V

    .line 8
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setY(D)V

    .line 9
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->invert(Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    .line 12
    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    :goto_0
    return-object p1
.end method

.method public applyInverseVector(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 0

    if-nez p2, :cond_0

    .line 13
    new-instance p2, Lcom/ardor3d/math/Vector3;

    invoke-direct {p2}, Lcom/ardor3d/math/Vector3;-><init>()V

    .line 14
    :cond_0
    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 15
    invoke-virtual {p0, p2}, Lcom/ardor3d/math/Transform;->applyInverseVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/ardor3d/math/Transform;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Transform;

    .line 3
    iget-object v1, v0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    .line 4
    iget-object v1, v0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-object v1, v0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
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
    invoke-virtual {p0}, Lcom/ardor3d/math/Transform;->clone()Lcom/ardor3d/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/math/type/ReadOnlyTransform;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyTransform;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Matrix3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

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

.method public fromHomogeneousMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Transform;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    const/4 v15, 0x0

    invoke-interface {v1, v15, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v3

    const/4 v13, 0x1

    invoke-interface {v1, v15, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v5

    const/4 v14, 0x2

    invoke-interface {v1, v15, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v7

    invoke-interface {v1, v13, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v9

    invoke-interface {v1, v13, v13}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v11

    invoke-interface {v1, v13, v14}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    move v0, v14

    move-wide/from16 v13, v16

    invoke-interface {v1, v0, v15}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v16

    move-wide/from16 v15, v16

    move-object/from16 v22, v2

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v17

    invoke-interface {v1, v0, v0}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v19

    move/from16 v21, v2

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v20}, Lcom/ardor3d/math/Matrix3;->set(DDDDDDDDD)Lcom/ardor3d/math/Matrix3;

    move-object/from16 v2, p0

    move/from16 v3, v21

    iget-object v4, v2, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x3

    const/4 v11, 0x0

    invoke-interface {v1, v11, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v6

    invoke-interface {v1, v3, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v8

    invoke-interface {v1, v0, v5}, Lcom/ardor3d/math/type/ReadOnlyMatrix4;->getValue(II)D

    move-result-wide v0

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    iput-boolean v11, v2, Lcom/ardor3d/math/Transform;->_identity:Z

    iget-object v0, v2, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix3;->isOrthonormal()Z

    move-result v0

    iput-boolean v0, v2, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    iput-boolean v11, v2, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-object v2
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/math/Transform;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGLApplyMatrix(Ljava/nio/DoubleBuffer;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    invoke-virtual {p1, v9, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 3
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    invoke-virtual {p1, v8, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 4
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    invoke-virtual {p1, v7, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 5
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v12, v0, v8

    mul-double/2addr v10, v12

    invoke-virtual {p1, v6, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 6
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v12, v0, v8

    mul-double/2addr v10, v12

    invoke-virtual {p1, v5, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 7
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v10, v0, v8

    mul-double/2addr v5, v10

    invoke-virtual {p1, v4, v5, v6}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 8
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v9, v0, v7

    mul-double/2addr v4, v9

    invoke-virtual {p1, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 9
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v5, v0, v7

    mul-double/2addr v3, v5

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 10
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v4, v0, v7

    mul-double/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v10, v0, v9

    invoke-virtual {p1, v9, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 12
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v10, v0, v9

    invoke-virtual {p1, v8, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 13
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v10, v0, v9

    invoke-virtual {p1, v7, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 14
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v10, v0, v8

    invoke-virtual {p1, v6, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 15
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v10, v0, v8

    invoke-virtual {p1, v5, v10, v11}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 16
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v5, v0, v8

    invoke-virtual {p1, v4, v5, v6}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 17
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v4, v0, v7

    invoke-virtual {p1, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 18
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v3, v0, v7

    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 19
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v2, v0, v7

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 21
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 22
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    const/16 v0, 0xf

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    return-void
.end method

.method public getGLApplyMatrix(Ljava/nio/FloatBuffer;)V
    .locals 14

    .line 24
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    double-to-float v0, v10

    invoke-virtual {p1, v9, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 26
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    double-to-float v0, v10

    invoke-virtual {p1, v8, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 27
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v12, v0, v9

    mul-double/2addr v10, v12

    double-to-float v0, v10

    invoke-virtual {p1, v7, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 28
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v12, v0, v8

    mul-double/2addr v10, v12

    double-to-float v0, v10

    invoke-virtual {p1, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 29
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v10

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v12, v0, v8

    mul-double/2addr v10, v12

    double-to-float v0, v10

    invoke-virtual {p1, v5, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 30
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v10, v0, v8

    mul-double/2addr v5, v10

    double-to-float v0, v5

    invoke-virtual {p1, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 31
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v9, v0, v7

    mul-double/2addr v4, v9

    double-to-float v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 32
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v5, v0, v7

    mul-double/2addr v3, v5

    double-to-float v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 33
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v4, v0, v7

    mul-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v10, v0, v9

    double-to-float v0, v10

    invoke-virtual {p1, v9, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 35
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v10, v0, v9

    double-to-float v0, v10

    invoke-virtual {p1, v8, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 36
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v10, v0, v9

    double-to-float v0, v10

    invoke-virtual {p1, v7, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 37
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v10, v0, v8

    double-to-float v0, v10

    invoke-virtual {p1, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 38
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v10, v0, v8

    double-to-float v0, v10

    invoke-virtual {p1, v5, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 39
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v5, v0, v8

    double-to-float v0, v5

    invoke-virtual {p1, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 40
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v9

    aget-wide v4, v0, v7

    double-to-float v0, v4

    invoke-virtual {p1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 41
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v8

    aget-wide v3, v0, v7

    double-to-float v0, v3

    invoke-virtual {p1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 42
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v0, v0, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v0, v0, v7

    aget-wide v2, v0, v7

    double-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 44
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 45
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v0

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public getHomogeneousMatrix(Lcom/ardor3d/math/Matrix4;)Lcom/ardor3d/math/Matrix4;
    .locals 12

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {p1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v6

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v6

    mul-double/2addr v7, v10

    aput-wide v7, v0, v6

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v6

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v5

    mul-double/2addr v7, v10

    aput-wide v7, v0, v5

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v6

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v6

    aget-wide v10, v9, v4

    mul-double/2addr v7, v10

    aput-wide v7, v0, v4

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v7, v0, v6

    aput-wide v1, v7, v3

    aget-object v0, v0, v5

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v5

    aget-wide v10, v9, v6

    mul-double/2addr v7, v10

    aput-wide v7, v0, v6

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v5

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v5

    aget-wide v10, v9, v5

    mul-double/2addr v7, v10

    aput-wide v7, v0, v5

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v5

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v5

    aget-wide v10, v9, v4

    mul-double/2addr v7, v10

    aput-wide v7, v0, v4

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v7, v0, v5

    aput-wide v1, v7, v3

    aget-object v0, v0, v4

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v6

    mul-double/2addr v7, v10

    aput-wide v7, v0, v6

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v5

    mul-double/2addr v7, v10

    aput-wide v7, v0, v5

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    iget-object v7, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    iget-object v9, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v9, v9, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v9, v4

    aget-wide v10, v9, v4

    mul-double/2addr v7, v10

    aput-wide v7, v0, v4

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    aput-wide v1, v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v7, v0, v6

    iget-object v8, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v8, v8, Lcom/ardor3d/math/Matrix3;->_data:[[D

    aget-object v9, v8, v6

    aget-wide v10, v9, v6

    aput-wide v10, v7, v6

    aget-wide v10, v9, v5

    aput-wide v10, v7, v5

    aget-wide v10, v9, v4

    aput-wide v10, v7, v4

    aput-wide v1, v7, v3

    aget-object v7, v0, v5

    aget-object v9, v8, v5

    aget-wide v10, v9, v6

    aput-wide v10, v7, v6

    aget-wide v10, v9, v5

    aput-wide v10, v7, v5

    aget-wide v10, v9, v4

    aput-wide v10, v7, v4

    aput-wide v1, v7, v3

    aget-object v0, v0, v4

    aget-object v7, v8, v4

    aget-wide v8, v7, v6

    aput-wide v8, v0, v6

    aget-wide v8, v7, v5

    aput-wide v8, v0, v5

    aget-wide v8, v7, v4

    aput-wide v8, v0, v4

    aput-wide v1, v0, v3

    :goto_0
    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    aput-wide v1, v0, v3

    iget-object v0, p1, Lcom/ardor3d/math/Matrix4;->_data:[[D

    aget-object v0, v0, v3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, v3

    return-object p1
.end method

.method public getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    return-object v0
.end method

.method public getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix3;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x220

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public invert(Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Lcom/ardor3d/math/Transform;

    invoke-direct {p1}, Lcom/ardor3d/math/Transform;-><init>()V

    :cond_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/math/Transform;->setIdentity()Lcom/ardor3d/math/Transform;

    return-object p1

    :cond_1
    iget-object v0, p1, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix3;->transposeLocal()Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    div-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(D)Lcom/ardor3d/math/Matrix3;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1, v0}, Lcom/ardor3d/math/Matrix3;->multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix3;->invertLocal()Lcom/ardor3d/math/Matrix3;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix3;->invertLocal()Lcom/ardor3d/math/Matrix3;

    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    iget-object v2, p1, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/ardor3d/math/Transform;->_identity:Z

    iput-boolean v0, p1, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    iput-boolean v0, p1, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-object p1
.end method

.method public isIdentity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    return v0
.end method

.method public isRotationMatrix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    return v0
.end method

.method public isUniformScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return v0
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
    .locals 5

    if-nez p2, :cond_0

    new-instance p2, Lcom/ardor3d/math/Transform;

    invoke-direct {p2}, Lcom/ardor3d/math/Transform;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ardor3d/math/Transform;->setIdentity()Lcom/ardor3d/math/Transform;

    :goto_0
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    move-result-object p1

    return-object p1

    :cond_2
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p2, v0}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v0, p2, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v1, v0, v0}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/ardor3d/math/Transform;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isUniformScale()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/ardor3d/math/Transform;->setScale(D)V

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/math/Vector3;->multiplyLocal(D)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/Transform;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    :goto_1
    return-object p2

    :cond_4
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    :goto_2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->multiplyDiagonalPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    :goto_3
    iget-object v2, p2, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p2, v2}, Lcom/ardor3d/math/Transform;->setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, p2, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lcom/ardor3d/math/type/ReadOnlyMatrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/ardor3d/math/Transform;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-virtual {p0}, Lcom/ardor3d/math/Transform;->isRotationMatrix()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    :cond_7
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result p1

    if-eqz p1, :cond_8

    check-cast v1, Lcom/ardor3d/math/Matrix3;

    invoke-static {v1}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    :cond_8
    return-object p2
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    sget-object v2, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    const-string v2, "rotation"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "scale"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "translation"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "identity"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const-string v0, "rotationMatrix"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    const-string v0, "uniformScale"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

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

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;
    .locals 2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/math/Transform;->setIdentity()Lcom/ardor3d/math/Transform;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isRotationMatrix()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyTransform;->isUniformScale()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    :goto_0
    return-object p0
.end method

.method public setIdentity()Lcom/ardor3d/math/Transform;
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    sget-object v1, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-object p0
.end method

.method public setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    return-void
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)Lcom/ardor3d/math/Matrix3;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    return-void
.end method

.method public setScale(D)V
    .locals 8

    .line 14
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    move-wide v2, p1

    move-wide v4, p1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scale may not be ZERO."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Lcom/ardor3d/math/TransformException;

    const-string p2, "Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix."

    invoke-direct {p1, p2}, Lcom/ardor3d/math/TransformException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(DDD)V
    .locals 7

    .line 8
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v2, p3, v0

    if-nez v2, :cond_1

    cmpl-double v0, p5, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scale may not be ZERO."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    cmpl-double p1, p1, p3

    if-nez p1, :cond_2

    cmpl-double p1, p3, p5

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 12
    :cond_2
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void

    .line 13
    :cond_3
    new-instance p1, Lcom/ardor3d/math/TransformException;

    const-string p2, "Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix."

    invoke-direct {p1, p2}, Lcom/ardor3d/math/TransformException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scale may not be ZERO."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 5
    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    .line 6
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getX()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getY()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getZ()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    return-void

    .line 7
    :cond_4
    new-instance p1, Lcom/ardor3d/math/TransformException;

    const-string v0, "Scale is already provided by 3x3 matrix.  If this is a mistake, consider using setRotation instead of setMatrix."

    invoke-direct {p1, v0}, Lcom/ardor3d/math/TransformException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTranslation(DDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    return-void
.end method

.method public setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ardor3d.math.Transform [\n M: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n S: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DDD)Lcom/ardor3d/math/Transform;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/math/Vector3;->addLocal(DDD)Lcom/ardor3d/math/Vector3;

    .line 2
    iget-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    sget-object p2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    return-object p0
.end method

.method public translate(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Transform;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    .line 4
    iget-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    sget-object v0, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    return-object p0
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    sget-object v2, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    const-string v2, "rotation"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ONE:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "scale"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "translation"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    const-string v1, "identity"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    const-string v1, "rotationMatrix"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    const-string v1, "uniformScale"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_matrix:Lcom/ardor3d/math/Matrix3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_scale:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/math/Transform;->_translation:Lcom/ardor3d/math/Vector3;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_identity:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_rotationMatrix:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/ardor3d/math/Transform;->_uniformScale:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    return-void
.end method
