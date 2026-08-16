.class public Lcom/jme3/bullet/control/CharacterControl;
.super Lcom/jme3/bullet/control/AbstractPhysicsControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagCharacter:Ljava/lang/String; = "character"

.field private static final tagViewDirection:Ljava/lang/String; = "viewDirection"

.field private static final tmpOrientation:Lcom/jme3/math/Quaternion;

.field private static final tmpVector:Lcom/jme3/math/Vector3f;


# instance fields
.field private character:Lcom/jme3/bullet/objects/PhysicsCharacter;

.field private viewDirection:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/control/CharacterControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/CharacterControl;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/CharacterControl;->tmpOrientation:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/control/CharacterControl;->tmpVector:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;F)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    .line 7
    new-instance v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {v0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsCharacter;-><init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;F)V

    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    return-void
.end method


# virtual methods
.method public addPhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/objects/PhysicsCharacter;

    iput-object p2, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    iget-object p2, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public createSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getCharacter()Lcom/jme3/bullet/objects/PhysicsCharacter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    return-object v0
.end method

.method public getPhysicsLocation()Lcom/jme3/math/Vector3f;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getViewDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public jump()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->jump()V

    return-void
.end method

.method public onGround()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->onGround()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "character"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    iput-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "viewDirection"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removePhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public removeSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setFallSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setFallSpeed(F)V

    return-void
.end method

.method public setGravity(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(F)V

    return-void
.end method

.method public setJumpSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setJumpSpeed(F)V

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 0

    return-void
.end method

.method public setViewDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setWalkDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setWalkDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public update(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    sget-object v0, Lcom/jme3/bullet/control/CharacterControl;->tmpVector:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object p1, Lcom/jme3/bullet/control/CharacterControl;->tmpOrientation:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1, v0}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

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

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->character:Lcom/jme3/bullet/objects/PhysicsCharacter;

    const-string v1, "character"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/CharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    const-string v1, "viewDirection"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
