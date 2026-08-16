.class public abstract Lcom/jme3/anim/tween/action/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/anim/tween/Tween;


# instance fields
.field protected actions:[Lcom/jme3/anim/tween/action/Action;

.field private forward:Z

.field private length:D

.field private mask:Lcom/jme3/anim/AnimationMask;

.field private speed:D


# direct methods
.method public varargs constructor <init>([Lcom/jme3/anim/tween/Tween;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/jme3/anim/tween/action/Action;->speed:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/anim/tween/action/Action;->forward:Z

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/anim/tween/action/Action;

    iput-object v0, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    instance-of v2, v1, Lcom/jme3/anim/tween/action/Action;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    check-cast v1, Lcom/jme3/anim/tween/action/Action;

    aput-object v1, v2, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    new-instance v3, Lcom/jme3/anim/tween/action/BaseAction;

    invoke-direct {v3, v1}, Lcom/jme3/anim/tween/action/BaseAction;-><init>(Lcom/jme3/anim/tween/Tween;)V

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/anim/tween/action/Action;

    iput-object p2, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    iget-object p2, p0, Lcom/jme3/anim/tween/action/Action;->mask:Lcom/jme3/anim/AnimationMask;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/AnimationMask;

    iput-object p1, p0, Lcom/jme3/anim/tween/action/Action;->mask:Lcom/jme3/anim/AnimationMask;

    return-void
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/action/Action;->length:D

    return-wide v0
.end method

.method public getMask()Lcom/jme3/anim/AnimationMask;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/action/Action;->mask:Lcom/jme3/anim/AnimationMask;

    return-object v0
.end method

.method public getSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/action/Action;->speed:D

    return-wide v0
.end method

.method public isForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/anim/tween/action/Action;->forward:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/anim/tween/action/Action;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/tween/action/Action;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/tween/action/Action;->jmeClone()Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    return-object v0
.end method

.method public setForward(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/anim/tween/action/Action;->forward:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/anim/tween/action/Action;->forward:Z

    iget-object v0, p0, Lcom/jme3/anim/tween/action/Action;->actions:[Lcom/jme3/anim/tween/action/Action;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/anim/tween/action/Action;->setForward(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLength(D)V
    .locals 0

    iput-wide p1, p0, Lcom/jme3/anim/tween/action/Action;->length:D

    return-void
.end method

.method public setMask(Lcom/jme3/anim/AnimationMask;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/tween/action/Action;->mask:Lcom/jme3/anim/AnimationMask;

    return-void
.end method

.method public setSpeed(D)V
    .locals 2

    iput-wide p1, p0, Lcom/jme3/anim/tween/action/Action;->speed:D

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/anim/tween/action/Action;->setForward(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jme3/anim/tween/action/Action;->setForward(Z)V

    :goto_0
    return-void
.end method
