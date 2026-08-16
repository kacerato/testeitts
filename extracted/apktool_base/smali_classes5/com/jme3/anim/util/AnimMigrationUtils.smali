.class public Lcom/jme3/anim/util/AnimMigrationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;,
        Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;
    }
.end annotation


# static fields
.field private static final animControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;

.field private static final skeletonControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;-><init>(Lcom/jme3/anim/util/AnimMigrationUtils$1;)V

    sput-object v0, Lcom/jme3/anim/util/AnimMigrationUtils;->animControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;

    new-instance v0, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;

    invoke-direct {v0, v1}, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;-><init>(Lcom/jme3/anim/util/AnimMigrationUtils$1;)V

    sput-object v0, Lcom/jme3/anim/util/AnimMigrationUtils;->skeletonControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/jme3/animation/Bone;)Lcom/jme3/anim/Joint;
    .locals 0

    invoke-static {p0}, Lcom/jme3/anim/util/AnimMigrationUtils;->fromBone(Lcom/jme3/animation/Bone;)Lcom/jme3/anim/Joint;

    move-result-object p0

    return-object p0
.end method

.method private static fromBone(Lcom/jme3/animation/Bone;)Lcom/jme3/anim/Joint;
    .locals 2

    new-instance v0, Lcom/jme3/anim/Joint;

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/anim/Joint;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindPosition()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/anim/Joint;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/anim/Joint;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getBindScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jme3/anim/Joint;->setLocalScale(Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public static fromBoneTrack(Lcom/jme3/animation/BoneTrack;Lcom/jme3/animation/Bone;Lcom/jme3/anim/Joint;)Lcom/jme3/anim/TransformTrack;
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTimes()[F

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [F

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTimes()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v0, [Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object v5

    aget-object v5, v5, v1

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getBindPosition()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v0, [Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object v6

    aget-object v6, v6, v1

    new-instance v7, Lcom/jme3/math/Quaternion;

    invoke-direct {v7}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getBindRotation()Lcom/jme3/math/Quaternion;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v6, v0, [Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object v0

    array-length v0, v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object v0

    aget-object v0, v0, v2

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getBindScale()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    aput-object v1, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/jme3/anim/TransformTrack;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/jme3/anim/TransformTrack;-><init>(Lcom/jme3/anim/util/HasLocalTransform;[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    return-object p0
.end method

.method public static migrate(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Spatial;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/jme3/anim/util/AnimMigrationUtils;->animControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;

    invoke-virtual {v1, v0}, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;->setMappings(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    sget-object v1, Lcom/jme3/anim/util/AnimMigrationUtils;->skeletonControlVisitor:Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;

    invoke-virtual {v1, v0}, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;->setMappings(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    return-object p0
.end method

.method public static padJointTracks(Ljava/util/List;Lcom/jme3/anim/Joint;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/anim/TransformTrack;",
            ">;",
            "Lcom/jme3/anim/Joint;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    filled-new-array {v0}, [Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    filled-new-array {v0}, [Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    filled-new-array {v0}, [Lcom/jme3/math/Vector3f;

    move-result-object v6

    new-instance v0, Lcom/jme3/anim/TransformTrack;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/jme3/anim/TransformTrack;-><init>(Lcom/jme3/anim/util/HasLocalTransform;[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
