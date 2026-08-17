.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;
.super Ljava/lang/Object;
.source "InteractionHysteresis.java"


# instance fields
.field private currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private switchThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    .line 15
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    .line 18
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    .line 19
    return-void
.end method


# virtual methods
.method public getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getSwitchThreshold()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    return v0
.end method

.method public reset()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 53
    return-void
.end method

.method public setCurrentTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 30
    return-void
.end method

.method public setSwitchThreshold(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    .line 61
    return-void
.end method

.method public shouldSwitchTarget(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;F)Z
    .locals 4

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    return v0

    .line 43
    :cond_1
    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v2, v3, :cond_2

    .line 44
    return v1

    .line 48
    :cond_2
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->switchThreshold:F

    add-float/2addr p2, v2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 34
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
