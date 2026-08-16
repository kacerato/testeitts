.class public final Lcom/jme3/bullet/collision/PhysicsRayTestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private collisionObject:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

.field private hitFraction:F

.field private normal:Lcom/jme3/math/Vector3f;

.field private partIndex:I

.field private triangleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->collisionObject:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    return-object v0
.end method

.method public getHitFraction()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->hitFraction:F

    return v0
.end method

.method public getHitNormalLocal()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitNormalLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getHitNormalLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public partIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->partIndex:I

    return v0
.end method

.method public triangleIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->triangleIndex:I

    return v0
.end method
