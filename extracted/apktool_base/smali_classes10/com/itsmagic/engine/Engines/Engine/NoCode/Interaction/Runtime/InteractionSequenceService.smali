.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService;
.super Ljava/lang/Object;
.source "InteractionSequenceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2

    .line 49
    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sequence_index"

    invoke-static {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v0, "sequence_reset"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static submit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;
    .locals 7

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;-><init>()V

    .line 21
    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s*(?:>|,|;)\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string v1, "sequence_index"

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 25
    instance-of v3, v2, Ljava/lang/Number;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ltz v2, :cond_2

    array-length v3, p1

    if-lt v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 28
    :cond_3
    array-length v3, p1

    const/4 v5, 0x1

    if-lez v3, :cond_4

    aget-object v3, p1, v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->correct:Z

    .line 29
    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->correct:Z

    if-eqz v3, :cond_7

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    array-length p3, p1

    if-lt v2, p3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->completed:Z

    .line 32
    iget-boolean p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->completed:Z

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_3

    .line 33
    :cond_7
    if-eqz p3, :cond_8

    .line 34
    goto :goto_3

    .line 33
    :cond_8
    move v4, v2

    .line 37
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p0, v1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->nextIndex:I

    .line 39
    array-length p3, p1

    if-lez p3, :cond_9

    array-length p3, p1

    if-ge v4, p3, :cond_9

    aget-object p1, p1, v4

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->expectedNext:Ljava/lang/String;

    .line 41
    iget-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->completed:Z

    if-eqz p1, :cond_a

    const-string p1, "sequence_completed"

    invoke-static {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    goto :goto_5

    .line 42
    :cond_a
    iget-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionSequenceService$StepResult;->correct:Z

    if-eqz p1, :cond_b

    const-string p1, "sequence_correct_step"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    goto :goto_5

    .line 43
    :cond_b
    const-string p1, "sequence_wrong_step"

    invoke-static {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 45
    :goto_5
    return-object v0

    .line 21
    :cond_c
    :goto_6
    return-object v0
.end method
