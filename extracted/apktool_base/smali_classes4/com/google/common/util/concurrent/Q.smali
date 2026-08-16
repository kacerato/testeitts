.class public final Lcom/google/common/util/concurrent/Q;
.super Lcom/google/common/util/concurrent/U;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Q$d;,
        Lcom/google/common/util/concurrent/Q$g;,
        Lcom/google/common/util/concurrent/Q$f;,
        Lcom/google/common/util/concurrent/Q$h;,
        Lcom/google/common/util/concurrent/Q$e;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/U;-><init>()V

    return-void
.end method

.method public static varargs A([Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Q$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Q$e<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Q$e;

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/util/concurrent/Q$e;-><init>(ZLcom/google/common/collect/g1;Lcom/google/common/util/concurrent/Q$a;)V

    return-object v0
.end method

.method public static B(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Q$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Q$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Q$e;

    invoke-static {p0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/util/concurrent/Q$e;-><init>(ZLcom/google/common/collect/g1;Lcom/google/common/util/concurrent/Q$a;)V

    return-object v0
.end method

.method public static varargs C([Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Q$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Q$e<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Q$e;

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/util/concurrent/Q$e;-><init>(ZLcom/google/common/collect/g1;Lcom/google/common/util/concurrent/Q$a;)V

    return-object v0
.end method

.method public static D(Lcom/google/common/util/concurrent/Z;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/TimeoutFuture;->S(Lcom/google/common/util/concurrent/Z;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/P;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/P<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Q$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Q$d;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/P;)V

    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/x$a;

    invoke-static {p0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/x$a;-><init>(Lcom/google/common/collect/c1;Z)V

    return-object v0
.end method

.method public static varargs c([Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/x$a;

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/x$a;-><init>(Lcom/google/common/collect/c1;Z)V

    return-object v0
.end method

.method public static d(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/k0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lw2/t<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->P(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/k0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/m<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->O(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/S;->d(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/S;->e(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Q;->E(Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static j(Ljava/lang/Iterable;)[Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TT;>;>;)[",
            "Lcom/google/common/util/concurrent/Z<",
            "+TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/util/concurrent/Z;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/util/concurrent/Z;

    return-object p0
.end method

.method public static k()Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/V$a;->j:Lcom/google/common/util/concurrent/V$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/V$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/V$a;-><init>()V

    return-object v0
.end method

.method public static l(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/V$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/V$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static m(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/common/util/concurrent/V;->c:Lcom/google/common/util/concurrent/Z;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/V;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/V;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static n()Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/V;->c:Lcom/google/common/util/concurrent/Z;

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TT;>;>;)",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/Q;->j(Ljava/lang/Iterable;)[Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    new-instance v0, Lcom/google/common/util/concurrent/Q$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/Q$g;-><init>([Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Q$a;)V

    array-length v2, p0

    invoke-static {v2}, Lcom/google/common/collect/g1;->n(I)Lcom/google/common/collect/g1$a;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    new-instance v5, Lcom/google/common/util/concurrent/Q$f;

    invoke-direct {v5, v0, v1}, Lcom/google/common/util/concurrent/Q$f;-><init>(Lcom/google/common/util/concurrent/Q$g;Lcom/google/common/util/concurrent/Q$a;)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v1

    :goto_1
    array-length v2, p0

    if-ge v3, v2, :cond_1

    aget-object v2, p0, v3

    new-instance v4, Lcom/google/common/util/concurrent/Q$c;

    invoke-direct {v4, v0, v1, v3}, Lcom/google/common/util/concurrent/Q$c;-><init>(Lcom/google/common/util/concurrent/Q$g;Lcom/google/common/collect/g1;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static p(Ljava/util/concurrent/Future;Lw2/t;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lw2/t<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Q$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Q$b;-><init>(Ljava/util/concurrent/Future;Lw2/t;)V

    return-object v0
.end method

.method public static q(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Q$h;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Q$h;-><init>(Lcom/google/common/util/concurrent/Z;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static r(Lcom/google/common/util/concurrent/l;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/l<",
            "TO;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/F0;->O(Lcom/google/common/util/concurrent/l;)Lcom/google/common/util/concurrent/F0;

    move-result-object p0

    invoke-interface {p4, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    new-instance p2, Lcom/google/common/util/concurrent/Q$a;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/Q$a;-><init>(Ljava/util/concurrent/Future;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/util/concurrent/F$a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public static s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/F0;->P(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/F0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static t(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/F0;->Q(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/F0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static u(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/l<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/util/concurrent/F0;->O(Lcom/google/common/util/concurrent/l;)Lcom/google/common/util/concurrent/F0;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public static v(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/x$a;

    invoke-static {p0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/x$a;-><init>(Lcom/google/common/collect/c1;Z)V

    return-object v0
.end method

.method public static varargs w([Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/x$a;

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/x$a;-><init>(Lcom/google/common/collect/c1;Z)V

    return-object v0
.end method

.method public static x(Lcom/google/common/util/concurrent/Z;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TI;>;",
            "Lw2/t<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/g;->P(Lcom/google/common/util/concurrent/Z;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TI;>;",
            "Lcom/google/common/util/concurrent/m<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TO;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/g;->O(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Q$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;)",
            "Lcom/google/common/util/concurrent/Q$e<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Q$e;

    invoke-static {p0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/util/concurrent/Q$e;-><init>(ZLcom/google/common/collect/g1;Lcom/google/common/util/concurrent/Q$a;)V

    return-object v0
.end method
