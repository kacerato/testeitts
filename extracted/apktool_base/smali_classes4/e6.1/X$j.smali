.class public Le6/X$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


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

    iput-object p1, p0, Le6/X$j;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Le6/X$j;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    iget-object v0, p0, Le6/X$j;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Le6/X$j;->c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    return-object p1

    :cond_0
    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_1
    iget-object p1, p0, Le6/X$j;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lga/H;->NUMBER:Lga/H;

    return-object p1

    :cond_2
    iget p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-virtual {p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILga/D;)Lga/H;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "nodeId",
            "inputIndex"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    if-ne v2, p3, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method
