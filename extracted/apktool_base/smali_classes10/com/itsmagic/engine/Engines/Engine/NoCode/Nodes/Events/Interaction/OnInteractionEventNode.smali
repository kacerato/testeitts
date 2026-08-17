.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;
.super LFa/a;
.source "OnInteractionEventNode.java"

# interfaces
.implements Lga/F;
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode$NodeFactory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.OnCustomEvent"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode$NodeFactory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode$NodeFactory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 70
    invoke-direct {p0}, LFa/a;-><init>()V

    .line 71
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->TEXT:Lga/H;

    const-string v4, "Event Name"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 72
    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 74
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    const-string v5, "Received"

    invoke-direct {v2, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 75
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Sender"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 76
    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    const-string v3, "Payload"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 79
    const-string v0, "Interaction.OnCustomEvent"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->serializedNodeType:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 144
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 149
    const-string p1, "On Interaction Event"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 154
    if-nez p1, :cond_0

    const-string p1, "InteractEvent"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public k0()V
    .locals 2

    .line 105
    invoke-super {p0}, LFa/a;->k0()V

    .line 106
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->removeCustomEventListener(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->removeGlobalListener(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    .line 112
    :goto_0
    return-void
.end method

.method public l0()V
    .locals 2

    .line 94
    invoke-super {p0}, LFa/a;->l0()V

    .line 95
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->addCustomEventListener(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->addGlobalListener(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    .line 101
    :goto_0
    return-void
.end method

.method public onCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->Y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    return-void

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object p2, p2, v1

    invoke-virtual {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractionEventNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 128
    :cond_3
    return-void
.end method

.method public onFocusEnter(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 131
    return-void
.end method

.method public onFocusExit(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 137
    return-void
.end method

.method public onFocusStay(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 134
    return-void
.end method

.method public onInteract(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 140
    return-void
.end method

.method public synthetic onInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener$-CC;->$default$onInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 159
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    return-object p1

    .line 160
    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    sget-object p1, Lga/H;->DYNAMIC:Lga/H;

    return-object p1

    .line 161
    :cond_1
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 166
    const-string p1, "On Interaction Event"

    return-object p1
.end method
