.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public b()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    invoke-static {}, Lga/E;->c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-static {v0}, Lga/E;->e(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public c(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    iget-object v2, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d0(LIc/h;)LIc/k;

    move-result-object p1

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public f(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->M0(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->g(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->g(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-void
.end method
