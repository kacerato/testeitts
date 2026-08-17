.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;
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
    name = "DragObjectNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.DragObject"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 47
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Object"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Interactor"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 35
    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->BOOLEAN:Lga/H;

    const-string v5, "Start"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 36
    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v5, Lga/H;->NUMBER:Lga/H;

    const-string v6, "Hold Distance"

    invoke-direct {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 37
    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->NUMBER:Lga/H;

    const-string v7, "Follow Speed"

    invoke-direct {v1, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 38
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 40
    new-array v0, v6, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v6, Lga/H;->BRANCH:Lga/H;

    const-string v7, "Started"

    invoke-direct {v1, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 41
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v6, "Stopped"

    invoke-direct {v1, v6, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 42
    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Failed"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 43
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->TEXT:Lga/H;

    const-string v3, "Failure Reason"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 44
    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 47
    const-string v0, "Interaction.DragObject"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 56
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 56
    const-string p1, "Start / Stop Drag Object"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 56
    if-nez p1, :cond_0

    const-string p1, "owner"

    return-object p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p1, "true"

    return-object p1

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    const-string p1, "2.0"

    return-object p1

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const-string p1, "12.0"

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 12

    .line 49
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInteractor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    :cond_0
    move-object v4, v1

    .line 51
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lga/m;->S(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x3

    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->drop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v10

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v11, 0x0

    aget-object v3, v3, v11

    invoke-static {p0, v1, v3}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 53
    :cond_2
    move-object v5, v1

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getCameraTransform()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v10

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v8

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->grab(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v1, v10

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failureReason:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_3

    aget-object v0, v1, v11

    goto :goto_1

    :cond_3
    aget-object v0, v1, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    .line 55
    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 56
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

    .line 56
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/AdvancedWorldInteractionNodes$DragObjectNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
