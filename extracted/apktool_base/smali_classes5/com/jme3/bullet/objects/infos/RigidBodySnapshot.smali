.class public Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final scaleIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private final angularDamping:F

.field private final angularFactor:Lcom/jme3/math/Vector3f;

.field private final angularSleepingThreshold:F

.field private final angularVelocity:Lcom/simsilica/mathd/Vec3d;

.field private final anisotropicFrictionComponents:Lcom/jme3/math/Vector3f;

.field private final anisotropicFrictionModes:I

.field private final ccdMotionThreshold:F

.field private final ccdSweptSphereRadius:F

.field private contactDamping:Ljava/lang/Float;

.field private final contactProcessingThreshold:F

.field private final contactResponse:Z

.field private contactStiffness:Ljava/lang/Float;

.field private final deactivationTime:F

.field private final friction:F

.field private final ignoreList:[Lcom/jme3/bullet/collision/PhysicsCollisionObject;

.field private final linearDamping:F

.field private final linearFactor:Lcom/jme3/math/Vector3f;

.field private final linearSleepingThreshold:F

.field private final linearVelocity:Lcom/simsilica/mathd/Vec3d;

.field private final location:Lcom/simsilica/mathd/Vec3d;

.field private final protectGravity:Z

.field private final restitution:F

.field private final rollingFriction:F

.field private final rotationMatrix:Lcom/jme3/math/Matrix3f;

.field private final spinningFriction:F

.field private final totalAppliedForce:Lcom/jme3/math/Vector3f;

.field private final totalAppliedTorque:Lcom/jme3/math/Vector3f;

.field private final userIndex:I

.field private final userIndex2:I

.field private final userIndex3:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->scaleIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->collisionFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isContactResponse()Z

    move-result v3

    iput-boolean v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactResponse:Z

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isGravityProtected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->protectGravity:Z

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularDamping()F

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularDamping:F

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularSleepingThreshold()F

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularSleepingThreshold:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ccdMotionThreshold:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ccdSweptSphereRadius:F

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactDamping()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactDamping:Ljava/lang/Float;

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactProcessingThreshold()F

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactProcessingThreshold:F

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getContactStiffness()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactStiffness:Ljava/lang/Float;

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDeactivationTime()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->deactivationTime:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getFriction()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->friction:F

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearDamping()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearDamping:F

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearSleepingThreshold()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearSleepingThreshold:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRestitution()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->restitution:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getRollingFriction()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->rollingFriction:F

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getSpinningFriction()F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->spinningFriction:F

    move v0, v1

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    shl-int v3, v2, v1

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->hasAnisotropicFriction(I)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->anisotropicFrictionModes:I

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex:I

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex2()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex2:I

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->userIndex3()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex3:I

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->listIgnoredPcos()[Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ignoreList:[Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->rotationMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularVelocity:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocityDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearVelocity:Lcom/simsilica/mathd/Vec3d;

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularVelocity:Lcom/simsilica/mathd/Vec3d;

    new-instance v1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {v1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearVelocity:Lcom/simsilica/mathd/Vec3d;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->location:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getAnisotropicFriction(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->anisotropicFrictionComponents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularFactor:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearFactor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearFactor:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->totalAppliedForce:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->totalAppliedTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->totalAppliedTorque:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public applyAllExceptIgnoreListTo(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactResponse:Z

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setContactResponse(Z)V

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->protectGravity:Z

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setProtectGravity(Z)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularDamping:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularDamping(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularSleepingThreshold:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularSleepingThreshold(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ccdMotionThreshold:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdMotionThreshold(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ccdSweptSphereRadius:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCcdSweptSphereRadius(F)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactDamping:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactDamping(F)V

    :cond_0
    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactProcessingThreshold:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactProcessingThreshold(F)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->contactStiffness:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setContactStiffness(F)V

    :cond_1
    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->friction:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setFriction(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearDamping:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearDamping(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearSleepingThreshold:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearSleepingThreshold(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->restitution:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRestitution(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->rollingFriction:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setRollingFriction(F)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->spinningFriction:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setSpinningFriction(F)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->anisotropicFrictionComponents:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->anisotropicFrictionModes:I

    invoke-virtual {p1, v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setAnisotropicFriction(Lcom/jme3/math/Vector3f;I)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex:I

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex(I)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex2:I

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex2(I)V

    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->userIndex3:I

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserIndex3(I)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->rotationMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->location:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->clearForces()V

    sget-object v0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->scaleIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearFactor(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->totalAppliedForce:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyCentralForce(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearFactor:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearFactor(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->totalAppliedTorque:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyTorque(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularFactor:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->angularVelocity:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularVelocityDp(Lcom/simsilica/mathd/Vec3d;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->linearVelocity:Lcom/simsilica/mathd/Vec3d;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocityDp(Lcom/simsilica/mathd/Vec3d;)V

    :cond_2
    iget v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->deactivationTime:F

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setDeactivationTime(F)V

    return-void
.end method

.method public applyTo(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->applyAllExceptIgnoreListTo(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/infos/RigidBodySnapshot;->ignoreList:[Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setIgnoreList([Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method
