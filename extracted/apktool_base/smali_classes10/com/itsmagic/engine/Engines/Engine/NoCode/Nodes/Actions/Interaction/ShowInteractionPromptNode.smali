.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "ShowInteractionPromptNode.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode$NodeFactory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.ShowPrompt"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode$NodeFactory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode$NodeFactory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 68
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Text"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->TEXT:Lga/H;

    const-string v4, "Icon"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 71
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->TEXT:Lga/H;

    const-string v5, "Action Key"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 72
    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Duration (s)"

    sget-object v5, Lga/H;->NUMBER:Lga/H;

    invoke-direct {v1, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 73
    const-string v4, "Duration"

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 75
    new-array v0, v3, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->BRANCH:Lga/H;

    const-string v4, "Out"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 76
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 78
    const-string v0, "Interaction.ShowPrompt"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->serializedNodeType:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 104
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 109
    const-string p1, "Show Interaction Prompt"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 114
    if-nez p1, :cond_0

    const-string p1, "Interagir"

    return-object p1

    .line 115
    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "hand_icon"

    return-object p1

    .line 116
    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "interact"

    return-object p1

    .line 117
    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const-string p1, "0.0"

    return-object p1

    .line 118
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v4

    .line 98
    invoke-static {v0, v2, v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->showPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    .line 99
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ShowInteractionPromptNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 100
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 123
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 128
    const-string p1, "Show Interaction Prompt"

    return-object p1
.end method
