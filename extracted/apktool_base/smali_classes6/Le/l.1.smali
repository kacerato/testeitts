.class public final LLe/l;
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

.method public static a(Lhn/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/internal/util/f;-><init>()V

    new-instance v1, LTe/m;

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v2

    sget-object v3, LHe/a;->l:LFe/g;

    invoke-direct {v1, v2, v0, v0, v3}, LTe/m;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-interface {p0, v1}, Lhn/b;->l(Lhn/c;)V

    invoke-static {v0, v1}, Lio/reactivex/internal/util/e;->a(Ljava/util/concurrent/CountDownLatch;LDe/c;)V

    iget-object p0, v0, Lio/reactivex/internal/util/f;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lhn/b;LFe/g;LFe/g;LFe/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
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

    new-instance v0, LTe/m;

    sget-object v1, LHe/a;->l:LFe/g;

    invoke-direct {v0, p1, p2, p3, v1}, LTe/m;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-static {p0, v0}, LLe/l;->d(Lhn/b;Lhn/c;)V

    return-void
.end method

.method public static c(Lhn/b;LFe/g;LFe/g;LFe/a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "number > 0 required"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LTe/g;

    invoke-static {p4}, LHe/a;->d(I)LFe/g;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, LTe/g;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;I)V

    invoke-static {p0, v0}, LLe/l;->d(Lhn/b;Lhn/c;)V

    return-void
.end method

.method public static d(Lhn/b;Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, LTe/f;

    invoke-direct {v1, v0}, LTe/f;-><init>(Ljava/util/Queue;)V

    invoke-interface {p0, v1}, Lhn/b;->l(Lhn/c;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, LTe/f;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, LTe/f;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/e;->b()V

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1}, LTe/f;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, LTe/f;->d:Ljava/lang/Object;

    if-eq p0, v2, :cond_5

    invoke-static {p0, p1}, Lio/reactivex/internal/util/p;->d(Ljava/lang/Object;Lhn/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, LTe/f;->cancel()V

    invoke-interface {p1, p0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method
