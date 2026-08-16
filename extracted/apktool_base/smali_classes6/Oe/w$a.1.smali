.class public final LOe/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements LJe/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "LJe/t<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final p:J = 0x7023f1bcc236905eL


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Lio/reactivex/internal/util/j;

.field public final g:Lio/reactivex/internal/util/c;

.field public final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "LJe/s<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public i:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:LDe/c;

.field public volatile k:Z

.field public l:I

.field public volatile m:Z

.field public n:LJe/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJe/s<",
            "TR;>;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(LBe/I;LFe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/w$a;->b:LBe/I;

    iput-object p2, p0, LOe/w$a;->c:LFe/o;

    iput p3, p0, LOe/w$a;->d:I

    iput p4, p0, LOe/w$a;->e:I

    iput-object p5, p0, LOe/w$a;->f:Lio/reactivex/internal/util/j;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LOe/w$a;->h:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/w$a;->k:Z

    invoke-virtual {p0}, LOe/w$a;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LOe/w$a;->n:LJe/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJe/s;->dispose()V

    :cond_0
    :goto_0
    iget-object v0, p0, LOe/w$a;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJe/s;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, LJe/s;->dispose()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, LOe/w$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/w$a;->m:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/w$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/w$a;->m:Z

    iget-object v0, p0, LOe/w$a;->j:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/w$a;->c()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/w$a;->j:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LOe/w$a;->j:LDe/c;

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LOe/w$a;->l:I

    iput-object p1, p0, LOe/w$a;->i:LIe/o;

    iput-boolean v1, p0, LOe/w$a;->k:Z

    iget-object p1, p0, LOe/w$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0}, LOe/w$a;->f()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LOe/w$a;->l:I

    iput-object p1, p0, LOe/w$a;->i:LIe/o;

    iget-object p1, p0, LOe/w$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LOe/w$a;->e:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/w$a;->i:LIe/o;

    iget-object p1, p0, LOe/w$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/w$a;->i:LIe/o;

    iget-object v1, p0, LOe/w$a;->h:Ljava/util/ArrayDeque;

    iget-object v2, p0, LOe/w$a;->b:LBe/I;

    iget-object v3, p0, LOe/w$a;->f:Lio/reactivex/internal/util/j;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    :goto_0
    iget v6, p0, LOe/w$a;->o:I

    :goto_1
    iget v7, p0, LOe/w$a;->d:I

    if-eq v6, v7, :cond_5

    iget-boolean v7, p0, LOe/w$a;->m:Z

    if-eqz v7, :cond_2

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    return-void

    :cond_2
    sget-object v7, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v7, :cond_3

    iget-object v7, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :try_start_0
    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, LOe/w$a;->c:LFe/o;

    invoke-interface {v8, v7}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The mapper returned a null ObservableSource"

    invoke-static {v7, v8}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v8, LJe/s;

    iget v9, p0, LOe/w$a;->e:I

    invoke-direct {v8, p0, v9}, LJe/s;-><init>(LJe/t;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-interface {v7, v8}, LBe/G;->c(LBe/I;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v3, p0, LOe/w$a;->j:LDe/c;

    invoke-interface {v3}, LDe/c;->dispose()V

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_2
    iput v6, p0, LOe/w$a;->o:I

    iget-boolean v6, p0, LOe/w$a;->m:Z

    if-eqz v6, :cond_6

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    return-void

    :cond_6
    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v6, :cond_7

    iget-object v6, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    iget-object v6, p0, LOe/w$a;->n:LJe/s;

    const/4 v7, 0x0

    if-nez v6, :cond_d

    sget-object v6, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    if-ne v3, v6, :cond_8

    iget-object v6, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iget-boolean v6, p0, LOe/w$a;->k:Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJe/s;

    if-nez v8, :cond_9

    move v9, v4

    goto :goto_3

    :cond_9
    move v9, v7

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    iget-object v1, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-interface {v2}, LBe/I;->a()V

    :goto_4
    return-void

    :cond_b
    if-nez v9, :cond_c

    iput-object v8, p0, LOe/w$a;->n:LJe/s;

    :cond_c
    move-object v6, v8

    :cond_d
    if-eqz v6, :cond_13

    invoke-virtual {v6}, LJe/s;->f()LIe/o;

    move-result-object v8

    :goto_5
    iget-boolean v9, p0, LOe/w$a;->m:Z

    if-eqz v9, :cond_e

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    return-void

    :cond_e
    invoke-virtual {v6}, LJe/s;->c()Z

    move-result v9

    sget-object v10, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v10, :cond_f

    iget-object v10, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LOe/w$a;->b()V

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_f
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v8}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_10

    move v12, v4

    goto :goto_6

    :cond_10
    move v12, v7

    :goto_6
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    iput-object v10, p0, LOe/w$a;->n:LJe/s;

    iget v6, p0, LOe/w$a;->o:I

    sub-int/2addr v6, v4

    iput v6, p0, LOe/w$a;->o:I

    goto/16 :goto_0

    :cond_11
    if-eqz v12, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v2, v11}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    invoke-static {v6}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v7, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iput-object v10, p0, LOe/w$a;->n:LJe/s;

    iget v6, p0, LOe/w$a;->o:I

    sub-int/2addr v6, v4

    iput v6, p0, LOe/w$a;->o:I

    goto/16 :goto_0

    :cond_13
    :goto_7
    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public g(LJe/s;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJe/s<",
            "TR;>;TR;)V"
        }
    .end annotation

    invoke-virtual {p1}, LJe/s;->f()LIe/o;

    move-result-object p1

    invoke-interface {p1, p2}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOe/w$a;->f()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LOe/w$a;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/w$a;->i:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LOe/w$a;->f()V

    return-void
.end method

.method public i(LJe/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJe/s<",
            "TR;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, LJe/s;->g()V

    invoke-virtual {p0}, LOe/w$a;->f()V

    return-void
.end method

.method public j(LJe/s;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJe/s<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, LOe/w$a;->f:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, LOe/w$a;->j:LDe/c;

    invoke-interface {p2}, LDe/c;->dispose()V

    :cond_0
    invoke-virtual {p1}, LJe/s;->g()V

    invoke-virtual {p0}, LOe/w$a;->f()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/w$a;->k:Z

    invoke-virtual {p0}, LOe/w$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
