.class public Lcom/jme3/bullet/animation/DacLinks;
.super Lcom/jme3/bullet/animation/DacConfiguration;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/PhysicsTickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger3:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagArmature:Ljava/lang/String; = "armature"

.field private static final tagAttachmentLinks:Ljava/lang/String; = "attachmentLinks"

.field private static final tagBindTransforms:Ljava/lang/String; = "bindTransforms"

.field private static final tagBoneLinkList:Ljava/lang/String; = "boneLinkList"

.field private static final tagPreComposer:Ljava/lang/String; = "preComposer"

.field private static final tagSkeleton:Ljava/lang/String; = "skeleton"

.field private static final tagTorsoLink:Ljava/lang/String; = "torsoLink"

.field private static final tagTransformer:Ljava/lang/String; = "transformer"

.field private static final transformIdentity:Lcom/jme3/math/Transform;

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private armature:Lcom/jme3/anim/Armature;

.field private attachmentLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/animation/AttachmentLink;",
            ">;"
        }
    .end annotation
.end field

.field private bindTransforms:[Lcom/jme3/math/Transform;

.field private boneLinkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/animation/BoneLink;",
            ">;"
        }
    .end annotation
.end field

.field private boneLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/bullet/animation/BoneLink;",
            ">;"
        }
    .end annotation
.end field

.field private isReady:Z

.field private preComposer:Lcom/jme3/bullet/animation/PreComposer;

.field private skeleton:Lcom/jme3/animation/Skeleton;

.field private torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

.field private transformer:Lcom/jme3/scene/Spatial;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/animation/DacLinks;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/DacLinks;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/bullet/animation/DacLinks;->transformIdentity:Lcom/jme3/math/Transform;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/animation/DacLinks;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/bullet/animation/DacConfiguration;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/bullet/animation/DacLinks;->isReady:Z

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    return-void
.end method

