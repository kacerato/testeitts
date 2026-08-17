.class abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "ExtendedInteractionConditionNodes.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseCondition"
.end annotation


# instance fields
.field protected final boolOutputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "True"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 29
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "False"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BOOLEAN:Lga/H;

    const-string v3, "Value"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 31
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->boolOutputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->boolOutputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 40
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method protected emit(Z)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->boolOutputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->boolOutputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    aget-object p1, v0, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method protected resolveTarget(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-static {p0, v0, p1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 41
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->BOOLEAN:Lga/H;

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    :goto_0
    return-object p1
.end method
