.class public Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
.super LK8/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:I

.field public f:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field public fps:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private frames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private length:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final timelines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LK8/f;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    return-void
.end method

.method public static f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1c

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->frames:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->frames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->frames:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->e()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1a

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    if-eqz v4, :cond_19

    move v5, v1

    :goto_3
    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_19

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->el:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    move v3, v1

    :goto_4
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v9, "p"

    if-ge v3, v7, :cond_5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v10

    iget-object v11, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-virtual {v10, v11}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move-object v7, v0

    :goto_5
    if-nez v7, :cond_6

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v3, LAc/b;

    iget-object v10, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-direct {v3, v10}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v3, v1

    :goto_6
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v10

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    if-ne v10, v11, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    move-object v9, v0

    :goto_7
    if-nez v9, :cond_9

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    iget v3, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move v3, v8

    :cond_a
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->c()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v7

    if-eqz v7, :cond_11

    move v3, v1

    :goto_8
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v9, "r"

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v10

    iget-object v11, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-virtual {v10, v11}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    move-object v7, v0

    :goto_9
    if-nez v7, :cond_d

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v3, LAc/b;

    iget-object v10, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-direct {v3, v10}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->QUAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    move v3, v1

    :goto_a
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_f

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v10

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    if-ne v10, v11, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    move-object v9, v0

    :goto_b
    if-nez v9, :cond_10

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    iget v3, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->c()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    move v3, v8

    :cond_11
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    if-eqz v7, :cond_18

    move v3, v1

    :goto_c
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v9, "s"

    if-ge v3, v7, :cond_13

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v10

    iget-object v11, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-virtual {v10, v11}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    goto :goto_d

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_13
    move-object v7, v0

    :goto_d
    if-nez v7, :cond_14

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v3, LAc/b;

    iget-object v10, v6, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->ou:Ljava/lang/String;

    invoke-direct {v3, v10}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    move v3, v1

    :goto_e
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_16

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v10

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    if-ne v10, v11, :cond_15

    goto :goto_f

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_16
    move-object v9, v0

    :goto_f
    if-nez v9, :cond_17

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    iget v3, v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->frameTime:I

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/FrameEntry;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/Utils/SBoneTransform;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move v3, v8

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    :cond_1b
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->d()V

    invoke-static {}, LNc/d;->c()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->b:I

    :cond_1c
    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f:Ljava/util/List;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;->a()Lcom/itsmagic/engine/Engines/Engine/Animation/Keyframe;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->c()Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getFps()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->b:I

    return v0
.end method

.method public j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    return-object v0
.end method

.method public m()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->timelines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->p()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->h()I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->h()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->length:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFps(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->fps:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
