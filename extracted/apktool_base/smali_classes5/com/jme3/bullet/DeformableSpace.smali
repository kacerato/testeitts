.class public Lcom/jme3/bullet/DeformableSpace;
.super Lcom/jme3/bullet/MultiBodySpace;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger3:Ljava/util/logging/Logger;


# instance fields
.field private final softBodyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/objects/PhysicsSoftBody;",
            ">;"
        }
    .end annotation
.end field

.field private final worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/DeformableSpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/MultiBodySpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-super {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/jme3/bullet/DeformableSpace;->getWorldInfo(J)J

    move-result-wide p1

    new-instance p3, Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-direct {p3, p1, p2}, Lcom/jme3/bullet/SoftBodyWorldInfo;-><init>(J)V

    iput-object p3, p0, Lcom/jme3/bullet/DeformableSpace;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setGravity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private static native addSoftBody(JJ)V
.end method

.method private addSoftBody(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    const-string v4, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 8
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/DeformableSpace;->addSoftBody(JJ)V

    .line 9
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/jme3/bullet/DeformableSpace;->getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setWorldInfo(Lcom/jme3/bullet/SoftBodyWorldInfo;)V

    :cond_2
    return-void
.end method

.method private native createSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IJ)J
.end method

.method public static getDeformableSpace()Lcom/jme3/bullet/DeformableSpace;
    .locals 1

    invoke-static {}, Lcom/jme3/bullet/CollisionSpace;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/DeformableSpace;

    return-object v0
.end method

.method private static native getNumSoftBodies(J)I
.end method

.method private static native getWorldInfo(J)J
.end method

.method private static native removeSoftBody(JJ)V
.end method

.method private removeSoftBody(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    sget-object v2, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    const-string v4, "Removing {0} from {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 8
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/DeformableSpace;->removeSoftBody(JJ)V

    return-void
.end method


# virtual methods
.method public addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/DeformableSpace;->addSoftBody(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :goto_0
    return-void
.end method

.method public contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 2

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/MultiBodySpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public countJoints()I
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->getJointMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public countSoftBodies()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/DeformableSpace;->getNumSoftBodies(J)I

    move-result v0

    return v0
.end method

.method public create()V
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->countSolvers()I

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/CollisionSpace;->getWorldMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/CollisionSpace;->getWorldMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->getConfiguration()Lcom/jme3/bullet/CollisionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/jme3/bullet/DeformableSpace;->createSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->initThread(J)V

    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->initSolverInfo()V

    sget-object v0, Lcom/jme3/bullet/DeformableSpace;->logger3:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/bullet/MultiBodySpace;->destroy()V

    iget-object v0, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

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

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-direct {p0, v1}, Lcom/jme3/bullet/DeformableSpace;->removeSoftBody(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    goto :goto_0

    :cond_0
    return-void
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

    invoke-super {p0}, Lcom/jme3/bullet/MultiBodySpace;->getPcoList()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getSoftBodyList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/objects/PhysicsSoftBody;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/DeformableSpace;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/bullet/MultiBodySpace;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/DeformableSpace;->softBodyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/DeformableSpace;->removeSoftBody(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :goto_0
    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/DeformableSpace;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setGravity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method
