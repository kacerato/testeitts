.class public Lcom/jme3/bullet/objects/infos/CharacterController;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagAngularDamping:Ljava/lang/String; = "angularDamping"

.field private static final tagAngularVelocity:Ljava/lang/String; = "angularVelocity"

.field private static final tagFallSpeed:Ljava/lang/String; = "fallSpeed"

.field private static final tagGhostSweepTest:Ljava/lang/String; = "ghostSweepTest"

.field private static final tagGravityVector:Ljava/lang/String; = "gravityVector"

.field private static final tagJumpSpeed:Ljava/lang/String; = "jumpSpeed"

.field private static final tagLinearDamping:Ljava/lang/String; = "linearDamping"

.field private static final tagLinearVelocity:Ljava/lang/String; = "linearVelocity"

.field private static final tagMaxPenetrationDepth:Ljava/lang/String; = "maxPenetrationDepth"

.field private static final tagMaxSlope:Ljava/lang/String; = "maxSlope"

.field private static final tagPco:Ljava/lang/String; = "pco"

.field private static final tagStepHeight:Ljava/lang/String; = "stepHeight"

.field private static final tagUpDirection:Ljava/lang/String; = "upDirection"

.field private static final tagWalkDirection:Ljava/lang/String; = "walkDirection"


# instance fields
.field private pco:Lcom/jme3/bullet/objects/PhysicsCharacter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/CharacterController;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsCharacter;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 3
    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/CharacterController;->pco:Lcom/jme3/bullet/objects/PhysicsCharacter;

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->createController()V

    return-void
.end method

.method private static native create(J)J
.end method

