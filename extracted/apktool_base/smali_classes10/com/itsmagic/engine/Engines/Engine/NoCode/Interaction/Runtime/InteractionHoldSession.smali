.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;
.super Ljava/lang/Object;
.source "InteractionHoldSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;
    }
.end annotation


# instance fields
.field private final context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

.field private currentHoldTime:F

.field private isHolding:Z

.field private listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

.field private requiredDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    .line 63
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;->onHoldCancelled(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 66
    :cond_1
    return-void
.end method

.method public getProgress()F
    .locals 3

    .line 73
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    .line 74
    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public isHolding()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    return v0
.end method

.method public startHold(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;)V
    .locals 1

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    .line 27
    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    .line 28
    const/4 p3, 0x0

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    .line 29
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    .line 31
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 32
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p1, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 33
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 34
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 36
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-interface {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;->onHoldStarted(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 39
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    .line 45
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 46
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->heldDuration:F

    .line 48
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-interface {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;->onHoldProgress(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;F)V

    .line 52
    :cond_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->currentHoldTime:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->requiredDuration:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 53
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->isHolding:Z

    .line 54
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->listener:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->context:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-interface {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;->onHoldCompleted(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 58
    :cond_2
    return-void
.end method
