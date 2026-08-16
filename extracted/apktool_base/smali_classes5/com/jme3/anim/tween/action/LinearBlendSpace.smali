.class public Lcom/jme3/anim/tween/action/LinearBlendSpace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/tween/action/BlendSpace;


# instance fields
.field private action:Lcom/jme3/anim/tween/action/BlendAction;

.field private final maxValue:F

.field private final minValue:F

.field private step:F

.field private value:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->maxValue:F

    iput p1, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->minValue:F

    return-void
.end method


# virtual methods
.method public getWeight()F
    .locals 8

    iget-object v0, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->action:Lcom/jme3/anim/tween/action/BlendAction;

    invoke-virtual {v0}, Lcom/jme3/anim/tween/action/BlendAction;->getActions()[Lcom/jme3/anim/tween/action/Action;

    move-result-object v0

    iget v1, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->minValue:F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v2, v1

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    iget v5, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->value:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    iget v2, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->step:F

    add-float/2addr v2, v1

    add-int/lit8 v4, v3, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v4, 0x1

    iget-object v3, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->action:Lcom/jme3/anim/tween/action/BlendAction;

    invoke-virtual {v3, v4}, Lcom/jme3/anim/tween/action/BlendAction;->setFirstActiveIndex(I)V

    iget-object v3, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->action:Lcom/jme3/anim/tween/action/BlendAction;

    invoke-virtual {v3, v0}, Lcom/jme3/anim/tween/action/BlendAction;->setSecondActiveIndex(I)V

    cmpl-float v0, v1, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->value:F

    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public setBlendAction(Lcom/jme3/anim/tween/action/BlendAction;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->action:Lcom/jme3/anim/tween/action/BlendAction;

    invoke-virtual {p1}, Lcom/jme3/anim/tween/action/BlendAction;->getActions()[Lcom/jme3/anim/tween/action/Action;

    move-result-object p1

    iget v0, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->maxValue:F

    iget v1, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->minValue:F

    sub-float/2addr v0, v1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->step:F

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/anim/tween/action/LinearBlendSpace;->value:F

    return-void
.end method
