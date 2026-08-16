.class public Lcom/ardor3d/scenegraph/extension/BillboardNode;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

.field private _lastTime:D

.field private final _left:Lcom/ardor3d/math/Vector3;

.field private final _look:Lcom/ardor3d/math/Vector3;

.field private final _orient:Lcom/ardor3d/math/Matrix3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/math/Matrix3;

    sget-object v1, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    .line 3
    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    .line 4
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ardor3d/math/Matrix3;

    sget-object v0, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {p1, v0}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    .line 7
    new-instance p1, Lcom/ardor3d/math/Vector3;

    sget-object v0, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {p1, v0}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    .line 8
    new-instance p1, Lcom/ardor3d/math/Vector3;

    invoke-direct {p1, v0}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    .line 9
    sget-object p1, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->ScreenAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-void
.end method

.method private rotateAxial(Lcom/ardor3d/math/Vector3;)V
    .locals 13

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->applyPost(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2, v1}, Lcom/ardor3d/math/Vector3;->divideLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v3

    iget-object v5, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v5}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3cb0000000000000L    # 2.220446049250313E-16

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v5

    cmpl-double v5, v5, v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_1

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v1

    invoke-virtual {p1, v11, v12}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v6, v7}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    mul-double/2addr v11, v1

    invoke-virtual {p1, v11, v12}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    invoke-virtual {p1, v10, v10, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v10, v9, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {p1, v10, v8, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v9, v10, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v9, v9, v3, v4}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v9, v8, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {p1, v8, v10, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v8, v9, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v1

    invoke-virtual {p1, v8, v8, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v11

    cmpl-double p1, v11, v3

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v11

    mul-double/2addr v11, v1

    invoke-virtual {p1, v11, v12}, Lcom/ardor3d/math/Vector3;->setX(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v11

    mul-double/2addr v11, v1

    invoke-virtual {p1, v11, v12}, Lcom/ardor3d/math/Vector3;->setY(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v6, v7}, Lcom/ardor3d/math/Vector3;->setZ(D)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    invoke-virtual {p1, v10, v10, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {p1, v10, v9, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v10, v8, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v1

    neg-double v1, v1

    invoke-virtual {p1, v9, v10, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v1

    invoke-virtual {p1, v9, v9, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v9, v8, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v8, v10, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v8, v9, v6, v7}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v8, v8, v3, v4}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    return-void
.end method

.method private rotateCameraAligned()V
    .locals 11

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->subtractLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v3

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;->set(DDD)Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Vector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    iget-object v7, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v7

    neg-double v7, v7

    mul-double/2addr v4, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    mul-double/2addr v4, v1

    const/4 v8, 0x2

    invoke-virtual {v3, v6, v8, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v7, v6, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v3, v7, v7, v1, v2}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v4, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v4}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v7, v8, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v3, v8, v6, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    iget-object v6, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    neg-double v9, v9

    mul-double/2addr v4, v9

    invoke-virtual {v3, v8, v7, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    mul-double/2addr v4, v1

    invoke-virtual {v3, v8, v8, v4, v5}, Lcom/ardor3d/math/Matrix3;->setValue(IID)Lcom/ardor3d/math/Matrix3;

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->multiplyLocal(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1, v0}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    invoke-static {v0}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    return-void
.end method

.method private rotateScreenAligned()V
    .locals 4

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ardor3d/math/Matrix3;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->rotateBillboard()V

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->draw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public getAlignment()Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    sget-object v2, Lcom/ardor3d/math/Matrix3;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Matrix3;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    const-string v2, "orient"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Matrix3;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)Lcom/ardor3d/math/Matrix3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "look"

    invoke-interface {p1, v3, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "left"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-class v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    sget-object v1, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->ScreenAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v2, "alignment"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-void
.end method

.method public rotateBillboard()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->updateWorldTransform(Z)V

    sget-object v1, Lcom/ardor3d/scenegraph/extension/BillboardNode$1;->$SwitchMap$com$ardor3d$scenegraph$extension$BillboardNode$BillboardAlignment:[I

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-direct {p0, v1}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->rotateAxial(Lcom/ardor3d/math/Vector3;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-direct {p0, v1}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->rotateAxial(Lcom/ardor3d/math/Vector3;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->rotateCameraAligned()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/extension/BillboardNode;->rotateScreenAligned()V

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/scenegraph/Node;->_children:Ljava/util/List;

    if-nez v1, :cond_4

    return-void

    :cond_4
    sget-object v1, Lcom/ardor3d/scenegraph/event/DirtyType;->Transform:Lcom/ardor3d/scenegraph/event/DirtyType;

    filled-new-array {v1}, [Lcom/ardor3d/scenegraph/event/DirtyType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Node;->propagateDirtyDown([Lcom/ardor3d/scenegraph/event/DirtyType;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-wide v4, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_lastTime:D

    invoke-virtual {v3, v4, v5, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateGeometricState(DZ)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public setAlignment(Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-void
.end method

.method public updateWorldTransform(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_lastTime:D

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->updateWorldTransform(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_orient:Lcom/ardor3d/math/Matrix3;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-string v2, "orient"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_look:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v3, "look"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_left:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "left"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/BillboardNode;->_alignment:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v1, "alignment"

    sget-object v2, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->ScreenAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
