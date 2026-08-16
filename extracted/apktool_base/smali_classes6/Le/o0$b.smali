.class public final LLe/o0$b;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LUe/c<",
        "LEe/b<",
        "TK;TV;>;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final s:J = -0x332f71b8460722ceL

.field public static final t:Ljava/lang/Object;


# instance fields
.field public final c:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Z

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "LLe/o0$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final i:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "LLe/o0$c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public k:Lhn/d;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public o:Ljava/lang/Throwable;

.field public volatile p:Z

.field public q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LLe/o0$b;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhn/c;LFe/o;LFe/o;IZLjava/util/Map;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LEe/b<",
            "TK;TV;>;>;",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;IZ",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "LLe/o0$c<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "LLe/o0$c<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LLe/o0$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/o0$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LLe/o0$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, LLe/o0$b;->c:Lhn/c;

    iput-object p2, p0, LLe/o0$b;->d:LFe/o;

    iput-object p3, p0, LLe/o0$b;->e:LFe/o;

    iput p4, p0, LLe/o0$b;->f:I

    iput-boolean p5, p0, LLe/o0$b;->g:Z

    iput-object p6, p0, LLe/o0$b;->h:Ljava/util/Map;

    iput-object p7, p0, LLe/o0$b;->j:Ljava/util/Queue;

    new-instance p1, LRe/c;

    invoke-direct {p1, p4}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/o0$b;->i:LRe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LLe/o0$b;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLe/o0$c;

    invoke-virtual {v1}, LLe/o0$c;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LLe/o0$b;->j:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/o0$b;->q:Z

    iput-boolean v0, p0, LLe/o0$b;->p:Z

    invoke-virtual {p0}, LLe/o0$b;->f()V

    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, LLe/o0$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/o0$b;->p()V

    iget-object v0, p0, LLe/o0$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/o0$b;->k:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LLe/o0$b;->t:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LLe/o0$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LLe/o0$b;->k:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LLe/o0$b;->i:LRe/c;

    invoke-virtual {p1}, LRe/c;->clear()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LLe/o0$b;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LLe/o0$b;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LLe/o0$b;->v()V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/o0$b;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    :try_start_0
    iget-object v1, p0, LLe/o0$b;->d:LFe/o;

    invoke-interface {v1, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, LLe/o0$b;->t:Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLe/o0$c;

    if-nez v3, :cond_3

    iget-object v3, p0, LLe/o0$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget v3, p0, LLe/o0$b;->f:I

    iget-boolean v4, p0, LLe/o0$b;->g:Z

    invoke-static {v1, v3, p0, v4}, LLe/o0$c;->P8(Ljava/lang/Object;ILLe/o0$b;Z)LLe/o0$c;

    move-result-object v3

    iget-object v1, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LLe/o0$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, LLe/o0$b;->e:LFe/o;

    invoke-interface {v2, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The valueSelector returned null"

    invoke-static {p1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, p1}, LLe/o0$c;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, LLe/o0$b;->p()V

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, LRe/c;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LLe/o0$b;->f()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/o0$b;->k:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/o0$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/o0$b;->k:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/o0$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/o0$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/o0$b;->f()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/o0$b;->k:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/o0$b;->k:Lhn/d;

    iget-object v0, p0, LLe/o0$b;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/o0$b;->f:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/o0$b;->r:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public n(ZZLhn/c;LRe/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lhn/c<",
            "*>;",
            "LRe/c<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, LLe/o0$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p4}, LRe/c;->clear()V

    return v1

    :cond_0
    iget-boolean v0, p0, LLe/o0$b;->g:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, LLe/o0$b;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lhn/c;->a()V

    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, LLe/o0$b;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-virtual {p4}, LRe/c;->clear()V

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3}, Lhn/c;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, LLe/o0$b;->q:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/o0$b;->q:Z

    iget-object v1, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLe/o0$c;

    invoke-virtual {v2, p1}, LLe/o0$c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LLe/o0$b;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, LLe/o0$b;->j:Ljava/util/Queue;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    :cond_2
    iput-object p1, p0, LLe/o0$b;->o:Ljava/lang/Throwable;

    iput-boolean v0, p0, LLe/o0$b;->p:Z

    invoke-virtual {p0}, LLe/o0$b;->f()V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LLe/o0$b;->j:Ljava/util/Queue;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LLe/o0$b;->j:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLe/o0$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LLe/o0$c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LLe/o0$b;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_1
    return-void
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LLe/o0$b;->w()LEe/b;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    iget-object v1, p0, LLe/o0$b;->c:Lhn/c;

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, LLe/o0$b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, LRe/c;->clear()V

    return-void

    :cond_1
    iget-boolean v3, p0, LLe/o0$b;->p:Z

    if-eqz v3, :cond_2

    iget-boolean v4, p0, LLe/o0$b;->g:Z

    if-nez v4, :cond_2

    iget-object v4, p0, LLe/o0$b;->o:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, LRe/c;->clear()V

    invoke-interface {v1, v4}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lhn/c;->h(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    iget-object v0, p0, LLe/o0$b;->o:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lhn/c;->a()V

    :goto_0
    return-void

    :cond_4
    neg-int v2, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method public v()V
    .locals 14

    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    iget-object v1, p0, LLe/o0$b;->c:Lhn/c;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-object v4, p0, LLe/o0$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_4

    iget-boolean v11, p0, LLe/o0$b;->p:Z

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LEe/b;

    if-nez v12, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v1, v0}, LLe/o0$b;->n(ZZLhn/c;LRe/c;)Z

    move-result v11

    if-eqz v11, :cond_2

    return-void

    :cond_2
    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1, v12}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    iget-boolean v10, p0, LLe/o0$b;->p:Z

    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v1, v0}, LLe/o0$b;->n(ZZLhn/c;LRe/c;)Z

    move-result v10

    if-eqz v10, :cond_5

    return-void

    :cond_5
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, LLe/o0$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_6
    iget-object v4, p0, LLe/o0$b;->k:Lhn/d;

    invoke-interface {v4, v8, v9}, Lhn/d;->i(J)V

    :cond_7
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void
.end method

.method public w()LEe/b;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LEe/b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LLe/o0$b;->i:LRe/c;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEe/b;

    return-object v0
.end method
