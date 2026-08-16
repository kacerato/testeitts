.class public final Lcom/google/android/gms/common/api/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/x;
.implements LD0/Z0;


# instance fields
.field public final e:Ljava/util/concurrent/locks/Lock;

.field public final f:Ljava/util/concurrent/locks/Condition;

.field public final g:Landroid/content/Context;

.field public final h:LB0/i;

.field public final i:LD0/W;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:LG0/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Ljava/util/Map;

.field public final n:Lcom/google/android/gms/common/api/a$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile o:Lcom/google/android/gms/common/api/internal/r;
    .annotation runtime Lsm/c;
    .end annotation
.end field

.field public p:LB0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:I

.field public final r:Lcom/google/android/gms/common/api/internal/q;

.field public final s:LD0/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;LG0/i;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;LD0/j0;)V
    .locals 1
    .param p7    # LG0/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/common/api/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->p:LB0/c;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/s;->h:LB0/i;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/s;->l:LG0/i;

    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/s;->m:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/s;->n:Lcom/google/android/gms/common/api/a$a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/s;->s:LD0/j0;

    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-interface {p10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LD0/Y0;

    invoke-virtual {p5, p0}, LD0/Y0;->a(LD0/Z0;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, LD0/W;

    invoke-direct {p1, p0, p4}, LD0/W;-><init>(Lcom/google/android/gms/common/api/internal/s;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->i:LD0/W;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/s;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/common/api/internal/r;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/common/api/internal/s;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->R()Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/s;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/r;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final d()LB0/c;
    .locals 3
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/s;->i()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, LB0/c;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/n;

    if-eqz v0, :cond_1

    sget-object v0, LB0/c;->E:LB0/c;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->p:LB0/c;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, LB0/c;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->s()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/r;->e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->s()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/r;->g(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final g(LD0/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/r;->h(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final i()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/r;->b()V

    return-void
.end method

.method public final j()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    check-cast v0, Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->j()V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/r;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final l0(LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/r;->c(LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final m()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/a$f;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/android/gms/common/api/a;)LB0/c;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, LB0/c;->E:LB0/c;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB0/c;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/o;

    return v0
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)LB0/c;
    .locals 3
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/s;->i()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of p3, p3, Lcom/google/android/gms/common/api/internal/o;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/s;->m()V

    new-instance p1, LB0/c;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, LB0/c;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of p1, p1, Lcom/google/android/gms/common/api/internal/n;

    if-eqz p1, :cond_2

    sget-object p1, LB0/c;->E:LB0/c;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->p:LB0/c;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, LB0/c;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/n;

    return v0
.end method

.method public final s()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/o;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/s;->l:LG0/i;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/s;->m:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/s;->h:LB0/i;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/s;->n:Lcom/google/android/gms/common/api/a$a;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/s;->g:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/s;LG0/i;Ljava/util/Map;LB0/i;Lcom/google/android/gms/common/api/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/r;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final t(LB0/c;)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->p:LB0/c;

    new-instance p1, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/s;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->o:Lcom/google/android/gms/common/api/internal/r;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/r;->a()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final u(LD0/V;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->i:LD0/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final v(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->i:LD0/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
