.class Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;
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
    name = "SkeletonControlVisitor"
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
    invoke-direct {p0}, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;-><init>()V

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

    iput-object p1, p0, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;->skeletonArmatureMap:Ljava/util/Map;

    return-void
.end method

.method public visit(Lcom/jme3/scene/Spatial;)V
    .locals 7

    const-class v0, Lcom/jme3/animation/SkeletonControl;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/SkeletonControl;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/anim/util/AnimMigrationUtils$SkeletonControlVisitor;->skeletonArmatureMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/anim/Armature;

    new-instance v2, Lcom/jme3/anim/SkinningControl;

    invoke-direct {v2, v1}, Lcom/jme3/anim/SkinningControl;-><init>(Lcom/jme3/anim/Armature;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/jme3/animation/SkeletonControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jme3/animation/SkeletonControl;->getAttachmentsNode(Ljava/lang/String;)Lcom/jme3/scene/Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    invoke-virtual {v5}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Spatial;

    invoke-virtual {v2, v0}, Lcom/jme3/anim/SkinningControl;->getAttachmentsNode(Ljava/lang/String;)Lcom/jme3/scene/Node;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_3
    return-void
.end method
