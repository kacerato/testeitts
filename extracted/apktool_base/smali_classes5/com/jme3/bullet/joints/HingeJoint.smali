.class public Lcom/jme3/bullet/joints/HingeJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAngularOnly:Ljava/lang/String; = "angularOnly"

.field private static final tagAxisA:Ljava/lang/String; = "axisA"

.field private static final tagAxisB:Ljava/lang/String; = "axisB"

.field private static final tagBiasFactor:Ljava/lang/String; = "biasFactor"

.field private static final tagEnableAngularMotor:Ljava/lang/String; = "enableAngularMotor"

.field private static final tagLimitSoftness:Ljava/lang/String; = "limitSoftness"

.field private static final tagLowerLimit:Ljava/lang/String; = "lowerLimit"

.field private static final tagMaxMotorImpulse:Ljava/lang/String; = "maxMotorImpulse"

.field private static final tagRelaxationFactor:Ljava/lang/String; = "relaxationFactor"

.field private static final tagTargetVelocity:Ljava/lang/String; = "targetVelocity"

.field private static final tagUpperLimit:Ljava/lang/String; = "upperLimit"


# instance fields
.field private angularOnly:Z

.field private axisA:Lcom/jme3/math/Vector3f;

.field private axisB:Lcom/jme3/math/Vector3f;

.field private biasFactor:F

.field private limitSoftness:F

.field private relaxationFactor:F

.field private useReferenceFrameA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/HingeJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/HingeJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->useReferenceFrameA:Z

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    const v0, 0x3f666666    # 0.9f

    .line 5
    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 7

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    .line 24
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->useReferenceFrameA:Z

    const p1, 0x3e99999a    # 0.3f

    .line 25
    iput p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    const p1, 0x3f666666    # 0.9f

    .line 26
    iput p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    iput p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    .line 28
    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    .line 29
    invoke-virtual {p6}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    .line 30
    invoke-direct {p0}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint()V

    .line 31
    invoke-super {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 32
    iget-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/HingeJoint;->setAngularOnly(JZ)V

    .line 33
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getLowerLimit()F

    move-result v2

    .line 34
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getUpperLimit()F

    move-result v3

    .line 35
    iget v4, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    iget v5, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    iget v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(JFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/joints/JointEnd;)V
    .locals 7

    .line 7
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    .line 9
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->useReferenceFrameA:Z

    const p2, 0x3e99999a    # 0.3f

    .line 10
    iput p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    const p2, 0x3f666666    # 0.9f

    .line 11
    iput p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    iput p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    .line 13
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    .line 14
    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    if-ne p6, v0, :cond_0

    const/4 p1, 0x1

    .line 15
    :cond_0
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->useReferenceFrameA:Z

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint()V

    .line 17
    invoke-super {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 18
    iget-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/HingeJoint;->setAngularOnly(JZ)V

    .line 19
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getLowerLimit()F

    move-result v2

    .line 20
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getUpperLimit()F

    move-result v3

    .line 21
    iget v4, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    iget v5, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    iget v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(JFFFFF)V

    return-void
.end method

.method private static native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J
.end method

.method private createJoint()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v3

    .line 6
    iget-object v5, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->length()F

    move-result v6

    .line 8
    iget-object v7, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v8}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v7

    .line 9
    invoke-static {v6, v7}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v6

    .line 10
    invoke-static {v5}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    .line 11
    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 12
    invoke-virtual {v7, v6, v5}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 13
    invoke-virtual {v0, v7}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    .line 14
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 15
    invoke-virtual {v0, v5}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 16
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    iget-boolean v7, p0, Lcom/jme3/bullet/joints/HingeJoint;->useReferenceFrameA:Z

    invoke-static {v1, v2, v5, v6, v7}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)J

    move-result-wide v1

    .line 17
    invoke-virtual {v0, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 18
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v3}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 20
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-static/range {v1 .. v8}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J

    move-result-wide v1

    .line 21
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    return-void
.end method

.method private static native createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)J
.end method

.method private static native enableMotor(JZFF)V
.end method

.method private static native getEnableAngularMotor(J)Z
.end method

.method private static native getFrameOffsetA(JLcom/jme3/math/Transform;)V
.end method

.method private static native getFrameOffsetB(JLcom/jme3/math/Transform;)V
.end method

.method private static native getHingeAngle(J)F
.end method

.method private static native getLowerLimit(J)F
.end method

.method private static native getMaxMotorImpulse(J)F
.end method

