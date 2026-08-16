.class public Lcom/jme3/bullet/joints/SliderJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagDampingDirAng:Ljava/lang/String; = "dampingDirAng"

.field private static final tagDampingDirLin:Ljava/lang/String; = "dampingDirLin"

.field private static final tagDampingLimAng:Ljava/lang/String; = "dampingLimAng"

.field private static final tagDampingLimLin:Ljava/lang/String; = "dampingLimLin"

.field private static final tagDampingOrthoAng:Ljava/lang/String; = "dampingOrthoAng"

.field private static final tagDampingOrthoLin:Ljava/lang/String; = "dampingOrthoLin"

.field private static final tagLowerAngLimit:Ljava/lang/String; = "lowerAngLimit"

.field private static final tagLowerLinLimit:Ljava/lang/String; = "lowerLinLimit"

.field private static final tagMaxAngMotorForce:Ljava/lang/String; = "maxAngMotorForce"

.field private static final tagMaxLinMotorForce:Ljava/lang/String; = "maxLinMotorForce"

.field private static final tagPoweredAngMotor:Ljava/lang/String; = "poweredAngMotor"

.field private static final tagPoweredLinMotor:Ljava/lang/String; = "poweredLinMotor"

.field private static final tagRestitutionDirAng:Ljava/lang/String; = "restitutionDirAng"

.field private static final tagRestitutionDirLin:Ljava/lang/String; = "restitutionDirLin"

.field private static final tagRestitutionLimAng:Ljava/lang/String; = "restitutionLimAng"

.field private static final tagRestitutionLimLin:Ljava/lang/String; = "restitutionLimLin"

.field private static final tagRestitutionOrthoAng:Ljava/lang/String; = "restitutionOrthoAng"

.field private static final tagRestitutionOrthoLin:Ljava/lang/String; = "restitutionOrthoLin"

.field private static final tagRotA:Ljava/lang/String; = "rotA"

.field private static final tagRotB:Ljava/lang/String; = "rotB"

.field private static final tagSoftnessDirAng:Ljava/lang/String; = "softnessDirAng"

.field private static final tagSoftnessDirLin:Ljava/lang/String; = "softnessDirLin"

.field private static final tagSoftnessLimAng:Ljava/lang/String; = "softnessLimAng"

.field private static final tagSoftnessLimLin:Ljava/lang/String; = "softnessLimLin"

.field private static final tagSoftnessOrthoAng:Ljava/lang/String; = "softnessOrthoAng"

.field private static final tagSoftnessOrthoLin:Ljava/lang/String; = "softnessOrthoLin"

.field private static final tagTargetAngMotorVelocity:Ljava/lang/String; = "targetAngMotorVelocity"

.field private static final tagTargetLinMotorVelocity:Ljava/lang/String; = "targetLinMotorVelocity"

.field private static final tagUpperAngLimit:Ljava/lang/String; = "upperAngLimit"

.field private static final tagUpperLinLimit:Ljava/lang/String; = "upperLinLimit"

.field private static final tagUseLinearReferenceFrameA:Ljava/lang/String; = "useLinearReferenceFrameA"


# instance fields
.field private rotA:Lcom/jme3/math/Matrix3f;

.field private rotB:Lcom/jme3/math/Matrix3f;

.field private useLinearReferenceFrameA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/SliderJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/SliderJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 8
    iput-boolean p7, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    .line 9
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 10
    invoke-virtual {p6}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 13
    iput-boolean p5, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    .line 14
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 15
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/joints/JointEnd;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 3
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 4
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 5
    sget-object p1, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    if-ne p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint()V

    return-void
.end method

.method private static native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J
.end method

.method private createJoint()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 7
    iget-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    iget-boolean v6, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    .line 8
    invoke-static {v4, v5, v2, v3, v6}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J

    move-result-wide v2

    .line 9
    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 11
    iget-object v6, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v9, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    iget-boolean v10, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    invoke-static/range {v2 .. v10}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J

    move-result-wide v2

    .line 12
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    return-void
.end method

