.class Lcom/jme3/bullet/debug/ConstraintDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tmpTransform:Lcom/jme3/math/Transform;

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private final constraint:Lcom/jme3/bullet/joints/Constraint;

.field private final geomA:Lcom/jme3/scene/Geometry;

.field private final geomB:Lcom/jme3/scene/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/debug/ConstraintDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->tmpTransform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/joints/Constraint;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    iput-object p2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    new-instance v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    new-instance v1, Lcom/jme3/scene/debug/Arrow;

    sget-object v2, Lcom/jme3/bullet/debug/ConstraintDebugControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    sget-object v1, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getJointMaterial(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    new-instance v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    new-instance p2, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {p2, v2}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    sget-object p2, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getJointMaterial(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 4

    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/jme3/bullet/debug/ConstraintDebugControl;->tmpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v2}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/debug/Arrow;

    iget-object v3, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/joints/Constraint;->getPivotA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    :goto_0
    iget-object v2, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v2}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/Arrow;

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->constraint:Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/joints/Constraint;->getPivotB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    :goto_1
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomA:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/bullet/debug/ConstraintDebugControl;->geomB:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
