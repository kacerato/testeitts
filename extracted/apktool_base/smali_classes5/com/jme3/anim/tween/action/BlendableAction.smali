.class public abstract Lcom/jme3/anim/tween/action/BlendableAction;
.super Lcom/jme3/anim/tween/action/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;
    }
.end annotation


# instance fields
.field protected collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

.field private maxTransitionWeight:D

.field private transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

.field private transitionLength:D

.field private transitionWeight:F

.field private weight:F


# direct methods
.method public varargs constructor <init>([Lcom/jme3/anim/tween/Tween;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/anim/tween/action/Action;-><init>([Lcom/jme3/anim/tween/Tween;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionWeight:F

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->maxTransitionWeight:D

    const-wide v0, 0x3fd99999a0000000L    # 0.4000000059604645

    iput-wide v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionLength:D

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->weight:F

    new-instance p1, Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-direct {p1, p0, v0, v1}, Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;-><init>(Lcom/jme3/anim/tween/action/BlendableAction;D)V

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    return-void
.end method

.method public static synthetic access$002(Lcom/jme3/anim/tween/action/BlendableAction;F)F
    .locals 0

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionWeight:F

    return p1
.end method

.method public static synthetic access$100(Lcom/jme3/anim/tween/action/BlendableAction;)D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->maxTransitionWeight:D

    return-wide v0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/anim/tween/action/Action;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/anim/tween/action/BlendableAction;

    iput-object p2, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    iget-object p2, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    return-void
.end method

.method public abstract collectTransform(Lcom/jme3/anim/util/HasLocalTransform;Lcom/jme3/math/Transform;FLcom/jme3/anim/tween/action/BlendableAction;)V
.end method

.method public abstract doInterpolate(D)V
.end method

.method public getMaxTransitionWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->maxTransitionWeight:D

    return-wide v0
.end method

.method public abstract getTargets()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/anim/util/HasLocalTransform;",
            ">;"
        }
    .end annotation
.end method

.method public getTransitionLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionLength:D

    return-wide v0
.end method

.method public getTransitionWeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionWeight:F

    return v0
.end method

.method public getWeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->weight:F

    return v0
.end method

.method public interpolate(D)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-virtual {v0}, Lcom/jme3/anim/tween/AbstractTween;->getLength()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/jme3/anim/tween/AbstractTween;->setLength(D)V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->isForward()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/anim/tween/AbstractTween;->interpolate(D)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    sub-double/2addr v3, p1

    double-to-float v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v3, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/jme3/anim/tween/AbstractTween;->interpolate(D)Z

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionWeight:F

    :goto_0
    iget v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->weight:F

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    cmpg-double p1, p1, v3

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/jme3/anim/tween/action/BlendableAction;->doInterpolate(D)V

    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v3

    cmpg-double p1, p1, v3

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/anim/tween/action/Action;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->jmeClone()Lcom/jme3/anim/tween/action/BlendableAction;

    move-result-object v0

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/anim/tween/action/BlendableAction;
    .locals 2

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/tween/action/BlendableAction;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/BlendableAction;->jmeClone()Lcom/jme3/anim/tween/action/BlendableAction;

    move-result-object v0

    return-object v0
.end method

.method public setCollectTransformDelegate(Lcom/jme3/anim/tween/action/BlendableAction;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->collectTransformDelegate:Lcom/jme3/anim/tween/action/BlendableAction;

    return-void
.end method

.method public setMaxTransitionWeight(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->maxTransitionWeight:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxTransitionWeight must be between 0 and 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransitionLength(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transitionLength:D

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BlendableAction;->transition:Lcom/jme3/anim/tween/action/BlendableAction$TransitionTween;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/anim/tween/AbstractTween;->setLength(D)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "transitionLength must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/tween/action/BlendableAction;->weight:F

    return-void
.end method
