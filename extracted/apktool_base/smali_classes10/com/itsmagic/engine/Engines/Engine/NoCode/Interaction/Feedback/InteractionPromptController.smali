.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;
.super Ljava/lang/Object;
.source "InteractionPromptController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;
    }
.end annotation


# static fields
.field private static final STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

.field private static renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentIcon()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentText()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static getState()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;
    .locals 1

    .line 78
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->snapshot()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    move-result-object v0

    return-object v0
.end method

.method public static hidePrompt()V
    .locals 3

    .line 55
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    .line 56
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->hidePrompt()V

    .line 57
    :cond_0
    const-string v0, "interaction_prompt_hide"

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->snapshot()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->actionKey:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static isPromptVisible()Z
    .locals 1

    .line 75
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    return v0
.end method

.method public static setCrosshair(Ljava/lang/String;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->crosshairState:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    invoke-interface {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->setCrosshairState(Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v0, "interaction_crosshair_changed"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public static setProgress(F)V
    .locals 2

    .line 70
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    .line 71
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    invoke-interface {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->setProgress(F)V

    .line 72
    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "interaction_progress_changed"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static setRenderer(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;)V
    .locals 6

    .line 35
    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    .line 36
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    if-eqz p0, :cond_2

    .line 37
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->actionKey:Ljava/lang/String;

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->duration:F

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->priority:I

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->showPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    .line 38
    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->crosshairState:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->crosshairState:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->setCrosshairState(Ljava/lang/String;)V

    .line 39
    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    invoke-interface {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->setProgress(F)V

    .line 41
    :cond_2
    return-void
.end method

.method public static showPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 7

    .line 44
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->actionKey:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->duration:F

    .line 48
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->priority:I

    .line 49
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    .line 50
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptRenderer;->showPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    .line 51
    :cond_0
    const/4 p0, 0x0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->snapshot()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    move-result-object p1

    const-string p2, "interaction_prompt_show"

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method private static snapshot()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;
    .locals 2

    .line 81
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;-><init>()V

    .line 82
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->text:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->icon:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->actionKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->actionKey:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->duration:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->duration:F

    .line 86
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->priority:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->priority:I

    .line 87
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->progress:F

    .line 88
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->crosshairState:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->crosshairState:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->STATE:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController$PromptState;->visible:Z

    .line 90
    return-object v0
.end method
