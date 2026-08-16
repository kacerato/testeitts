.class public abstract Lcom/jme3/bullet/control/AbstractPhysicsControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/bullet/control/PhysicsControl;


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagApplyLocalPhysics:Ljava/lang/String; = "applyLocalPhysics"

.field private static final tagEnabled:Ljava/lang/String; = "enabled"

.field private static final tagSpatial:Ljava/lang/String; = "spatial"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field protected added:Z

.field private controlledSpatial:Lcom/jme3/scene/Spatial;

.field private enabled:Z

.field private localPhysics:Z

.field private space:Lcom/jme3/bullet/PhysicsSpace;

.field private tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    iput-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    return-void
.end method


# virtual methods
.method public abstract addPhysics()V
.end method

.method public applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-static {p1, v0, v0}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->tmpInverseWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cloneForSpatial() isn\'t implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createSpatialData(Lcom/jme3/scene/Spatial;)V
.end method

.method public getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getSpatialRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSpatialTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lif/s;->w(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->translateIdentity:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isApplyPhysicsLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/control/AbstractPhysicsControl;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/control/AbstractPhysicsControl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t clone a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while it\'s added to a physics space."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->jmeClone()Lcom/jme3/bullet/control/AbstractPhysicsControl;

    move-result-object v0

    return-object v0
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

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    const-string v0, "spatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    const-string v0, "applyLocalPhysics"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    return-void
.end method

.method public abstract removePhysics()V
.end method

.method public abstract removeSpatialData(Lcom/jme3/scene/Spatial;)V
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public setApplyPhysicsLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->addPhysics()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->removePhysics()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
.end method

.method public abstract setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->removePhysics()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    :cond_1
    iput-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->space:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->addPhysics()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    :cond_2
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->removeSpatialData(Lcom/jme3/scene/Spatial;)V

    :cond_1
    iput-object p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->createSpatialData(Lcom/jme3/scene/Spatial;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

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

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->localPhysics:Z

    const-string v1, "applyLocalPhysics"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->controlledSpatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
