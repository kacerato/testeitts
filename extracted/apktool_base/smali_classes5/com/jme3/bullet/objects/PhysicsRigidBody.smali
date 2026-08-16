.class public Lcom/jme3/bullet/objects/PhysicsRigidBody;
.super Lcom/jme3/bullet/objects/PhysicsBody;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final matrixIdentity:Lcom/jme3/math/Matrix3f;

.field private static final scaleIdentity:Lcom/jme3/math/Vector3f;

.field private static final tagAngularDamping:Ljava/lang/String; = "angularDamping"

.field private static final tagAngularFactor:Ljava/lang/String; = "angularFactor"

.field private static final tagAngularSleepingThreshold:Ljava/lang/String; = "angularSleepingThreshold"

.field private static final tagAngularVelocity:Ljava/lang/String; = "angularVelocity"

.field private static final tagAppliedForce:Ljava/lang/String; = "appliedForce"

.field private static final tagAppliedTorque:Ljava/lang/String; = "appliedTorque"

.field private static final tagContactResponse:Ljava/lang/String; = "contactResponse"

.field private static final tagGravity:Ljava/lang/String; = "gravity"

.field private static final tagInverseInertia:Ljava/lang/String; = "inverseInertia"

.field private static final tagKinematic:Ljava/lang/String; = "kinematic"

.field private static final tagLinearDamping:Ljava/lang/String; = "linearDamping"

.field private static final tagLinearFactor:Ljava/lang/String; = "linearFactor"

.field private static final tagLinearSleepingThreshold:Ljava/lang/String; = "linearSleepingThreshold"

.field private static final tagLinearVelocity:Ljava/lang/String; = "linearVelocity"

.field private static final tagMass:Ljava/lang/String; = "mass"

.field private static final tagMotionState:Ljava/lang/String; = "motionState"

.field private static final tagPhysicsLocation:Ljava/lang/String; = "physicsLocation"

.field private static final tagPhysicsRotation:Ljava/lang/String; = "physicsRotation"

.field private static final tagProtectGravity:Ljava/lang/String; = "tagProtectGravity"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private kinematic:Z

.field protected mass:F

.field private motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->scaleIdentity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsBody;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    .line 4
    new-instance v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsBody;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    .line 8
    new-instance v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    .line 9
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 10
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 11
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsBody;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    .line 15
    new-instance v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    .line 16
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 17
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 18
    iput p2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    .line 19
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 20
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    return-void
.end method

