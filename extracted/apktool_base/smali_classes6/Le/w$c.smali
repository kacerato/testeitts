.class public final LLe/w$c;
.super LLe/w$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/w$b<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final q:J = -0x28e181349daae86aL


# instance fields
.field public final o:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final p:Z


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, LLe/w$b;-><init>(LFe/o;I)V

    iput-object p1, p0, LLe/w$c;->o:Lhn/c;

    iput-boolean p4, p0, LLe/w$c;->p:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    :cond_0
    :goto_0
    iget-boolean v0, p0, LLe/w$b;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, LLe/w$b;->l:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, LLe/w$b;->i:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LLe/w$c;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, LLe/w$b;->h:LIe/o;

    invoke-interface {v1}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, LLe/w$c;->o:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :goto_2
    return-void

    :cond_5
    if-nez v4, :cond_b

    :try_start_1
    iget-object v0, p0, LLe/w$b;->c:LFe/o;

    invoke-interface {v0, v1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v1, p0, LLe/w$b;->m:I

    if-eq v1, v3, :cond_7

    iget v1, p0, LLe/w$b;->g:I

    add-int/2addr v1, v3

    iget v4, p0, LLe/w$b;->e:I

    if-ne v1, v4, :cond_6

    iput v2, p0, LLe/w$b;->g:I

    iget-object v2, p0, LLe/w$b;->f:Lhn/d;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lhn/d;->i(J)V

    goto :goto_3

    :cond_6
    iput v1, p0, LLe/w$b;->g:I

    :cond_7
    :goto_3
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v1, p0, LLe/w$b;->b:LLe/w$e;

    invoke-virtual {v1}, LUe/i;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, LLe/w$c;->o:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iput-boolean v3, p0, LLe/w$b;->l:Z

    iget-object v1, p0, LLe/w$b;->b:LLe/w$e;

    new-instance v2, LLe/w$g;

    invoke-direct {v2, v0, v1}, LLe/w$g;-><init>(Ljava/lang/Object;Lhn/c;)V

    invoke-virtual {v1, v2}, LUe/i;->l(Lhn/d;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LLe/w$b;->f:Lhn/d;

    invoke-interface {v1}, Lhn/d;->cancel()V

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    iput-boolean v3, p0, LLe/w$b;->l:Z

    iget-object v1, p0, LLe/w$b;->b:LLe/w$e;

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LLe/w$b;->f:Lhn/d;

    invoke-interface {v1}, Lhn/d;->cancel()V

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LLe/w$b;->f:Lhn/d;

    invoke-interface {v1}, Lhn/d;->cancel()V

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    iget-object v1, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LLe/w$c;->p:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/w$b;->f:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/w$b;->i:Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LLe/w$b;->l:Z

    invoke-virtual {p0}, LLe/w$c;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/w$b;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/w$b;->j:Z

    iget-object v0, p0, LLe/w$b;->b:LLe/w$e;

    invoke-virtual {v0}, LUe/i;->cancel()V

    iget-object v0, p0, LLe/w$b;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LLe/w$c;->o:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/w$b;->b:LLe/w$e;

    invoke-virtual {v0, p1, p2}, LUe/i;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/w$b;->k:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/w$b;->i:Z

    invoke-virtual {p0}, LLe/w$c;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
