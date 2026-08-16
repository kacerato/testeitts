.class Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/SceneGraphVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/util/AnimMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimControlVisitor"
.end annotation


# instance fields
.field skeletonArmatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Skeleton;",
            "Lcom/jme3/anim/Armature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/anim/util/AnimMigrationUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public setMappings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/jme3/animation/Skeleton;",
            "Lcom/jme3/anim/Armature;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;->skeletonArmatureMap:Ljava/util/Map;

    return-void
.end method

.method public visit(Lcom/jme3/scene/Spatial;)V
    .locals 17

    move-object/from16 v0, p1

    const-class v1, Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/AnimControl;

    if-eqz v1, :cond_9

    new-instance v2, Lcom/jme3/anim/AnimComposer;

    invoke-direct {v2}, Lcom/jme3/anim/AnimComposer;-><init>()V

    invoke-virtual {v1}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v4

    new-array v5, v4, [Lcom/jme3/anim/Joint;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v3}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v3, v7}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v8

    aget-object v9, v5, v7

    if-nez v9, :cond_1

    invoke-static {v8}, Lcom/jme3/anim/util/AnimMigrationUtils;->access$200(Lcom/jme3/animation/Bone;)Lcom/jme3/anim/Joint;

    move-result-object v9

    aput-object v9, v5, v7

    :cond_1
    invoke-virtual {v8}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/animation/Bone;

    invoke-virtual {v3, v10}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v11

    aget-object v12, v5, v11

    if-nez v12, :cond_2

    invoke-static {v10}, Lcom/jme3/anim/util/AnimMigrationUtils;->access$200(Lcom/jme3/animation/Bone;)Lcom/jme3/anim/Joint;

    move-result-object v12

    :cond_2
    invoke-virtual {v9, v12}, Lcom/jme3/anim/Joint;->addChild(Lcom/jme3/anim/Joint;)V

    aput-object v12, v5, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    new-instance v7, Lcom/jme3/anim/Armature;

    invoke-direct {v7, v5}, Lcom/jme3/anim/Armature;-><init>([Lcom/jme3/anim/Joint;)V

    invoke-virtual {v7}, Lcom/jme3/anim/Armature;->saveBindPose()V

    invoke-virtual {v7}, Lcom/jme3/anim/Armature;->saveInitialPose()V

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/jme3/anim/util/AnimMigrationUtils$AnimControlVisitor;->skeletonArmatureMap:Ljava/util/Map;

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/jme3/animation/AnimControl;->getAnimationNames()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    invoke-virtual {v1, v10}, Lcom/jme3/animation/AnimControl;->getAnim(Ljava/lang/String;)Lcom/jme3/animation/Animation;

    move-result-object v11

    new-instance v12, Lcom/jme3/anim/AnimClip;

    invoke-direct {v12, v10}, Lcom/jme3/anim/AnimClip;-><init>(Ljava/lang/String;)V

    new-array v10, v4, [Lcom/jme3/anim/Joint;

    invoke-static {v5, v6, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v11}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object v11

    array-length v13, v11

    move v14, v6

    :goto_3
    if-ge v14, v13, :cond_6

    aget-object v15, v11, v14

    instance-of v6, v15, Lcom/jme3/animation/BoneTrack;

    if-eqz v6, :cond_5

    check-cast v15, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v15}, Lcom/jme3/animation/BoneTrack;->getTargetBoneIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v8

    move-object/from16 v16, v3

    aget-object v3, v5, v6

    invoke-static {v15, v8, v3}, Lcom/jme3/anim/util/AnimMigrationUtils;->fromBoneTrack(Lcom/jme3/animation/BoneTrack;Lcom/jme3/animation/Bone;Lcom/jme3/anim/Joint;)Lcom/jme3/anim/TransformTrack;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    aput-object v3, v10, v6

    goto :goto_4

    :cond_5
    move-object/from16 v16, v3

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p0

    move-object/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_7

    aget-object v6, v10, v3

    invoke-static {v7, v6}, Lcom/jme3/anim/util/AnimMigrationUtils;->padJointTracks(Ljava/util/List;Lcom/jme3/anim/Joint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/jme3/anim/TransformTrack;

    invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/jme3/anim/AnimTrack;

    invoke-virtual {v12, v3}, Lcom/jme3/anim/AnimClip;->setTracks([Lcom/jme3/anim/AnimTrack;)V

    invoke-virtual {v2, v12}, Lcom/jme3/anim/AnimComposer;->addAnimClip(Lcom/jme3/anim/AnimClip;)V

    move-object/from16 v8, p0

    move-object/from16 v3, v16

    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    :cond_9
    return-void
.end method
