.class public Lcom/jme3/bullet/MultiBody;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagAngularDamping:Ljava/lang/String; = "angularDamping"

.field private static final tagBaseAngularVelocity:Ljava/lang/String; = "baseAngularVelocity"

.field private static final tagBaseCollider:Ljava/lang/String; = "baseCollider"

.field private static final tagBaseInertia:Ljava/lang/String; = "baseInertia"

.field private static final tagBaseLocation:Ljava/lang/String; = "baseLocation"

.field private static final tagBaseMass:Ljava/lang/String; = "baseMass"

.field private static final tagBaseVelocity:Ljava/lang/String; = "baseVelocity"

.field private static final tagCanSleep:Ljava/lang/String; = "canSleep"

.field private static final tagCollisionGroup:Ljava/lang/String; = "collisionGroup"

.field private static final tagCollisionGroupsMask:Ljava/lang/String; = "collisionGroupsMask"

.field private static final tagFixedBase:Ljava/lang/String; = "fixedBase"

.field private static final tagGlobalVelocities:Ljava/lang/String; = "globalVelocities"

.field private static final tagLinearDamping:Ljava/lang/String; = "linearDamping"

.field private static final tagLinks:Ljava/lang/String; = "links"

.field private static final tagNumConfigured:Ljava/lang/String; = "numConfigured"

.field private static final tagNumLinks:Ljava/lang/String; = "numLinks"

.field private static final tagRK4:Ljava/lang/String; = "RK4"

.field private static final tagUserIndex:Ljava/lang/String; = "userIndex"

.field private static final tagUserIndex2:Ljava/lang/String; = "userIndex2"


# instance fields
.field private baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

