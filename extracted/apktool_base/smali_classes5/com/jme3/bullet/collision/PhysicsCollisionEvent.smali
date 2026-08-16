.class public Lcom/jme3/bullet/collision/PhysicsCollisionEvent;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final pcoA:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

.field private final pcoB:Lcom/jme3/bullet/collision/PhysicsCollisionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const-string v0, "object A"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "object B"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "manifold point ID"

    invoke-static {p3, p4, v0}, Lif/E;->x(JLjava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoA:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    iput-object p2, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoB:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-super {p0, p3, p4}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method


# virtual methods
.method public getAppliedImpulse()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getAppliedImpulse(J)F

    move-result v0

    return v0
.end method

.method public getAppliedImpulseLateral1()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getAppliedImpulseLateral1(J)F

    move-result v0

    return v0
.end method

.method public getAppliedImpulseLateral2()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getAppliedImpulseLateral2(J)F

    move-result v0

    return v0
.end method

.method public getCombinedFriction()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getCombinedFriction(J)F

    move-result v0

    return v0
.end method

.method public getCombinedRestitution()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getCombinedRestitution(J)F

    move-result v0

    return v0
.end method

.method public getCombinedRollingFriction()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getCombinedRollingFriction(J)F

    move-result v0

    return v0
.end method

.method public getCombinedSpinningFriction()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getCombinedSpinningFriction(J)F

    move-result v0

    return v0
.end method

.method public getDistance1()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getDistance1(J)F

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getFlags(J)I

    move-result v0

    return v0
.end method

.method public getIndex0()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getIndex0(J)I

    move-result v0

    return v0
.end method

.method public getIndex1()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getIndex1(J)I

    move-result v0

    return v0
.end method

.method public getLateralFrictionDir1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getLateralFrictionDir1(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLateralFrictionDir2(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getLateralFrictionDir2(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLifeTime()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getLifeTime(J)I

    move-result v0

    return v0
.end method

.method public getLocalPointA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getLocalPointA(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLocalPointB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getLocalPointB(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getNodeA()Lcom/jme3/scene/Spatial;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoA:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/scene/Spatial;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/scene/Spatial;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNodeB()Lcom/jme3/scene/Spatial;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoB:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/scene/Spatial;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/scene/Spatial;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNormalWorldOnB()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getNormalWorldOnB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getNormalWorldOnB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getNormalWorldOnB(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getObjectA()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoA:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    return-object v0
.end method

.method public getObjectB()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->pcoB:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    return-object v0
.end method

.method public getPartId0()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getPartId0(J)I

    move-result v0

    return v0
.end method

.method public getPartId1()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getPartId1(J)I

    move-result v0

    return v0
.end method

.method public getPositionWorldOnA()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getPositionWorldOnA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getPositionWorldOnA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getPositionWorldOnA(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getPositionWorldOnB()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getPositionWorldOnB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getPositionWorldOnB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/ManifoldPoints;->getPositionWorldOnB(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public isLateralFrictionInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
