.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;
.super LFa/a;
.source "ExtendedInteractionEventNodes.java"

# interfaces
.implements Lga/F;
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnInteractReleasedNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.OnInteractReleased"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 79
    invoke-direct {p0}, LFa/a;-><init>()V

    .line 63
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

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 64
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    const-string v5, "Released"

    invoke-direct {v2, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 65
    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Interactor"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 66
    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Action"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 67
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 79
    const-string v0, "Interaction.OnInteractReleased"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method private getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 91
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 92
    const-string p1, "On Interact Released"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 94
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

    .line 84
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->removeObjectListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    :cond_0
    invoke-super {p0}, LFa/a;->k0()V

    return-void
.end method

.method public l0()V
    .locals 2

    .line 83
    invoke-super {p0}, LFa/a;->l0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->register(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->addObjectListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher$InteractionEventListener;)V

    :cond_0
    return-void
.end method

.method public onCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V
    .locals 0

    .line 90
    return-void
.end method

.method public onFocusEnter(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 86
    return-void
.end method

.method public onFocusExit(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 88
    return-void
.end method

.method public onFocusStay(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 87
    return-void
.end method

.method public onInteract(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 0

    .line 89
    return-void
.end method

.method public onInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 2

    .line 85
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    const-string v0, "interact"

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/Interaction/ExtendedInteractionEventNodes$OnInteractReleasedNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 95
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    return-object p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    sget-object p1, Lga/H;->TEXT:Lga/H;

    return-object p1

    :cond_1
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 93
    const-string p1, "On Interact Released"

    return-object p1
.end method