.method private createController()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/CharacterController;->pco:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->create(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->finalizeNative(J)V

    return-void
.end method

.method private static native getAngularDamping(J)F
.end method

.method private static native getAngularVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getFallSpeed(J)F
.end method

.method private static native getGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getJumpSpeed(J)F
.end method

.method private static native getLinearDamping(J)F
.end method

.method private static native getLinearVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getMaxPenetrationDepth(J)F
.end method

.method private static native getMaxSlope(J)F
.end method

.method private static native getStepHeight(J)F
.end method

.method private static native getUpDirection(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getWalkOffset(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native isUsingGhostSweepTest(J)Z
.end method

.method private static native jump(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native onGround(J)Z
.end method

.method private static native reset(JJ)V
.end method

.method private static native setAngularDamping(JF)V
.end method

.method private static native setAngularVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setFallSpeed(JF)V
.end method

.method private static native setGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setJumpSpeed(JF)V
.end method

.method private static native setLinearDamping(JF)V
.end method

.method private static native setLinearVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMaxPenetrationDepth(JF)V
.end method

.method private static native setMaxSlope(JF)V
.end method

.method private static native setStepHeight(JF)V
.end method

.method private static native setUp(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setUseGhostSweepTest(JZ)V
.end method

.method private static native setWalkDirection(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native warp(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native warpDp(JLcom/simsilica/mathd/Vec3d;)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/jme3/bullet/objects/infos/CharacterController;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/infos/CharacterController;->copyAll(Lcom/jme3/bullet/objects/infos/CharacterController;)V

    return-void
.end method

.method public copyAll(Lcom/jme3/bullet/objects/infos/CharacterController;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularDamping()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularDamping(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getFallSpeed()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setFallSpeed(F)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setGravity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getJumpSpeed()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setJumpSpeed(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearDamping()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearDamping(F)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setWalkDirection(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxPenetrationDepth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxPenetrationDepth(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxSlope()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxSlope(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getStepHeight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setStepHeight(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->isUsingGhostSweepTest()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setSweepTest(Z)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setUp(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public getAngularDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularDamping(J)F

    move-result v0

    return v0
.end method

.method public getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getFallSpeed()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getFallSpeed(J)F

    move-result v0

    return v0
.end method

.method public getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getGravity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getJumpSpeed()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getJumpSpeed(J)F

    move-result v0

    return v0
.end method

.method public getLinearDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearDamping(J)F

    move-result v0

    return v0
.end method

.method public getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getMaxPenetrationDepth()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxPenetrationDepth(J)F

    move-result v0

    return v0
.end method

.method public getMaxSlope()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxSlope(J)F

    move-result v0

    return v0
.end method

.method public getStepHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getStepHeight(J)F

    move-result v0

    return v0
.end method

.method public getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getUpDirection(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->getWalkOffset(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public isUsingGhostSweepTest()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->isUsingGhostSweepTest(J)Z

    move-result v0

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/infos/CharacterController;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/CharacterController;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->jmeClone()Lcom/jme3/bullet/objects/infos/CharacterController;

    move-result-object v0

    return-object v0
.end method

.method public jump(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->jump(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public onGround()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/CharacterController;->onGround(J)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "pco"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsCharacter;

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/CharacterController;->pco:Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->createController()V

    const-string v0, "angularDamping"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularDamping(F)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v2, "angularVelocity"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v0, "fallSpeed"

    const/high16 v2, 0x425c0000    # 55.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setFallSpeed(F)V

    const-string v0, "ghostSweepTest"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setSweepTest(Z)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const v2, -0x3ee30a3d    # -9.81f

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "gravityVector"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/infos/CharacterController;->setGravity(Lcom/jme3/math/Vector3f;)V

    const-string v2, "jumpSpeed"

    const/high16 v3, 0x41200000    # 10.0f

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setJumpSpeed(F)V

    const-string v2, "linearDamping"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearDamping(F)V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v3, "walkDirection"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setWalkDirection(Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v3, "linearVelocity"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v2, "maxPenetrationDepth"

    const v3, 0x3e4ccccd    # 0.2f

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxPenetrationDepth(F)V

    const-string v2, "maxSlope"

    const v3, 0x3f490fdb

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxSlope(F)V

    const-string v2, "stepHeight"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->setStepHeight(F)V

    invoke-static {v0}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "upDirection"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setUp(Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method

.method public reset(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/infos/CharacterController;->reset(JJ)V

    return-void
.end method

.method public setAngularDamping(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularDamping(JF)V

    return-void
.end method

.method public setAngularVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setAngularVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setFallSpeed(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setFallSpeed(JF)V

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "gravity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setGravity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setJumpSpeed(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setJumpSpeed(JF)V

    return-void
.end method

.method public setLinearDamping(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearDamping(JF)V

    return-void
.end method

.method public setLinearVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setLinearVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMaxPenetrationDepth(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxPenetrationDepth(JF)V

    return-void
.end method

.method public setMaxSlope(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setMaxSlope(JF)V

    return-void
.end method

.method public setStepHeight(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setStepHeight(JF)V

    return-void
.end method

.method public setSweepTest(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setUseGhostSweepTest(JZ)V

    return-void
.end method

.method public setUp(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "direction"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setUp(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setWalkDirection(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->setWalkDirection(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public warp(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->warp(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public warpDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/CharacterController;->warpDp(JLcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/CharacterController;->pco:Lcom/jme3/bullet/objects/PhysicsCharacter;

    const-string v1, "pco"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularDamping()F

    move-result v0

    const-string v1, "angularDamping"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "angularVelocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getFallSpeed()F

    move-result v0

    const-string v1, "fallSpeed"

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->isUsingGhostSweepTest()Z

    move-result v0

    const-string v1, "ghostSweepTest"

    const/4 v4, 0x1

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v4, -0x3ee30a3d    # -9.81f

    invoke-direct {v1, v3, v4, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v4, "gravityVector"

    invoke-interface {p1, v0, v4, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getJumpSpeed()F

    move-result v1

    const-string v4, "jumpSpeed"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-interface {p1, v1, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearDamping()F

    move-result v1

    const-string v4, "linearDamping"

    invoke-interface {p1, v1, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v4, "walkDirection"

    invoke-interface {p1, v1, v4, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v4, "linearVelocity"

    invoke-interface {p1, v1, v4, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxPenetrationDepth()F

    move-result v1

    const-string v4, "maxPenetrationDepth"

    const v5, 0x3e4ccccd    # 0.2f

    invoke-interface {p1, v1, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getMaxSlope()F

    move-result v1

    const-string v4, "maxSlope"

    const v5, 0x3f490fdb

    invoke-interface {p1, v1, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/CharacterController;->getStepHeight()F

    move-result v1

    const-string v4, "stepHeight"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-static {v0}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/infos/CharacterController;->getUpDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3, v5, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "upDirection"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    return-void
.end method
