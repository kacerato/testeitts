.class public Lcom/jme3/bullet/control/VehicleControl;
.super Lcom/jme3/bullet/objects/PhysicsVehicle;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/control/PhysicsControl;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger4:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagApplyLocalPhysics:Ljava/lang/String; = "applyLocalPhysics"

.field private static final tagEnabled:Ljava/lang/String; = "enabled"

.field private static final tagSpatial:Ljava/lang/String; = "spatial"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private added:Z

.field private enabled:Z

.field private space:Lcom/jme3/bullet/PhysicsSpace;

.field private spatial:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/control/VehicleControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/VehicleControl;->logger4:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/VehicleControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/VehicleControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsVehicle;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsVehicle;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method private getSpatialRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/VehicleControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method private getSpatialTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/VehicleControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/control/VehicleControl;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsVehicle;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cloneForSpatial() isn\'t implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

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

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    const-string v0, "spatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    const-string v1, "applyLocalPhysics"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setApplyPhysicsLocal(Z)V

    iget-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setApplyPhysicsLocal(Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getNumWheels()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getWheel(I)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setApplyLocal(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/control/VehicleControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/VehicleControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/VehicleControl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->added:Z

    :cond_2
    iput-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/control/VehicleControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/VehicleControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 1

    iget-boolean p1, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyTransform(Lcom/jme3/scene/Spatial;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->applyWheelTransforms()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->applyWheelTransforms()V

    :cond_2
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

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/VehicleControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->isApplyPhysicsLocal()Z

    move-result v0

    const-string v1, "applyLocalPhysics"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/control/VehicleControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
