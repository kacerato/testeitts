.class public Lcom/jme3/bullet/joints/SixDofJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final tagAccumulatedImpulse:Ljava/lang/String; = "_AccumulatedImpulse"

.field private static final tagAngularLowerLimit:Ljava/lang/String; = "angularLowerLimit"

.field private static final tagAngularUpperLimit:Ljava/lang/String; = "angularUpperLimit"

.field private static final tagBounce:Ljava/lang/String; = "_Bounce"

.field private static final tagDamping:Ljava/lang/String; = "_Damping"

.field private static final tagERP:Ljava/lang/String; = "_ERP"

.field private static final tagEnable:Ljava/lang/String; = "_Enable"

.field private static final tagHiLimit:Ljava/lang/String; = "_HiLimit"

.field private static final tagLimitSoftness:Ljava/lang/String; = "_LimitSoftness"

.field private static final tagLinearLowerLimit:Ljava/lang/String; = "linearLowerLimit"

.field private static final tagLinearUpperLimit:Ljava/lang/String; = "linearUpperLimit"

.field private static final tagLoLimit:Ljava/lang/String; = "_LoLimit"

.field private static final tagMaxForce:Ljava/lang/String; = "_MaxForce"

.field private static final tagMaxLimitForce:Ljava/lang/String; = "_MaxLimitForce"

.field private static final tagNormalCFM:Ljava/lang/String; = "_NormalCFM"

.field private static final tagRotA:Ljava/lang/String; = "rotA"

.field private static final tagRotB:Ljava/lang/String; = "rotB"

.field private static final tagRotMotor:Ljava/lang/String; = "rotMotor"

.field private static final tagStopCFM:Ljava/lang/String; = "_StopCFM"

.field private static final tagTargetVelocity:Ljava/lang/String; = "_TargetVelocity"

.field private static final tagTransMotor:Ljava/lang/String; = "transMotor"

.field private static final tagUseLinearReferenceFrameA:Ljava/lang/String; = "useLinearReferenceFrameA"


# instance fields
.field private angularLowerLimit:Lcom/jme3/math/Vector3f;

.field private angularUpperLimit:Lcom/jme3/math/Vector3f;

.field private linearLowerLimit:Lcom/jme3/math/Vector3f;

.field private linearUpperLimit:Lcom/jme3/math/Vector3f;

.field private rotA:Lcom/jme3/math/Matrix3f;

.field private rotB:Lcom/jme3/math/Matrix3f;

.field private rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

.field private translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

.field private useLinearReferenceFrameA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/SixDofJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 16
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    .line 17
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    .line 18
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    .line 19
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    .line 20
    iput-boolean p7, p0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    .line 21
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 22
    invoke-virtual {p6}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 23
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 25
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    .line 26
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    .line 27
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    .line 28
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    .line 29
    iput-boolean p5, p0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    .line 30
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 31
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 32
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/joints/JointEnd;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 7
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    .line 9
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, p2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    .line 11
    sget-object p1, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    if-ne p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    .line 12
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 13
    invoke-virtual {p4}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 14
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint()V

    return-void
.end method

