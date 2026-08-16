.class public Lcom/jme3/bullet/objects/PhysicsCharacter;
.super Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final defaultGravity:Lcom/jme3/math/Vector3f;

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagContactResponse:Ljava/lang/String; = "contactResponse"

.field private static final tagController:Ljava/lang/String; = "controller"

.field private static final tagPhysicsLocation:Ljava/lang/String; = "physicsLocation"

.field private static final threadTmpVector:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;

.field private static final unitY:Lcom/jme3/math/Vector3f;


# instance fields
.field private controller:Lcom/jme3/bullet/objects/infos/CharacterController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, -0x3e14cccd    # -29.4f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->defaultGravity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->translateIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->unitY:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsCharacter$1;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/PhysicsCharacter$1;-><init>()V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->threadTmpVector:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    .line 3
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->buildObject()V

    .line 6
    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setStepHeight(F)V

    .line 7
    sget-object p1, Lcom/jme3/bullet/objects/PhysicsCharacter;->defaultGravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(Lcom/jme3/math/Vector3f;)V

    .line 8
    sget-object p1, Lcom/jme3/bullet/objects/PhysicsCharacter;->unitY:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setUp(Lcom/jme3/math/Vector3f;)V

    .line 9
    sget-object p1, Lcom/jme3/bullet/objects/PhysicsCharacter;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->warp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private buildObject()V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    const-string v1, "Creating {0}."

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jme3/bullet/objects/PhysicsCharacter;->createGhostObject()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->logger2:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setCharacterFlags(J)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->attachCollisionShape(JJ)V

    new-instance v0, Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/objects/infos/CharacterController;-><init>(Lcom/jme3/bullet/objects/PhysicsCharacter;)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->logger2:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static native createGhostObject()J
.end method

.method private static native setCharacterFlags(J)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->buildObject()V

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->copyAll(Lcom/jme3/bullet/objects/infos/CharacterController;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setContactResponse(Z)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public getAngularDamping()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularDamping()F

    move-result v0

    return v0
.end method

.method public getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getControllerId()J
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFallSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getFallSpeed()F

    move-result v0

    return v0
.end method

.method public getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getJumpSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getJumpSpeed()F

    move-result v0

    return v0
.end method

.method public getLinearDamping()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearDamping()F

    move-result v0

    return v0
.end method

.method public getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getMaxPenetrationDepth()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxPenetrationDepth()F

    move-result v0

    return v0
.end method

.method public getMaxSlope()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxSlope()F

    move-result v0

    return v0
.end method

.method public getStepHeight()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getStepHeight()F

    move-result v0

    return v0
.end method

.method public getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public isUsingGhostSweepTest()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->isUsingGhostSweepTest()Z

    move-result v0

    return v0
.end method

.method public jump()V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->jump(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public jump(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->jump(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public onGround()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->onGround()Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->buildObject()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->readPcoProperties(Lcom/jme3/export/InputCapsule;)V

    const-string v0, "controller"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/CharacterController;

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->copyAll(Lcom/jme3/bullet/objects/infos/CharacterController;)V

    const-string v0, "contactResponse"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setContactResponse(Z)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "physicsLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->warp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public reset(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 1

    const-string v0, "space"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->reset(Lcom/jme3/bullet/PhysicsSpace;)V

    return-void
.end method

.method public setAngularDamping(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularDamping(F)V

    return-void
.end method

.method public setAngularVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "angular velocity"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->attachCollisionShape(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->buildObject()V

    :goto_0
    return-void
.end method

.method public setContactResponse(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    if-eqz p1, :cond_0

    and-int/lit8 p1, v0, -0x5

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v0, 0x4

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionFlags(JI)V

    return-void
.end method

.method public setFallSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setFallSpeed(F)V

    return-void
.end method

.method public setGravity(F)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/bullet/objects/PhysicsCharacter;->threadTmpVector:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    neg-float p1, p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 4
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsCharacter;->setGravity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 5
    const-string v0, "gravity"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setGravity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setJumpSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setJumpSpeed(F)V

    return-void
.end method

.method public setLinearDamping(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearDamping(F)V

    return-void
.end method

.method public setLinearVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMaxPenetrationDepth(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxPenetrationDepth(F)V

    return-void
.end method

.method public setMaxSlope(F)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x3fc90fdb

    const-string v2, "slope radians"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxSlope(F)V

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->warp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->warpDp(Lcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public setStepHeight(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setStepHeight(F)V

    return-void
.end method

.method public setSweepTest(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setSweepTest(Z)V

    return-void
.end method

.method public setUp(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setUp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setWalkDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setWalkDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public warp(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->warp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v0

    const-string v1, "contactResponse"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsCharacter;->controller:Lcom/jme3/bullet/objects/infos/CharacterController;

    const-string v1, "controller"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "physicsLocation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
