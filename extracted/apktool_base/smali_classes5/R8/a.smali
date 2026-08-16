.class public LR8/a;
.super LK8/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
        ">",
        "LK8/f;"
    }
.end annotation


# instance fields
.field public b:LR8/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR8/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LK8/f;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "gameObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")TT;"
        }
    .end annotation

    invoke-static {p2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LR8/a;->b:LR8/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LR8/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR8/a;->b:LR8/g;

    invoke-virtual {v0}, LR8/g;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p2, :cond_1

    :cond_0
    iput-object v1, p0, LR8/a;->b:LR8/g;

    :cond_1
    iget-object v0, p0, LR8/a;->b:LR8/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LR8/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, LR8/a;->b:LR8/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LR8/g;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LR8/a;->b:LR8/g;

    invoke-virtual {p1}, LR8/g;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, LR8/g;

    invoke-direct {p2, p1}, LR8/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object p2, p0, LR8/a;->b:LR8/g;

    :cond_5
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t search components on a null object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "gameObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")TT;"
        }
    .end annotation

    invoke-static {p2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LR8/a;->b:LR8/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LR8/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR8/a;->b:LR8/g;

    invoke-virtual {v0}, LR8/g;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p2, :cond_1

    :cond_0
    iput-object v1, p0, LR8/a;->b:LR8/g;

    :cond_1
    iget-object v0, p0, LR8/a;->b:LR8/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LR8/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, LR8/a;->b:LR8/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LR8/g;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LR8/a;->b:LR8/g;

    invoke-virtual {p1}, LR8/g;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, LR8/g;

    invoke-direct {p2, p1}, LR8/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object p2, p0, LR8/a;->b:LR8/g;

    :cond_5
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tittle can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t search components on a null object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