.method private createJoint()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    .line 6
    iget-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 7
    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    .line 8
    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    .line 9
    iget-object v3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 10
    invoke-virtual {v2}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v2

    .line 11
    invoke-static {v2, v0, v2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 13
    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    .line 14
    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 15
    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    .line 16
    iget-boolean v2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    xor-int/lit8 v7, v2, 0x1

    .line 17
    iget-object v9, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v10, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    move-object v2, p0

    move-wide v3, v5

    move-object v5, v9

    move-object v6, v10

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J

    move-result-wide v2

    .line 19
    invoke-virtual {v1, v8}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 22
    iget-object v7, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object v9, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v10, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    iget-boolean v11, p0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J

    move-result-wide v2

    .line 23
    :goto_0
    invoke-static {v2, v3}, Lcom/jme3/bullet/joints/Constraint;->getConstraintType(J)I

    .line 24
    invoke-virtual {p0, v2, v3}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    .line 25
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->gatherMotors()V

    return-void
.end method

.method private gatherMotors()V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    iput-object v3, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-static {v0, v1, v3}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(JI)J

    move-result-wide v4

    iget-object v6, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    new-instance v7, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    invoke-direct {v7, v4, v5}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;-><init>(J)V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SixDofJoint;->getTranslationalLimitMotor(J)J

    move-result-wide v0

    new-instance v2, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    invoke-direct {v2, v0, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;-><init>(J)V

    iput-object v2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    return-void
.end method

.method private static native getAngles(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getFrameOffsetA(JLcom/jme3/math/Transform;)V
.end method

.method private static native getFrameOffsetB(JLcom/jme3/math/Transform;)V
.end method

.method private static native getPivotOffset(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getRotationalLimitMotor(JI)J
.end method

.method private static native getTranslationalLimitMotor(J)J
.end method

.method private static native setAngularLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setAngularUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setLinearLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setLinearUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    iput-object p2, p0, Lcom/jme3/bullet/joints/SixDofJoint;->translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint()V

    iget-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngularLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngularUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularUpperLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getLinearLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getLinearUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SixDofJoint;->getTranslationalLimitMotor()Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SixDofJoint;->getTranslationalLimitMotor()Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getAccumulatedImpulse(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setAccumulatedImpulse(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getDamping()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setDamping(F)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->isEnabled(I)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setEnabled(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getERP(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setERP(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLimitSoftness()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLimitSoftness(F)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLowerLimit(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getMaxMotorForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setMaxMotorForce(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getNormalCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setNormalCFM(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getRestitution()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setRestitution(F)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getStopCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setStopCFM(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getTargetVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setTargetVelocity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setUpperLimit(Lcom/jme3/math/Vector3f;)V

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object p1

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAccumulatedImpulse()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setAccumulatedImpulse(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getRestitution()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setRestitution(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getDamping()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setDamping(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->isEnableMotor()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setEnableMotor(Z)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getERP()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setERP(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getUpperLimit()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setUpperLimit(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLimitSoftness()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLimitSoftness(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLowerLimit()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLowerLimit(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxLimitForce()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxLimitForce(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxMotorForce()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxMotorForce(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getNormalCFM()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setNormalCFM(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getStopCFM()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setStopCFM(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getTargetVelocity()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setTargetVelocity(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J
.end method

.method public native createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J
.end method

.method public getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->getAngles(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getAngularLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAngularUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFrameTransform(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/SixDofJoint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getFrameOffsetB(JLcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/SixDofJoint;->getFrameOffsetA(JLcom/jme3/math/Transform;)V

    :goto_0
    return-object p2
.end method

.method public getLinearLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLinearUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPivotOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->getPivotOffset(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;
    .locals 1

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTranslationalLimitMotor()Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/jme3/bullet/joints/Constraint;->read(Lcom/jme3/export/JmeImporter;)V

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    const-string v2, "rotA"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Matrix3f;

    iput-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    const-string v2, "rotB"

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Matrix3f;

    iput-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v2, "useLinearReferenceFrameA"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    invoke-direct/range {p0 .. p0}, Lcom/jme3/bullet/joints/SixDofJoint;->createJoint()V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    const-string v2, "angularLowerLimit"

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularLowerLimit(Lcom/jme3/math/Vector3f;)V

    const-string v2, "angularUpperLimit"

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularUpperLimit(Lcom/jme3/math/Vector3f;)V

    const-string v2, "linearLowerLimit"

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearLowerLimit(Lcom/jme3/math/Vector3f;)V

    const-string v2, "linearUpperLimit"

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearUpperLimit(Lcom/jme3/math/Vector3f;)V

    move v2, v4

    :goto_0
    const-string v5, "_TargetVelocity"

    const-string v6, "_StopCFM"

    const-string v7, "_NormalCFM"

    const-string v8, "_MaxForce"

    const-string v9, "_LoLimit"

    const-string v10, "_LimitSoftness"

    const-string v11, "_HiLimit"

    const-string v12, "_ERP"

    const-string v13, "_Enable"

    const-string v15, "_Damping"

    const-string v3, "_Bounce"

    const-string v4, "_AccumulatedImpulse"

    const/4 v14, 0x3

    move-object/from16 v16, v5

    if-ge v2, v14, :cond_0

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SixDofJoint;->getRotationalLimitMotor(I)Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotMotor"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v14, v4}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setAccumulatedImpulse(F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setRestitution(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setDamping(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setEnableMotor(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setERP(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setUpperLimit(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLimitSoftness(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLowerLimit(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_MaxLimitForce"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxLimitForce(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxMotorForce(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setNormalCFM(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v14, v3}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setStopCFM(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setTargetVelocity(F)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_0
    move-object v2, v0

    move-object/from16 v0, v16

    iget-object v5, v2, Lcom/jme3/bullet/joints/SixDofJoint;->translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transMotor"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x0

    invoke-interface {v1, v4, v14}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setAccumulatedImpulse(Lcom/jme3/math/Vector3f;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setRestitution(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setDamping(F)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v5, v4, v14}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setEnabled(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setERP(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setUpperLimit(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLimitSoftness(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLowerLimit(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setMaxMotorForce(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setNormalCFM(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setStopCFM(Lcom/jme3/math/Vector3f;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v0}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setTargetVelocity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setAngularLowerLimit(Lcom/jme3/math/Vector3f;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const-string v1, "limits.x"

    const v2, -0x3fb6f025

    const v3, 0x40490fdb    # (float)Math.PI

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 2
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    const v1, -0x4036f025

    const v4, 0x3fc90fdb

    const-string v5, "limits.y"

    invoke-static {v0, v5, v1, v4}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 3
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    const-string v1, "limits.z"

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularLowerLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setAngularUpperLimit(Lcom/jme3/math/Vector3f;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const-string v1, "limits.x"

    const v2, -0x3fb6f025

    const v3, 0x40490fdb    # (float)Math.PI

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 2
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    const v1, -0x4036f025

    const v4, 0x3fc90fdb

    const-string v5, "limits.y"

    invoke-static {v0, v5, v1, v4}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 3
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    const-string v1, "limits.z"

    invoke-static {v0, v1, v2, v3}, Lif/E;->h(FLjava/lang/String;FF)Z

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setAngularUpperLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setLinearLowerLimit(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearLowerLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setLinearUpperLimit(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SixDofJoint;->setLinearUpperLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/jme3/bullet/joints/Constraint;->write(Lcom/jme3/export/JmeExporter;)V

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->rotA:Lcom/jme3/math/Matrix3f;

    const-string v3, "rotA"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v3, "rotB"

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->useLinearReferenceFrameA:Z

    const-string v3, "useLinearReferenceFrameA"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->angularUpperLimit:Lcom/jme3/math/Vector3f;

    const-string v3, "angularUpperLimit"

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->angularLowerLimit:Lcom/jme3/math/Vector3f;

    const-string v3, "angularLowerLimit"

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->linearUpperLimit:Lcom/jme3/math/Vector3f;

    const-string v3, "linearUpperLimit"

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v2, v0, Lcom/jme3/bullet/joints/SixDofJoint;->linearLowerLimit:Lcom/jme3/math/Vector3f;

    const-string v3, "linearLowerLimit"

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    move v2, v5

    :goto_0
    const-string v3, "_TargetVelocity"

    const-string v6, "_StopCFM"

    const-string v7, "_NormalCFM"

    const-string v8, "_MaxForce"

    const-string v9, "_LoLimit"

    const-string v10, "_LimitSoftness"

    const-string v11, "_HiLimit"

    const-string v12, "_ERP"

    const-string v13, "_Enable"

    const-string v15, "_Damping"

    const-string v4, "_Bounce"

    const-string v5, "_AccumulatedImpulse"

    const/4 v14, 0x3

    move-object/from16 v16, v3

    if-ge v2, v14, :cond_0

    iget-object v14, v0, Lcom/jme3/bullet/joints/SixDofJoint;->rotationalMotors:[Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    aget-object v14, v14, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotMotor"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAccumulatedImpulse()F

    move-result v3

    move/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v1, v3, v2, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getRestitution()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getDamping()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->isEnableMotor()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getERP()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getUpperLimit()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLimitSoftness()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLowerLimit()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxLimitForce()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_MaxLimitForce"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxMotorForce()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-interface {v1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getNormalCFM()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getStopCFM()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v14}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getTargetVelocity()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_0
    move-object v2, v0

    move-object/from16 v0, v16

    iget-object v3, v2, Lcom/jme3/bullet/joints/SixDofJoint;->translationalMotor:Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getAccumulatedImpulse(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "transMotor"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    invoke-interface {v1, v2, v5, v14}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getRestitution()F

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-interface {v1, v2, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getDamping()F

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v4, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    const/4 v2, 0x3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->isEnabled(I)Z

    move-result v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v1, v5, v14, v15}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getERP(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLimitSoftness()F

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v10, 0x3f333333    # 0.7f

    invoke-interface {v1, v2, v5, v10}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getMaxMotorForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getNormalCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getStopCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getTargetVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, v4}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
