.class public Lcom/jme3/bullet/animation/AttachmentLink;
.super Lcom/jme3/bullet/animation/PhysicsLink;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final matrixIdentity:Lcom/jme3/math/Matrix3f;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagAttachedModel:Ljava/lang/String; = "attachedModel"

.field private static final tagEndModelTransform:Ljava/lang/String; = "endModelTransform"

.field private static final tagStartModelTransform:Ljava/lang/String; = "startModelTransform"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private attachedModel:Lcom/jme3/scene/Spatial;

.field private endModelTransform:Lcom/jme3/math/Transform;

.field private startModelTransform:Lcom/jme3/math/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/AttachmentLink;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/AttachmentLink;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/AttachmentLink;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/AttachmentLink;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    .line 3
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    const/4 p5, 0x0

    .line 30
    iput-object p5, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    .line 31
    new-instance p7, Lcom/jme3/math/Transform;

    invoke-direct {p7}, Lcom/jme3/math/Transform;-><init>()V

    iput-object p7, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    .line 32
    iput-object p4, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    .line 33
    invoke-virtual {p0, p3}, Lcom/jme3/bullet/animation/PhysicsLink;->setParent(Lcom/jme3/bullet/animation/PhysicsLink;)V

    .line 34
    invoke-virtual {p3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    .line 35
    invoke-virtual {p3, p5}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p3

    .line 36
    invoke-virtual {p3}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object p4

    .line 37
    invoke-virtual {p0, p5}, Lcom/jme3/bullet/animation/AttachmentLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p7

    .line 38
    invoke-static {p7, p4, p5}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p4

    .line 39
    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/DacLinks;->getTransformer()Lcom/jme3/scene/Spatial;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2, p5}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 42
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 43
    invoke-static {p3, p1, p5}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 44
    invoke-virtual {p7, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 45
    invoke-static {p7, p1, p5}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 46
    invoke-virtual {p4}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v5

    .line 47
    sget-object v6, Lcom/jme3/bullet/animation/AttachmentLink;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    .line 48
    invoke-virtual {p6}, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v7

    if-nez v7, :cond_0

    .line 49
    new-instance p1, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/jme3/bullet/joints/SixDofJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Z)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    .line 51
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 52
    new-instance p2, Lcom/jme3/bullet/animation/RangeOfMotion;

    invoke-direct {p2}, Lcom/jme3/bullet/animation/RangeOfMotion;-><init>()V

    const/4 p3, 0x0

    .line 53
    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    const/4 p5, 0x0

    .line 5
    iput-object p5, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    .line 6
    new-instance p7, Lcom/jme3/math/Transform;

    invoke-direct {p7}, Lcom/jme3/math/Transform;-><init>()V

    iput-object p7, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    .line 7
    iput-object p4, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    .line 8
    invoke-virtual {p0, p3}, Lcom/jme3/bullet/animation/PhysicsLink;->setParent(Lcom/jme3/bullet/animation/PhysicsLink;)V

    .line 9
    invoke-virtual {p3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    .line 10
    invoke-virtual {p3, p5}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object p4

    .line 12
    invoke-virtual {p0, p5}, Lcom/jme3/bullet/animation/AttachmentLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p7

    .line 13
    invoke-static {p7, p4, p5}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/DacLinks;->getTransformer()Lcom/jme3/scene/Spatial;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2, p5}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 18
    invoke-static {p3, p1, p5}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 19
    invoke-virtual {p7, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 20
    invoke-static {p7, p1, p5}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 21
    invoke-virtual {p4}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v5

    .line 22
    sget-object v6, Lcom/jme3/bullet/animation/AttachmentLink;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    .line 23
    invoke-virtual {p6}, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v7

    if-nez v7, :cond_0

    .line 24
    new-instance p1, Lcom/jme3/bullet/joints/SixDofJoint;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/jme3/bullet/joints/SixDofJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Z)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 27
    new-instance p2, Lcom/jme3/bullet/animation/RangeOfMotion;

    invoke-direct {p2}, Lcom/jme3/bullet/animation/RangeOfMotion;-><init>()V

    const/4 p3, 0x0

    .line 28
    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    return-void
.end method

.method private localModelTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/animation/DacLinks;->meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-static {p1, v3, p1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3, v4}, Lif/r;->g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-static {p1, v3, p1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v1, v3, v3}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method


# virtual methods
.method public blendToKinematicMode(FLcom/jme3/math/Transform;)V
    .locals 1

    const-string v0, "blend interval"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->blendToKinematicMode(F)V

    iput-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change modes once released."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Spatial;

    iput-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    iget-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public dynamicUpdate()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/AttachmentLink;->localModelTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    return-void
.end method

.method public freeze(Z)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/bullet/animation/AttachmentLink;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/animation/AttachmentLink;->blendToKinematicMode(FLcom/jme3/math/Transform;)V

    :goto_1
    return-void
.end method

.method public getAttachedModel()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isReleased()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kinematicUpdate(F)V
    .locals 4

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iget-object v1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v2, v1}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    iget-object v3, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    invoke-static {v1, v2, v3, v0}, Ljf/f;->L(FLcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicUpdate(F)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attachment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    sget-object v1, Lcom/jme3/bullet/animation/AttachmentLink;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-static {p1, v1, p1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lif/r;->g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, p1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-static {p1, v0, p1}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public postRebuild(Lcom/jme3/bullet/animation/AttachmentLink;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->postRebuildLink(Lcom/jme3/bullet/animation/PhysicsLink;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jme3/bullet/animation/AttachmentLink;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/AttachmentLink;->release()V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    :cond_1
    iget-object v0, p1, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    invoke-static {v0}, Lif/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    iget-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    iget-object p1, p1, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "attachedModel"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    const-string v1, "endModelTransform"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    const-string v1, "startModelTransform"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/PhysicsJoint;->destroy()V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release the same attachment twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release an attachment in kinematic mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRagdollMode()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/AttachmentLink;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into ragdoll mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/animation/DacConfiguration;->gravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    invoke-super {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->setRagdollMode()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->attachedModel:Lcom/jme3/scene/Spatial;

    const-string v1, "attachedModel"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->endModelTransform:Lcom/jme3/math/Transform;

    const-string v1, "endModelTransform"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/AttachmentLink;->startModelTransform:Lcom/jme3/math/Transform;

    const-string v1, "startModelTransform"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
