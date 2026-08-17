.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;
.source "ExtendedInteractionConditionNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompareStateNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.CompareState"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$1;)V

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Target"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "State"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 106
    const-string v0, "Interaction.CompareState"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lga/B;
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->M()Lga/B;

    move-result-object v0

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 134
    const-string p1, "Compare Interaction State"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 134
    if-nez p1, :cond_0

    const-string p1, "owner"

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "Idle"

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->resolveTarget(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->fromString(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    move-result-object v2

    .line 110
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object v4

    .line 111
    nop

    .line 112
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 113
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$InteractionState:[I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 129
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getState(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    move-result-object v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :pswitch_0
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isFocused:Z

    if-nez v0, :cond_0

    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isHeld:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :pswitch_1
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isPowered:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_2
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isPowered:Z

    goto :goto_0

    .line 125
    :pswitch_3
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->hasOnOffState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isOn:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :pswitch_4
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->hasOnOffState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isOn:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 123
    :pswitch_5
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isHeld:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_6
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isHeld:Z

    goto :goto_0

    .line 121
    :pswitch_7
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isOpen:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_8
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isOpen:Z

    goto :goto_0

    .line 119
    :pswitch_9
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isLocked:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 118
    :pswitch_a
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isLocked:Z

    goto :goto_0

    .line 117
    :pswitch_b
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isBusy:Z

    goto :goto_0

    .line 116
    :pswitch_c
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isFocused:Z

    goto :goto_0

    .line 115
    :pswitch_d
    iget-boolean v0, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_e
    iget-boolean v1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->emit(Z)V

    .line 133
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic t0(ILga/D;)Lga/H;
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$CompareStateNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
