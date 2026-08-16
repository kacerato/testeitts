.class public final Lla/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "graphData",
            "inputSlot"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    if-ne v3, p2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    if-ne v4, v3, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "connection",
            "inputSlot"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    if-eqz v1, :cond_3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    if-ltz p1, :cond_3

    array-length v2, v1

    if-lt p1, v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {p0, p1}, Lga/d;->b(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, LJAVARuntime/Component;

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, LJAVARuntime/Component;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static c(LJAVARuntime/Component;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)LJAVARuntime/Component;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "graphData",
            "componentInput"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lla/a;->a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0, p2}, Lla/a;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {p0, v0}, Lga/d;->b(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LJAVARuntime/Component;

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/Component;

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lga/H;

    invoke-static {p0, p1}, Lga/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0
.end method
