.class public Lcom/jme3/anim/tween/action/ClipAction;
.super Lcom/jme3/anim/tween/action/BlendableAction;
.source "SourceFile"


# instance fields
.field private clip:Lcom/jme3/anim/AnimClip;

.field private transform:Lcom/jme3/math/Transform;


# direct methods
.method public constructor <init>(Lcom/jme3/anim/AnimClip;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    invoke-direct {p0, v0}, Lcom/jme3/anim/tween/action/BlendableAction;-><init>([Lcom/jme3/anim/tween/Tween;)V

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {p1}, Lcom/jme3/anim/AnimClip;->getLength()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/anim/tween/action/Action;->setLength(D)V

    return-void
.end method

.method private interpolateMorphTrack(DLcom/jme3/anim/MorphTrack;)V
    .locals 2

    invoke-virtual {p3}, Lcom/jme3/anim/MorphTrack;->getTarget()Lcom/jme3/scene/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMorphState()[F

    move-result-object v1

    invoke-virtual {p3, p1, p2, v1}, Lcom/jme3/anim/MorphTrack;->getDataAtTime(D[F)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMorphState([F)V

    return-void
.end method

.method private interpolateTransformTrack(DLcom/jme3/anim/TransformTrack;)V
    .locals 3

    invoke-virtual {p3}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    invoke-interface {v0}, Lcom/jme3/anim/util/HasLocalTransform;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {p3, p1, p2, v1}, Lcom/jme3/anim/TransformTrack;->getDataAtTime(DLcom/jme3/math/Transform;)V

    iget-object p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->getWeight()F

    move-result p3

    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->getTransitionWeight()F

    move-result p2

    invoke-virtual {p0, v0, p1, p2, p0}, Lcom/jme3/anim/tween/action/ClipAction;->collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/anim/tween/action/BlendableAction;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/AnimClip;

    iput-object p2, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    iget-object p2, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/anim/tween/action/ClipAction;->transform:Lcom/jme3/math/Transform;

    return-void
.end method

.method public collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V
    .locals 0

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p4, p3, p4

    if-nez p4, :cond_0

    invoke-interface {p1, p2}, Lcom/jme3/anim/util/HasLocalTransform;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/anim/util/HasLocalTransform;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object p4

    invoke-virtual {p4, p4, p2, p3}, Lcom/jme3/math/Transform;->interpolateTransforms(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;F)V

    invoke-interface {p1, p4}, Lcom/jme3/anim/util/HasLocalTransform;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :goto_0
    return-void
.end method

.method public doInterpolate(D)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {v0}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/jme3/anim/TransformTrack;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getMask()Lcom/jme3/anim/AnimationMask;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getMask()Lcom/jme3/anim/AnimationMask;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jme3/anim/AnimationMask;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, v3}, Lcom/jme3/anim/tween/action/ClipAction;->interpolateTransformTrack(DLcom/jme3/anim/TransformTrack;)V

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/jme3/anim/MorphTrack;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/jme3/anim/MorphTrack;

    invoke-direct {p0, p1, p2, v3}, Lcom/jme3/anim/tween/action/ClipAction;->interpolateMorphTrack(DLcom/jme3/anim/MorphTrack;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getAnimClip()Lcom/jme3/anim/AnimClip;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    return-object v0
.end method

.method public getTargets()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/anim/util/HasLocalTransform;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {v1}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {v1}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    instance-of v5, v4, Lcom/jme3/anim/TransformTrack;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {v4}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/anim/tween/action/Action;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/ClipAction;->jmeClone()Lcom/jme3/anim/tween/action/ClipAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/anim/tween/action/BlendableAction;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/ClipAction;->jmeClone()Lcom/jme3/anim/tween/action/ClipAction;

    move-result-object v0

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/anim/tween/action/ClipAction;
    .locals 2

    .line 4
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/tween/action/ClipAction;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/ClipAction;->jmeClone()Lcom/jme3/anim/tween/action/ClipAction;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/ClipAction;->clip:Lcom/jme3/anim/AnimClip;

    invoke-virtual {v0}, Lcom/jme3/anim/AnimClip;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
