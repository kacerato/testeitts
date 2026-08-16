.class public Lcom/jme3/bullet/joints/New6Dof;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagDampingLimited:Ljava/lang/String; = "_DampingLimited"

.field private static final tagMotorEnabled:Ljava/lang/String; = "_MotorEnabled"

.field private static final tagRotA:Ljava/lang/String; = "rotA"

.field private static final tagRotB:Ljava/lang/String; = "rotB"

.field private static final tagRotMotor:Ljava/lang/String; = "rm"

.field private static final tagRotOrder:Ljava/lang/String; = "rotOrder"

.field private static final tagServoEnabled:Ljava/lang/String; = "_ServoEnabled"

.field private static final tagSpringEnabled:Ljava/lang/String; = "_SpringEnabled"

.field private static final tagStiffnessLimited:Ljava/lang/String; = "_StiffnessLimited"

.field private static final tagTransMotor:Ljava/lang/String; = "tm"


# instance fields
.field private rotA:Lcom/jme3/math/Matrix3f;

.field private rotB:Lcom/jme3/math/Matrix3f;

.field private rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

.field private rotationOrder:Lcom/jme3/bullet/RotationOrder;

.field private translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/New6Dof;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 8
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    .line 9
    invoke-virtual {p6}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    .line 10
    iput-object p7, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;->createConstraint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 3
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    .line 4
    invoke-virtual {p4}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    .line 5
    iput-object p6, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;->createConstraint()V

    return-void
.end method

