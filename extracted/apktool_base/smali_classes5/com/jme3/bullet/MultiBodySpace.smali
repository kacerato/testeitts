.class public Lcom/jme3/bullet/MultiBodySpace;
.super Lcom/jme3/bullet/PhysicsSpace;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger2:Ljava/util/logging/Logger;


# instance fields
.field private final multiBodyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/MultiBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/MultiBodySpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    return-void
.end method

.method private static native addMultiBody(JJ)V
.end method

.method private static native addMultiBodyConstraint(JJ)V
.end method

.method private native createMultiBodySpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IJ)J
.end method

.method public static getMultiBodySpace()Lcom/jme3/bullet/MultiBodySpace;
    .locals 1

    invoke-static {}, Lcom/jme3/bullet/CollisionSpace;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBodySpace;

    return-object v0
.end method

.method private static native getNumMultiBodyConstraints(J)I
.end method

.method private static native getNumMultibodies(J)I
.end method

.method private static native removeMultiBody(JJ)V
.end method

.method private static native removeMultiBodyConstraint(JJ)V
.end method

.method private static native setSolverType(JI)V
.end method


# virtual methods
.method public activateAll(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->activateAll(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/MultiBody;->listColliders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v2, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->activate(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/MultiBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBodySpace;->addMultiBody(Lcom/jme3/bullet/MultiBody;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addMultiBody(Lcom/jme3/bullet/MultiBody;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    const-string v4, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 8
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/MultiBodySpace;->addMultiBody(JJ)V

    return-void
.end method

.method public contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 3

    instance-of v0, p1, Lcom/jme3/bullet/objects/MultiBodyCollider;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/objects/MultiBodyCollider;

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/MultiBody;->contains(Lcom/jme3/bullet/objects/MultiBodyCollider;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public countMultiBodies()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/MultiBodySpace;->getNumMultibodies(J)I

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

    invoke-direct/range {v1 .. v6}, Lcom/jme3/bullet/MultiBodySpace;->createMultiBodySpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->initThread(J)V

    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->initSolverInfo()V

    sget-object v0, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/bullet/PhysicsSpace;->destroy()V

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

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

    check-cast v1, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/MultiBodySpace;->removeMultiBody(Lcom/jme3/bullet/MultiBody;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMultiBodyList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/MultiBody;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPcoList()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/jme3/bullet/PhysicsSpace;->getPcoList()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/MultiBody;->listColliders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/bullet/PhysicsSpace;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

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

.method public remove(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/bullet/MultiBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/MultiBodySpace;->removeMultiBody(Lcom/jme3/bullet/MultiBody;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeMultiBody(Lcom/jme3/bullet/MultiBody;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    sget-object v2, Lcom/jme3/bullet/MultiBodySpace;->logger2:Ljava/util/logging/Logger;

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
    iget-object p1, p0, Lcom/jme3/bullet/MultiBodySpace;->multiBodyMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 8
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/MultiBodySpace;->removeMultiBody(JJ)V

    return-void
.end method

.method public updateSolver()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->getSolverType()Lcom/jme3/bullet/SolverType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/MultiBodySpace;->setSolverType(JI)V

    return-void
.end method
