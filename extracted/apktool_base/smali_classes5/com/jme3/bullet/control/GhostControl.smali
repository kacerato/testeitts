.class public Lcom/jme3/bullet/control/GhostControl;
.super Lcom/jme3/bullet/objects/PhysicsGhostObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/control/PhysicsControl;


# static fields
.field public static final logger3:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final scaleIdentity:Lcom/jme3/math/Vector3f;

.field private static final tagApplyLocalPhysics:Ljava/lang/String; = "applyLocalPhysics"

.field private static final tagApplyScale:Ljava/lang/String; = "applyScale"

.field private static final tagEnabled:Ljava/lang/String; = "enabled"

.field private static final tagSpatial:Ljava/lang/String; = "spatial"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private added:Z

.field private applyLocal:Z

.field private applyScale:Z

.field private enabled:Z

.field private space:Lcom/jme3/bullet/PhysicsSpace;

.field private spatial:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/control/GhostControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/GhostControl;->logger3:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/GhostControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/GhostControl;->scaleIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/GhostControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    .line 4
    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    .line 9
    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    .line 10
    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method private copySpatialScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/bullet/control/GhostControl;->scaleIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/control/GhostControl;->isApplyPhysicsLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p1
.end method

.method private getSpatialRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/GhostControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method private getSpatialTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/GhostControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

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

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isApplyPhysicsLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    return v0
.end method

.method public isApplyScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    const-string v0, "applyLocalPhysics"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    const-string v0, "applyScale"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    const-string v0, "spatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    return-void
.end method

.method public setApplyScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/GhostControl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->added:Z

    :cond_2
    iput-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 4

    iget-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/control/GhostControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-boolean p1, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/control/GhostControl;->copySpatialScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljf/f;->k(F)F

    move-result v2

    invoke-virtual {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :cond_1
    invoke-virtual {v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-static {p1, v0}, Ljf/h;->O(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_2
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyLocal:Z

    const-string v1, "applyLocalPhysics"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/GhostControl;->applyScale:Z

    const-string v1, "applyScale"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/control/GhostControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
