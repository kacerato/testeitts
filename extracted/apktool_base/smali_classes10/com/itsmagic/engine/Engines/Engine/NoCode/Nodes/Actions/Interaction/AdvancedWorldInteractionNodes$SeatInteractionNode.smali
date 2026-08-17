.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "AdvancedWorldInteractionNodes.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeatInteractionNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.Seat"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 99
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 96
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Interactor"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v5, "Seat"

    invoke-direct {v2, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v5, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v6, "Exit Point"

    invoke-direct {v2, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->TEXT:Lga/H;

    const-string v7, "Action"

    invoke-direct {v2, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 97
    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v7, "Success"

    invoke-direct {v1, v7, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Occupied"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Failed"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Failure Reason"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 99
    const-string v0, "Interaction.Seat"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 101
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 101
    const-string p1, "Sit / Stand"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 101
    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const-string p1, "Sit"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public m0()V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInteractor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Stand"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v4, :cond_2

    const-string v4, "Exit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v4, v4, v5

    invoke-static {p0, v1, v4}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/SeatService;->sit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v4, v4, v6

    invoke-static {p0, v1, v4}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/SeatService;->stand(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v1, v3

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failureReason:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failureReason:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Occupied:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-ne v0, v1, :cond_4

    aget-object v0, v2, v5

    goto :goto_2

    :cond_4
    aget-object v0, v2, v6

    goto :goto_2

    :goto_3
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 101
    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->TEXT:Lga/H;

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    :goto_0
    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$SeatInteractionNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
