.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "ExtendedInteractionQueryNodes.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetInteractorNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.GetInteractor"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 44
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 28
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 29
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->BRANCH:Lga/H;

    const-string v4, "Found"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 30
    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Not Found"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 31
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Interactor"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    .line 32
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 44
    const-string v0, "Interaction.GetInteractor"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 48
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 49
    const-string p1, "Get Interactor"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 51
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInteractor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractorNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 52
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->GAME_OBJECT:Lga/H;

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    :goto_0
    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 50
    const-string p1, "Get Interactor"

    return-object p1
.end method