.method private static native getMotorTargetVelocity(J)F
.end method

.method private static native getUpperLimit(J)F
.end method

.method private static native setAngularOnly(JZ)V
.end method

.method private static native setLimit(JFFFFF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/HingeJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint()V

    iget-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/HingeJoint;->setAngularOnly(Z)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/HingeJoint;->getLowerLimit()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/HingeJoint;->getUpperLimit()F

    move-result v3

    iget v4, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    iget v5, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    iget v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(FFFFF)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/HingeJoint;->getEnableMotor()Z

    move-result p1

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/HingeJoint;->getMotorTargetVelocity()F

    move-result p2

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/HingeJoint;->getMaxMotorImpulse()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/bullet/joints/HingeJoint;->enableMotor(ZFF)V

    return-void
.end method

.method public enableMotor(ZFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/joints/HingeJoint;->enableMotor(JZFF)V

    return-void
.end method

.method public getBiasFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    return v0
.end method

.method public getEnableMotor()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getEnableAngularMotor(J)Z

    move-result v0

    return v0
.end method

.method public getFrameTransform(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/HingeJoint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/HingeJoint;->getFrameOffsetB(JLcom/jme3/math/Transform;)V

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
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/HingeJoint;->getFrameOffsetA(JLcom/jme3/math/Transform;)V

    :goto_0
    return-object p2
.end method

.method public getHingeAngle()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getHingeAngle(J)F

    move-result v0

    return v0
.end method

.method public getLimitSoftness()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    return v0
.end method

.method public final getLowerLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getLowerLimit(J)F

    move-result v0

    return v0
.end method

.method public getMaxMotorImpulse()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getMaxMotorImpulse(J)F

    move-result v0

    return v0
.end method

.method public getMotorTargetVelocity()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getMotorTargetVelocity(J)F

    move-result v0

    return v0
.end method

.method public getRelaxationFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    return v0
.end method

.method public final getUpperLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/HingeJoint;->getUpperLimit(J)F

    move-result v0

    return v0
.end method

.method public isAngularOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "axisA"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "axisB"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    const-string v0, "angularOnly"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    const-string v0, "lowerLimit"

    const v2, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v0, "upperLimit"

    const v2, -0xeb60d36    # -1.0E30f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v0, "biasFactor"

    const v2, 0x3e99999a    # 0.3f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    const-string v0, "relaxationFactor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    const-string v0, "limitSoftness"

    const v2, 0x3f666666    # 0.9f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    invoke-direct {p0}, Lcom/jme3/bullet/joints/HingeJoint;->createJoint()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    const-string v0, "enableAngularMotor"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "targetVelocity"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v3, "maxMotorImpulse"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/bullet/joints/HingeJoint;->enableMotor(ZFF)V

    iget-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/HingeJoint;->setAngularOnly(Z)V

    iget v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    iget v7, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    iget v8, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(FFFFF)V

    return-void
.end method

.method public setAngularOnly(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/HingeJoint;->setAngularOnly(JZ)V

    return-void
.end method

.method public setLimit(FF)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget v4, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    iget v5, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    iget v6, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(JFFFFF)V

    return-void
.end method

.method public setLimit(FFFFF)V
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    iput p4, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    .line 5
    iput p5, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    .line 6
    iput p3, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 7
    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/joints/HingeJoint;->setLimit(JFFFFF)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisA:Lcom/jme3/math/Vector3f;

    const-string v1, "axisA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->axisB:Lcom/jme3/math/Vector3f;

    const-string v1, "axisB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->angularOnly:Z

    const-string v1, "angularOnly"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getLowerLimit()F

    move-result v0

    const-string v1, "lowerLimit"

    const v3, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getUpperLimit()F

    move-result v0

    const-string v1, "upperLimit"

    const v3, -0xeb60d36    # -1.0E30f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->biasFactor:F

    const-string v1, "biasFactor"

    const v3, 0x3e99999a    # 0.3f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->relaxationFactor:F

    const-string v1, "relaxationFactor"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/HingeJoint;->limitSoftness:F

    const-string v1, "limitSoftness"

    const v3, 0x3f666666    # 0.9f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getEnableMotor()Z

    move-result v0

    const-string v1, "enableAngularMotor"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getMotorTargetVelocity()F

    move-result v0

    const-string v1, "targetVelocity"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/HingeJoint;->getMaxMotorImpulse()F

    move-result v0

    const-string v1, "maxMotorImpulse"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
