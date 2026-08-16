.class public Lcom/jme3/anim/tween/action/BaseAction;
.super Lcom/jme3/anim/tween/action/Action;
.source "SourceFile"


# instance fields
.field private maskPropagationEnabled:Z

.field private final tween:Lcom/jme3/anim/tween/Tween;


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/Tween;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    invoke-direct {p0, v0}, Lcom/jme3/anim/tween/action/Action;-><init>([Lcom/jme3/anim/tween/Tween;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/anim/tween/action/BaseAction;->maskPropagationEnabled:Z

    iput-object p1, p0, Lcom/jme3/anim/tween/action/BaseAction;->tween:Lcom/jme3/anim/tween/Tween;

    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/anim/tween/action/Action;->setLength(D)V

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/anim/tween/action/Action;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/jme3/anim/tween/action/BaseAction;->gatherActions(Lcom/jme3/anim/tween/Tween;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/jme3/anim/tween/action/Action;

    iput-object p1, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private gatherActions(Lcom/jme3/anim/tween/Tween;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/tween/Tween;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/tween/action/Action;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/jme3/anim/tween/action/Action;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/anim/tween/action/Action;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/jme3/anim/tween/ContainsTweens;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/anim/tween/ContainsTweens;

    invoke-interface {p1}, Lcom/jme3/anim/tween/ContainsTweens;->getTweens()[Lcom/jme3/anim/tween/Tween;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lcom/jme3/anim/tween/action/BaseAction;->gatherActions(Lcom/jme3/anim/tween/Tween;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public interpolate(D)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/BaseAction;->tween:Lcom/jme3/anim/tween/Tween;

    invoke-interface {v0, p1, p2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result p1

    return p1
.end method

.method public isMaskPropagationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/anim/tween/action/BaseAction;->maskPropagationEnabled:Z

    return v0
.end method

.method public setMask(Lcom/jme3/anim/AnimationMask;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/jme3/anim/tween/action/Action;->setMask(Lcom/jme3/anim/AnimationMask;)V

    iget-boolean v0, p0, Lcom/jme3/anim/tween/action/BaseAction;->maskPropagationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/anim/tween/action/Action;->setMask(Lcom/jme3/anim/AnimationMask;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaskPropagationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/anim/tween/action/BaseAction;->maskPropagationEnabled:Z

    return-void
.end method
