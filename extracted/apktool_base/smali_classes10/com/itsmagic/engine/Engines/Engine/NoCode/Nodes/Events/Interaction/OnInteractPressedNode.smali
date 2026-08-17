.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;
.super LFa/a;
.source "OnInteractPressedNode.java"

# interfaces
.implements Lga/F;
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode$NodeFactory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.OnInteractPressed"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode$NodeFactory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode$NodeFactory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 40
    invoke-direct {p0}, LFa/a;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Target Object"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 42
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    const-string v5, "Pressed"

    invoke-direct {v2, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 43
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Interactor"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 44
    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    const-string v3, "Hit Position"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 45
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 47
    const-string v0, "Interaction.OnInteractPressed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->serializedNodeType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getTargetObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 85
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 86
    const-string p1, "On Interact Pressed"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 88
    if-nez p1, :cond_0

    const-string p1, "owner"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public k0()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->getTargetObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->removeObjectListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    .line 65
    :cond_0
    invoke-super {p0}, LFa/a;->k0()V

    .line 66
    return-void
.end method

.method public l0()V
    .locals 2

    .line 54
    invoke-super {p0}, LFa/a;->l0()V

    .line 55
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->getTargetObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->register(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 58
    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->addObjectListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V
    .locals 0

    .line 84
    return-void
.end method

.method public onFocusEnter(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 81
    return-void
.end method

.method public onFocusExit(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 83
    return-void
.end method

.method public onFocusStay(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 82
    return-void
.end method

.method public onInteract(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 2

    .line 75
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_2

    const-string v0, "interact"

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/OnInteractPressedNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 79
    :cond_1
    return-void

    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener$-CC;->$default$onInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 89
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    return-object p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    sget-object p1, Lga/H;->FLOAT3:Lga/H;

    return-object p1

    :cond_1
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 87
    const-string p1, "On Interact Pressed"

    return-object p1
.end method
