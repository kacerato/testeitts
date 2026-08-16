.class public Lcom/itsmagic/engine/Engines/Engine/Modules/a;
.super Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;-><init>()V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->n(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->m()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->m()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->m()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule$a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->i()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    :cond_0
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Modules/a;->d:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "target"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
