.class public Lcom/jme3/bullet/animation/BoneLink;
.super Lcom/jme3/bullet/animation/PhysicsLink;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final matrixIdentity:Lcom/jme3/math/Matrix3f;

.field private static final tagEndBoneTransforms:Ljava/lang/String; = "endBoneTransforms"

.field private static final tagManagedArmatureJoints:Ljava/lang/String; = "managedArmatureJoints"

.field private static final tagManagedBones:Ljava/lang/String; = "managedBones"

.field private static final tagPrevBoneTransforms:Ljava/lang/String; = "prevBoneTransforms"

.field private static final tagStartBoneTransforms:Ljava/lang/String; = "startBoneTransforms"

.field private static final tagSubmode:Ljava/lang/String; = "submode"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private endBoneTransforms:[Lcom/jme3/math/Transform;

.field private managedArmatureJoints:[Lcom/jme3/anim/Joint;

.field private managedBones:[Lcom/jme3/animation/Bone;

.field private prevBoneTransforms:[Lcom/jme3/math/Transform;

.field private startBoneTransforms:[Lcom/jme3/math/Transform;

.field private submode:Lcom/jme3/bullet/animation/KinematicSubmode;

.field private tmpMatrix:Lcom/jme3/math/Matrix3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/BoneLink;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/BoneLink;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/BoneLink;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    .line 3
    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    .line 4
    sget-object v1, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    .line 5
    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    .line 6
    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    .line 7
    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    .line 8
    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    .line 19
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    .line 20
    sget-object p2, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    .line 21
    new-instance p2, Lcom/jme3/math/Matrix3f;

    invoke-direct {p2}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    .line 22
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    .line 23
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    .line 24
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/jme3/bullet/animation/PhysicsLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    .line 11
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    .line 12
    sget-object p2, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    .line 13
    new-instance p2, Lcom/jme3/math/Matrix3f;

    invoke-direct {p2}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    .line 14
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    .line 15
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    .line 16
    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method private copyManagedTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_1

    aget-object p1, v0, p1

    invoke-static {p1, p2}, Lif/r;->f(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :goto_0
    return-object p2
.end method

.method private localBoneTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
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

    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jme3/bullet/animation/RagUtils;->meshToLocal(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jme3/bullet/animation/RagUtils;->meshToLocal(Lcom/jme3/anim/Joint;Lcom/jme3/math/Transform;)V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/PhysicsLink;->localOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v1, v3, v3}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method private setManagedTransform(ILcom/jme3/math/Transform;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-static {p1, p2}, Lif/r;->y(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->updateModelTransforms()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/jme3/anim/Joint;->setLocalTransform(Lcom/jme3/math/Transform;)V

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->updateModelTransforms()V

    :goto_0
    return-void
.end method

.method private setUserControl(Z)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/animation/Bone;->setUserControl(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addJoint(Lcom/jme3/bullet/animation/PhysicsLink;)V
    .locals 14

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setParent(Lcom/jme3/bullet/animation/PhysicsLink;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-static {v4, v3, v0}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/DacLinks;->getTransformer()Lcom/jme3/scene/Spatial;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v6

    :goto_0
    invoke-virtual {v3, v6, v0}, Lcom/jme3/scene/Spatial;->localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v7

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v8

    invoke-static {v1, v3, v0}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-static {v4, v3, v0}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    iget-object v11, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    sget-object v12, Lcom/jme3/bullet/animation/BoneLink;->matrixIdentity:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->config(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/LinkConfig;->rotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v13

    if-nez v13, :cond_1

    new-instance v0, Lcom/jme3/bullet/joints/SixDofJoint;

    const/4 v13, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/jme3/bullet/joints/SixDofJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/jme3/bullet/joints/New6Dof;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/PhysicsLink;->setJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->getJointLimits(Ljava/lang/String;)Lcom/jme3/bullet/animation/RangeOfMotion;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/animation/DacLinks;->listManagedBones(Ljava/lang/String;)[Lcom/jme3/animation/Bone;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    array-length p1, p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/animation/DacLinks;->listManagedArmatureJoints(Ljava/lang/String;)[Lcom/jme3/anim/Joint;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    array-length p1, p1

    :goto_2
    new-array v0, p1, [Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    :goto_3
    if-ge v2, p1, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V
    .locals 4

    const-string v0, "submode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "blend interval"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->blendToKinematicMode(F)V

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/jme3/bullet/animation/BoneLink;->copyManagedTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v2

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    :goto_1
    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    if-ne p1, p2, :cond_2

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/BoneLink;->setUserControl(Z)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/BoneLink;->setUserControl(Z)V

    :goto_2
    return-void
.end method

.method public boneIndex(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "managed index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/DacLinks;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result p1

    :goto_0
    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/animation/Bone;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/anim/Joint;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public countManaged()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public dynamicUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v2, v2, v1

    invoke-direct {p0, v1, v2}, Lcom/jme3/bullet/animation/BoneLink;->setManagedTransform(ILcom/jme3/math/Transform;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/BoneLink;->localBoneTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v1

    invoke-static {v1, v0}, Lif/r;->y(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->updateModelTransforms()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/anim/Joint;->setLocalTransform(Lcom/jme3/math/Transform;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->updateModelTransforms()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public footprint()[Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/PhysicsLink;->physicsTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/util/DebugShapeFactory;->footprint(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;I)[Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public freeze(Z)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/bullet/animation/BoneLink;->translateIdentity:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/jme3/bullet/animation/BoneLink;->setDynamic(Lcom/jme3/math/Vector3f;ZZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/jme3/bullet/animation/KinematicSubmode;->Frozen:Lcom/jme3/bullet/animation/KinematicSubmode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/animation/BoneLink;->blendToKinematicMode(Lcom/jme3/bullet/animation/KinematicSubmode;F)V

    :goto_1
    return-void
.end method

.method public kinematicUpdate(F)V
    .locals 7

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    sget-object v3, Lcom/jme3/bullet/animation/BoneLink$1;->$SwitchMap$com$jme3$bullet$animation$KinematicSubmode:[I

    iget-object v4, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/jme3/bullet/animation/BoneLink;->boneIndex(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/jme3/bullet/animation/DacLinks;->copyBindTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/jme3/bullet/animation/BoneLink;->copyManagedTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/jme3/bullet/animation/BoneLink;->boneIndex(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/jme3/bullet/animation/DacLinks;->copyBindTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    const v3, 0x3a83126f    # 0.001f

    invoke-virtual {v0, v3}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-static {v4}, Ljf/g;->p(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v5, v4}, Lcom/jme3/math/Quaternion;->multLocal(F)Lcom/jme3/math/Quaternion;

    :cond_5
    invoke-static {v5}, Ljf/g;->p(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicWeight()F

    move-result v4

    invoke-static {v4, v3, v0, v0}, Ljf/f;->L(FLcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :cond_6
    invoke-direct {p0, v2, v0}, Lcom/jme3/bullet/animation/BoneLink;->setManagedTransform(ILcom/jme3/math/Transform;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->kinematicUpdate(F)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postRebuild(Lcom/jme3/bullet/animation/BoneLink;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->postRebuildLink(Lcom/jme3/bullet/animation/PhysicsLink;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->isKinematic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/bullet/animation/KinematicSubmode;->Frozen:Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    :goto_0
    iget-object v1, p1, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    invoke-static {v1}, Lif/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/math/Transform;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    iget-object v1, p1, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    invoke-static {v1}, Lif/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/math/Transform;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "managedArmatureJoints"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    new-array v3, v3, [Lcom/jme3/anim/Joint;

    iput-object v3, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    aget-object v5, v0, v3

    check-cast v5, Lcom/jme3/anim/Joint;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "managedBones"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    new-array v1, v1, [Lcom/jme3/animation/Bone;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    aget-object v3, v0, v2

    check-cast v3, Lcom/jme3/animation/Bone;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-class v0, Lcom/jme3/bullet/animation/KinematicSubmode;

    sget-object v1, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    const-string v2, "submode"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/KinematicSubmode;

    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    const-string v0, "endBoneTransforms"

    invoke-static {p1, v0}, Lcom/jme3/bullet/animation/RagUtils;->readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    const-string v0, "prevBoneTransforms"

    invoke-static {p1, v0}, Lcom/jme3/bullet/animation/RagUtils;->readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    const-string v0, "startBoneTransforms"

    invoke-static {p1, v0}, Lcom/jme3/bullet/animation/RagUtils;->readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public setDynamic(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 23
    const-string v0, "uniform acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into dynamic mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/BoneLink;->setUserControl(Z)V

    return-void
.end method

.method public setDynamic(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 9
    const-string v0, "uniform acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into dynamic mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    .line 12
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    .line 13
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object p1

    .line 14
    instance-of v0, p1, Lcom/jme3/bullet/joints/SixDofJoint;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    goto :goto_0

    .line 16
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/jme3/bullet/joints/New6Dof;

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationOrder()Lcom/jme3/bullet/RotationOrder;

    move-result-object v0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    .line 18
    iget-object p2, p0, Lcom/jme3/bullet/animation/BoneLink;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p2, v1}, Lcom/jme3/bullet/RotationOrder;->matrixToEuler(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 20
    new-instance v0, Lcom/jme3/bullet/animation/RangeOfMotion;

    invoke-direct {v0, p2}, Lcom/jme3/bullet/animation/RangeOfMotion;-><init>(Lcom/jme3/math/Vector3f;)V

    const/4 p2, 0x0

    .line 21
    invoke-virtual {v0, p1, p2, p2, p2}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    const/4 p1, 0x1

    .line 22
    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/BoneLink;->setUserControl(Z)V

    return-void
.end method

.method public setDynamic(Lcom/jme3/math/Vector3f;ZZZ)V
    .locals 2

    .line 1
    const-string v0, "uniform acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " into dynamic mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyReadyForDynamicMode(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->setDynamic(Lcom/jme3/math/Vector3f;)V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getControl()Lcom/jme3/bullet/animation/DacLinks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->getJointLimits(Ljava/lang/String;)Lcom/jme3/bullet/animation/RangeOfMotion;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/BoneLink;->setUserControl(Z)V

    return-void
.end method

.method public setEndBoneTransforms([Lcom/jme3/math/Transform;)V
    .locals 2

    const-string v0, "transforms"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "one element for each managed bone"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method public setLocalTransform(ILcom/jme3/math/Transform;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-string v2, "index"

    invoke-static {p1, v2, v1, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    :cond_0
    return-void
.end method

.method public setRagdollMode()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->name()Ljava/lang/String;

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

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/jme3/bullet/animation/BoneLink;->setDynamic(Lcom/jme3/math/Vector3f;ZZZ)V

    invoke-super {p0}, Lcom/jme3/bullet/animation/PhysicsLink;->setRagdollMode()V

    return-void
.end method

.method public update(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/BoneLink;->countManaged()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v0, [Lcom/jme3/math/Transform;

    iput-object v1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/jme3/bullet/animation/BoneLink;->copyManagedTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->update(F)V

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    aget-object p1, p1, v2

    invoke-direct {p0, v2, p1}, Lcom/jme3/bullet/animation/BoneLink;->copyManagedTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedArmatureJoints:[Lcom/jme3/anim/Joint;

    const-string v1, "managedArmatureJoints"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->managedBones:[Lcom/jme3/animation/Bone;

    const-string v1, "managedBones"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->submode:Lcom/jme3/bullet/animation/KinematicSubmode;

    const-string v1, "submode"

    sget-object v3, Lcom/jme3/bullet/animation/KinematicSubmode;->Animated:Lcom/jme3/bullet/animation/KinematicSubmode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->endBoneTransforms:[Lcom/jme3/math/Transform;

    const-string v1, "endBoneTransforms"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->prevBoneTransforms:[Lcom/jme3/math/Transform;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/jme3/math/Transform;

    const-string v3, "prevBoneTransforms"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/BoneLink;->startBoneTransforms:[Lcom/jme3/math/Transform;

    const-string v2, "startBoneTransforms"

    new-array v1, v1, [Lcom/jme3/math/Transform;

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
