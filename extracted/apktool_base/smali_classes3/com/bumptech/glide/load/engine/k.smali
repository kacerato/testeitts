.class public Lcom/bumptech/glide/load/engine/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/g$b;
.implements LZ/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/k$c;,
        Lcom/bumptech/glide/load/engine/k$d;,
        Lcom/bumptech/glide/load/engine/k$e;,
        Lcom/bumptech/glide/load/engine/k$b;,
        Lcom/bumptech/glide/load/engine/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/g$b<",
        "TR;>;",
        "LZ/a$f;"
    }
.end annotation


# static fields
.field public static final z:Lcom/bumptech/glide/load/engine/k$c;


# instance fields
.field public final b:Lcom/bumptech/glide/load/engine/k$e;

.field public final c:LZ/c;

.field public final d:Lcom/bumptech/glide/load/engine/o$a;

.field public final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/bumptech/glide/load/engine/k$c;

.field public final g:Lcom/bumptech/glide/load/engine/l;

.field public final h:LH/a;

.field public final i:LH/a;

.field public final j:LH/a;

.field public final k:LH/a;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:LC/e;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;"
        }
    .end annotation
.end field

.field public s:LC/a;

.field public t:Z

.field public u:Lcom/bumptech/glide/load/engine/GlideException;

.field public v:Z

.field public w:Lcom/bumptech/glide/load/engine/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;"
        }
    .end annotation
.end field

.field public x:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/k$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/k$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/k;->z:Lcom/bumptech/glide/load/engine/k$c;

    return-void
.end method

.method public constructor <init>(LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;Landroidx/core/util/Pools$Pool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/a;",
            "LH/a;",
            "LH/a;",
            "LH/a;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Lcom/bumptech/glide/load/engine/o$a;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    sget-object v8, Lcom/bumptech/glide/load/engine/k;->z:Lcom/bumptech/glide/load/engine/k$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/k;-><init>(LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/k$c;)V

    return-void
.end method

.method public constructor <init>(LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/k$c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/a;",
            "LH/a;",
            "LH/a;",
            "LH/a;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Lcom/bumptech/glide/load/engine/o$a;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/k$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/k$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/k$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    .line 4
    invoke-static {}, LZ/c;->a()LZ/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->h:LH/a;

    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k;->i:LH/a;

    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k;->j:LH/a;

    .line 9
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/k;->k:LH/a;

    .line 10
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    .line 11
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/load/engine/o$a;

    .line 12
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/k;->e:Landroidx/core/util/Pools$Pool;

    .line 13
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/k$c;

    return-void
.end method

.method private declared-synchronized r()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k$e;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/engine/t;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/g;->C(Z)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Lcom/bumptech/glide/load/engine/GlideException;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->s:LC/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->j()LH/a;

    move-result-object v0

    invoke-virtual {v0, p1}, LH/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/t;LC/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "TR;>;",
            "LC/a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/engine/t;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k;->s:LC/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->p()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->u:Lcom/bumptech/glide/load/engine/GlideException;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->o()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()LZ/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    return-object v0
.end method

.method public declared-synchronized e(LU/i;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/k$e;->a(LU/i;Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/k;->k(I)V

    new-instance v0, Lcom/bumptech/glide/load/engine/k$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/k$b;-><init>(Lcom/bumptech/glide/load/engine/k;LU/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/k;->k(I)V

    new-instance v0, Lcom/bumptech/glide/load/engine/k$a;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/k$a;-><init>(Lcom/bumptech/glide/load/engine/k;LU/i;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p1, p2}, LY/k;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(LU/i;)V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, LU/i;->c(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g(LU/i;)V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->s:LC/a;

    invoke-interface {p1, v0, v1}, LU/i;->b(Lcom/bumptech/glide/load/engine/t;LC/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/l;->b(Lcom/bumptech/glide/load/engine/k;LC/e;)V

    return-void
.end method

.method public i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->n()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, LY/k;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v1, v2}, LY/k;->a(ZLjava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->r()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->e()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j()LH/a;
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->j:LH/a;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->k:LH/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->i:LH/a;

    :goto_0
    return-object v0
.end method

.method public declared-synchronized k(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->n()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, LY/k;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized l(LC/e;ZZZZ)Lcom/bumptech/glide/load/engine/k;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/k<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/k;->n:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/k;->o:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/k;->p:Z

    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/k;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized m()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->r()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/k$e;->c()Lcom/bumptech/glide/load/engine/k$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/k$e;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/engine/k;->k(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;LC/e;Lcom/bumptech/glide/load/engine/o;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/k$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/k$d;

    iget-object v2, v1, Lcom/bumptech/glide/load/engine/k$d;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/k$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/k$d;->a:LU/i;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/k$a;-><init>(Lcom/bumptech/glide/load/engine/k;LU/i;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->i()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public p()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->recycle()V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->r()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/k$e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/k$c;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/engine/t;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/k;->n:Z

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/load/engine/o$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/k$c;->a(Lcom/bumptech/glide/load/engine/t;ZLC/e;Lcom/bumptech/glide/load/engine/o$a;)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/k$e;->c()Lcom/bumptech/glide/load/engine/k$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/k$e;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/k;->k(I)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->m:LC/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    invoke-interface {v3, p0, v0, v2}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;LC/e;Lcom/bumptech/glide/load/engine/o;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/k$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/k$d;

    iget-object v2, v1, Lcom/bumptech/glide/load/engine/k$d;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/bumptech/glide/load/engine/k$b;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/k$d;->a:LU/i;

    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/k$b;-><init>(Lcom/bumptech/glide/load/engine/k;LU/i;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->i()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->q:Z

    return v0
.end method

.method public declared-synchronized s(LU/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:LZ/c;

    invoke-virtual {v0}, LZ/c;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/k$e;->e(LU/i;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/k$e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/k$e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->h()V

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/k;->t:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/k;->v:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/k;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized t(Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->h:LH/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->j()LH/a;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, LH/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
