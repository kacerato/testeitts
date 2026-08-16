.class public Lmf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmf/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayObject(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v0}, Lcom/jme3/bullet/PhysicsSpace;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getSquaredSpeed()F

    move-result v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSquareMotionThreshold()F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
