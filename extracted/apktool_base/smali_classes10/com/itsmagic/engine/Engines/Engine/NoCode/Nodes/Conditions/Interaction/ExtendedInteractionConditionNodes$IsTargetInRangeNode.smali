.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;
.source "ExtendedInteractionConditionNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsTargetInRangeNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.IsTargetInRange"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$1;)V

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Interactor"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Target"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->NUMBER:Lga/H;

    const-string v3, "Max Distance"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 155
    const-string v0, "Interaction.IsTargetInRange"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lga/B;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->M()Lga/B;

    move-result-object v0

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 169
    const-string p1, "Is Target In Range"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 169
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "4.0"

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {p0, v1, v3}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 159
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInteractor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 160
    :cond_0
    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 162
    nop

    .line 163
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 164
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    .line 165
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    sub-float/2addr v1, v0

    mul-float v5, v5, v5

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    mul-float v1, v1, v1

    add-float/2addr v5, v1

    mul-float v3, v3, v3

    cmpg-float v0, v5, v3

    if-gtz v0, :cond_2

    const/4 v2, 0x1

    .line 167
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->emit(Z)V

    .line 168
    return-void
.end method

.method public bridge synthetic t0(ILga/D;)Lga/H;
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$BaseCondition;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Conditions/Interaction/ExtendedInteractionConditionNodes$IsTargetInRangeNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
