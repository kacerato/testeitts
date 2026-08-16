.class public Lcom/jme3/bullet/control/BetterCharacterControl;
.super Lcom/jme3/bullet/control/AbstractPhysicsControl;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/PhysicsTickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagBody:Ljava/lang/String; = "body"

.field private static final tagDuckedFactor:Ljava/lang/String; = "duckedFactor"

.field private static final tagHeight:Ljava/lang/String; = "height"

.field private static final tagJumpForce:Ljava/lang/String; = "jumpForce"

.field private static final tagMass:Ljava/lang/String; = "mass"

.field private static final tagPhysicsDamping:Ljava/lang/String; = "physicsDamping"

.field private static final tagRadius:Ljava/lang/String; = "radius"

.field private static final tagViewDirection:Ljava/lang/String; = "viewDirection"

.field private static final tagWalkDirection:Ljava/lang/String; = "walkDirection"


# instance fields
.field private baseLocation:Lcom/jme3/math/Vector3f;

.field private dampingFactor:F

.field private duckedFactor:F

.field private initialHeight:F

.field private initialRadius:F

.field private isDucked:Z

.field private jumpImpulse:Lcom/jme3/math/Vector3f;

.field private localForward:Lcom/jme3/math/Vector3f;

.field private localLeft:Lcom/jme3/math/Vector3f;

.field private localToWorld:Lcom/jme3/math/Quaternion;

.field private localUp:Lcom/jme3/math/Vector3f;

.field private mass:F

.field private onGround:Z

.field private rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field private scale:Lcom/jme3/math/Vector3f;

.field private sweepBegin:Lcom/jme3/math/Transform;

.field private sweepEnd:Lcom/jme3/math/Transform;

.field private sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

.field private velocity:Lcom/jme3/math/Vector3f;

.field private viewDirInWorld:Lcom/jme3/math/Vector3f;

.field private viewDirection:Lcom/jme3/math/Vector3f;

.field private viewToWorld:Lcom/jme3/math/Quaternion;

.field private walkVelocity:Lcom/jme3/math/Vector3f;

.field private wantToJump:Z

