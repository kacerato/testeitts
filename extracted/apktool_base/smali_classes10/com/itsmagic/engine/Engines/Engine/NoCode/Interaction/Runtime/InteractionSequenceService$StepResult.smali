.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;
.super Ljava/lang/Object;
.source "InteractionSequenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StepResult"
.end annotation


# instance fields
.field public completed:Z

.field public correct:Z

.field public expectedNext:Ljava/lang/String;

.field public nextIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
