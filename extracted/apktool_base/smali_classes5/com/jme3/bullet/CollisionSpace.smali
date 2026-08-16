.class public Lcom/jme3/bullet/CollisionSpace;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final hitFractionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final loggerC:Ljava/util/logging/Logger;

.field private static final physicsSpaceTL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/bullet/CollisionSpace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

.field private final cgListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private final collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

.field private final ghostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/objects/PhysicsGhostObject;",
            ">;"
        }
    .end annotation
.end field

.field private final numSolvers:I

.field private rayTestFlags:I

.field private final worldMax:Lcom/jme3/math/Vector3f;

.field private final worldMin:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/CollisionSpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/bullet/CollisionSpace$1;

    invoke-direct {v0}, Lcom/jme3/bullet/CollisionSpace$1;-><init>()V

    sput-object v0, Lcom/jme3/bullet/CollisionSpace;->hitFractionComparator:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/jme3/bullet/CollisionSpace;->physicsSpaceTL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V
    .locals 6

    .line 2
    new-instance v5, Lcom/jme3/bullet/CollisionConfiguration;

    invoke-direct {v5}, Lcom/jme3/bullet/CollisionConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x4

    .line 4
    iput v0, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v2, 0x461c4000    # 10000.0f

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->worldMax:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance v2, Lcom/jme3/math/Vector3f;

    const v3, -0x39e3c000    # -10000.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v2, p0, Lcom/jme3/bullet/CollisionSpace;->worldMin:Lcom/jme3/math/Vector3f;

    .line 9
    const-string v3, "world min"

    invoke-static {p1, v3}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 10
    const-string v3, "world max"

    invoke-static {p2, v3}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 11
    const-string v3, "broadphase type"

    invoke-static {p3, v3}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 12
    const-string v3, "number of solvers"

    const/4 v4, 0x1

    invoke-static {p4, v3, v4, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 13
    const-string v1, "configuration"

    invoke-static {p5, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 15
    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 16
    iput-object p3, p0, Lcom/jme3/bullet/CollisionSpace;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    .line 17
    iput p4, p0, Lcom/jme3/bullet/CollisionSpace;->numSolvers:I

    .line 18
    iput-object p5, p0, Lcom/jme3/bullet/CollisionSpace;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    .line 19
    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->create()V

    return-void
.end method

.method private static native addCollisionObject(JJ)V
.end method

.method private addGhostObject(Lcom/jme3/bullet/objects/PhysicsGhostObject;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->addCollisionObject(JJ)V

    return-void
.end method

.method private static native contactTest(JJLcom/jme3/bullet/collision/PhysicsCollisionListener;)I
.end method

.method private native createCollisionSpace(FFFFFFIJ)J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 1

    const-string v0, "space ID"

    invoke-static {p0, p1, v0}, Lif/E;->x(JLjava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->finalizeNative(J)V

    return-void
.end method

.method public static getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->physicsSpaceTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/CollisionSpace;

    return-object v0
.end method

.method private static native getDeterministicOverlappingPairs(J)Z
.end method

.method private static native getJniEnvId(J)J
.end method

.method private static native getNumCollisionObjects(J)I
.end method

.method private static native hasClosest(JII)Z
.end method

.method private static native hasContact(JII)Z
.end method

.method private static native isForceUpdateAllAabbs(J)Z
.end method

.method private static native isOverlapFilterEnabled(J)Z
.end method

.method private notifyCollisionGroupListeners(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/CollisionSpace;->needsCollision(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result p1

    return p1
.end method

.method private static native pairTest(JJJLcom/jme3/bullet/collision/PhysicsCollisionListener;)I
.end method

.method private static native rayTestNative(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;JLjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            "J",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;I)V"
        }
    .end annotation
.end method

.method private static native rayTestNativeDp(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;JLjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/simsilica/mathd/Vec3d;",
            "Lcom/simsilica/mathd/Vec3d;",
            "J",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;I)V"
        }
    .end annotation
.end method

.method private static native removeCollisionObject(JJ)V
.end method

.method private removeGhostObject(Lcom/jme3/bullet/objects/PhysicsGhostObject;)V
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Removing {0} from {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->removeCollisionObject(JJ)V

    return-void
.end method

.method private static native setDeterministicOverlappingPairs(JZ)V
.end method

.method private static native setForceUpdateAllAabbs(JZ)V
.end method

.method public static setLocalThreadPhysicsSpace(Lcom/jme3/bullet/CollisionSpace;)V
    .locals 1

    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->physicsSpaceTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static native setOverlapFilterEnabled(JZ)V
.end method

.method private static native sweepTestNative(JLcom/jme3/math/Transform;Lcom/jme3/math/Transform;JLjava/util/List;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/jme3/math/Transform;",
            "Lcom/jme3/math/Transform;",
            "J",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;F)V"
        }
    .end annotation
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to a collision space."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCollisionGroupListener(Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;I)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "exactly one bit set"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 2

    .line 1
    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->addGhostObject(Lcom/jme3/bullet/objects/PhysicsGhostObject;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type of collision object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contactTest(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionListener;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 3
    invoke-static {v0, v1, v2, v3, p2}, Lcom/jme3/bullet/CollisionSpace;->contactTest(JJLcom/jme3/bullet/collision/PhysicsCollisionListener;)I

    move-result p1

    return p1
.end method

.method public contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    instance-of v2, p1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type of collision object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public countCollisionGroupListeners()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public countCollisionObjects()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionSpace;->getNumCollisionObjects(J)I

    move-result v0

    return v0
.end method

.method public countSolvers()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/CollisionSpace;->numSolvers:I

    return v0
.end method

.method public create()V
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v9

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->worldMin:Lcom/jme3/math/Vector3f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->worldMax:Lcom/jme3/math/Vector3f;

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v0, Lcom/jme3/math/Vector3f;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/jme3/bullet/CollisionSpace;->createCollisionSpace(FFFFFFIJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->initThread(J)V

    sget-object v0, Lcom/jme3/bullet/CollisionSpace;->loggerC:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-direct {p0, v1}, Lcom/jme3/bullet/CollisionSpace;->removeGhostObject(Lcom/jme3/bullet/objects/PhysicsGhostObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    return-object v0
.end method

.method public getConfiguration()Lcom/jme3/bullet/CollisionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    return-object v0
.end method

.method public getGhostObjectList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/objects/PhysicsGhostObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPcoList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRayTestFlags()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    return v0
.end method

.method public getWorldMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/CollisionSpace;->worldMax:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->worldMax:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getWorldMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/CollisionSpace;->worldMin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->worldMin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasClosest(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/collision/shapes/CollisionShape;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getShapeType()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getShapeType()I

    move-result p2

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/CollisionSpace;->hasClosest(JII)Z

    move-result p1

    return p1
.end method

.method public hasContact(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/collision/shapes/CollisionShape;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getShapeType()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getShapeType()I

    move-result p2

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/CollisionSpace;->hasContact(JII)Z

    move-result p1

    return p1
.end method

.method public initThread(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p1, Lcom/jme3/bullet/CollisionSpace;->physicsSpaceTL:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->ghostMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isForceUpdateAllAabbs()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionSpace;->isForceUpdateAllAabbs(J)Z

    move-result v0

    return v0
.end method

.method public isOverlapFilterEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionSpace;->isOverlapFilterEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isUsingDeterministicDispatch()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionSpace;->getDeterministicOverlappingPairs(J)Z

    move-result v0

    return v0
.end method

.method public jniEnvId()J
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionSpace;->getJniEnvId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public needsCollision(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;

    iget-object v1, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;->collide(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v3

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-interface {v1, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionGroupListener;->collide(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public pairTest(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionListener;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 3
    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    move-object v6, p3

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/CollisionSpace;->pairTest(JJJLcom/jme3/bullet/collision/PhysicsCollisionListener;)I

    move-result p1

    return p1
.end method

.method public rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/bullet/CollisionSpace;->rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 5
    iget v5, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;->rayTestNative(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;JLjava/util/List;I)V

    .line 6
    sget-object p1, Lcom/jme3/bullet/CollisionSpace;->hitFractionComparator:Ljava/util/Comparator;

    invoke-interface {p3, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p3
.end method

.method public rayTestDp(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/simsilica/mathd/Vec3d;",
            "Lcom/simsilica/mathd/Vec3d;",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    iget v5, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;->rayTestNativeDp(Lcom/simsilica/mathd/Vec3d;Lcom/simsilica/mathd/Vec3d;JLjava/util/List;I)V

    sget-object p1, Lcom/jme3/bullet/CollisionSpace;->hitFractionComparator:Ljava/util/Comparator;

    invoke-interface {p3, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p3
.end method

.method public rayTestRaw(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/bullet/CollisionSpace;->rayTestRaw(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public rayTestRaw(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/math/Vector3f;",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 5
    iget v5, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;->rayTestNative(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;JLjava/util/List;I)V

    return-object p3
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from a collision space."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCollisionGroupListener(I)V
    .locals 2

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

    iget-object v0, p0, Lcom/jme3/bullet/CollisionSpace;->cgListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 2

    .line 1
    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->removeGhostObject(Lcom/jme3/bullet/objects/PhysicsGhostObject;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type of collision object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForceUpdateAllAabbs(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/CollisionSpace;->setForceUpdateAllAabbs(JZ)V

    return-void
.end method

.method public setOverlapFilterEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/CollisionSpace;->setOverlapFilterEnabled(JZ)V

    return-void
.end method

.method public setRayTestFlags(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/CollisionSpace;->rayTestFlags:I

    return-void
.end method

.method public sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/collision/shapes/ConvexShape;",
            "Lcom/jme3/math/Transform;",
            "Lcom/jme3/math/Transform;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/collision/shapes/ConvexShape;",
            "Lcom/jme3/math/Transform;",
            "Lcom/jme3/math/Transform;",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;F)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;F)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/collision/shapes/ConvexShape;",
            "Lcom/jme3/math/Transform;",
            "Lcom/jme3/math/Transform;",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsSweepTestResult;",
            ">;"
        }
    .end annotation

    .line 4
    const-string v0, "start"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    const-string v0, "end"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 6
    const-string v0, "results"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 7
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    .line 9
    invoke-interface {p4}, Ljava/util/List;->clear()V

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move v8, p5

    .line 10
    invoke-static/range {v1 .. v8}, Lcom/jme3/bullet/CollisionSpace;->sweepTestNative(JLcom/jme3/math/Transform;Lcom/jme3/math/Transform;JLjava/util/List;F)V

    return-object p4
.end method

.method public useDeterministicDispatch(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/CollisionSpace;->setDeterministicOverlappingPairs(JZ)V

    return-void
.end method
