.class public final LOe/E0$a;
.super LJe/b;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/E0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LJe/b<",
        "TT;>;",
        "LBe/I<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final n:J = 0x5b45d4a143741ca0L


# instance fields
.field public final c:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LBe/J$c;

.field public final e:Z

.field public final f:I

.field public g:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:LDe/c;

.field public i:Ljava/lang/Throwable;

.field public volatile j:Z

.field public volatile k:Z

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>(LBe/I;LBe/J$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LBe/J$c;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, LJe/b;-><init>()V

    iput-object p1, p0, LOe/E0$a;->c:LBe/I;

    iput-object p2, p0, LOe/E0$a;->d:LBe/J$c;

    iput-boolean p3, p0, LOe/E0$a;->e:Z

    iput p4, p0, LOe/E0$a;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/E0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/E0$a;->j:Z

    invoke-virtual {p0}, LOe/E0$a;->j()V

    return-void
.end method

.method public c(ZZLBe/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LBe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LOe/E0$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {p1}, LIe/o;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, LOe/E0$a;->i:Ljava/lang/Throwable;

    iget-boolean v0, p0, LOe/E0$a;->e:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, LOe/E0$a;->k:Z

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LBe/I;->a()V

    :goto_0
    iget-object p1, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    iput-boolean v1, p0, LOe/E0$a;->k:Z

    iget-object p2, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {p2}, LIe/o;->clear()V

    invoke-interface {p3, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, LOe/E0$a;->k:Z

    invoke-interface {p3}, LBe/I;->a()V

    iget-object p1, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/E0$a;->k:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/E0$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/E0$a;->k:Z

    iget-object v0, p0, LOe/E0$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/E0$a;->h:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LOe/E0$a;->h:LDe/c;

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LOe/E0$a;->l:I

    iput-object p1, p0, LOe/E0$a;->g:LIe/o;

    iput-boolean v1, p0, LOe/E0$a;->j:Z

    iget-object p1, p0, LOe/E0$a;->c:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0}, LOe/E0$a;->j()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LOe/E0$a;->l:I

    iput-object p1, p0, LOe/E0$a;->g:LIe/o;

    iget-object p1, p0, LOe/E0$a;->c:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LOe/E0$a;->f:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/E0$a;->g:LIe/o;

    iget-object p1, p0, LOe/E0$a;->c:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-boolean v2, p0, LOe/E0$a;->k:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, LOe/E0$a;->j:Z

    iget-object v3, p0, LOe/E0$a;->i:Ljava/lang/Throwable;

    iget-boolean v4, p0, LOe/E0$a;->e:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iput-boolean v0, p0, LOe/E0$a;->k:Z

    iget-object v0, p0, LOe/E0$a;->c:LBe/I;

    iget-object v1, p0, LOe/E0$a;->i:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_2
    iget-object v3, p0, LOe/E0$a;->c:LBe/I;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, LBe/I;->h(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    iput-boolean v0, p0, LOe/E0$a;->k:Z

    iget-object v0, p0, LOe/E0$a;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v1, p0, LOe/E0$a;->c:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LOe/E0$a;->c:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :goto_0
    iget-object v0, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/E0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LOe/E0$a;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, LOe/E0$a;->j()V

    return-void
.end method

.method public i()V
    .locals 7

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    iget-object v1, p0, LOe/E0$a;->c:LBe/I;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, LOe/E0$a;->j:Z

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, LOe/E0$a;->c(ZZLBe/I;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-boolean v4, p0, LOe/E0$a;->j:Z

    :try_start_0
    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0, v4, v6, v1}, LOe/E0$a;->c(ZZLBe/I;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    invoke-interface {v1, v5}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v2, p0, LOe/E0$a;->k:Z

    iget-object v2, p0, LOe/E0$a;->h:LDe/c;

    invoke-interface {v2}, LDe/c;->dispose()V

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-interface {v1, v3}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/E0$a;->d:LBe/J$c;

    invoke-virtual {v0, p0}, LBe/J$c;->b(Ljava/lang/Runnable;)LDe/c;

    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/E0$a;->m:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/E0$a;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LOe/E0$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/E0$a;->j:Z

    invoke-virtual {p0}, LOe/E0$a;->j()V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LOe/E0$a;->g:LIe/o;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, LOe/E0$a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/E0$a;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOe/E0$a;->i()V

    :goto_0
    return-void
.end method
