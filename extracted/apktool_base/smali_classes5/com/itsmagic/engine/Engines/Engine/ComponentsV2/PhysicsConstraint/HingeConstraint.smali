.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final H1:Ljava/lang/String; = "HingeConstraint"

.field public static final L1:Ljava/lang/Class;


# instance fields
.field public F1:LJAVARuntime/Component;

.field public q1:F

.field public v1:LJAVARuntime/GizmoObject;

.field public y1:LJAVARuntime/GizmoObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->L1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "HingeConstraint"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;-><init>(Ljava/lang/String;)V

    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->q1:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->copyFrom(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createConstraint(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/joints/Constraint;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rbA",
            "rbB",
            "pivotInA",
            "pivotInB",
            "axisInA",
            "axisInB"
        }
    .end annotation

    new-instance v7, Lcom/jme3/bullet/joints/HingeJoint;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toVector3f()Lcom/jme3/math/Vector3f;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v7, p1, p2}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(FF)V

    return-object v7
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HINGE_CONSTRAINT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "HingeConstraint"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->HingeConstraint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getTargetConstraintPivotComp()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getTargetConstraintPivotComp()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getTargetConstraintPivotComp()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/ConstraintPivot;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    const/16 p2, 0xff

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    new-instance p1, LJAVARuntime/GizmoObject;

    invoke-static {v0}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v3

    invoke-direct {p1, v3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->q1:F

    mul-float v4, v3, v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v4, v5, v3}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    new-instance v3, LJAVARuntime/Color;

    const/16 v4, 0x67

    const/16 v5, 0x21

    invoke-direct {v3, p2, v4, v5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p1, v3}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v2}, LJAVARuntime/GizmoElement;->setLightIntensity(F)V

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, LJAVARuntime/GizmoTransform;->getRotation()LJAVARuntime/Quaternion;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getGlobalPivotADirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    invoke-virtual {v5, p1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getGlobalPivotAPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {p1, v5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->v1:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    if-nez p1, :cond_2

    new-instance p1, LJAVARuntime/GizmoObject;

    invoke-static {v0}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v0

    invoke-direct {p1, v0}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->q1:F

    const v5, 0x3e99999a    # 0.3f

    mul-float v6, v0, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v0

    mul-float/2addr v0, v5

    invoke-virtual {p1, v6, v7, v0}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    new-instance v0, LJAVARuntime/Color;

    const/16 v5, 0x61

    const/16 v6, 0x6e

    invoke-direct {v0, v5, v6, p2}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p1, v0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoObject;->setScaleBasedCamera(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, v2}, LJAVARuntime/GizmoElement;->setLightIntensity(F)V

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, LJAVARuntime/GizmoTransform;->getRotation()LJAVARuntime/Quaternion;

    move-result-object p1

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getGlobalPivotADirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/BaseConstraint;->getGlobalPivotAPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->y1:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_3
    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->F1:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->F1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/HingeConstraint;

    invoke-direct {v0, p0}, LJAVARuntime/HingeConstraint;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PhysicsConstraint/HingeConstraint;->F1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