.method private static native createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Z)J
.end method

.method private static native getDampingDirAng(J)F
.end method

.method private static native getDampingDirLin(J)F
.end method

.method private static native getDampingLimAng(J)F
.end method

.method private static native getDampingLimLin(J)F
.end method

.method private static native getDampingOrthoAng(J)F
.end method

.method private static native getDampingOrthoLin(J)F
.end method

.method private static native getFrameOffsetA(JLcom/jme3/math/Transform;)V
.end method

.method private static native getFrameOffsetB(JLcom/jme3/math/Transform;)V
.end method

.method private static native getLowerAngLimit(J)F
.end method

.method private static native getLowerLinLimit(J)F
.end method

.method private static native getMaxAngMotorForce(J)F
.end method

.method private static native getMaxLinMotorForce(J)F
.end method

.method private static native getRestitutionDirAng(J)F
.end method

.method private static native getRestitutionDirLin(J)F
.end method

.method private static native getRestitutionLimAng(J)F
.end method

.method private static native getRestitutionLimLin(J)F
.end method

.method private static native getRestitutionOrthoAng(J)F
.end method

.method private static native getRestitutionOrthoLin(J)F
.end method

.method private static native getSoftnessDirAng(J)F
.end method

.method private static native getSoftnessDirLin(J)F
.end method

.method private static native getSoftnessLimAng(J)F
.end method

.method private static native getSoftnessLimLin(J)F
.end method

.method private static native getSoftnessOrthoAng(J)F
.end method

.method private static native getSoftnessOrthoLin(J)F
.end method

.method private static native getTargetAngMotorVelocity(J)F
.end method

.method private static native getTargetLinMotorVelocity(J)F
.end method

.method private static native getUpperAngLimit(J)F
.end method

.method private static native getUpperLinLimit(J)F
.end method

.method private static native isPoweredAngMotor(J)Z
.end method

.method private static native isPoweredLinMotor(J)Z
.end method

.method private static native setDampingDirAng(JF)V
.end method

.method private static native setDampingDirLin(JF)V
.end method

.method private static native setDampingLimAng(JF)V
.end method

.method private static native setDampingLimLin(JF)V
.end method

.method private static native setDampingOrthoAng(JF)V
.end method

.method private static native setDampingOrthoLin(JF)V
.end method

.method private static native setLowerAngLimit(JF)V
.end method

.method private static native setLowerLinLimit(JF)V
.end method

.method private static native setMaxAngMotorForce(JF)V
.end method

.method private static native setMaxLinMotorForce(JF)V
.end method

.method private static native setPoweredAngMotor(JZ)V
.end method

.method private static native setPoweredLinMotor(JZ)V
.end method

.method private static native setRestitutionDirAng(JF)V
.end method

.method private static native setRestitutionDirLin(JF)V
.end method

.method private static native setRestitutionLimAng(JF)V
.end method

.method private static native setRestitutionLimLin(JF)V
.end method

.method private static native setRestitutionOrthoAng(JF)V
.end method

.method private static native setRestitutionOrthoLin(JF)V
.end method

.method private static native setSoftnessDirAng(JF)V
.end method

.method private static native setSoftnessDirLin(JF)V
.end method

.method private static native setSoftnessLimAng(JF)V
.end method

.method private static native setSoftnessLimLin(JF)V
.end method

.method private static native setSoftnessOrthoAng(JF)V
.end method

.method private static native setSoftnessOrthoLin(JF)V
.end method

.method private static native setTargetAngMotorVelocity(JF)V
.end method

.method private static native setTargetLinMotorVelocity(JF)V
.end method

.method private static native setUpperAngLimit(JF)V
.end method

