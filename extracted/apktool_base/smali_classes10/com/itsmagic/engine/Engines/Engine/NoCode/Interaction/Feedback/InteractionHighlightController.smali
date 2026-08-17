.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;
.super Ljava/lang/Object;
.source "InteractionHighlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;,
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;
    }
.end annotation


# static fields
.field private static currentColor:I

.field private static currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private static currentIntensity:F

.field private static currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

.field private static renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 66
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static getCurrentHighlighted()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 63
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public static highlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;FI)V
    .locals 6

    .line 39
    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 42
    :cond_1
    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 43
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->MaterialTint:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    :goto_0
    sput-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    .line 44
    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sput p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentIntensity:F

    .line 45
    sput p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentColor:I

    .line 47
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    sget v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentIntensity:F

    sget v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentColor:I

    const/4 v2, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;->setHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;FI)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    .line 48
    :goto_1
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->snapshot(Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;

    move-result-object p0

    const-string p1, "interaction_highlight_on"

    invoke-static {p1, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 7

    .line 52
    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;->setHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;FI)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 54
    :goto_0
    const-string p0, "interaction_highlight_off"

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->snapshotFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 55
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p0, v2, :cond_2

    .line 56
    const/4 p0, 0x0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 57
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    .line 58
    const/4 p0, 0x0

    sput p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentIntensity:F

    .line 59
    sput v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentColor:I

    .line 61
    :cond_2
    return-void
.end method

.method public static setRenderer(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;)V
    .locals 6

    .line 32
    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    .line 33
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->renderer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    sget v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentIntensity:F

    sget v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentColor:I

    const/4 v2, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightRenderer;->setHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;FI)V

    .line 36
    :cond_0
    return-void
.end method

.method private static snapshot(Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;
    .locals 1

    .line 70
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentHighlighted:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->snapshotFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;

    move-result-object p0

    return-object p0
.end method

.method private static snapshotFor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;
    .locals 1

    .line 74
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 76
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;->active:Z

    .line 77
    if-eqz p1, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentMode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    :goto_0
    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;->mode:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    .line 78
    if-eqz p1, :cond_1

    sget p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentIntensity:F

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;->intensity:F

    .line 79
    if-eqz p1, :cond_2

    sget p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->currentColor:I

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightState;->colorHex:I

    .line 80
    return-object v0
.end method
