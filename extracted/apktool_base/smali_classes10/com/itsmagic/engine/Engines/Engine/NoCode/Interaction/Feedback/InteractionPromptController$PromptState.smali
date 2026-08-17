.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;
.super Ljava/lang/Object;
.source "InteractionPromptController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromptState"
.end annotation


# instance fields
.field public actionKey:Ljava/lang/String;

.field public crosshairState:Ljava/lang/String;

.field public duration:F

.field public icon:Ljava/lang/String;

.field public priority:I

.field public progress:F

.field public text:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
