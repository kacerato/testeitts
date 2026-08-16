.class public Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagApplyPhysicsLocal:Ljava/lang/String; = "applyPhysicsLocal"

.field private static final tagVehicle:Ljava/lang/String; = "vehicle"


# instance fields
.field private applyPhysicsLocal:Z

.field private tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

.field private vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-static {}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->createMotionState()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static native applyTransform(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)Z
.end method

.method private static native createMotionState()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->finalizeNative(J)V

    return-void
.end method

.method private static native getWorldLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getWorldLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getWorldRotation(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native getWorldRotationDp(JLcom/simsilica/mathd/Matrix3d;)V
.end method

.method private static native getWorldRotationQuat(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native getWorldRotationQuatDp(JLcom/simsilica/mathd/Quatd;)V
.end method


# virtual methods
.method public applyTransform(Lcom/jme3/scene/Spatial;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyTransform(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 8
    iget-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    .line 9
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 11
    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 13
    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-static {v0, v2, v2}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 14
    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v3, v3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 15
    invoke-virtual {p1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 16
    invoke-virtual {p1, v3}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 18
    invoke-virtual {p1, v3}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->updateWheels()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->createMotionState()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    iget-object p2, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    return-void
.end method

.method public getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldLocation(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLocationDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getOrientation(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldRotation(JLcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public getOrientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldRotationQuat(JLcom/jme3/math/Quaternion;)V

    return-object p1
.end method

.method public getOrientationMatrixDp(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Matrix3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Matrix3d;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldRotationDp(JLcom/simsilica/mathd/Matrix3d;)V

    return-object p1
.end method

.method public getOrientationQuaternionDp(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Quatd;

    invoke-direct {p1}, Lcom/simsilica/mathd/Quatd;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldRotationQuatDp(JLcom/simsilica/mathd/Quatd;)V

    return-object p1
.end method

.method public isApplyPhysicsLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->jmeClone()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    return-object v0
.end method

.method public physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldLocation(JLcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getWorldRotationQuat(JLcom/jme3/math/Quaternion;)V

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "applyPhysicsLocal"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    const-string v0, "vehicle"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    return-void
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    return-void
.end method

.method public setVehicle(Lcom/jme3/bullet/objects/PhysicsVehicle;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->applyPhysicsLocal:Z

    const-string v1, "applyPhysicsLocal"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    const-string v1, "vehicle"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
