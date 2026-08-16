.class public final LOe/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(LBe/G;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/internal/util/f;-><init>()V

    new-instance v1, LJe/u;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, LJe/u;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-interface {p0, v1}, LBe/G;->c(LBe/I;)V

    invoke-static {v0, v1}, Lio/reactivex/internal/util/e;->a(Ljava/util/concurrent/CountDownLatch;LDe/c;)V

    iget-object p0, v0, Lio/reactivex/internal/util/f;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(LBe/G;LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, LJe/i;

    invoke-direct {v1, v0}, LJe/i;-><init>(Ljava/util/Queue;)V

    invoke-interface {p1, v1}, LBe/I;->e(LDe/c;)V

    invoke-interface {p0, v1}, LBe/G;->c(LBe/I;)V

    :cond_0
    invoke-virtual {v1}, LJe/i;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, LJe/i;->dispose()V

    invoke-interface {p1, p0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v1}, LJe/i;->d()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, LJe/i;->d:Ljava/lang/Object;

    if-eq p0, v3, :cond_3

    invoke-static {v2, p1}, Lio/reactivex/internal/util/p;->c(Ljava/lang/Object;LBe/I;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(LBe/G;LFe/g;LFe/g;LFe/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "+TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/u;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, LJe/u;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-static {p0, v0}, LOe/l;->b(LBe/G;LBe/I;)V

    return-void
.end method
