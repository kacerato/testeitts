.class public Lcom/jme3/anim/AnimLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentAction:Lcom/jme3/anim/tween/action/Action;

.field private currentActionName:Ljava/lang/String;

.field private loop:Z

.field private manager:Ljava/lang/Object;

.field private mask:Lcom/jme3/anim/AnimationMask;

.field private name:Ljava/lang/String;

.field private time:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/anim/AnimationMask;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    .line 5
    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->name:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/jme3/anim/AnimLayer;->mask:Lcom/jme3/anim/AnimationMask;

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->currentAction:Lcom/jme3/anim/tween/action/Action;

    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->currentActionName:Ljava/lang/String;

    return-void
.end method

.method public getCurrentAction()Lcom/jme3/anim/tween/action/Action;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->currentAction:Lcom/jme3/anim/tween/action/Action;

    return-object v0
.end method

.method public getCurrentActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->currentActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->manager:Ljava/lang/Object;

    return-object v0
.end method

.method public getMask()Lcom/jme3/anim/AnimationMask;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->mask:Lcom/jme3/anim/AnimationMask;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/AnimLayer;->time:D

    return-wide v0
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/AnimLayer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/anim/AnimLayer;->name:Ljava/lang/String;

    const-string v0, "mask"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/AnimationMask;

    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->mask:Lcom/jme3/anim/AnimationMask;

    return-void
.end method

.method public setCurrentAction(Lcom/jme3/anim/tween/action/Action;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;)V

    return-void
.end method

.method public setCurrentAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;Z)V

    return-void
.end method

.method public setCurrentAction(Ljava/lang/String;Lcom/jme3/anim/tween/action/Action;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/jme3/anim/AnimLayer;->time:D

    .line 4
    iput-object p2, p0, Lcom/jme3/anim/AnimLayer;->currentAction:Lcom/jme3/anim/tween/action/Action;

    .line 5
    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->currentActionName:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    return-void
.end method

.method public setManager(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/AnimLayer;->manager:Ljava/lang/Object;

    return-void
.end method

.method public setTime(D)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->currentAction:Lcom/jme3/anim/tween/action/Action;

    invoke-virtual {v0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_0

    rem-double/2addr p1, v0

    iput-wide p1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    goto :goto_0

    :cond_0
    rem-double/2addr p1, v0

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    :goto_0
    return-void
.end method

.method public update(FF)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->currentAction:Lcom/jme3/anim/tween/action/Action;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/anim/tween/action/Action;->getSpeed()D

    move-result-wide v1

    float-to-double v3, p2

    mul-double/2addr v1, v3

    float-to-double p1, p1

    mul-double/2addr v1, p1

    iget-wide p1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    add-double/2addr p1, v1

    iput-wide p1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    const-wide/16 v1, 0x0

    cmpg-double p1, p1, v1

    if-gez p1, :cond_1

    invoke-virtual {v0}, Lcom/jme3/anim/tween/action/Action;->getLength()D

    move-result-wide p1

    iget-wide v3, p0, Lcom/jme3/anim/AnimLayer;->time:D

    rem-double/2addr v3, p1

    add-double/2addr v3, p1

    rem-double/2addr v3, p1

    iput-wide v3, p0, Lcom/jme3/anim/AnimLayer;->time:D

    :cond_1
    iget-object p1, p0, Lcom/jme3/anim/AnimLayer;->mask:Lcom/jme3/anim/AnimationMask;

    invoke-virtual {v0, p1}, Lcom/jme3/anim/tween/action/Action;->setMask(Lcom/jme3/anim/AnimationMask;)V

    iget-wide p1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    invoke-interface {v0, p1, p2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/jme3/anim/tween/action/Action;->setMask(Lcom/jme3/anim/AnimationMask;)V

    if-nez p1, :cond_2

    iput-wide v1, p0, Lcom/jme3/anim/AnimLayer;->time:D

    iget-boolean p1, p0, Lcom/jme3/anim/AnimLayer;->loop:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/jme3/anim/AnimLayer;->setCurrentAction(Lcom/jme3/anim/tween/action/Action;)V

    :cond_2
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/anim/AnimLayer;->mask:Lcom/jme3/anim/AnimationMask;

    instance-of v1, v0, Lcom/jme3/export/Savable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/export/Savable;

    const-string v1, "mask"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    return-void
.end method
