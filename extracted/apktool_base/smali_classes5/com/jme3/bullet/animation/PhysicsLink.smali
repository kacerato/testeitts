.class public abstract Lcom/jme3/bullet/animation/PhysicsLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagArmatureJoint:Ljava/lang/String; = "armatureJoint"

.field private static final tagBlendInterval:Ljava/lang/String; = "blendInterval"

.field private static final tagBone:Ljava/lang/String; = "bone"

.field private static final tagChildren:Ljava/lang/String; = "children"

.field private static final tagControl:Ljava/lang/String; = "control"

.field private static final tagDensity:Ljava/lang/String; = "density"

.field private static final tagIkControllers:Ljava/lang/String; = "ikControllers"

.field private static final tagJoint:Ljava/lang/String; = "joint"

.field private static final tagKinematicWeight:Ljava/lang/String; = "kinematicWeight"

.field private static final tagKpTransform:Ljava/lang/String; = "kpTransform"

.field private static final tagKpVelocity:Ljava/lang/String; = "kpVelocity"

.field private static final tagLocalOffset:Ljava/lang/String; = "offset"

.field private static final tagParent:Ljava/lang/String; = "parent"

.field private static final tagRigidBody:Ljava/lang/String; = "rigidBody"


# instance fields
.field private armatureJoint:Lcom/jme3/anim/Joint;

.field private blendInterval:F

.field private bone:Lcom/jme3/animation/Bone;

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/animation/PhysicsLink;",
            ">;"
        }
    .end annotation
.end field

.field private control:Lcom/jme3/bullet/animation/DacLinks;

.field private density:F

.field private ikControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/animation/IKController;",
            ">;"
        }
    .end annotation
.end field

.field private joint:Lcom/jme3/bullet/joints/PhysicsJoint;

.field private kinematicWeight:F

.field private kpTransform:Lcom/jme3/math/Transform;

.field private kpVelocity:Lcom/jme3/math/Vector3f;

.field private localOffset:Lcom/jme3/math/Vector3f;

.field private parent:Lcom/jme3/bullet/animation/PhysicsLink;