.method private createConstraint()V
    .locals 13

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v11

    iget-object v2, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v2

    invoke-static {v2, v0, v2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-static {v11, v12, v2, v4, v10}, Lcom/jme3/bullet/joints/New6Dof;->createSingleEnded(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;I)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v6, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v9, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    move-wide v2, v0

    move-wide v4, v11

    invoke-static/range {v2 .. v10}, Lcom/jme3/bullet/joints/New6Dof;->createDoubleEnded(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;I)J

    move-result-wide v4

    sget-object v2, Lcom/jme3/bullet/joints/New6Dof;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Created {0} with A={1} B={2}"

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;->gatherMotors()V

    return-void
.end method

.method private static native createDoubleEnded(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;I)J
.end method

.method private static native createSingleEnded(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;I)J
.end method

.method private static native enableSpring(JIZ)V
.end method

.method private gatherMotors()V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/jme3/bullet/joints/motors/RotationMotor;

    iput-object v3, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-static {v0, v1, v3}, Lcom/jme3/bullet/joints/New6Dof;->getRotationalMotor(JI)J

    move-result-wide v4

    iget-object v6, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

    new-instance v7, Lcom/jme3/bullet/joints/motors/RotationMotor;

    invoke-direct {v7, v4, v5}, Lcom/jme3/bullet/joints/motors/RotationMotor;-><init>(J)V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationalMotor(J)J

    move-result-wide v0

    new-instance v2, Lcom/jme3/bullet/joints/motors/TranslationMotor;

    invoke-direct {v2, v0, v1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;-><init>(J)V

    iput-object v2, p0, Lcom/jme3/bullet/joints/New6Dof;->translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;

    return-void
.end method

.method private static native getAngles(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAxis(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getCalculatedBasisA(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native getCalculatedBasisB(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native getCalculatedOriginA(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getCalculatedOriginB(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getFrameOffsetA(JLcom/jme3/math/Transform;)V
.end method

.method private static native getFrameOffsetB(JLcom/jme3/math/Transform;)V
.end method

.method private static native getPivotOffset(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getRotationOrder(J)I
.end method

.method private static native getRotationalMotor(JI)J
.end method

.method private static native getTranslationalMotor(J)J
.end method

.method public static newInstance(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bullet/RotationOrder;)Lcom/jme3/bullet/joints/New6Dof;
    .locals 11

    const-string v0, "a"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "b"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot location"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "pivot orientation"

    invoke-static {p3, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    const-string v0, "rotation order"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v0

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2, p2, p3}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    invoke-static {v2, v0, v2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v8

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1, p2, p3}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    invoke-static {v1, v0, v1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v9

    new-instance p2, Lcom/jme3/bullet/joints/New6Dof;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    return-object p2
.end method

.method private static native setAllEquilibriumPointsToCurrent(J)V
.end method

.method private static native setDamping(JIFZ)V
.end method

.method private static native setEquilibriumPoint(JIF)V
.end method

.method private static native setEquilibriumPointToCurrent(JI)V
.end method

.method private static native setRotationOrder(JI)V
.end method

.method private static native setStiffness(JIFZ)V
.end method


# virtual methods
.method public calculatedBasisA(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getCalculatedBasisA(JLcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public calculatedBasisB(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getCalculatedBasisB(JLcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public calculatedOriginA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getCalculatedOriginA(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public calculatedOriginB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getCalculatedOriginB(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public checkRotationOrder()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationOrder(J)I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 9

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/New6Dof;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

    iput-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;->createConstraint()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isDampingLimited()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setDampingLimited(Z)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isMotorEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setMotorEnabled(Z)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isServoEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setServoEnabled(Z)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isSpringEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isStiffnessLimited()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setStiffnessLimited(Z)V

    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v4

    array-length v5, v4

    move v6, p2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v3, v7}, Lcom/jme3/bullet/joints/motors/RotationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;)F

    move-result v8

    invoke-virtual {v2, v7, v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    move v3, p2

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isDampingLimited(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setDampingLimited(IZ)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isMotorEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setMotorEnabled(IZ)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isServoEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setServoEnabled(IZ)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isSpringEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setSpringEnabled(IZ)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isStiffnessLimited(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setStiffnessLimited(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge p2, v3, :cond_4

    aget-object v4, v2, p2

    invoke-virtual {v0, v4, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public enableSpring(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->enableSpring(JIZ)V

    return-void
.end method

.method public get(Lcom/jme3/bullet/joints/motors/MotorParam;I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result p1

    :goto_0
    return p1
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getAngles(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->getAxis(JILcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public getFrameTransform(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/New6Dof$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->getFrameOffsetB(JLcom/jme3/math/Transform;)V

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
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/New6Dof;->getFrameOffsetA(JLcom/jme3/math/Transform;)V

    :goto_0
    return-object p2
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->getPivotOffset(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getRotationMatrix(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 1

    const-string v0, "end"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Matrix3f;

    invoke-direct {p2}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    :goto_0
    return-object p2
.end method

.method public getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;
    .locals 1

    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRotationOrder()Lcom/jme3/bullet/RotationOrder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->checkRotationOrder()Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    return-object v0
.end method

.method public getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;

    return-object v0
.end method

.method public isMotorEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isMotorEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isMotorEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isServoEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isServoEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isServoEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isSpringEnabled(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isSpringEnabled()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isSpringEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "rotA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    const-string v0, "rotB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    const-class v0, Lcom/jme3/bullet/RotationOrder;

    sget-object v1, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    const-string v2, "rotOrder"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/RotationOrder;

    iput-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;->createConstraint()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v2, "_StiffnessLimited"

    const-string v3, "_SpringEnabled"

    const-string v4, "_ServoEnabled"

    const-string v5, "_MotorEnabled"

    const-string v6, "_DampingLimited"

    const/4 v7, 0x3

    if-ge v1, v7, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setDampingLimited(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setMotorEnabled(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7, v4}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setServoEnabled(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setStiffnessLimited(Z)V

    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/jme3/bullet/joints/motors/MotorParam;->tagSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jme3/bullet/joints/motors/MotorParam;->defaultForRotationMotor()F

    move-result v9

    invoke-interface {p1, v6, v9}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v7, v5, v6}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/joints/New6Dof;->translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move v8, v0

    :goto_2
    const-string v9, "tm"

    if-ge v8, v7, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setDampingLimited(IZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setMotorEnabled(IZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setServoEnabled(IZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v1, v8, v10}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setSpringEnabled(IZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9, v0}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setStiffnessLimited(IZ)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/jme3/bullet/joints/motors/MotorParam;->tagSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jme3/bullet/joints/motors/MotorParam;->defaultForRotationMotor()F

    move-result v6

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7, v6, v6, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {p1, v5, v7}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4, v5}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public set(Lcom/jme3/bullet/joints/motors/MotorParam;IF)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "DOF index"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/jme3/math/Vector3f;->set(IF)V

    invoke-virtual {v0, p1, v1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void
.end method

.method public setDamping(IFZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/joints/New6Dof;->setDamping(JIFZ)V

    return-void
.end method

.method public setEquilibriumPoint()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/New6Dof;->setAllEquilibriumPointsToCurrent(J)V

    return-void
.end method

.method public setEquilibriumPoint(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 3
    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->setEquilibriumPointToCurrent(JI)V

    return-void
.end method

.method public setEquilibriumPoint(IF)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 6
    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->setEquilibriumPoint(JIF)V

    return-void
.end method

.method public setRotationOrder(Lcom/jme3/bullet/RotationOrder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/New6Dof;->setRotationOrder(JI)V

    return-void
.end method

.method public setStiffness(IFZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    const-string v2, "DOF index"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/joints/New6Dof;->setStiffness(JIFZ)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotA:Lcom/jme3/math/Matrix3f;

    const-string v1, "rotA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v1, "rotB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationOrder:Lcom/jme3/bullet/RotationOrder;

    const-string v1, "rotOrder"

    sget-object v3, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v3, "_StiffnessLimited"

    const-string v4, "_SpringEnabled"

    const-string v5, "_ServoEnabled"

    const-string v6, "_MotorEnabled"

    const-string v7, "_DampingLimited"

    const/4 v8, 0x3

    if-ge v1, v8, :cond_1

    iget-object v8, p0, Lcom/jme3/bullet/joints/New6Dof;->rotationMotor:[Lcom/jme3/bullet/joints/motors/RotationMotor;

    aget-object v8, v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isDampingLimited()Z

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v10, v7, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isMotorEnabled()Z

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v6, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isServoEnabled()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v5, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isSpringEnabled()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v4, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isStiffnessLimited()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    invoke-virtual {v8, v6}, Lcom/jme3/bullet/joints/motors/RotationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;)F

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/jme3/bullet/joints/motors/MotorParam;->tagSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/jme3/bullet/joints/motors/MotorParam;->defaultForRotationMotor()F

    move-result v6

    invoke-interface {p1, v7, v10, v6}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/joints/New6Dof;->translationMotor:Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move v9, v0

    :goto_2
    const-string v10, "tm"

    if-ge v9, v8, :cond_2

    invoke-virtual {v1, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isDampingLimited(I)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isMotorEnabled(I)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isServoEnabled(I)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isSpringEnabled(I)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v11, v12, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isStiffnessLimited(I)Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v11, v10, v0}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/jme3/bullet/joints/motors/MotorParam;->values()[Lcom/jme3/bullet/joints/motors/MotorParam;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    invoke-virtual {v1, v5, v2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->get(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/jme3/bullet/joints/motors/MotorParam;->tagSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v5, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method
