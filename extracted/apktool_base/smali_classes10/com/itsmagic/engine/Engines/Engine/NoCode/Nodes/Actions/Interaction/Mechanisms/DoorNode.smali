.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "DoorNode.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode$NodeFactory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.Door"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode$NodeFactory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode$NodeFactory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 40
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Door Object"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->TEXT:Lga/H;

    const-string v4, "Action"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 43
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v5, "Interactor"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 44
    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v5, Lga/H;->BOOLEAN:Lga/H;

    const-string v6, "Auto Direction"

    invoke-direct {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 45
    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->TEXT:Lga/H;

    const-string v7, "Mode"

    invoke-direct {v1, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 46
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v7, Lga/H;->NUMBER:Lga/H;

    const-string v8, "Speed"

    invoke-direct {v1, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 47
    invoke-virtual {v1, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v8, Lga/H;->NUMBER:Lga/H;

    const-string v9, "Max Angle"

    invoke-direct {v1, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 48
    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v8, Lga/H;->NUMBER:Lga/H;

    const-string v9, "Travel Distance"

    invoke-direct {v1, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 49
    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v8, Lga/H;->NUMBER01:Lga/H;

    const-string v9, "Open Amount"

    invoke-direct {v1, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 50
    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/16 v8, 0x8

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 52
    new-array v0, v7, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v7, Lga/H;->BRANCH:Lga/H;

    const-string v8, "Opened"

    invoke-direct {v1, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 53
    invoke-virtual {v1, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v7, "Closed"

    invoke-direct {v1, v7, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 54
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Failed"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 55
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->NUMBER01:Lga/H;

    invoke-direct {v1, v9, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 56
    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Failure Reason"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 59
    const-string v0, "Interaction.Door"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->serializedNodeType:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 115
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 116
    const-string p1, "Door Controller"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 120
    if-nez p1, :cond_0

    const-string p1, "owner"

    return-object p1

    .line 121
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "Toggle"

    return-object p1

    .line 122
    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const-string p1, "true"

    return-object p1

    .line 123
    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const-string p1, "Hinged"

    return-object p1

    .line 124
    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    const-string p1, "3.5"

    return-object p1

    .line 125
    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    const-string p1, "90.0"

    return-object p1

    .line 126
    :cond_5
    const/4 p2, 0x7

    if-ne p1, p2, :cond_6

    const-string p1, "2.0"

    return-object p1

    .line 127
    :cond_6
    const/16 p2, 0x8

    if-ne p1, p2, :cond_7

    const-string p1, "1.0"

    return-object p1

    .line 128
    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 15

    .line 67
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 69
    :cond_0
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v4

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 72
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v1, "Toggle"

    .line 77
    :cond_3
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v7, v7, v3

    invoke-static {p0, v6, v7}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v6

    .line 78
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lga/m;->S(Ljava/lang/Object;)Z

    move-result v7

    .line 79
    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v9, v9, v4

    invoke-virtual {p0, v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 80
    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v10

    .line 81
    iget-object v11, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v12, 0x6

    aget-object v11, v11, v12

    invoke-virtual {p0, v11}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v11

    .line 82
    iget-object v12, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v13, 0x7

    aget-object v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v12

    .line 83
    iget-object v13, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/16 v14, 0x8

    aget-object v13, v13, v14

    invoke-virtual {p0, v13}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v13

    .line 85
    invoke-static {v0, v9, v10, v11, v12}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->configure(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;FFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;

    .line 89
    const-string v9, "Open"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_4

    .line 90
    nop

    .line 91
    invoke-static {v0, v6, v5, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->setDoorOpen(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_4
    const-string v9, "Close"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_5

    .line 93
    nop

    .line 94
    invoke-static {v0, v6, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->setDoorOpen(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v1

    const/4 v10, 0x0

    goto :goto_1

    .line 95
    :cond_5
    const-string v9, "SetAmount"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "Set Amount"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 99
    :cond_6
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isOpen(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, 0x0

    .line 100
    :cond_7
    invoke-static {v0, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->toggleDoor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v1

    goto :goto_1

    .line 96
    :cond_8
    :goto_0
    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 97
    invoke-static {v0, v6, v10, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->setDoorOpenAmount(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v1

    .line 103
    :goto_1
    iget-boolean v6, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success:Z

    .line 110
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 103
    if-nez v6, :cond_9

    .line 104
    aget-object v2, v7, v8

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getOpenAmount(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v4

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failureReason:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 107
    return-void

    .line 110
    :cond_9
    aget-object v0, v7, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v4

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 112
    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, v10, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-lez v0, :cond_a

    aget-object v0, v1, v2

    goto :goto_2

    :cond_a
    aget-object v0, v1, v5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Mechanisms/DoorNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 113
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 132
    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->NUMBER01:Lga/H;

    return-object p1

    .line 133
    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    sget-object p1, Lga/H;->TEXT:Lga/H;

    return-object p1

    .line 134
    :cond_1
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 117
    const-string p1, "Door Controller"

    return-object p1
.end method
