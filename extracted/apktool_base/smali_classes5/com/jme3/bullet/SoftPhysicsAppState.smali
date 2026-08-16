.class public Lcom/jme3/bullet/SoftPhysicsAppState;
.super Lcom/jme3/bullet/BulletAppState;
.source "SourceFile"


# static fields
.field public static final logger2:Ljava/util/logging/Logger;


# instance fields
.field private clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/SoftPhysicsAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/SoftPhysicsAppState;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/bullet/BulletAppState;-><init>()V

    return-void
.end method


# virtual methods
.method public createDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getDebugConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;-><init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V

    iget-object v0, p0, Lcom/jme3/bullet/SoftPhysicsAppState;->clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->setClusterFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object v0, p0, Lcom/jme3/bullet/SoftPhysicsAppState;->windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->setWindVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    return-object v1
.end method

.method public createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)Lcom/jme3/bullet/PhysicsSpace;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getCollisionConfiguration()Lcom/jme3/bullet/CollisionConfiguration;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/jme3/bullet/PhysicsSoftSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/CollisionConfiguration;)V

    return-object v1
.end method

.method public getPhysicsSoftSpace()Lcom/jme3/bullet/PhysicsSoftSpace;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/PhysicsSoftSpace;

    return-object v0
.end method

.method public setDebugClusterFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/SoftDebugAppState;->setClusterFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :cond_0
    iput-object p1, p0, Lcom/jme3/bullet/SoftPhysicsAppState;->clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setWindVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/SoftDebugAppState;->setWindVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :cond_0
    iput-object p1, p0, Lcom/jme3/bullet/SoftPhysicsAppState;->windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method
