.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;
.source "ExtendedInteractionConditionNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsHeldNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.IsHeld"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$1;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Target"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 84
    const-string v0, "Interaction.IsHeld"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lga/B;
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->M()Lga/B;

    move-result-object v0

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 85
    const-string p1, "Is Held"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 85
    if-nez p1, :cond_0

    const-string p1, "owner"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public m0()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->resolveTarget(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->emit(Z)V

    return-void
.end method

.method public bridge synthetic t0(ILga/D;)Lga/H;
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsHeldNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
