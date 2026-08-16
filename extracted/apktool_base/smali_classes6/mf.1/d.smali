.class public Lmf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/jme3/bullet/animation/DacLinks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmf/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmf/d;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/d;->a:Lcom/jme3/bullet/animation/DacLinks;

    return-void
.end method


# virtual methods
.method public displayObject(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/jme3/bullet/animation/PhysicsLink;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object p1

    iget-object v0, p0, Lmf/d;->a:Lcom/jme3/bullet/animation/DacLinks;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBody(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/d;->displayObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBody(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/d;->displayObject(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method
