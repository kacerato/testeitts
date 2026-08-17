.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "ExtendedGameplayNodes.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TeleportObjectNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode$Factory;
    }
.end annotation


# static fields
.field public static final SERIALIZED_NAME:Ljava/lang/String; = "Interaction.Teleport"


# instance fields
.field public final inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode$Factory;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode$Factory;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 59
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v3, "Object"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v3, Lga/H;->GAME_OBJECT:Lga/H;

    const-string v4, "Destination"

    invoke-direct {v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->NUMBER:Lga/H;

    const-string v5, "Height Offset"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 57
    new-array v0, v4, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v4, Lga/H;->BRANCH:Lga/H;

    const-string v5, "Success"

    invoke-direct {v1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v4, "Failed"

    invoke-direct {v1, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    .line 59
    const-string v0, "Interaction.Teleport"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 61
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 61
    const-string p1, "Teleport Object"

    return-object p1
.end method

.method public a(ILga/H;)Ljava/lang/String;
    .locals 0

    .line 61
    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "0.1"

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {p0, v1, v3}, LAa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->inputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lga/m;->V(Ljava/lang/Object;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-direct {v5, v6, v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v3, "teleported"

    invoke-static {v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->outputs:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v4

    goto :goto_0
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 61
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$TeleportObjectNode;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