.field private links:[Lcom/jme3/bullet/MultiBodyLink;

.field private numConfigured:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/MultiBody;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-void
.end method

.method public constructor <init>(IFLcom/jme3/math/Vector3f;ZZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    .line 7
    const-string v0, "number of links"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    .line 8
    const-string v0, "base mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 9
    const-string v0, "base inertia"

    invoke-static {p3, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/jme3/bullet/MultiBody;->create(IFLcom/jme3/math/Vector3f;ZZ)J

    move-result-wide p2

    .line 11
    invoke-super {p0, p2, p3}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    .line 12
    invoke-static {p2, p3}, Lcom/jme3/bullet/MultiBody;->finalizeMultiDof(J)V

    .line 13
    new-array p1, p1, [Lcom/jme3/bullet/MultiBodyLink;

    iput-object p1, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    return-void
.end method

.method private static native addBaseForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addBaseTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native clearConstraintForces(J)V
.end method

.method private static native clearForcesAndTorques(J)V
.end method

.method private static native clearVelocities(J)V
.end method

.method private configureClonedLink(Lcom/jme3/bullet/MultiBodyLink;)Lcom/jme3/bullet/MultiBodyLink;
    .locals 10

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->jointType()Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->mass()F

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->inertia(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->orientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->isCollisionWithParent()Z

    move-result v4

    const/4 v6, 0x1

    xor-int/lit8 v9, v4, 0x1

    invoke-virtual {p1}, Lcom/jme3/bullet/MultiBodyLink;->getParentLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v4

    iget-object v7, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    aget-object v4, v7, v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    sget-object v7, Lcom/jme3/bullet/MultiBody$1;->$SwitchMap$com$jme3$bullet$MultiBodyJointType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_5

    const/4 v6, 0x2

    if-eq v7, v6, :cond_4

    const/4 v6, 0x3

    if-eq v7, v6, :cond_3

    const/4 v6, 0x4

    if-eq v7, v6, :cond_2

    const/4 v6, 0x5

    if-ne v7, v6, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->parent2Pivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->pivot2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    move-object v1, p0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/jme3/bullet/MultiBody;->configureSphericalLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    goto :goto_1

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
    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->axis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->parent2Pivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->pivot2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/jme3/bullet/MultiBody;->configureRevoluteLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->axis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->parent2Pivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->pivot2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/jme3/bullet/MultiBody;->configurePrismaticLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->axis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->parent2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    move-object v1, p0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/jme3/bullet/MultiBody;->configurePlanarLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->parent2Pivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/MultiBodyLink;->pivot2Link(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/jme3/bullet/MultiBody;->configureFixedLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private configureLink()Lcom/jme3/bullet/MultiBodyLink;
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jme3/bullet/MultiBody;->finalizeMultiDof(J)V

    new-instance v1, Lcom/jme3/bullet/MultiBodyLink;

    invoke-direct {v1, p0, v0}, Lcom/jme3/bullet/MultiBodyLink;-><init>(Lcom/jme3/bullet/MultiBody;I)V

    iget-object v2, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    aput-object v1, v2, v0

    return-object v1
.end method

.method private native create(IFLcom/jme3/math/Vector3f;ZZ)J
.end method

.method private static native finalizeMultiDof(J)V
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/MultiBody;->finalizeNative(J)V

    return-void
.end method

.method private static native getAngularDamping(J)F
.end method

.method private static native getBaseCollider(J)J
.end method

.method private static native getBaseForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBaseInertia(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBaseMass(J)F
.end method

.method private static native getBaseOmega(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBasePos(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBaseTorque(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBaseVel(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getBaseWorldTransform(JLcom/jme3/math/Transform;)V
.end method

.method private static native getCanSleep(J)Z
.end method

.method private static native getCanWakeup(J)Z
.end method

.method private static native getCollideWithGroups(J)I
.end method

.method private static native getCollisionGroup(J)I
.end method

.method private static native getLinearDamping(J)F
.end method

.method private static native getMaxAppliedImpulse(J)F
.end method

.method private static native getMaxCoordinateVelocity(J)F
.end method

.method private static native getNumDofs(J)I
.end method

.method private static native getNumLinks(J)I
.end method

.method private static native getNumPosVars(J)I
.end method

.method private static native getSpace(J)J
.end method

.method private static native getUseGyroTerm(J)Z
.end method

.method private static native getUserIndex(J)I
.end method

.method private static native getUserIndex2(J)I
.end method

.method private static native getWorldToBaseRot(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native hasFixedBase(J)Z
.end method

.method private static native isUsingGlobalVelocities(J)Z
.end method

.method private static native isUsingRK4Integration(J)Z
.end method

.method private static native setBaseCollider(JJ)V
.end method

.method private static native setBaseOmega(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setBasePos(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setBaseVel(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setBaseWorldTransform(JLcom/jme3/math/Transform;)V
.end method

.method private static native setCollideWithGroups(JI)V
.end method

.method private static native setCollisionGroup(JI)V
.end method

.method private static native setUserIndex(JI)V
.end method

.method private static native setUserIndex2(JI)V
.end method

.method private static native setWorldToBaseRot(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native setupFixed(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native setupPlanar(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
.end method

.method private static native setupPrismatic(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
.end method

.method private static native setupRevolute(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
.end method

.method private static native setupSpherical(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
.end method

.method private static native useGlobalVelocities(JZ)V
.end method

.method private static native useRK4Integration(JZ)V
.end method


# virtual methods
.method public addBaseCollider(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/MultiBodyCollider;
    .locals 4

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/bullet/objects/MultiBodyCollider;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/jme3/bullet/objects/MultiBodyCollider;-><init>(Lcom/jme3/bullet/MultiBody;I)V

    iput-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/MultiBody;->setBaseCollider(JJ)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->attachShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    iget-object p1, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-object p1
.end method

.method public addBaseForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->addBaseForce(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addBaseTorque(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "torque"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->addBaseTorque(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public angularDamping()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getAngularDamping(J)F

    move-result v0

    return v0
.end method

.method public baseAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseOmega(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public baseForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseForce(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public baseInertia(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseInertia(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public baseLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBasePos(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public baseMass()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getBaseMass(J)F

    move-result v0

    return v0
.end method

.method public baseOrientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getWorldToBaseRot(JLcom/jme3/math/Quaternion;)V

    return-object p1
.end method

.method public baseTorque(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseTorque(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public baseTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseWorldTransform(JLcom/jme3/math/Transform;)V

    return-object p1
.end method

.method public baseVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->getBaseVel(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public canSleep()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getCanSleep(J)Z

    move-result v0

    return v0
.end method

.method public canWakeup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getCanWakeup(J)Z

    move-result v0

    return v0
.end method

.method public clearConstraintForces()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->clearConstraintForces(J)V

    return-void
.end method

.method public clearForcesAndTorques()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->clearForcesAndTorques(J)V

    return-void
.end method

.method public clearVelocities()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->clearVelocities(J)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    array-length v0, v0

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->baseMass()F

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/jme3/bullet/MultiBody;->baseInertia(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->hasFixedBase()Z

    move-result v5

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->canSleep()Z

    move-result v6

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/jme3/bullet/MultiBody;->create(IFLcom/jme3/math/Vector3f;ZZ)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    check-cast p2, Lcom/jme3/bullet/MultiBody;

    iget-object v3, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v3

    iput-object v7, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p1, v3}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->addBaseCollider(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/MultiBodyCollider;

    iget-object p1, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p2}, Lcom/jme3/bullet/MultiBody;->getBaseCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    new-array v3, v0, [Lcom/jme3/bullet/MultiBodyLink;

    iput-object v3, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v3, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    iget-object v4, p2, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/jme3/bullet/MultiBody;->configureClonedLink(Lcom/jme3/bullet/MultiBodyLink;)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v4

    aput-object v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/jme3/bullet/MultiBody;->finalizeMultiDof(J)V

    invoke-virtual {p2}, Lcom/jme3/bullet/MultiBody;->collideWithGroups()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->setCollideWithGroups(I)V

    invoke-virtual {p2}, Lcom/jme3/bullet/MultiBody;->collisionGroup()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->setCollisionGroup(I)V

    invoke-virtual {p2}, Lcom/jme3/bullet/MultiBody;->userIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->setUserIndex(I)V

    invoke-virtual {p2}, Lcom/jme3/bullet/MultiBody;->userIndex2()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->setUserIndex2(I)V

    return-void
.end method

.method public collideWithGroups()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getCollideWithGroups(J)I

    move-result v0

    return v0
.end method

.method public collisionGroup()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getCollisionGroup(J)I

    move-result v0

    return v0
.end method

.method public configureFixedLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/MultiBodyLink;
    .locals 10

    const-string v0, "mass"

    move v4, p1

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "inertia"

    move-object v5, p2

    invoke-static {p2, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "orientation"

    move-object v7, p4

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parent to pivot offset"

    move-object v8, p5

    invoke-static {p5, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot to link offset"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v3, v0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/jme3/bullet/MultiBody;->setupFixed(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0}, Lcom/jme3/bullet/MultiBody;->configureLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v1

    return-object v1
.end method

.method public configurePlanarLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;
    .locals 11

    const-string v0, "mass"

    move v4, p1

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "inertia"

    move-object v5, p2

    invoke-static {p2, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "orientation"

    move-object v7, p4

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "axis"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parent to link offset"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v3, v0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lcom/jme3/bullet/MultiBody;->setupPlanar(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/MultiBody;->configureLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v1

    return-object v1
.end method

.method public configurePrismaticLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;
    .locals 12

    const-string v0, "mass"

    move v4, p1

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "inertia"

    move-object v5, p2

    invoke-static {p2, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "orientation"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "axis"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parent to pivot offset"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot to link offset"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v3, v0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lcom/jme3/bullet/MultiBody;->setupPrismatic(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/MultiBody;->configureLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v1

    return-object v1
.end method

.method public configureRevoluteLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;
    .locals 12

    const-string v0, "mass"

    move v4, p1

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "inertia"

    move-object v5, p2

    invoke-static {p2, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "orientation"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "axis"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parent to pivot offset"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot to link offset"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v3, v0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lcom/jme3/bullet/MultiBody;->setupRevolute(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/MultiBody;->configureLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v1

    return-object v1
.end method

.method public configureSphericalLink(FLcom/jme3/math/Vector3f;Lcom/jme3/bullet/MultiBodyLink;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/bullet/MultiBodyLink;
    .locals 11

    const-string v0, "mass"

    move v4, p1

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const-string v0, "inertia"

    move-object v5, p2

    invoke-static {p2, v0}, Lif/E;->G(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    const-string v0, "orientation"

    move-object v7, p4

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "parent to pivot offset"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "pivot to link offset"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/bullet/MultiBodyLink;->index()I

    move-result v0

    goto :goto_0

    :goto_1
    iget v3, v0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lcom/jme3/bullet/MultiBody;->setupSpherical(JIFLcom/jme3/math/Vector3f;ILcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/MultiBody;->configureLink()Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v1

    return-object v1
.end method

.method public contains(Lcom/jme3/bullet/objects/MultiBodyCollider;)Z
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/jme3/bullet/MultiBodyLink;->getCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object v5

    if-ne v5, p1, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    return v4
.end method

.method public countConfiguredLinks()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    return v0
.end method

.method public countDofs()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getNumDofs(J)I

    move-result v0

    return v0
.end method

.method public countPositionVariables()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getNumPosVars(J)I

    move-result v0

    return v0
.end method

.method public getBaseCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    return-object v0
.end method

.method public getLink(I)Lcom/jme3/bullet/MultiBodyLink;
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "link index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hasFixedBase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->hasFixedBase(J)Z

    move-result v0

    return v0
.end method

.method public isUsingGlobalVelocities()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->isUsingGlobalVelocities(J)Z

    move-result v0

    return v0
.end method

.method public isUsingGyroTerm()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getUseGyroTerm(J)Z

    move-result v0

    return v0
.end method

.method public isUsingRK4()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->isUsingRK4Integration(J)Z

    move-result v0

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/MultiBody;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBody;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->jmeClone()Lcom/jme3/bullet/MultiBody;

    move-result-object v0

    return-object v0
.end method

.method public linearDamping()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getLinearDamping(J)F

    move-result v0

    return v0
.end method

.method public listColliders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/objects/MultiBodyCollider;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/jme3/bullet/MultiBodyLink;->getCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public maxAppliedImpulse()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getMaxAppliedImpulse(J)F

    move-result v0

    return v0
.end method

.method public maxCoordinateVelocity()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getMaxCoordinateVelocity(J)F

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "baseInertia"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jme3/math/Vector3f;

    const-string v0, "baseMass"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v0, "canSleep"

    const/4 v8, 0x1

    invoke-interface {p1, v0, v8}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "fixedBase"

    const/4 v9, 0x0

    invoke-interface {p1, v0, v9}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "numLinks"

    invoke-interface {p1, v0, v9}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    move-object v2, p0

    move v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/jme3/bullet/MultiBody;->create(IFLcom/jme3/math/Vector3f;ZZ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    iget-object v4, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v4

    iput-object v1, p0, Lcom/jme3/bullet/MultiBody;->baseCollider:Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/MultiBody;->addBaseCollider(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/MultiBodyCollider;

    :cond_0
    iget-object v4, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    new-array v0, v0, [Lcom/jme3/bullet/MultiBodyLink;

    iput-object v0, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    const-string v0, "numConfigured"

    invoke-interface {p1, v0, v9}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    move v0, v9

    :goto_0
    iget v5, p0, Lcom/jme3/bullet/MultiBody;->numConfigured:I

    if-ge v0, v5, :cond_1

    aget-object v5, v4, v0

    invoke-direct {p0, v5}, Lcom/jme3/bullet/MultiBody;->configureClonedLink(Lcom/jme3/bullet/MultiBodyLink;)Lcom/jme3/bullet/MultiBodyLink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lcom/jme3/bullet/MultiBody;->finalizeMultiDof(J)V

    const-string v0, "collisionGroup"

    invoke-interface {p1, v0, v8}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setCollisionGroup(I)V

    const-string v0, "collisionGroupsMask"

    invoke-interface {p1, v0, v8}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setCollideWithGroups(I)V

    const-string v0, "baseAngularVelocity"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setBaseAngularVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v0, "baseLocation"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setBaseLocation(Lcom/jme3/math/Vector3f;)V

    const-string v0, "baseVelocity"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setBaseVelocity(Lcom/jme3/math/Vector3f;)V

    const-string v0, "RK4"

    invoke-interface {p1, v0, v9}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->useRK4(Z)V

    const-string v0, "userIndex"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->setUserIndex(I)V

    const-string v0, "userIndex2"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBody;->setUserIndex2(I)V

    return-void
.end method

.method public setBaseAngularVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "angular velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setBaseOmega(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setBaseLocation(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setBasePos(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setBaseOrientation(Lcom/jme3/math/Quaternion;)V
    .locals 2

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setWorldToBaseRot(JLcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setBaseTransform(Lcom/jme3/math/Transform;)V
    .locals 2

    const-string v0, "transform"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setBaseWorldTransform(JLcom/jme3/math/Transform;)V

    return-void
.end method

.method public setBaseVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setBaseVel(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setCollideWithGroups(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setCollideWithGroups(JI)V

    return-void
.end method

.method public setCollisionGroup(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "exactly one bit set"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setCollisionGroup(JI)V

    return-void
.end method

.method public setUserIndex(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setUserIndex(JI)V

    return-void
.end method

.method public setUserIndex2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->setUserIndex2(JI)V

    return-void
.end method

.method public spaceId()J
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getSpace(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public useGlobalVelocities(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->useGlobalVelocities(JZ)V

    return-void
.end method

.method public useRK4(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/MultiBody;->useRK4Integration(JZ)V

    return-void
.end method

.method public userIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getUserIndex(J)I

    move-result v0

    return v0
.end method

.method public userIndex2()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBody;->getUserIndex2(J)I

    move-result v0

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->angularDamping()F

    move-result v0

    const-string v1, "angularDamping"

    const v2, 0x3d23d70a    # 0.04f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->baseAngularVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "baseAngularVelocity"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->getBaseCollider()Lcom/jme3/bullet/objects/MultiBodyCollider;

    move-result-object v1

    const-string v3, "baseCollider"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->baseInertia(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "baseInertia"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->baseLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "baseLocation"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->baseMass()F

    move-result v1

    const-string v3, "baseMass"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/MultiBody;->baseVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "baseVelocity"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->canSleep()Z

    move-result v1

    const-string v3, "canSleep"

    const/4 v4, 0x1

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->collisionGroup()I

    move-result v1

    const-string v3, "collisionGroup"

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->collideWithGroups()I

    move-result v1

    const-string v3, "collisionGroupsMask"

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->hasFixedBase()Z

    move-result v1

    const-string v3, "fixedBase"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->isUsingGlobalVelocities()Z

    move-result v1

    const-string v3, "globalVelocities"

    invoke-interface {p1, v1, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->linearDamping()F

    move-result v1

    const-string v3, "linearDamping"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v1, p0, Lcom/jme3/bullet/MultiBody;->links:[Lcom/jme3/bullet/MultiBodyLink;

    array-length v2, v1

    new-array v3, v2, [Lcom/jme3/export/Savable;

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "links"

    invoke-interface {p1, v3, v1, v0}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    const-string v0, "numLinks"

    invoke-interface {p1, v2, v0, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->isUsingRK4()Z

    move-result v0

    const-string v1, "RK4"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->userIndex()I

    move-result v0

    const-string v1, "userIndex"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/MultiBody;->userIndex2()I

    move-result v0

    const-string v1, "userIndex2"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
