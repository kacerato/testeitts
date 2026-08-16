.class public Lcom/jme3/bullet/control/RigidBodyControl;
.super Lcom/jme3/bullet/objects/PhysicsRigidBody;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/control/PhysicsControl;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger3:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final scaleIdentity:Lcom/jme3/math/Vector3f;

.field private static final tagApplyLocalPhysics:Ljava/lang/String; = "applyLocalPhysics"

.field private static final tagApplyScale:Ljava/lang/String; = "applyScale"

.field private static final tagEnabled:Ljava/lang/String; = "enabled"

.field private static final tagKinematicSpatial:Ljava/lang/String; = "kinematicSpatial"

.field private static final tagSpatial:Ljava/lang/String; = "spatial"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private added:Z

.field private applyScale:Z

.field private enabled:Z

.field private kinematicSpatial:Z

.field private space:Lcom/jme3/bullet/PhysicsSpace;

.field private spatial:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->logger3:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->scaleIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    .line 9
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    .line 11
    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    .line 13
    iput p1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    .line 16
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    .line 18
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    .line 22
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    .line 24
    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method private applySpatialScale()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isApplyPhysicsLocal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zero in parent scale."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private copySpatialScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->scaleIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p1
.end method

.method private getSpatialRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSpatialTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/RigidBodyControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/control/RigidBodyControl;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cloneForSpatial() isn\'t implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCollisionShape()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/scene/shape/Sphere;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jme3/scene/shape/Sphere;

    invoke-virtual {v0}, Lcom/jme3/scene/shape/Sphere;->getRadius()F

    move-result v0

    new-instance v1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/jme3/scene/shape/Box;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/jme3/scene/shape/Box;

    new-instance v1, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-virtual {v0}, Lcom/jme3/scene/shape/AbstractBox;->getXExtent()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/scene/shape/AbstractBox;->getYExtent()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/scene/shape/AbstractBox;->getZExtent()F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(FFF)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    iget v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createDynamicMeshShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createMeshShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isApplyPhysicsLocal()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    return v0
.end method

.method public isApplyScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    return v0
.end method

.method public final isKinematicSpatial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    const-string v0, "kinematicSpatial"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const-string v0, "spatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    const-string v1, "applyLocalPhysics"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setApplyPhysicsLocal(Z)V

    const-string v0, "applyScale"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    iget-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setApplyPhysicsLocal(Z)V

    return-void
.end method

.method public setApplyScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setKinematicSpatial(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->added:Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add an incomplete RigidBodyControl to a PhysicsSpace."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->createCollisionShape()V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_2
    return-void
.end method

.method public update(F)V
    .locals 3

    iget-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isKinematic()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/bullet/control/RigidBodyControl;->copySpatialScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljf/f;->k(F)F

    move-result v1

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :cond_1
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsScale(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {p1}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyTransform(Lcom/jme3/scene/Spatial;)Z

    iget-boolean p1, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/jme3/bullet/control/RigidBodyControl;->applySpatialScale()V

    :cond_3
    :goto_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    const-string v1, "applyLocalPhysics"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->kinematicSpatial:Z

    const-string v1, "kinematicSpatial"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->applyScale:Z

    const-string v1, "applyScale"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/control/RigidBodyControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