.method private addJoints(Lcom/jme3/bullet/animation/PhysicsLink;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->childNames(Lcom/jme3/bullet/animation/PhysicsLink;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/animation/BoneLink;->addJoint(Lcom/jme3/bullet/animation/PhysicsLink;)V

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/jme3/bullet/animation/DacLinks;->addJoints(Lcom/jme3/bullet/animation/PhysicsLink;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkForArmatureScaling()V
    .locals 15

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    array-length v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    :goto_0
    if-ge v9, v5, :cond_0

    aget-object v10, v4, v9

    invoke-virtual {v10}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget v11, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v12, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v10, Lcom/jme3/math/Vector3f;->z:F

    new-array v14, v2, [F

    aput v8, v14, v7

    aput v11, v14, v3

    aput v12, v14, v1

    aput v13, v14, v0

    invoke-static {v14}, Ljf/f;->B([F)F

    move-result v8

    iget v11, v10, Lcom/jme3/math/Vector3f;->x:F

    iget v12, v10, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v10, Lcom/jme3/math/Vector3f;->z:F

    new-array v13, v2, [F

    aput v6, v13, v7

    aput v11, v13, v3

    aput v12, v13, v1

    aput v10, v13, v0

    invoke-static {v13}, Ljf/f;->G([F)F

    move-result v6

    add-int/2addr v9, v3

    goto :goto_0

    :cond_0
    const v0, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_1

    const v0, 0x3f8147ae    # 1.01f

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Armature scaling detected:  minScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " maxScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private childNames(Lcom/jme3/bullet/animation/PhysicsLink;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/animation/PhysicsLink;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listLinkedBoneNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/DacLinks;->findBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/jme3/bullet/animation/DacConfiguration;->findManager(Lcom/jme3/animation/Bone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/DacLinks;->findArmatureJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/jme3/bullet/animation/DacConfiguration;->findManager(Lcom/jme3/anim/Joint;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private createAttachmentLink(Ljava/lang/String;Lcom/jme3/anim/SkinningControl;[Ljava/lang/String;)V
    .locals 9

    .line 18
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->getAttachmentModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lif/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    .line 20
    invoke-static {v5, v0}, Lif/p;->x(Lcom/jme3/scene/Spatial;Ljf/o;)Ljf/o;

    move-result-object v1

    .line 21
    invoke-virtual {p2, p1}, Lcom/jme3/anim/SkinningControl;->getAttachmentsNode(Ljava/lang/String;)Lcom/jme3/scene/Node;

    move-result-object p2

    .line 22
    invoke-virtual {p2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 23
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p2, p1}, Lcom/jme3/anim/Armature;->getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v3

    .line 24
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p2, v3}, Lcom/jme3/anim/Armature;->getJointIndex(Lcom/jme3/anim/Joint;)I

    move-result p2

    .line 25
    aget-object p2, p3, p2

    .line 26
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 27
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    :goto_0
    move-object v4, p2

    goto :goto_1

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/PhysicsLink;

    goto :goto_0

    .line 29
    :goto_1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->attachmentConfig(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object v7

    .line 30
    invoke-virtual {v7}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object p2

    .line 31
    invoke-virtual {p2, v1, v0}, Lcom/jme3/bullet/animation/CenterHeuristic;->center(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 32
    sget-object p2, Lcom/jme3/bullet/animation/DacLinks;->transformIdentity:Lcom/jme3/math/Transform;

    invoke-virtual {v7, p2, v8, v1}, Lcom/jme3/bullet/animation/LinkConfig;->createShape(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Ljf/o;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    .line 33
    new-instance p2, Lcom/jme3/bullet/animation/AttachmentLink;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/jme3/bullet/animation/AttachmentLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    .line 34
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAttachmentLink(Ljava/lang/String;Lcom/jme3/animation/SkeletonControl;[Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->getAttachmentModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lif/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    .line 3
    invoke-static {v5, v0}, Lif/p;->x(Lcom/jme3/scene/Spatial;Ljf/o;)Ljf/o;

    move-result-object v1

    .line 4
    invoke-virtual {p2, p1}, Lcom/jme3/animation/SkeletonControl;->getAttachmentsNode(Ljava/lang/String;)Lcom/jme3/scene/Node;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 6
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p2, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v3

    .line 7
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p2, v3}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result p2

    .line 8
    aget-object p2, p3, p2

    .line 9
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    :goto_0
    move-object v4, p2

    goto :goto_1

    .line 11
    :cond_0
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/PhysicsLink;

    goto :goto_0

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->attachmentConfig(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v1, v0}, Lcom/jme3/bullet/animation/CenterHeuristic;->center(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 15
    sget-object p2, Lcom/jme3/bullet/animation/DacLinks;->transformIdentity:Lcom/jme3/math/Transform;

    invoke-virtual {v7, p2, v8, v1}, Lcom/jme3/bullet/animation/LinkConfig;->createShape(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Ljf/o;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    .line 16
    new-instance p2, Lcom/jme3/bullet/animation/AttachmentLink;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/jme3/bullet/animation/AttachmentLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/animation/PhysicsLink;Lcom/jme3/scene/Spatial;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    .line 17
    iget-object p3, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createBoneLink(Ljava/lang/String;Ljf/o;)V
    .locals 12

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljf/o;->m()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v0

    invoke-static {v0, v1}, Lif/r;->g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v2

    move-object v8, v0

    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findArmatureJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v2

    move-object v5, v0

    move-object v8, v1

    :goto_0
    invoke-virtual {v2}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->config(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v3

    sget-object v4, Lcom/jme3/bullet/animation/CenterHeuristic;->Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

    if-ne v3, v4, :cond_1

    sget-object v2, Lcom/jme3/bullet/animation/DacLinks;->translateIdentity:Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p2, v1}, Lcom/jme3/bullet/animation/CenterHeuristic;->center(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object v2, v3

    :goto_1
    invoke-virtual {v10, v0, v2, p2}, Lcom/jme3/bullet/animation/LinkConfig;->createShape(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Ljf/o;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v9

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-static {v0, v2, v1}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz p2, :cond_2

    new-instance p2, Lcom/jme3/bullet/animation/BoneLink;

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/jme3/bullet/animation/BoneLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/jme3/bullet/animation/BoneLink;

    move-object v3, p2

    move-object v4, p0

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/jme3/bullet/animation/BoneLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Vector3f;)V

    :goto_2
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "No mesh vertices for linked bone %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private createTorsoLink(Ljf/o;[Lcom/jme3/scene/Mesh;)V
    .locals 13

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljf/o;->m()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->mainBoneName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    invoke-static {v1, p2}, Lcom/jme3/bullet/animation/RagUtils;->findMainBone(Lcom/jme3/animation/Skeleton;[Lcom/jme3/scene/Mesh;)Lcom/jme3/animation/Bone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->setMainBoneName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p2

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {p2, v2}, Lif/r;->g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v0

    move-object v8, p2

    move-object v5, v2

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bone not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-static {v0, p2}, Lcom/jme3/bullet/animation/RagUtils;->findMainJoint(Lcom/jme3/anim/Armature;[Lcom/jme3/scene/Mesh;)Lcom/jme3/anim/Joint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->setMainBoneName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p2, v0}, Lcom/jme3/anim/Armature;->getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object p2

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {p2}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    move-object v5, p2

    move-object v8, v2

    :goto_2
    invoke-virtual {v0}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/DacConfiguration;->config(Ljava/lang/String;)Lcom/jme3/bullet/animation/LinkConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/bullet/animation/LinkConfig;->centerHeuristic()Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/jme3/bullet/animation/CenterHeuristic;->center(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, p2, v1, p1}, Lcom/jme3/bullet/animation/LinkConfig;->createShape(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Ljf/o;)Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v9

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    invoke-static {p2, v1, v2}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v12

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    instance-of p2, p1, Lcom/jme3/scene/Node;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-static {p2, p1, v2}, Lcom/jme3/bullet/animation/RagUtils;->relativeTransform(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Node;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->invert()Lcom/jme3/math/Transform;

    move-result-object p1

    :goto_3
    move-object v11, p1

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/jme3/bullet/animation/DacLinks;->transformIdentity:Lcom/jme3/math/Transform;

    goto :goto_3

    :goto_4
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/jme3/bullet/animation/TorsoLink;

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/jme3/bullet/animation/TorsoLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/animation/Bone;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;)V

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    goto :goto_5

    :cond_5
    new-instance p1, Lcom/jme3/bullet/animation/TorsoLink;

    move-object v3, p1

    move-object v4, p0

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/jme3/bullet/animation/TorsoLink;-><init>(Lcom/jme3/bullet/animation/DacLinks;Lcom/jme3/anim/Joint;Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/animation/LinkConfig;Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;)V

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    :goto_5
    return-void

    :cond_6
    invoke-static {v0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Joint not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mesh vertices for the torso. Make sure the root bone is not linked."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ignoreCollisions(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listRigidBodies()[Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->clearIgnoreList()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v4, p1, v1}, Lcom/jme3/bullet/animation/RagUtils;->ignoreCollisions(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;ILjava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private sortControls(Lcom/jme3/scene/control/Control;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-static {p0, v0}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    move-result v1

    invoke-static {p1, v0}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    invoke-static {p0, v0}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    invoke-static {p1, v0}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    :cond_0
    return-void
.end method

.method private validateArmature()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-static {v0}, Lcom/jme3/bullet/animation/RagUtils;->validate(Lcom/jme3/anim/Armature;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listLinkedBoneNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/DacLinks;->findArmatureJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Linked bone {0} is a root joint."

    invoke-static {v4}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Linked bone %s not found in armature."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listAttachmentBoneNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacLinks;->findArmatureJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Attachment joint %s not found in armature."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private validateSkeleton()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-static {v0}, Lcom/jme3/bullet/animation/RagUtils;->validate(Lcom/jme3/animation/Skeleton;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listLinkedBoneNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/animation/DacLinks;->findBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Linked bone {0} is a root bone."

    invoke-static {v4}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Linked bone %s not found in skeleton."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listAttachmentBoneNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacLinks;->findBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Attachment bone %s not found in skeleton."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method


# virtual methods
.method public addPhysics()V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/animation/DacConfiguration;->gravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v4, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jme3/bullet/PhysicsSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v4, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public attachmentMass(Ljava/lang/String;)F
    .locals 2

    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->attachmentMass(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No attachment for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    check-cast p2, Lcom/jme3/bullet/animation/DacLinks;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    iget-object v0, p2, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/AttachmentLink;

    iget-object v3, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    iget-object p2, p2, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/Armature;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/PreComposer;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/Skeleton;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Spatial;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/TorsoLink;

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    return-void
.end method

.method public copyBindTransform(ILcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    aget-object p1, v0, p1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 13

    invoke-static {p1}, Lcom/jme3/bullet/animation/RagUtils;->validate(Lcom/jme3/scene/Spatial;)V

    const-class v0, Lcom/jme3/bullet/animation/DacLinks;

    invoke-static {p1, v0}, Lif/s;->c(Lcom/jme3/scene/Spatial;Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v2, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Added a DynamicAnimControl to a model that already contains {0}."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/jme3/anim/SkinningControl;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/SkinningControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    const-class v4, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    check-cast v4, Lcom/jme3/animation/SkeletonControl;

    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/jme3/bullet/animation/DacLinks;->sortControls(Lcom/jme3/scene/control/Control;)V

    invoke-virtual {v4}, Lcom/jme3/animation/SkeletonControl;->isHardwareSkinningPreferred()Z

    move-result v5

    invoke-virtual {v4, v3}, Lcom/jme3/animation/SkeletonControl;->setHardwareSkinningPreferred(Z)V

    invoke-virtual {v4}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-direct {p0}, Lcom/jme3/bullet/animation/DacLinks;->validateSkeleton()V

    iget-object v6, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p0, v6}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/animation/Skeleton;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v7}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v7

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-static {v8, v1}, Lif/r;->A(Lcom/jme3/animation/Skeleton;Z)V

    new-array v1, v7, [Lcom/jme3/math/Transform;

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8}, Lcom/jme3/math/Vector3f;-><init>()V

    move v9, v3

    :goto_0
    if-ge v9, v7, :cond_1

    iget-object v10, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v10, v9}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v10

    invoke-static {v10, v2}, Lif/r;->f(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v11

    aput-object v11, v1, v9

    invoke-virtual {v10}, Lcom/jme3/animation/Bone;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v10}, Lcom/jme3/animation/Bone;->getBindScale()Lcom/jme3/math/Vector3f;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object v11, Lcom/jme3/bullet/animation/DacLinks;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v12, Lcom/jme3/bullet/animation/DacLinks;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {v10, v11, v12, v8}, Lcom/jme3/animation/Bone;->setUserTransforms(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-static {v8, v3}, Lif/r;->A(Lcom/jme3/animation/Skeleton;Z)V

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v8}, Lcom/jme3/animation/Skeleton;->updateWorldVectors()V

    new-array v8, v7, [Lcom/jme3/math/Transform;

    iput-object v8, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_7

    iget-object v9, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v9, v8}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v9

    iget-object v10, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    invoke-static {v9, v2}, Lif/r;->e(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The controlled spatial must have a SkinningControl or a SkeletonControl. Make sure the Control is there and not on some other Spatial."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v1

    new-array v4, v1, [Lcom/jme3/math/Transform;

    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_4

    iget-object v6, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v6, v5}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->sortControls(Lcom/jme3/scene/control/Control;)V

    invoke-virtual {v0}, Lcom/jme3/anim/SkinningControl;->isHardwareSkinningPreferred()Z

    move-result v5

    invoke-virtual {v0, v3}, Lcom/jme3/anim/SkinningControl;->setHardwareSkinningPreferred(Z)V

    invoke-direct {p0}, Lcom/jme3/bullet/animation/DacLinks;->validateArmature()V

    iget-object v6, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p0, v6}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/anim/Armature;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v7}, Lcom/jme3/anim/Armature;->applyBindPose()V

    new-array v7, v1, [Lcom/jme3/math/Transform;

    iput-object v7, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    move v7, v3

    :goto_3
    if-ge v7, v1, :cond_5

    iget-object v8, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v8, v7}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v8

    iget-object v9, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    invoke-virtual {v8}, Lcom/jme3/anim/Joint;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    const-class v1, Lcom/jme3/anim/AnimComposer;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/AnimComposer;

    if-nez v1, :cond_6

    sget-object v1, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Didn\'t find an AnimComposer."

    invoke-virtual {v1, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-static {v1, p1}, Lif/n;->d(Lcom/jme3/scene/control/Control;Lcom/jme3/scene/Spatial;)I

    move-result v1

    new-instance v7, Lcom/jme3/bullet/animation/PreComposer;

    invoke-direct {v7, p0}, Lcom/jme3/bullet/animation/PreComposer;-><init>(Lcom/jme3/bullet/animation/DacLinks;)V

    iput-object v7, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    invoke-virtual {p1, v1, v7}, Lcom/jme3/scene/Spatial;->addControlAt(ILcom/jme3/scene/control/Control;)V

    :goto_4
    move-object v1, v4

    move-object v4, v2

    :cond_7
    invoke-direct {p0}, Lcom/jme3/bullet/animation/DacLinks;->checkForArmatureScaling()V

    invoke-static {p1, v2}, Lcom/jme3/bullet/animation/RagUtils;->listDacMeshes(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/jme3/scene/Mesh;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1}, Lif/s;->j(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Geometry;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    if-nez v2, :cond_8

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    :cond_8
    invoke-static {v7, v6}, Lcom/jme3/bullet/animation/RagUtils;->coordsMap([Lcom/jme3/scene/Mesh;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v2, ""

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf/o;

    invoke-direct {p0, v2, v7}, Lcom/jme3/bullet/animation/DacLinks;->createTorsoLink(Ljf/o;[Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listLinkedBoneNames()[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_9

    aget-object v9, v2, v8

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljf/o;

    invoke-direct {p0, v9, v10}, Lcom/jme3/bullet/animation/DacLinks;->createBoneLink(Ljava/lang/String;Ljf/o;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinkedBones()I

    move-result p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->addJoints(Lcom/jme3/bullet/animation/PhysicsLink;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->listAttachmentBoneNames()[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    move v7, v3

    :goto_6
    if-ge v7, v2, :cond_b

    aget-object v8, p1, v7

    if-nez v0, :cond_a

    invoke-direct {p0, v8, v4, v6}, Lcom/jme3/bullet/animation/DacLinks;->createAttachmentLink(Ljava/lang/String;Lcom/jme3/animation/SkeletonControl;[Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-direct {p0, v8, v0, v6}, Lcom/jme3/bullet/animation/DacLinks;->createAttachmentLink(Ljava/lang/String;Lcom/jme3/anim/SkinningControl;[Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {v4, v5}, Lcom/jme3/animation/SkeletonControl;->setHardwareSkinningPreferred(Z)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result p1

    :goto_8
    if-ge v3, p1, :cond_c

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0, v3}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v0

    aget-object v2, v1, v3

    invoke-static {v0, v2}, Lif/r;->y(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->updateWorldVectors()V

    goto :goto_a

    :cond_d
    invoke-virtual {v0, v5}, Lcom/jme3/anim/SkinningControl;->setHardwareSkinningPreferred(Z)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result p1

    :goto_9
    if-ge v3, p1, :cond_e

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v0, v3}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v0

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Lcom/jme3/anim/Joint;->setLocalTransform(Lcom/jme3/math/Transform;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->update()V

    :goto_a
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->ignoredHops()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->ignoreCollisions(I)V

    iget-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->addPhysics()V

    :cond_f
    sget-object p1, Lcom/jme3/bullet/animation/DacLinks;->logger3:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Created ragdoll."

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public findArmatureJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;
    .locals 1

    const-string v0, "access an armature joint"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {v0, p1}, Lcom/jme3/anim/Armature;->getJoint(Ljava/lang/String;)Lcom/jme3/anim/Joint;

    move-result-object p1

    return-object p1
.end method

.method public findAttachmentLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/AttachmentLink;
    .locals 1

    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/AttachmentLink;

    return-object p1
.end method

.method public findBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;
    .locals 1

    const-string v0, "access a bone"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p1

    return-object p1
.end method

.method public findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;
    .locals 1

    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/BoneLink;

    return-object p1
.end method

.method public findLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/PhysicsLink;
    .locals 2

    const-string v0, "link name"

    invoke-static {p1, v0}, Lif/E;->j(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "Bone:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lif/t;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Torso:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    goto :goto_0

    :cond_1
    const-string v0, "Attachment:"

    invoke-static {p1, v0}, Lif/t;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findAttachmentLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/AttachmentLink;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getArmature()Lcom/jme3/anim/Armature;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    return-object v0
.end method

.method public getBoneLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/animation/BoneLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    return-object v0
.end method

.method public getSkeleton()Lcom/jme3/animation/Skeleton;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    return-object v0
.end method

.method public getTorsoLink()Lcom/jme3/bullet/animation/TorsoLink;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    return-object v0
.end method

.method public getTransformer()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/DacLinks;->isReady:Z

    return v0
.end method

.method public listAttachmentLinks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/animation/AttachmentLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public listLinks(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jme3/bullet/animation/PhysicsLink;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinks()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public listManagedArmatureJoints(Ljava/lang/String;)[Lcom/jme3/anim/Joint;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/anim/Joint;Ljava/util/Collection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/anim/Joint;Ljava/util/Collection;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/jme3/anim/Joint;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No link named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listManagedBones(Ljava/lang/String;)[Lcom/jme3/animation/Bone;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/animation/Bone;Ljava/util/Collection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->addUnlinkedDescendants(Lcom/jme3/animation/Bone;Ljava/util/Collection;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/jme3/animation/Bone;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No link named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listRigidBodies()[Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 5

    const-string v0, "enumerate rigid bodies"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinks()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    aput-object v1, v0, v3

    move v3, v2

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v4}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v4}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/2addr v3, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public mass(Ljava/lang/String;)F
    .locals 2

    const-string v0, "bone name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->mass(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result p1

    :goto_0
    return p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No bone/torso named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lif/s;->W(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    return-object p1
.end method

.method public physicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 0

    const-string p1, "time step"

    invoke-static {p2, p1}, Lif/E;->p(FLjava/lang/String;)Z

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->postTick()V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {p2}, Lcom/jme3/bullet/animation/PhysicsLink;->postTick()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {p2}, Lcom/jme3/bullet/animation/PhysicsLink;->postTick()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/animation/DacLinks;->isReady:Z

    return-void
.end method

.method public physicsTransform(Lcom/jme3/anim/Joint;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 0

    if-nez p3, :cond_0

    .line 9
    new-instance p3, Lcom/jme3/math/Transform;

    invoke-direct {p3}, Lcom/jme3/math/Transform;-><init>()V

    .line 10
    :cond_0
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 11
    sget-object p2, Lcom/jme3/bullet/animation/DacLinks;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 13
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p1

    .line 14
    invoke-static {p3, p1, p3}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    .line 16
    invoke-static {p3, p1, p3}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-object p3
.end method

.method public physicsTransform(Lcom/jme3/animation/Bone;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 0

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/jme3/math/Transform;

    invoke-direct {p3}, Lcom/jme3/math/Transform;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 3
    sget-object p2, Lcom/jme3/bullet/animation/DacLinks;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p3, p2}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lif/r;->g(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    .line 6
    invoke-static {p3, p1, p3}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 7
    invoke-virtual {p0, p2}, Lcom/jme3/bullet/animation/DacLinks;->meshTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p1

    .line 8
    invoke-static {p3, p1, p3}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    return-object p3
.end method

.method public prePhysicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 1

    const-string p1, "time step"

    invoke-static {p2, p1}, Lif/E;->p(FLjava/lang/String;)Z

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->preTick(F)V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->preTick(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/animation/PhysicsLink;->preTick(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "boneLinkList"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "attachmentLinks"

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    check-cast v4, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v4}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "armature"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/Armature;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    const-string v0, "preComposer"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/PreComposer;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    const-string v0, "skeleton"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v0, "transformer"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    const-string v0, "bindTransforms"

    invoke-static {p1, v0}, Lcom/jme3/bullet/animation/RagUtils;->readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    const-string v0, "torsoLink"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/TorsoLink;

    iput-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    return-void
.end method

.method public rebuild()V
    .locals 6

    const-string v0, "rebuild the ragdoll"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacLinks;->removeSpatialData(Lcom/jme3/scene/Spatial;)V

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/animation/DacLinks;->createSpatialData(Lcom/jme3/scene/Spatial;)V

    iget-object v3, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v4, v5}, Lcom/jme3/bullet/animation/AttachmentLink;->postRebuild(Lcom/jme3/bullet/animation/AttachmentLink;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/animation/BoneLink;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/animation/BoneLink;->postRebuild(Lcom/jme3/bullet/animation/BoneLink;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/animation/TorsoLink;->postRebuild(Lcom/jme3/bullet/animation/TorsoLink;)V

    :cond_2
    return-void
.end method

.method public removePhysics()V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/AttachmentLink;->isReleased()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/animation/DacLinks;->isReady:Z

    return-void
.end method

.method public removeSpatialData(Lcom/jme3/scene/Spatial;)V
    .locals 2

    iget-boolean p1, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->removePhysics()V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PhysicsLink;->getArmatureJoint()Lcom/jme3/anim/Joint;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PhysicsLink;->getBone()Lcom/jme3/animation/Bone;

    move-result-object v0

    invoke-static {v0}, Lif/r;->o(Lcom/jme3/animation/Bone;)Lcom/jme3/scene/Node;

    move-result-object v1

    invoke-static {v0}, Lif/r;->d(Lcom/jme3/animation/Bone;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lif/r;->n(Lcom/jme3/anim/Joint;)Lcom/jme3/scene/Node;

    move-result-object v0

    invoke-static {v1}, Lif/r;->c(Lcom/jme3/anim/Joint;)V

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    :cond_3
    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lif/r;->A(Lcom/jme3/animation/Skeleton;Z)V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    :cond_4
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    iput-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setAttachmentConfig(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->setAttachmentConfig(Ljava/lang/String;Lcom/jme3/bullet/animation/LinkConfig;)V

    iget-object p2, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/animation/AttachmentLink;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    if-eqz v0, :cond_0

    const-class v0, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p2

    check-cast p2, Lcom/jme3/animation/SkeletonControl;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/animation/Skeleton;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/bullet/animation/DacLinks;->createAttachmentLink(Ljava/lang/String;Lcom/jme3/animation/SkeletonControl;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/jme3/anim/SkinningControl;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/SkinningControl;

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacConfiguration;->managerMap(Lcom/jme3/anim/Armature;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/bullet/animation/DacLinks;->createAttachmentLink(Ljava/lang/String;Lcom/jme3/anim/SkinningControl;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttachmentMass(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->setAttachmentMass(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/animation/AttachmentLink;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setMass(F)V

    :cond_0
    return-void
.end method

.method public setDamping(F)V
    .locals 4

    const-string v0, "damping ratio"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->setDamping(F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listRigidBodies()[Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setDamping(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 5

    const-string v0, "gravity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->setGravity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacLinks;->listRigidBodies()[Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setJointLimits(Ljava/lang/String;Lcom/jme3/bullet/animation/RangeOfMotion;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->hasBoneLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "range of motion"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->setJointLimits(Ljava/lang/String;Lcom/jme3/bullet/animation/RangeOfMotion;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getJoint()Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/jme3/bullet/animation/RangeOfMotion;->setup(Lcom/jme3/bullet/joints/PhysicsJoint;ZZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No linked bone named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMainBoneName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->setMainBoneName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change the main bone once the Control is added to a Spatial."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMass(Lcom/jme3/bullet/animation/PhysicsLink;F)V
    .locals 1

    .line 1
    const-string v0, "link"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 3
    instance-of v0, p1, Lcom/jme3/bullet/animation/BoneLink;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/animation/DacLinks;->setMass(Ljava/lang/String;F)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v0, :cond_1

    .line 7
    const-string p1, ""

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/animation/DacLinks;->setMass(Ljava/lang/String;F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->boneName()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/animation/DacLinks;->setAttachmentMass(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method

.method public setMass(Ljava/lang/String;F)V
    .locals 1

    .line 10
    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 11
    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/animation/DacConfiguration;->setMass(Ljava/lang/String;F)V

    .line 12
    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->findBoneLink(Ljava/lang/String;)Lcom/jme3/bullet/animation/BoneLink;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object p1

    .line 17
    :goto_0
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setMass(F)V

    :cond_1
    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "vec"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    const-string v0, "quat"

    invoke-static {p1, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public totalMass()F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->totalMass()F

    move-result v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v2}, Lcom/jme3/bullet/animation/PhysicsLink;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMass()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public update(F)V
    .locals 2

    const-string v0, "update the control"

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/bullet/animation/PreComposer;->saveArmature()V

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/animation/TorsoLink;->update(F)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/BoneLink;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/animation/BoneLink;->update(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/animation/AttachmentLink;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/animation/PhysicsLink;->update(F)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public verifyAddedToSpatial(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/control/AbstractPhysicsControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unless the Control is added to a Spatial."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyReadyForDynamicMode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/animation/DacLinks;->verifyAddedToSpatial(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/control/AbstractPhysicsControl;->added:Z

    const-string v1, "Cannot "

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/bullet/animation/DacLinks;->isReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " until the physics has been stepped."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unless the control is added to a PhysicsSpace."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/animation/DacConfiguration;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countLinkedBones()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/export/Savable;

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->boneLinkList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "boneLinkList"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/animation/DacConfiguration;->countAttachments()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/bullet/animation/AttachmentLink;

    iget-object v2, p0, Lcom/jme3/bullet/animation/DacLinks;->attachmentLinks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/jme3/bullet/animation/AttachmentLink;

    const-string v3, "attachmentLinks"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->armature:Lcom/jme3/anim/Armature;

    const-string v2, "armature"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->preComposer:Lcom/jme3/bullet/animation/PreComposer;

    const-string v2, "preComposer"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v2, "skeleton"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->transformer:Lcom/jme3/scene/Spatial;

    const-string v2, "transformer"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->bindTransforms:[Lcom/jme3/math/Transform;

    const-string v2, "bindTransforms"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/animation/DacLinks;->torsoLink:Lcom/jme3/bullet/animation/TorsoLink;

    const-string v2, "torsoLink"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