.field private rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field private tmpScale:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/PhysicsLink;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    .line 5
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    .line 7
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    .line 8
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    .line 9
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    .line 33
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    .line 35
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    .line 36
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    .line 37
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    .line 38
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    .line 39
    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    .line 40
    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    .line 41
    invoke-direct {p0, p4, p3}, Lcom/jme3/bullet/animation/PhysicsLink;->createRigidBody(Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    .line 42
    sget-object p1, Lcom/jme3/bullet/animation/PhysicsLink;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 43
    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    .line 44
    invoke-virtual {p4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 45
    const-string p4, "Creating link for joint {0} with mass={1}"

    invoke-virtual {p1, p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    .line 47
    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->updateKPTransform()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    .line 15
    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    .line 17
    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    .line 18
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    .line 19
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    .line 20
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    .line 21
    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    .line 22
    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    .line 23
    invoke-direct {p0, p4, p3}, Lcom/jme3/bullet/animation/PhysicsLink;->createRigidBody(Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    .line 24
    sget-object p1, Lcom/jme3/bullet/animation/PhysicsLink;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    .line 26
    const-string p4, "Creating link for bone {0} with mass={1}"

    invoke-virtual {p1, p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    .line 28
    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->updateKPTransform()V

    return-void
.end method

.method private createRigidBody(Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    invoke-static {p2}, Lmf/j;->k(Lcom/jme3/bullet/collision/shapes/CollisionShape;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/animation/LinkConfig;->mass(F)F

    move-result p1

    div-float v0, p1, v0

    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->density:F

    new-instance v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {v0, p2, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/DacConfiguration;->damping()F

    move-result p1

    invoke-virtual {v0, p1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(FF)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-object v0
.end method

.method private setKinematicWeight(F)V
    .locals 6

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    if-lez v5, :cond_1

    move p1, v4

    :cond_1
    iput p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->updateRigidBodyTransform()V

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setLinearVelocity(Lcom/jme3/math/Vector3f;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateKPTransform()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    iget-object v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1, v0, v2, v3}, Lcom/jme3/bullet/animation/DacLinks;->physicsTransform(Lcom/jme3/animation/Bone;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    iget-object v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/bullet/animation/DacLinks;->physicsTransform(Lcom/jme3/anim/Joint;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :goto_0
    return-void
.end method

.method private updateRigidBodyTransform()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    iget-object v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/bullet/animation/DacConfiguration;->areWithinTolerance(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsScale(Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addIKController(Lcom/jme3/bullet/animation/IKController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blendToKinematicMode(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setKinematicWeight(F)V

    return-void
.end method

.method public boneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    invoke-virtual {v0}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/Joint;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Bone;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/DacLinks;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/joints/PhysicsJoint;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/PhysicsLink;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->tmpScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public countChildren()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public density()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->density:F

    return v0
.end method

.method public disableAllIKControllers()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/IKController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/animation/IKController;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract dynamicUpdate()V
.end method

.method public abstract freeze(Z)V
.end method

.method public final getArmatureJoint()Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    return-object v0
.end method

.method public final getBone()Lcom/jme3/animation/Bone;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    return-object v0
.end method

.method public getControl()Lcom/jme3/bullet/animation/DacLinks;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    return-object v0
.end method

.method public getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    return-object v0
.end method

.method public getParent()Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    return-object v0
.end method

.method public final getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public isKinematic()Z
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReleased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/PhysicsLink;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->jmeClone()Lcom/jme3/bullet/animation/PhysicsLink;

    move-result-object v0

    return-object v0
.end method

.method public kinematicUpdate(F)V
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setKinematicWeight(F)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    div-float v0, p1, v0

    add-float/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/jme3/bullet/animation/PhysicsLink;->setKinematicWeight(F)V

    :goto_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jme3/math/Transform;->getTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->updateKPTransform()V

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :cond_1
    return-void
.end method

.method public kinematicWeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    return v0
.end method

.method public listChildren()[Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/animation/PhysicsLink;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public listIKControllers()[Lcom/jme3/bullet/animation/IKController;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/animation/IKController;

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public localOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :goto_0
    return-object p1
.end method

.method public postRebuildLink(Lcom/jme3/bullet/animation/PhysicsLink;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight()F

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    :goto_0
    return-void
.end method

.method public postTick()V
    .locals 0

    return-void
.end method

.method public preTick(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->updateRigidBodyTransform()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/IKController;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/animation/IKController;->preTick(F)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "ikControllers"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "children"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    const-string v0, "armatureJoint"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Joint;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    const-string v0, "bone"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    const-string v0, "control"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/DacLinks;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    const-string v0, "blendInterval"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    const-string v0, "density"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->density:F

    const-string v0, "kinematicWeight"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const-string v0, "joint"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/joints/PhysicsJoint;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    const-string v0, "parent"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/PhysicsLink;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    const-string v0, "rigidBody"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    const-string v1, "kpTransform"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "kpVelocity"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "offset"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public removeIKController(Lcom/jme3/bullet/animation/IKController;)Z
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setDynamic(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "uniform acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into dynamic mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setKinematicWeight(F)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setEnableSleep(Z)V

    return-void
.end method

.method public final setJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    return-void
.end method

.method public final setParent(Lcom/jme3/bullet/animation/PhysicsLink;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    iget-object p1, p1, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRagdollMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->listIKControllers()[Lcom/jme3/bullet/animation/IKController;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/IKController;->setRagdollMode()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-void
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicUpdate(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->dynamicUpdate()V

    :goto_0
    return-void
.end method

.method public velocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->ikControllers:Ljava/util/ArrayList;

    const-string v1, "ikControllers"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->children:Ljava/util/ArrayList;

    const-string v1, "children"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->armatureJoint:Lcom/jme3/anim/Joint;

    const-string v1, "armatureJoint"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->bone:Lcom/jme3/animation/Bone;

    const-string v1, "bone"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->control:Lcom/jme3/bullet/animation/DacLinks;

    const-string v1, "control"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->blendInterval:F

    const-string v1, "blendInterval"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->density:F

    const-string v1, "density"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight:F

    const-string v1, "kinematicWeight"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->joint:Lcom/jme3/bullet/joints/PhysicsJoint;

    const-string v1, "joint"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->parent:Lcom/jme3/bullet/animation/PhysicsLink;

    const-string v1, "parent"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->rigidBody:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const-string v1, "rigidBody"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpTransform:Lcom/jme3/math/Transform;

    const-string v1, "kpTransform"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->kpVelocity:Lcom/jme3/math/Vector3f;

    const-string v1, "kpVelocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset:Lcom/jme3/math/Vector3f;

    const-string v1, "offset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
