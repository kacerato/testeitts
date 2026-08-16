.class public abstract Lcom/jme3/bullet/joints/Constraint;
.super Lcom/jme3/bullet/joints/PhysicsJoint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger15:Ljava/util/logging/Logger;

.field private static final tagBreakingImpulse:Ljava/lang/String; = "breakingImpulseThreshold"

.field private static final tagIsCollision:Ljava/lang/String; = "isCollisionBetweenLinkedBodies"

.field private static final tagIsEnabled:Ljava/lang/String; = "isEnabled"

.field private static final tagIsFeedback:Ljava/lang/String; = "isFeedback"

.field private static final tagNumIterations:Ljava/lang/String; = "numIterations"

.field private static final tagPivotA:Ljava/lang/String; = "pivotA"

.field private static final tagPivotB:Ljava/lang/String; = "pivotB"


# instance fields
.field protected pivotA:Lcom/jme3/math/Vector3f;

.field protected pivotB:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/Constraint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/Constraint;->logger15:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    .line 32
    const-string v0, "body A"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 33
    const-string v0, "body B"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-eq p1, p2, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 36
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    iput-object p3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 37
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    iput-object p3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    .line 38
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 39
    invoke-virtual {p2, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The jointed bodies must be distinct."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    .line 3
    const-string v0, "body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "body end"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    const-string v0, "pivot in body"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    sget-object v0, Lcom/jme3/bullet/joints/Constraint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 8
    iput-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 9
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "body end = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 13
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 14
    iput-object v2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    .line 17
    const-string v0, "body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    const-string v0, "body end"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 19
    const-string v0, "pivot in body"

    invoke-static {p3, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 20
    const-string v0, "pivot in world"

    invoke-static {p4, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 21
    sget-object v0, Lcom/jme3/bullet/joints/Constraint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 23
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 24
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "body end = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 28
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 29
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    .line 30
    :goto_0
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-void
.end method

.method private static native enableFeedback(JZ)V
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->finalizeNative(J)V

    return-void
.end method

.method private static native getAppliedImpulse(J)F
.end method

.method private static native getBreakingImpulseThreshold(J)F
.end method

.method public static final native getConstraintType(J)I
.end method

.method private static native getOverrideIterations(J)I
.end method

.method private static native isEnabled(J)Z
.end method

.method private static native needsFeedback(J)Z
.end method

.method private static native overrideIterations(JI)V
.end method

.method private static native setBreakingImpulseThreshold(JF)V
.end method

.method private static native setEnabled(JZ)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/Constraint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getBreakingImpulseThreshold()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setBreakingImpulseThreshold(F)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->isFeedback()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setFeedback(Z)V

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/Constraint;->getOverrideIterations()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->overrideIterations(I)V

    return-void
.end method

.method public getAppliedImpulse()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->isFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->getAppliedImpulse(J)F

    move-result v0

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Feedback is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    return-object v0
.end method

.method public getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    return-object v0
.end method

.method public getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBreakingImpulseThreshold()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->getBreakingImpulseThreshold(J)F

    move-result v0

    return v0
.end method

.method public getOverrideIterations()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->getOverrideIterations(J)I

    move-result v0

    return v0
.end method

.method public getPivot(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    const-string v0, "end"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/bullet/joints/Constraint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/joints/Constraint;->getPivotB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/jme3/bullet/joints/Constraint;->getPivotA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPivotA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No body at the A end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPivotB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No body at the B end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCollisionBetweenLinkedBodies()Z
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->ignores(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v0

    xor-int/2addr v2, v0

    :cond_0
    return v2
.end method

.method public isEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isFeedback()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Constraint;->needsFeedback(J)Z

    move-result v0

    return v0
.end method

.method public overrideIterations(I)V
    .locals 3

    const/4 v0, -0x1

    const v1, 0x7fffffff

    .line 1
    const-string v2, "number of iterations"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Constraint;->overrideIterations(JI)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "pivotA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    const-string v0, "pivotB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final readConstraintProperties(Lcom/jme3/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "breakingImpulseThreshold"

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setBreakingImpulseThreshold(F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "isCollisionBetweenLinkedBodies"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setCollisionBetweenLinkedBodies(Z)V

    :cond_0
    const-string v0, "isEnabled"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setEnabled(Z)V

    const-string v0, "isFeedback"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->setFeedback(Z)V

    const-string v0, "numIterations"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->overrideIterations(I)V

    return-void
.end method

.method public setBreakingImpulseThreshold(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Constraint;->setBreakingImpulseThreshold(JF)V

    return-void
.end method

.method public setCollisionBetweenLinkedBodies(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->countEnds()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->removeFromIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t configure collisions between linked bodies for a single-ended constraint!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Constraint;->setEnabled(JZ)V

    return-void
.end method

.method public setFeedback(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Constraint;->enableFeedback(JZ)V

    return-void
.end method

.method public setPivotInA(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setPivotInB(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    const-string v1, "pivotA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    const-string v1, "pivotB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBreakingImpulseThreshold()F

    move-result v0

    const-string v1, "breakingImpulseThreshold"

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->isCollisionBetweenLinkedBodies()Z

    move-result v0

    const-string v1, "isCollisionBetweenLinkedBodies"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->isEnabled()Z

    move-result v0

    const-string v1, "isEnabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->isFeedback()Z

    move-result v0

    const-string v1, "isFeedback"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getOverrideIterations()I

    move-result v0

    const-string v1, "numIterations"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
