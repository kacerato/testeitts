.class public Lcom/itsmagic/engine/Engines/Input/Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public final m:LMc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/i<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public o:LJAVARuntime/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->i:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->j:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->l:I

    new-instance v0, LMc/i;

    invoke-direct {v0}, LMc/i;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->n:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->m()LJAVARuntime/Key;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Name can\'t be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->n()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "solid reference can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LAc/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LAc/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, LAc/b;->Z(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Input/Key;->g:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->g:Z

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Input/Key;->h:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->h:Z

    return-void
.end method

.method public e(ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "down",
            "pressed",
            "up"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    return-void
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->n()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->n()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->name:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->n()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    return v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {p1, v2}, LMc/i;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->n()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "solid reference can`t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->h:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->g:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->h:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->e:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lrc/a;->t(Lcom/itsmagic/engine/Engines/Input/Key;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lrc/a;->u(Lcom/itsmagic/engine/Engines/Input/Key;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->f:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lrc/a;->v(Lcom/itsmagic/engine/Engines/Input/Key;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public l(LJAVARuntime/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->o:LJAVARuntime/Key;

    return-void
.end method

.method public m()LJAVARuntime/Key;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->o:LJAVARuntime/Key;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Key;

    invoke-direct {v0, p0}, LJAVARuntime/Key;-><init>(Lcom/itsmagic/engine/Engines/Input/Key;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->o:LJAVARuntime/Key;

    :cond_0
    return-object v0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->l:I

    invoke-static {}, LK8/a;->k()I

    move-result v2

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {}, LK8/a;->k()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->l:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->p()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->o()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->j()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->k()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->e:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->f:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->k:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->j:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->i:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->i:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->i:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->k:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->k:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->j:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Input/Key;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->m:LMc/i;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, LMc/i;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Input/Key;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pressed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", down:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", up:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Input/Key;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
