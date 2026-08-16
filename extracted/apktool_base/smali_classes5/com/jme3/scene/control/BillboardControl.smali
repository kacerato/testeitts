.class public Lcom/jme3/scene/control/BillboardControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/control/BillboardControl$Alignment;
    }
.end annotation


# instance fields
.field private alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

.field private left:Lcom/jme3/math/Vector3f;

.field private look:Lcom/jme3/math/Vector3f;

.field private orient:Lcom/jme3/math/Matrix3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/scene/control/BillboardControl$Alignment;->Screen:Lcom/jme3/scene/control/BillboardControl$Alignment;

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    return-void
.end method

.method private fixRefreshFlags()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    return-void
.end method

.method private rotateAxial(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    const/high16 p1, 0x34000000

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result p1

    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iput v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v5, v5, v0}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v5, v4, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, v5, v3, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v4, v5, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v4, v4, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v4, v3, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->x:F

    neg-float p2, p2

    invoke-virtual {p1, v3, v5, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v3, v4, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v3, v3, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    goto :goto_0

    :cond_1
    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iput v1, p2, Lcom/jme3/math/Vector3f;->z:F

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v5, v5, v0}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, v5, v4, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v5, v3, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->y:F

    neg-float p2, p2

    invoke-virtual {p1, v4, v5, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget p2, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, v4, v4, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v4, v3, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v3, v5, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v3, v4, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v3, v3, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    iget-object p2, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Matrix3f;)V

    invoke-direct {p0}, Lcom/jme3/scene/control/BillboardControl;->fixRefreshFlags()V

    return-void
.end method

.method private rotateBillboard(Lcom/jme3/renderer/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0}, Lcom/jme3/scene/control/BillboardControl;->rotateAxial(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0}, Lcom/jme3/scene/control/BillboardControl;->rotateAxial(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/jme3/scene/control/BillboardControl;->rotateCameraAligned(Lcom/jme3/renderer/Camera;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/jme3/scene/control/BillboardControl;->rotateScreenAligned(Lcom/jme3/renderer/Camera;)V

    :goto_0
    return-void
.end method

.method private rotateCameraAligned(Lcom/jme3/renderer/Camera;)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v5, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    neg-float v5, v5

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v3}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v0

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v6, v3}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v5, v4, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v1, v5, v5, v0}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v5, v6, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    invoke-virtual {v1, v6, v4, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v3, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    neg-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v6, v5, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, v0

    invoke-virtual {v1, v6, v6, p1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Matrix3f;)V

    invoke-direct {p0}, Lcom/jme3/scene/control/BillboardControl;->fixRefreshFlags()V

    return-void
.end method

.method private rotateScreenAligned(Lcom/jme3/renderer/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLeft()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getUp()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, p1, v2}, Lcom/jme3/math/Matrix3f;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-direct {p0}, Lcom/jme3/scene/control/BillboardControl;->fixRefreshFlags()V

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/BillboardControl;->rotateBillboard(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public controlUpdate(F)V
    .locals 0

    return-void
.end method

.method public getAlignment()Lcom/jme3/scene/control/BillboardControl$Alignment;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "orient"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    const-string v0, "look"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    const-string v0, "left"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    const-class v0, Lcom/jme3/scene/control/BillboardControl$Alignment;

    sget-object v1, Lcom/jme3/scene/control/BillboardControl$Alignment;->Screen:Lcom/jme3/scene/control/BillboardControl$Alignment;

    const-string v2, "alignment"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/control/BillboardControl$Alignment;

    iput-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    return-void
.end method

.method public setAlignment(Lcom/jme3/scene/control/BillboardControl$Alignment;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->orient:Lcom/jme3/math/Matrix3f;

    const-string v1, "orient"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->look:Lcom/jme3/math/Vector3f;

    const-string v1, "look"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->left:Lcom/jme3/math/Vector3f;

    const-string v1, "left"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/control/BillboardControl;->alignment:Lcom/jme3/scene/control/BillboardControl$Alignment;

    const-string v1, "alignment"

    sget-object v2, Lcom/jme3/scene/control/BillboardControl$Alignment;->Screen:Lcom/jme3/scene/control/BillboardControl$Alignment;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
