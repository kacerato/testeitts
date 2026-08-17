.class abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "ExtendedGameplayNodes.java"

# interfaces
.implements Lga/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleAction"
.end annotation


# instance fields
.field protected final out:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lga/H;->BRANCH:Lga/H;

    const-string v3, "Out"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lga/H;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;->out:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-void
.end method

.method synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;-><init>()V

    return-void
.end method


# virtual methods
.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;->out:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public M()Lga/B;
    .locals 1

    .line 31
    sget-object v0, Lga/B;->BOTH:Lga/B;

    return-object v0
.end method

.method protected done()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;->out:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Interaction/ExtendedGameplayNodes$SimpleAction;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILga/D;)Lga/H;
    .locals 0

    .line 31
    sget-object p1, Lga/H;->BRANCH:Lga/H;

    return-object p1
.end method
