.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;
.super Ljava/lang/Object;
.source "InteractionFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Z
    .locals 2

    .line 14
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object p1

    .line 17
    if-eqz p1, :cond_4

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isBusy:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->capabilities:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 23
    return v1

    .line 27
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->tags:Ljava/util/Set;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 28
    return v1

    .line 31
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 18
    :cond_4
    :goto_0
    return v1
.end method
