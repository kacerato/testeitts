.class public Lga/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "oldKey",
            "newKey"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    new-instance v1, LIa/a;

    invoke-direct {v1}, LIa/a;-><init>()V

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u0(FF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    new-instance v2, Lza/x;

    invoke-direct {v2}, Lza/x;-><init>()V

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-virtual {v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u0(FF)V

    const/4 v3, 0x0

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v5, 0x0

    invoke-static {v5, v3, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->n(IFFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->w0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->g(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v5, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
