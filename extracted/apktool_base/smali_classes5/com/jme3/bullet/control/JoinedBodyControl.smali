.class public Lcom/jme3/bullet/control/JoinedBodyControl;
.super Lcom/jme3/bullet/control/AbstractPhysicsControl;
.source "SourceFile"


# static fields
.field public static final logger3:Ljava/util/logging/Logger;

.field private static final tagRigidBody:Ljava/lang/String; = "rigidBody"

.field private static final tmpUpdateLocation:Lcom/jme3/math/Vector3f;

.field private static final tmpUpdateOrientation:Lcom/jme3/math/Quaternion;


# instance fields
.field private rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/control/JoinedBodyControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/JoinedBodyControl;->logger3:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateOrientation:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateLocation:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    .line 3
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 5
    new-instance v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {v0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    .line 6
    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addPhysics()V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    iget-object v1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsBody;->listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object p1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-void
.end method

.method public createSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 0

    return-void
.end method

.method public getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public isKinematic()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "rigidBody"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object p1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public removePhysics()V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsBody;->listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/jme3/bullet/joints/PhysicsJoint;->destroy()V

    invoke-virtual {v0, v4}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public removeSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 0

    return-void
.end method

.method public setKinematic(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "new location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    const-string v0, "new orientation"

    invoke-static {p1, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public update(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p1

    sget-object v0, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateOrientation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getOrientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/JoinedBodyControl;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    sget-object p1, Lcom/jme3/bullet/control/JoinedBodyControl;->tmpUpdateOrientation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/JoinedBodyControl;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :goto_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/JoinedBodyControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const-string v1, "rigidBody"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
