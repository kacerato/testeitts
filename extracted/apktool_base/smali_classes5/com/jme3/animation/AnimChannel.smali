.class public final Lcom/jme3/animation/AnimChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BLEND_TIME:F = 0.15f


# instance fields
.field private affectedBones:Ljava/util/BitSet;

.field private animation:Lcom/jme3/animation/Animation;

.field private blendAmount:F

.field private blendFrom:Lcom/jme3/animation/Animation;

.field private blendRate:F

.field private blendTime:F

.field private control:Lcom/jme3/animation/AnimControl;

.field private loopMode:Lcom/jme3/animation/LoopMode;

.field private loopModeBlendFrom:Lcom/jme3/animation/LoopMode;

.field private notified:Z

.field private speed:F

.field private speedBlendFrom:F

.field private time:F

.field private timeBlendFrom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/AnimControl;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    .line 9
    iput-object p1, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    return-void
.end method


# virtual methods
.method public addAllBones()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    return-void
.end method

.method public addBone(Lcom/jme3/animation/Bone;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v1}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public addBone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addBone(Lcom/jme3/animation/Bone;)V

    return-void
.end method

.method public addFromRootBone(Lcom/jme3/animation/Bone;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addBone(Lcom/jme3/animation/Bone;)V

    .line 3
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    .line 5
    invoke-virtual {p0, v0}, Lcom/jme3/animation/AnimChannel;->addBone(Lcom/jme3/animation/Bone;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/animation/AnimChannel;->addFromRootBone(Lcom/jme3/animation/Bone;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addFromRootBone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addFromRootBone(Lcom/jme3/animation/Bone;)V

    return-void
.end method

.method public addToRootBone(Lcom/jme3/animation/Bone;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addBone(Lcom/jme3/animation/Bone;)V

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addBone(Lcom/jme3/animation/Bone;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addToRootBone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/animation/Skeleton;->getBone(Ljava/lang/String;)Lcom/jme3/animation/Bone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->addToRootBone(Lcom/jme3/animation/Bone;)V

    return-void
.end method

.method public getAffectedBones()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->affectedBones:Ljava/util/BitSet;

    return-object v0
.end method

.method public getAnimMaxTime()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnimationName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getControl()Lcom/jme3/animation/AnimControl;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    return-object v0
.end method

.method public getLoopMode()Lcom/jme3/animation/LoopMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    return v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    return v0
.end method

.method public reset(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/animation/AnimChannel;->setTime(F)V

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v0}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {p1}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->resetAndUpdate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/animation/AnimChannel;->update(FLcom/jme3/util/TempVars;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    return-void
.end method

.method public setAnim(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3e19999a    # 0.15f

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/jme3/animation/AnimChannel;->setAnim(Ljava/lang/String;F)V

    return-void
.end method

.method public setAnim(Ljava/lang/String;F)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    iget-object v1, v1, Lcom/jme3/animation/AnimControl;->animationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Animation;

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    invoke-virtual {v2, p0, p1}, Lcom/jme3/animation/AnimControl;->notifyAnimChange(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    cmpl-float p1, p2, v0

    if-lez p1, :cond_0

    .line 4
    iput p2, p0, Lcom/jme3/animation/AnimChannel;->blendTime:F

    .line 5
    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result p1

    iget v3, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    div-float/2addr p1, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    iput-object p2, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    .line 7
    iget p2, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iput p2, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    .line 8
    iget p2, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    iput p2, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    .line 9
    iget-object p2, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    iput-object p2, p0, Lcom/jme3/animation/AnimChannel;->loopModeBlendFrom:Lcom/jme3/animation/LoopMode;

    .line 10
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    div-float p1, v2, p1

    .line 11
    iput p1, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    .line 14
    iput v0, p0, Lcom/jme3/animation/AnimChannel;->time:F

    .line 15
    iput v2, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    .line 16
    sget-object p1, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    iput-object p1, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    return-void

    .line 18
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find animation named: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "blendTime cannot be less than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLoopMode(Lcom/jme3/animation/LoopMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    iget v0, p0, Lcom/jme3/animation/AnimChannel;->blendTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {v1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v1

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->blendTime:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    :cond_0
    return-void
.end method

.method public setTime(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/jme3/animation/AnimChannel;->getAnimMaxTime()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    return-void
.end method

.method public update(FLcom/jme3/util/TempVars;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    sub-float v4, v7, v2

    iget-object v5, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/animation/Animation;->setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget v2, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget-object v2, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    invoke-virtual {v2}, Lcom/jme3/animation/Animation;->getLength()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/animation/AnimChannel;->loopModeBlendFrom:Lcom/jme3/animation/LoopMode;

    invoke-static {v1, v2, v3}, Lcom/jme3/animation/AnimationUtils;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result v1

    iput v1, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    neg-float v1, v1

    iput v1, p0, Lcom/jme3/animation/AnimChannel;->timeBlendFrom:F

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    neg-float v1, v1

    iput v1, p0, Lcom/jme3/animation/AnimChannel;->speedBlendFrom:F

    :cond_1
    iget v1, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    iget v2, p0, Lcom/jme3/animation/AnimChannel;->blendRate:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_2

    iput v7, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/animation/AnimChannel;->blendFrom:Lcom/jme3/animation/Animation;

    :cond_2
    iget-object v2, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    iget v3, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget v4, p0, Lcom/jme3/animation/AnimChannel;->blendAmount:F

    iget-object v5, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    move-object v6, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/animation/Animation;->setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V

    iget p2, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget v1, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget-object p1, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {p1}, Lcom/jme3/animation/Animation;->getLength()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-boolean p1, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget-object p2, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {p2}, Lcom/jme3/animation/Animation;->getLength()F

    move-result p2

    cmpl-float p1, p1, p2

    if-gez p1, :cond_3

    iget p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    sget-object p2, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/animation/AnimChannel;->notified:Z

    :cond_4
    iget-object p1, p0, Lcom/jme3/animation/AnimChannel;->control:Lcom/jme3/animation/AnimControl;

    iget-object p2, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {p2}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/jme3/animation/AnimControl;->notifyAnimCycleDone(Lcom/jme3/animation/AnimChannel;Ljava/lang/String;)V

    :cond_5
    iget p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget-object p2, p0, Lcom/jme3/animation/AnimChannel;->animation:Lcom/jme3/animation/Animation;

    invoke-virtual {p2}, Lcom/jme3/animation/Animation;->getLength()F

    move-result p2

    iget-object v1, p0, Lcom/jme3/animation/AnimChannel;->loopMode:Lcom/jme3/animation/LoopMode;

    invoke-static {p1, p2, v1}, Lcom/jme3/animation/AnimationUtils;->clampWrapTime(FFLcom/jme3/animation/LoopMode;)F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    cmpg-float p2, p1, v0

    if-gez p2, :cond_6

    neg-float p1, p1

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->time:F

    iget p1, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    neg-float p1, p1

    iput p1, p0, Lcom/jme3/animation/AnimChannel;->speed:F

    :cond_6
    return-void
.end method