.field private wantToUnDuck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/control/BetterCharacterControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/control/BetterCharacterControl;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->isDucked:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->onGround:Z

    .line 4
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToJump:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    const v0, 0x3f666666    # 0.9f

    .line 6
    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    const v0, 0x3f19999a    # 0.6f

    .line 7
    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    .line 8
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    .line 9
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    .line 10
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    .line 11
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    .line 12
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    .line 14
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    .line 15
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    .line 16
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    .line 17
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    .line 18
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    .line 19
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    .line 20
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    .line 21
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 4

    .line 22
    invoke-direct {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->isDucked:Z

    .line 24
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->onGround:Z

    .line 25
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToJump:Z

    .line 26
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    const v1, 0x3f666666    # 0.9f

    .line 27
    iput v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    const v1, 0x3f19999a    # 0.6f

    .line 28
    iput v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    .line 29
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    .line 30
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    .line 31
    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    .line 32
    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    .line 33
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    .line 34
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    .line 35
    new-instance v1, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    .line 36
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    .line 37
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2, v3, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    .line 38
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    .line 39
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    .line 40
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    .line 41
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    .line 42
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    .line 43
    const-string v1, "radius"

    invoke-static {p1, v1}, Lif/E;->E(FLjava/lang/String;)Z

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 44
    :cond_0
    const-string v1, "height more than 2x the radius"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 45
    const-string v0, "mass"

    invoke-static {p3, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 46
    iput p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialRadius:F

    .line 47
    iput p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    .line 48
    iput p3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->mass:F

    .line 49
    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p2, p1, p3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/high16 p1, 0x40a00000    # 5.0f

    mul-float/2addr p3, p1

    .line 51
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, v2, p3, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    .line 52
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setAngularFactor(F)V

    return-void
.end method

.method private dynamicPreTick()V
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    iget v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    iget v4, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    mul-float/2addr v3, v4

    iget-object v4, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    neg-float v2, v2

    neg-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    invoke-static {v2, v4, v4}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->length()F

    move-result v2

    cmpl-float v3, v2, v5

    if-lez v3, :cond_0

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    :cond_1
    iget-boolean v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToJump:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->onGround:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    invoke-static {v2, v1, v1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyCentralImpulse(Lcom/jme3/math/Vector3f;)V

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method


# virtual methods
.method public addPhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalCoordinateSystem()V

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->addTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    return-void
.end method

.method public calculateNewForward(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    iget v5, p2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v3, v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    iget v3, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/bullet/control/BetterCharacterControl;->logger2:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Zero left for direction {0}, up {1}"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-static {p2}, Ljf/h;->E(Lcom/jme3/math/Vector3f;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4, v4, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/control/BetterCharacterControl;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Zero left for left {0}, up {1}"

    filled-new-array {v1, p3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1, p3, p2}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    :cond_4
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public checkCanUnDuck()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalRadius()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    sub-float/2addr v1, v2

    invoke-static {v0, v3, v1}, Ljf/h;->c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    iget v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    sub-float/2addr v3, v2

    invoke-static {v0, v1, v3}, Ljf/h;->c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v0, v2}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v3}, Lcom/jme3/bullet/NativePhysicsObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    return v0
.end method

.method public checkOnGround()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalHeight()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-static {v0, v2, v1}, Ljf/h;->c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalRadius()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    sub-float v2, v1, v2

    invoke-static {v0, v3, v2}, Ljf/h;->c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->getRadius()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v0, v1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    iget-object v3, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->onGround:Z

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepShape:Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepEnd:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->sweepBegin:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Quaternion;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public createSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getDuckedFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    return v0
.end method

.method public getFinalHeight()F
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getFinalRadius()F
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialRadius:F

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getInitialHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    return v0
.end method

.method public getInitialRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialRadius:F

    return v0
.end method

.method public getJumpForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getPhysicsDamping()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    return v0
.end method

.method public getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalRadius()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getFinalHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float v3, v1, v3

    new-instance v4, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;

    invoke-direct {v4, v0, v3}, Lcom/jme3/bullet/collision/shapes/CapsuleCollisionShape;-><init>(FF)V

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>(I)V

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1, v2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;FFF)V

    return-object v0
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getViewDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getViewDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getWalkDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isDucked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->isDucked:Z

    return v0
.end method

.method public isKinematic()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOnGround()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->onGround:Z

    return v0
.end method

.method public jump()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToJump:Z

    return-void
.end method

.method public physicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    :goto_0
    return-void
.end method

.method public prePhysicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->checkOnGround()V

    iget-boolean p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->checkCanUnDuck()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/BetterCharacterControl;->setHeightPercent(F)V

    iput-boolean p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    iput-boolean p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->isDucked:Z

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->dynamicPreTick()V

    :cond_1
    iput-boolean p2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToJump:Z

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "radius"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialRadius:F

    const-string v0, "height"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    const-string v0, "mass"

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->mass:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->mass:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "jumpForce"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    const-string v0, "physicsDamping"

    const v2, 0x3f666666    # 0.9f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    const-string v0, "duckedFactor"

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v2, "viewDirection"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "walkDirection"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    const-string v0, "body"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public removePhysics()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    return-void
.end method

.method public removeSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public resetForward(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalCoordinateSystem()V

    return-void
.end method

.method public setDucked(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/BetterCharacterControl;->setHeightPercent(F)V

    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->isDucked:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->wantToUnDuck:Z

    :goto_0
    return-void
.end method

.method public setDuckedFactor(F)V
    .locals 1

    const-string v0, "factor"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "new gravity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalCoordinateSystem()V

    return-void
.end method

.method public setHeightPercent(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public setJumpForce(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "new impulse"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setKinematic(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    return-void
.end method

.method public setPhysicsDamping(F)V
    .locals 1

    const-string v0, "new factor"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "new location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    const-string v0, "new orientation"

    invoke-static {p1, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, v0}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalViewDirection()V

    return-void
.end method

.method public setViewDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalViewDirection()V

    :cond_0
    return-void
.end method

.method public setWalkDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->baseLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/BetterCharacterControl;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatialRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/BetterCharacterControl;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :goto_0
    return-void
.end method

.method public updateLocalCoordinateSystem()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/bullet/control/BetterCharacterControl;->calculateNewForward(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localLeft:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localForward:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/BetterCharacterControl;->updateLocalViewDirection()V

    return-void
.end method

.method public updateLocalViewDirection()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localToWorld:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, v1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewToWorld:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirInWorld:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->localUp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/bullet/control/BetterCharacterControl;->calculateNewForward(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public warp(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "new location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/control/BetterCharacterControl;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialRadius:F

    const-string v1, "radius"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->initialHeight:F

    const-string v1, "height"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->mass:F

    const-string v1, "mass"

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->jumpImpulse:Lcom/jme3/math/Vector3f;

    const-string v1, "jumpForce"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->dampingFactor:F

    const-string v1, "physicsDamping"

    const v3, 0x3f666666    # 0.9f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->duckedFactor:F

    const-string v1, "duckedFactor"

    const v3, 0x3f19999a    # 0.6f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->viewDirection:Lcom/jme3/math/Vector3f;

    const-string v1, "viewDirection"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->walkVelocity:Lcom/jme3/math/Vector3f;

    const-string v1, "walkDirection"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/control/BetterCharacterControl;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const-string v1, "body"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
