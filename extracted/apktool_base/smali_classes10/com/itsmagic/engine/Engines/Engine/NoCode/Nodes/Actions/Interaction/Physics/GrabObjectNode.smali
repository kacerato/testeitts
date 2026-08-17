.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "GrabObjectNode.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode$NodeFactory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.GrabObject"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode$NodeFactory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode$NodeFactory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 72
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Object"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 74
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Interactor"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 75
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->NUMBER:Lga/H;

    const-string v5, "Hold Distance"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 76
    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v5, Lga/H;->NUMBER:Lga/H;

    const-string v6, "Follow Speed"

    invoke-direct {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 77
    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->BOOLEAN:Lga/H;

    const-string v7, "Use Physics"

    invoke-direct {v1, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 78
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 80
    new-array v0, v6, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->BRANCH:Lga/H;

    const-string v7, "Success"

    invoke-direct {v1, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 81
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v6, "Failed"

    invoke-direct {v1, v6, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 82
    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Held Object"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 83
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Failure Reason"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 84
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 86
    const-string v0, "Interaction.GrabObject"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->serializedNodeType:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 127
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 132
    const-string p1, "Grab Object"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 1

    .line 137
    if-nez p1, :cond_0

    const-string p1, "owner"

    return-object p1

    .line 138
    :cond_0
    const/4 p2, 0x1

    const-string v0, ""

    if-ne p1, p2, :cond_1

    return-object v0

    .line 139
    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "2.0"

    return-object p1

    .line 140
    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const-string p1, "15.0"

    return-object p1

    .line 141
    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    const-string p1, "false"

    return-object p1

    .line 142
    :cond_4
    return-object v0
.end method

.method public m0()V
    .locals 11

    .line 101
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {p0, v1, v3}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v5

    .line 104
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 108
    :cond_0
    move-object v6, v0

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v8

    .line 109
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v9

    .line 110
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v7, 0x4

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->S(Ljava/lang/Object;)Z

    move-result v10

    .line 112
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    .line 113
    invoke-static/range {v5 .. v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->grab(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v0

    .line 115
    iget-boolean v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success:Z

    .line 120
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 115
    if-eqz v5, :cond_2

    .line 116
    aget-object v0, v7, v1

    invoke-virtual {p0, v0, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    goto :goto_2

    .line 120
    :cond_2
    aget-object v1, v7, v3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failureReason:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/Physics/GrabObjectNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 123
    :goto_2
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 147
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    return-object p1

    .line 148
    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    sget-object p1, Lga/H;->TEXT:Lga/H;

    return-object p1

    .line 149
    :cond_1
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 154
    const-string p1, "Grab Object"

    return-object p1
.end method
