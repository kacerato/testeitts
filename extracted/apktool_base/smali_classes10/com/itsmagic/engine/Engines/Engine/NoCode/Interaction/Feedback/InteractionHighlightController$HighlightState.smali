.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;
.super Ljava/lang/Object;
.source "InteractionHighlightController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightState"
.end annotation


# instance fields
.field public active:Z

.field public colorHex:I

.field public intensity:F

.field public mode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field public target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
