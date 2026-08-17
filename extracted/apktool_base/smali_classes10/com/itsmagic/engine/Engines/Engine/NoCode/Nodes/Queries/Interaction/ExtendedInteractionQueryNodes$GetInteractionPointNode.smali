.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;
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
    name = "GetInteractionPointNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.GetPoint"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 107
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 108
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->BRANCH:Lga/H;

    const-string v4, "Valid"

    invoke-direct {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Missing"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->FLOAT3:Lga/H;

    const-string v3, "Point"

    invoke-direct {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 119
    const-string v0, "Interaction.GetPoint"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 123
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 124
    const-string p1, "Get Interaction Point"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 126
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 6

    .line 122
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getCurrentContext()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_1

    :cond_1
    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v3, :cond_2

    aget-object v0, v0, v2

    goto :goto_2

    :cond_2
    aget-object v0, v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Queries/Interaction/ExtendedInteractionQueryNodes$GetInteractionPointNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 127
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    sget-object p1, Lga/H;->FLOAT3:Lga/H;

    goto :goto_0

    :cond_0
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    :goto_0
    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 125
    const-string p1, "Get Interaction Point"

    return-object p1
.end method
