.class public Lcom/jme3/bullet/MultiBodyLink;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagCollider:Ljava/lang/String; = "collider"

.field private static final tagLinkIndex:Ljava/lang/String; = "linkIndex"

.field private static final tagMultiBody:Ljava/lang/String; = "multiBody"

.field private static final tagNumDofs:Ljava/lang/String; = "numDofs"

.field private static final tagParentLink:Ljava/lang/String; = "parentLink"


# instance fields
.field private collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

.field private linkIndex:I

.field private multiBody:Lcom/jme3/bullet/MultiBody;

.field private multiBodyId:J

.field private numDofs:I

.field private parentLink:Lcom/jme3/bullet/MultiBodyLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/MultiBodyLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/MultiBodyLink;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/MultiBody;I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    .line 5
    const-string v1, "multibody"

    invoke-static {p1, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    const-string v1, "index"

    invoke-static {p2, v1}, Lif/E;->q(ILjava/lang/String;)Z

    .line 7
    iput p2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    .line 8
    iput-object p1, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    .line 9
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    .line 10
    invoke-static {v1, v2, p2}, Lcom/jme3/bullet/MultiBodyLink;->getLinkId(JI)J

    move-result-wide v1

    .line 11
    invoke-super {p0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    .line 12
    invoke-static {v1, v2}, Lcom/jme3/bullet/MultiBodyLink;->getDofCount(J)I

    move-result p2

    iput p2, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    .line 13
    invoke-static {v1, v2}, Lcom/jme3/bullet/MultiBodyLink;->getParentIndex(J)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 14
    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/MultiBody;->getLink(I)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    :goto_0
    return-void
.end method

.method private static native addConstraintForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addConstraintTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addJointTorque(JIF)V
.end method

.method private static native addTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAppliedForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAppliedTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAxisBottom(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getAxisTop(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getCollider(JI)J
.end method

.method private static native getConstraintForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getConstraintTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getDVector(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getDofCount(J)I
.end method

.method private static native getEVector(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getFlags(J)I
.end method

.method private static native getInertiaLocal(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getJointPos(JI)F
.end method

.method private static native getJointTorque(JI)F
.end method

.method private static native getJointType(J)I
.end method

.method private static native getJointVel(JII)F
.end method

.method private static native getLinkId(JI)J
.end method

.method private static native getMass(J)F
.end method

.method private static native getParent2LinkRotation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native getParentIndex(J)I
.end method

.method private static native getPosVarCount(J)I
.end method

.method private static native getQ0Parent2LinkRotation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native getWorldTransform(JLcom/jme3/math/Transform;)V
.end method

.method private static native localFrameToWorld(JILcom/jme3/math/Matrix3f;)V
.end method

.method private static native localPosToWorld(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native setCollider(JJ)V
.end method

.method private static native setJointPos(JIIF)V
.end method

.method private static native setJointVel(JIIF)V
.end method

.method private static native worldPosToLocal(JILcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public addCollider(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/MultiBodyCollider;
    .locals 4

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/bullet/objects/MultiBodyCollider;

    iget-object v1, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    iget v2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/MultiBodyCollider;-><init>(Lcom/jme3/bullet/MultiBody;I)V

    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/MultiBodyLink;->setCollider(JJ)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->attachShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    iget-object p1, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-object p1
.end method

.method public addConstraintForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->addConstraintForce(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addConstraintTorque(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "torque"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->addConstraintTorque(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->addForce(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addJointTorque(IF)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/MultiBodyLink;->addJointTorque(JIF)V

    return-void
.end method

.method public addTorque(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "torque"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->addTorque(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public appliedForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getAppliedForce(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public appliedTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getAppliedTorque(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public axis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBodyLink;->jointType()Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    sget-object v3, Lcom/jme3/bullet/MultiBodyLink$1;->$SwitchMap$com$jme3$bullet$MultiBodyJointType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2, v5, p1}, Lcom/jme3/bullet/MultiBodyLink;->getAxisBottom(JILcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jointType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1, v2, v5, p1}, Lcom/jme3/bullet/MultiBodyLink;->getAxisTop(JILcom/jme3/math/Vector3f;)V

    :goto_0
    return-object p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    iget-object p2, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/MultiBody;

    iput-object p2, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget-object p2, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/MultiBodyLink;

    iput-object p2, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    iget-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget p2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/MultiBodyLink;->getLinkId(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    iget-object p2, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/MultiBodyCollider;

    iput-object p1, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-void
.end method

.method public constraintForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getConstraintForce(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public constraintTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getConstraintTorque(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public countDofs()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    return v0
.end method

.method public countPositionVariables()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBodyLink;->getPosVarCount(J)I

    move-result v0

    return v0
.end method

.method public getCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-object v0
.end method

.method public getMultiBody()Lcom/jme3/bullet/MultiBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    return-object v0
.end method

.method public getParentLink()Lcom/jme3/bullet/MultiBodyLink;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    return-object v0
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    return v0
.end method

.method public inertia(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getInertiaLocal(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public isCollisionWithParent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBodyLink;->getFlags(J)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public jmeClone()Lcom/jme3/bullet/MultiBodyLink;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBodyLink;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBodyLink;->jmeClone()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v0

    return-object v0
.end method

.method public jointPosition(I)F
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getJointPos(JI)F

    move-result p1

    return p1
.end method

.method public jointTorque(I)F
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getJointTorque(JI)F

    move-result p1

    return p1
.end method

.method public jointType()Lcom/jme3/bullet/MultiBodyJointType;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBodyLink;->getJointType(J)I

    move-result v0

    invoke-static {}, Lcom/jme3/bullet/MultiBodyJointType;->values()[Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public jointVelocity(I)F
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget v2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/MultiBodyLink;->getJointVel(JII)F

    move-result p1

    return p1
.end method

.method public location(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    iget-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget v2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/MultiBodyLink;->localPosToWorld(JILcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public mass()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBodyLink;->getMass(J)F

    move-result v0

    return v0
.end method

.method public orientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getQ0Parent2LinkRotation(JLcom/jme3/math/Quaternion;)V

    return-object p1
.end method

.method public parent2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getEVector(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public parent2Pivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getEVector(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public pivot2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getDVector(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "collider"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/MultiBodyCollider;

    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    const-string v0, "linkIndex"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    const-string v0, "multiBody"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBody;

    iput-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    const-string v0, "numDofs"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    const-string v0, "parentLink"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/MultiBodyLink;

    iput-object p1, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    return-void
.end method

.method public setJointPosition(IF)V
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget v2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/jme3/bullet/MultiBodyLink;->setJointPos(JIIF)V

    return-void
.end method

.method public setJointVelocity(IF)V
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "DOF index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-wide v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBodyId:J

    iget v2, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/jme3/bullet/MultiBodyLink;->setJointVel(JIIF)V

    return-void
.end method

.method public worldTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBodyLink;->getWorldTransform(JLcom/jme3/math/Transform;)V

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->collider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    const-string v1, "collider"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->linkIndex:I

    const-string v1, "linkIndex"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->multiBody:Lcom/jme3/bullet/MultiBody;

    const-string v1, "multiBody"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/MultiBodyLink;->numDofs:I

    const-string v1, "numDofs"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodyLink;->parentLink:Lcom/jme3/bullet/MultiBodyLink;

    const-string v1, "parentLink"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
