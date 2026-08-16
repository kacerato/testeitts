.class public Lga/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/D;


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga/A;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Lga/A;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lga/H;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_0
    iget-object v0, p0, Lga/A;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    array-length v0, p1

    if-ge p2, v0, :cond_2

    aget-object p1, p1, p2

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    return-object p1

    :cond_2
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_3
    iget-object p1, p0, Lga/A;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_4
    iget p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-virtual {p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1
.end method
