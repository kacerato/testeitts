.class public interface abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession$HoldListener;
.super Ljava/lang/Object;
.source "InteractionHoldSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HoldListener"
.end annotation


# virtual methods
.method public abstract onHoldCancelled(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
.end method

.method public abstract onHoldCompleted(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
.end method

.method public abstract onHoldProgress(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;F)V
.end method

.method public abstract onHoldStarted(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
.end method