.method private static native setUpperLinLimit(JF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/SliderJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerAngLimit()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerAngLimit(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerLinLimit()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerLinLimit(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxAngMotorForce()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxAngMotorForce(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxLinMotorForce()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxLinMotorForce(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredAngMotor()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredAngMotor(Z)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredLinMotor()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredLinMotor(Z)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoAng()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoAng(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoLin()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoLin(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetAngMotorVelocity()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetAngMotorVelocity(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetLinMotorVelocity()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetLinMotorVelocity(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperAngLimit()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperAngLimit(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperLinLimit()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperLinLimit(F)V

    return-void
.end method

.method public getDampingDirAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirAng(J)F

    move-result v0

    return v0
.end method

.method public getDampingDirLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirLin(J)F

    move-result v0

    return v0
.end method

.method public getDampingLimAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimAng(J)F

    move-result v0

    return v0
.end method

.method public getDampingLimLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimLin(J)F

    move-result v0

    return v0
.end method

.method public getDampingOrthoAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoAng(J)F

    move-result v0

    return v0
.end method

.method public getDampingOrthoLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoLin(J)F

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

    sget-object v2, Lcom/jme3/bullet/joints/SliderJoint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/SliderJoint;->getFrameOffsetB(JLcom/jme3/math/Transform;)V

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
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/SliderJoint;->getFrameOffsetA(JLcom/jme3/math/Transform;)V

    :goto_0
    return-object p2
.end method

.method public getLowerAngLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerAngLimit(J)F

    move-result v0

    return v0
.end method

.method public getLowerLinLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerLinLimit(J)F

    move-result v0

    return v0
.end method

.method public getMaxAngMotorForce()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxAngMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMaxLinMotorForce()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxLinMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionDirAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirAng(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionDirLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirLin(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionLimAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimAng(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionLimLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimLin(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionOrthoAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoAng(J)F

    move-result v0

    return v0
.end method

.method public getRestitutionOrthoLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoLin(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessDirAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirAng(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessDirLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirLin(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessLimAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimAng(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessLimLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimLin(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessOrthoAng()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoAng(J)F

    move-result v0

    return v0
.end method

.method public getSoftnessOrthoLin()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoLin(J)F

    move-result v0

    return v0
.end method

.method public getTargetAngMotorVelocity()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetAngMotorVelocity(J)F

    move-result v0

    return v0
.end method

.method public getTargetLinMotorVelocity()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetLinMotorVelocity(J)F

    move-result v0

    return v0
.end method

.method public getUpperAngLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperAngLimit(J)F

    move-result v0

    return v0
.end method

.method public getUpperLinLimit()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperLinLimit(J)F

    move-result v0

    return v0
.end method

.method public isPoweredAngMotor()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredAngMotor(J)Z

    move-result v0

    return v0
.end method

.method public isPoweredLinMotor()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredLinMotor(J)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 31
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

    const-string v2, "dampingDirAng"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v4, "dampingDirLin"

    invoke-interface {v1, v4, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v5, "dampingLimAng"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v5, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v5

    const-string v7, "dampingLimLin"

    invoke-interface {v1, v7, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v7

    const-string v8, "dampingOrthoAng"

    invoke-interface {v1, v8, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v8

    const-string v9, "dampingOrthoLin"

    invoke-interface {v1, v9, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v9

    const-string v10, "lowerAngLimit"

    invoke-interface {v1, v10, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v10

    const-string v11, "lowerLinLimit"

    invoke-interface {v1, v11, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v11

    const-string v12, "maxAngMotorForce"

    invoke-interface {v1, v12, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v12

    const-string v13, "maxLinMotorForce"

    invoke-interface {v1, v13, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v13

    const-string v14, "poweredAngMotor"

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v3, "poweredLinMotor"

    invoke-interface {v1, v3, v15}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v15, "restitutionDirAng"

    const v6, 0x3f333333    # 0.7f

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v17, v15

    const-string v15, "restitutionDirLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v18, v15

    const-string v15, "restitutionLimAng"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v19, v15

    const-string v15, "restitutionLimLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v20, v15

    const-string v15, "restitutionOrthoAng"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v21, v15

    const-string v15, "restitutionOrthoLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v6

    const-string v15, "softnessDirAng"

    move/from16 v22, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v16, v15

    const-string v15, "softnessDirLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v23, v15

    const-string v15, "softnessLimAng"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v24, v15

    const-string v15, "softnessLimLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v25, v15

    const-string v15, "softnessOrthoAng"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v26, v15

    const-string v15, "softnessOrthoLin"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v6

    const-string v15, "targetAngMotorVelocity"

    move/from16 v27, v6

    const/4 v6, 0x0

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 p1, v15

    const-string v15, "targetLinMotorVelocity"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v15

    move/from16 v28, v15

    const-string v15, "upperAngLimit"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v6

    const-string v15, "upperLinLimit"

    move/from16 v29, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v6

    new-instance v15, Lcom/jme3/math/Matrix3f;

    invoke-direct {v15}, Lcom/jme3/math/Matrix3f;-><init>()V

    move/from16 v30, v6

    const-string v6, "rotA"

    invoke-interface {v1, v6, v15}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Matrix3f;

    iput-object v6, v0, Lcom/jme3/bullet/joints/SliderJoint;->rotA:Lcom/jme3/math/Matrix3f;

    new-instance v6, Lcom/jme3/math/Matrix3f;

    invoke-direct {v6}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v15, "rotB"

    invoke-interface {v1, v15, v6}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Matrix3f;

    iput-object v6, v0, Lcom/jme3/bullet/joints/SliderJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v6, "useLinearReferenceFrameA"

    const/4 v15, 0x0

    invoke-interface {v1, v6, v15}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    invoke-direct/range {p0 .. p0}, Lcom/jme3/bullet/joints/SliderJoint;->createJoint()V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirAng(F)V

    invoke-virtual {v0, v4}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirLin(F)V

    invoke-virtual {v0, v5}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimAng(F)V

    invoke-virtual {v0, v7}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimLin(F)V

    invoke-virtual {v0, v8}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoAng(F)V

    invoke-virtual {v0, v9}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoLin(F)V

    invoke-virtual {v0, v10}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerAngLimit(F)V

    invoke-virtual {v0, v11}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerLinLimit(F)V

    invoke-virtual {v0, v12}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxAngMotorForce(F)V

    invoke-virtual {v0, v13}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxLinMotorForce(F)V

    invoke-virtual {v0, v14}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredAngMotor(Z)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredLinMotor(Z)V

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirAng(F)V

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirLin(F)V

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimAng(F)V

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimLin(F)V

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoAng(F)V

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoLin(F)V

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirAng(F)V

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirLin(F)V

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimAng(F)V

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimLin(F)V

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoAng(F)V

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoLin(F)V

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetAngMotorVelocity(F)V

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetLinMotorVelocity(F)V

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperAngLimit(F)V

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperLinLimit(F)V

    return-void
.end method

.method public setDampingDirAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirAng(JF)V

    return-void
.end method

.method public setDampingDirLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingDirLin(JF)V

    return-void
.end method

.method public setDampingLimAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimAng(JF)V

    return-void
.end method

.method public setDampingLimLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingLimLin(JF)V

    return-void
.end method

.method public setDampingOrthoAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoAng(JF)V

    return-void
.end method

.method public setDampingOrthoLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setDampingOrthoLin(JF)V

    return-void
.end method

.method public setLowerAngLimit(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerAngLimit(JF)V

    return-void
.end method

.method public setLowerLinLimit(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setLowerLinLimit(JF)V

    return-void
.end method

.method public setMaxAngMotorForce(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxAngMotorForce(JF)V

    return-void
.end method

.method public setMaxLinMotorForce(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setMaxLinMotorForce(JF)V

    return-void
.end method

.method public setPoweredAngMotor(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredAngMotor(JZ)V

    return-void
.end method

.method public setPoweredLinMotor(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setPoweredLinMotor(JZ)V

    return-void
.end method

.method public setRestitutionDirAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirAng(JF)V

    return-void
.end method

.method public setRestitutionDirLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionDirLin(JF)V

    return-void
.end method

.method public setRestitutionLimAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimAng(JF)V

    return-void
.end method

.method public setRestitutionLimLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionLimLin(JF)V

    return-void
.end method

.method public setRestitutionOrthoAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoAng(JF)V

    return-void
.end method

.method public setRestitutionOrthoLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setRestitutionOrthoLin(JF)V

    return-void
.end method

.method public setSoftnessDirAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirAng(JF)V

    return-void
.end method

.method public setSoftnessDirLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessDirLin(JF)V

    return-void
.end method

.method public setSoftnessLimAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimAng(JF)V

    return-void
.end method

.method public setSoftnessLimLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessLimLin(JF)V

    return-void
.end method

.method public setSoftnessOrthoAng(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoAng(JF)V

    return-void
.end method

.method public setSoftnessOrthoLin(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setSoftnessOrthoLin(JF)V

    return-void
.end method

.method public setTargetAngMotorVelocity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetAngMotorVelocity(JF)V

    return-void
.end method

.method public setTargetLinMotorVelocity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setTargetLinMotorVelocity(JF)V

    return-void
.end method

.method public setUpperAngLimit(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperAngLimit(JF)V

    return-void
.end method

.method public setUpperLinLimit(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SliderJoint;->setUpperLinLimit(JF)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirAng()F

    move-result v0

    const-string v1, "dampingDirAng"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingDirLin()F

    move-result v0

    const-string v1, "dampingDirLin"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimAng()F

    move-result v0

    const-string v1, "dampingLimAng"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingLimLin()F

    move-result v0

    const-string v1, "dampingLimLin"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoAng()F

    move-result v0

    const-string v1, "dampingOrthoAng"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getDampingOrthoLin()F

    move-result v0

    const-string v1, "dampingOrthoLin"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerAngLimit()F

    move-result v0

    const-string v1, "lowerAngLimit"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getLowerLinLimit()F

    move-result v0

    const-string v1, "lowerLinLimit"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxAngMotorForce()F

    move-result v0

    const-string v1, "maxAngMotorForce"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getMaxLinMotorForce()F

    move-result v0

    const-string v1, "maxLinMotorForce"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredAngMotor()Z

    move-result v0

    const-string v1, "poweredAngMotor"

    const/4 v4, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->isPoweredLinMotor()Z

    move-result v0

    const-string v1, "poweredLinMotor"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirAng()F

    move-result v0

    const-string v1, "restitutionDirAng"

    const v5, 0x3f333333    # 0.7f

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionDirLin()F

    move-result v0

    const-string v1, "restitutionDirLin"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimAng()F

    move-result v0

    const-string v1, "restitutionLimAng"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionLimLin()F

    move-result v0

    const-string v1, "restitutionLimLin"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoAng()F

    move-result v0

    const-string v1, "restitutionOrthoAng"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getRestitutionOrthoLin()F

    move-result v0

    const-string v1, "restitutionOrthoLin"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirAng()F

    move-result v0

    const-string v1, "softnessDirAng"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessDirLin()F

    move-result v0

    const-string v1, "softnessDirLin"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimAng()F

    move-result v0

    const-string v1, "softnessLimAng"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessLimLin()F

    move-result v0

    const-string v1, "softnessLimLin"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoAng()F

    move-result v0

    const-string v1, "softnessOrthoAng"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getSoftnessOrthoLin()F

    move-result v0

    const-string v1, "softnessOrthoLin"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetAngMotorVelocity()F

    move-result v0

    const-string v1, "targetAngMotorVelocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getTargetLinMotorVelocity()F

    move-result v0

    const-string v1, "targetLinMotorVelocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperAngLimit()F

    move-result v0

    const-string v1, "upperAngLimit"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SliderJoint;->getUpperLinLimit()F

    move-result v0

    const-string v1, "upperLinLimit"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/SliderJoint;->useLinearReferenceFrameA:Z

    const-string v1, "useLinearReferenceFrameA"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