.method private static native applyCentralForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native applyCentralImpulse(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native applyForce(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native applyImpulse(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native applyTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native applyTorqueImpulse(JLcom/jme3/math/Vector3f;)V
.end method

.method private checkKinematicFlag()Z
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    if-ne v3, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private checkMass()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass(J)F

    move-result v0

    iget v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-static {v0, v1}, Lcom/jme3/math/FastMath;->approximateEquals(FF)Z

    move-result v0

    return v0
.end method

.method private static native clearForces(J)V
.end method

.method private static native createRigidBody(FJJ)J
.end method

.method private static native getAngularDamping(J)F
.end method

.method private static native getAngularFactor(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAngularSleepingThreshold(J)F
.end method

.method private static native getAngularVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAngularVelocityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getGravityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getInverseInertiaLocal(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getInverseInertiaWorld(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native getLinearDamping(J)F
.end method

.method private static native getLinearFactor(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLinearSleepingThreshold(J)F
.end method

.method private static native getLinearVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLinearVelocityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getMass(J)F
.end method

.method private static native getSquaredSpeed(J)F
.end method

.method private static native getTotalForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getTotalTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getUseSpaceGravity(J)Z
.end method

.method private static native setAngularDamping(JF)V
.end method

.method private static native setAngularFactor(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setAngularSleepingThreshold(JF)V
.end method

.method private static native setAngularVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setAngularVelocityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setCollisionShape(JJ)V
.end method

.method private static native setDamping(JFF)V
.end method

.method private static native setGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setGravityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setInverseInertiaLocal(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setKinematic(JZ)V
.end method

.method private static native setLinearFactor(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setLinearSleepingThreshold(JF)V
.end method

.method private static native setLinearVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setLinearVelocityDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setPhysicsLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native setPhysicsRotation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V
.end method

.method private static native setPhysicsRotationDp(JLcom/simsilica/mathd/Quatd;)V
.end method

.method private static native setSleepingThresholds(JFF)V
.end method

.method private static native setUseSpaceGravity(JZ)V
.end method

.method private static native updateMassProps(JJF)V
.end method

.method private static validateDynamicShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isNonMoving()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Dynamic rigid body can\'t have a non-moving shape!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->activate(Z)V

    return-void
.end method

.method public applyCentralForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyCentralForce(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public applyCentralImpulse(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "impulse"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyCentralImpulse(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public applyForce(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    const-string v0, "offset"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyForce(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public applyImpulse(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "impulse"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    const-string v0, "offset"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyImpulse(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public applyTorque(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "torque"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyTorque(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public applyTorqueImpulse(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "torque impulse"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyTorqueImpulse(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public clearForces()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->clearForces(J)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p2

    iget v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->createRigidBody(FJJ)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p2, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Created {0}"

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;

    invoke-direct {p2, v0}, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    invoke-virtual {p2, p0}, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->applyAllExceptIgnoreListTo(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    iget-boolean p2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setInverseInertiaLocal(Lcom/jme3/math/Vector3f;)V

    new-instance p2, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p2}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-static {v3, v4, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravityDp(JLcom/simsilica/mathd/Vec3d;)V

    invoke-static {v1, v2, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravityDp(JLcom/simsilica/mathd/Vec3d;)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneJoints(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/objects/PhysicsBody;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->postRebuild()V

    return-void
.end method

.method public getAngularDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularDamping(J)F

    move-result v0

    return v0
.end method

.method public getAngularFactor()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    return v0
.end method

.method public getAngularFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularFactor(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getAngularSleepingThreshold()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularSleepingThreshold(J)F

    move-result v0

    return v0
.end method

.method public getAngularVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getAngularVelocityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocityDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getAngularVelocityLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity(JLcom/jme3/math/Vector3f;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-static {v0, p1, p1}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getGravityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravityDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getInverseInertiaWorld(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaWorld(JLcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public getLinearDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearDamping(J)F

    move-result v0

    return v0
.end method

.method public getLinearFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearFactor(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLinearSleepingThreshold()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearSleepingThreshold(J)F

    move-result v0

    return v0
.end method

.method public getLinearVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLinearVelocityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocityDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getMass()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    return v0
.end method

.method public getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    return-object v0
.end method

.method public getPhysicsRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getSquaredSpeed()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getSquaredSpeed(J)F

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGravityProtected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getUseSpaceGravity(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isKinematic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    return v0
.end method

.method public kineticEnergy()D
    .locals 11

    iget v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getSquaredSpeed()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocityLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v3, v3

    iget v5, v2, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v5, v5

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v7, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    mul-double/2addr v3, v3

    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v9, v9

    div-double/2addr v3, v9

    mul-double/2addr v5, v5

    iget v9, v2, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v9, v9

    div-double/2addr v5, v9

    add-double/2addr v3, v5

    mul-double/2addr v7, v7

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v5, v2

    div-double/2addr v7, v5

    add-double/2addr v3, v7

    add-double/2addr v0, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public mechanicalEnergy()D
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v2, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v1, v0}, Ljf/h;->r(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v0

    mul-double/2addr v2, v0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kineticEnergy()D

    move-result-wide v0

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public postRebuild()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    iget v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x2

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionFlags(JI)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    return-void
.end method

.method public preRebuild()V
    .locals 0

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "kinematic"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    const-string v0, "mass"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    const-string v0, "motionState"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->translateIdentity:Lcom/jme3/math/Vector3f;

    const-string v3, "angularVelocity"

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v3, "linearVelocity"

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v3, "appliedForce"

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyCentralForce(Lcom/jme3/math/Vector3f;)V

    const-string v3, "appliedTorque"

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyTorque(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->readPcoProperties(Lcom/jme3/export/InputCapsule;)V

    const-string v3, "contactResponse"

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setContactResponse(Z)V

    sget-object v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;->scaleIdentity:Lcom/jme3/math/Vector3f;

    const-string v4, "inverseInertia"

    invoke-interface {p1, v4, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setInverseInertiaLocal(Lcom/jme3/math/Vector3f;)V

    const-string v4, "angularFactor"

    invoke-interface {p1, v4, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    const-string v6, "gravity"

    invoke-interface {p1, v6, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    invoke-static {v4, v5, v6}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(JLcom/jme3/math/Vector3f;)V

    const-string v4, "linearFactor"

    invoke-interface {p1, v4, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearFactor(Lcom/jme3/math/Vector3f;)V

    const-string v3, "linearDamping"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v5, "angularDamping"

    invoke-interface {p1, v5, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(FF)V

    const-string v3, "linearSleepingThreshold"

    const v4, 0x3f4ccccd    # 0.8f

    invoke-interface {p1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "angularSleepingThreshold"

    invoke-interface {p1, v4, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setSleepingThresholds(FF)V

    const-string v2, "tagProtectGravity"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setProtectGravity(Z)V

    const-string v1, "physicsLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    const-string v0, "physicsRotation"

    sget-object v1, Lcom/jme3/bullet/objects/PhysicsRigidBody;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsBody;->readJoints(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public rebuildRigidBody()V
    .locals 13

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_0
    new-instance v6, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;

    invoke-direct {v6, p0}, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v3

    sget-object v7, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Clearing {0}."

    invoke-virtual {v7, v8, v9, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->clearIgnoreList()V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_0

    :cond_1
    move-wide v4, v1

    move-object v0, v3

    move-object v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->preRebuild()V

    iget-object v7, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    invoke-virtual {v7}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v9

    iget v11, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-static {v11, v7, v8, v9, v10}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->createRigidBody(FJJ)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v9, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_3

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    const-string v1, "Created {0}."

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Substituted {0} for {1}."

    invoke-virtual {v9, v10, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->postRebuild()V

    if-eqz v3, :cond_4

    invoke-virtual {v3, p0}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, p0}, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->applyTo(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v7, v8, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravityDp(JLcom/simsilica/mathd/Vec3d;)V

    :cond_6
    return-void
.end method

.method public setAngularDamping(F)V
    .locals 2

    .line 1
    const-string v0, "angular damping"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularDamping(JF)V

    return-void
.end method

.method public setAngularFactor(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, p1, p1, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setAngularFactor(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setAngularSleepingThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularSleepingThreshold(JF)V

    return-void
.end method

.method public setAngularVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "omega"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocity(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public setAngularVelocityDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocityDp(JLcom/simsilica/mathd/Vec3d;)V

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 4

    .line 1
    const-string v0, "desired shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->validateDynamicShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 8
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(JJ)V

    .line 9
    iget p1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-static {v0, v1, v2, v3, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->updateMassProps(JJF)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

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

.method public setDamping(FF)V
    .locals 2

    .line 1
    const-string v0, "linear damping"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    .line 2
    const-string v0, "angular damping"

    invoke-static {p2, v0}, Lif/E;->f(FLjava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(JFF)V

    return-void
.end method

.method public setEnableSleep(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setActivationState(JI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setActivationState(JI)V

    :goto_0
    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isGravityProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    const-string v1, "The body isn\'t in any PhysicsSpace, and its gravity isn\'t protected. Unless protection is set, adding it to a PhysicsSpace will override its gravity."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setGravityDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "acceleration"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isGravityProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->logger2:Ljava/util/logging/Logger;

    const-string v1, "The body isn\'t in any PhysicsSpace, and its gravity isn\'t protected. Unless protection is set, adding it to a PhysicsSpace will override its gravity."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravityDp(JLcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public setInverseInertiaLocal(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "inverse inertia"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setInverseInertiaLocal(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setKinematic(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(JZ)V

    return-void
.end method

.method public setLinearDamping(F)V
    .locals 3

    const-string v0, "linear damping"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularDamping()F

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(JFF)V

    return-void
.end method

.method public setLinearFactor(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "factor"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearFactor(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setLinearSleepingThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearSleepingThreshold(JF)V

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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public setLinearVelocityDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocityDp(JLcom/simsilica/mathd/Vec3d;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->activate()V

    return-void
.end method

.method public setMass(F)V
    .locals 5

    const-string v0, "mass"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget-boolean v3, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->validateDynamicShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_0
    iget v3, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    cmpl-float v4, p1, v3

    if-nez v4, :cond_1

    return-void

    :cond_1
    cmpl-float v1, v3, v1

    if-nez v1, :cond_2

    iput p1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    return-void

    :cond_2
    iput p1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->mass:F

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->updateMassProps(JJF)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result p1

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, -0x2

    :goto_0
    invoke-static {v3, v4, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionFlags(JI)V

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V
    .locals 2

    .line 1
    const-string v0, "rotation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No rotation of heightfields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 7
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Ljf/g;->j(Lcom/jme3/math/Quaternion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No rotation of heightfields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 12
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(JLcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setPhysicsRotationDp(Lcom/simsilica/mathd/Matrix3d;)V
    .locals 2

    .line 1
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/simsilica/mathd/Matrix3d;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No rotation of heightfields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V

    return-void
.end method

.method public setPhysicsRotationDp(Lcom/simsilica/mathd/Quatd;)V
    .locals 2

    .line 7
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/simsilica/mathd/Quatd;->isRotationIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No rotation of heightfields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 12
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotationDp(JLcom/simsilica/mathd/Quatd;)V

    return-void
.end method

.method public setPhysicsScale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "new scale"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-static {v1, p1}, Ljf/h;->O(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_0
    return-void
.end method

.method public setPhysicsTransform(Lcom/jme3/math/Transform;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsScale(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setProtectGravity(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setUseSpaceGravity(JZ)V

    return-void
.end method

.method public setSleepingThresholds(FF)V
    .locals 2

    .line 1
    const-string v0, "linear threshold"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 2
    const-string v0, "angular threshold"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setSleepingThresholds(JFF)V

    return-void
.end method

.method public totalAppliedForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getTotalForce(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public totalAppliedTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getTotalTorque(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result v0

    const-string v1, "mass"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v0

    const-string v1, "contactResponse"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "angularFactor"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "gravity"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "linearFactor"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->kinematic:Z

    const-string v3, "kinematic"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsRigidBody;->motionState:Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    const-string v3, "motionState"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getInverseInertiaLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "inverseInertia"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearDamping()F

    move-result v1

    const-string v3, "linearDamping"

    const/4 v5, 0x0

    invoke-interface {p1, v1, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularDamping()F

    move-result v1

    const-string v3, "angularDamping"

    invoke-interface {p1, v1, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearSleepingThreshold()F

    move-result v1

    const-string v3, "linearSleepingThreshold"

    const v5, 0x3f4ccccd    # 0.8f

    invoke-interface {p1, v1, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularSleepingThreshold()F

    move-result v1

    const-string v3, "angularSleepingThreshold"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isGravityProtected()Z

    move-result v1

    const-string v2, "tagProtectGravity"

    invoke-interface {p1, v1, v2, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "physicsLocation"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v1

    const-string v2, "physicsRotation"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "linearVelocity"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "angularVelocity"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "appliedForce"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "appliedTorque"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsBody;->writeJoints(Lcom/jme3/export/OutputCapsule;)V

    return-void
.end method
