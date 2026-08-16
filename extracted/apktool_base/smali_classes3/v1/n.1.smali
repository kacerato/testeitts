.class public final Lv1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lv1/k;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, LG0/A;->p()V

    invoke-static {}, LG0/A;->n()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lv1/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lv1/n;->s(Lv1/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lv1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/s;-><init>(Lv1/r;)V

    invoke-static {p0, v0}, Lv1/n;->t(Lv1/k;Lv1/t;)V

    invoke-virtual {v0}, Lv1/s;->d()V

    invoke-static {p0}, Lv1/n;->s(Lv1/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lv1/k;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, LG0/A;->p()V

    invoke-static {}, LG0/A;->n()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lv1/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lv1/n;->s(Lv1/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lv1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/s;-><init>(Lv1/r;)V

    invoke-static {p0, v0}, Lv1/n;->t(Lv1/k;Lv1/t;)V

    invoke-virtual {v0, p1, p2, p3}, Lv1/s;->e(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lv1/n;->s(Lv1/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Lv1/k;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lv1/n;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lv1/k;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    new-instance v1, Lv1/U;

    invoke-direct {v1, v0, p1}, Lv1/U;-><init>(Lv1/Q;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static e()Lv1/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    invoke-virtual {v0}, Lv1/Q;->A()Z

    return-object v0
.end method

.method public static f(Ljava/lang/Exception;)Lv1/k;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    invoke-virtual {v0, p0}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Lv1/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lv1/k<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    invoke-virtual {v0, p0}, Lv1/Q;->z(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Ljava/util/Collection;)Lv1/k;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lv1/k<",
            "*>;>;)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/k;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lv1/Q;

    invoke-direct {v0}, Lv1/Q;-><init>()V

    new-instance v1, Lv1/u;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lv1/u;-><init>(ILv1/Q;)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/k;

    invoke-static {v2, v1}, Lv1/n;->t(Lv1/k;Lv1/t;)V

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i([Lv1/k;)Lv1/k;
    .locals 1
    .param p0    # [Lv1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lv1/k<",
            "*>;)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->h(Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/Collection;)Lv1/k;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lv1/k<",
            "*>;>;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "Lv1/k<",
            "*>;>;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lv1/n;->k(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Collection<",
            "+",
            "Lv1/k<",
            "*>;>;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "Lv1/k<",
            "*>;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lv1/n;->h(Ljava/util/Collection;)Lv1/k;

    move-result-object v0

    new-instance v1, Lv1/q;

    invoke-direct {v1, p1}, Lv1/q;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1}, Lv1/k;->o(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs l(Ljava/util/concurrent/Executor;[Lv1/k;)Lv1/k;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lv1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lv1/k<",
            "*>;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "Lv1/k<",
            "*>;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lv1/n;->k(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs m([Lv1/k;)Lv1/k;
    .locals 1
    .param p0    # [Lv1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lv1/k<",
            "*>;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "Lv1/k<",
            "*>;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->j(Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/Collection;)Lv1/k;
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lv1/k;",
            ">;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    sget-object v0, Lv1/m;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lv1/n;->o(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Collection<",
            "+",
            "Lv1/k;",
            ">;)",
            "Lv1/k<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lv1/n;->h(Ljava/util/Collection;)Lv1/k;

    move-result-object v0

    new-instance v1, Lv1/p;

    invoke-direct {v1, p1}, Lv1/p;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, v1}, Lv1/k;->m(Ljava/util/concurrent/Executor;Lv1/c;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p(Ljava/util/concurrent/Executor;[Lv1/k;)Lv1/k;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lv1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "[",
            "Lv1/k;",
            ")",
            "Lv1/k<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lv1/n;->o(Ljava/util/concurrent/Executor;Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static varargs q([Lv1/k;)Lv1/k;
    .locals 1
    .param p0    # [Lv1/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">([",
            "Lv1/k;",
            ")",
            "Lv1/k<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->n(Ljava/util/Collection;)Lv1/k;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lv1/k;JLjava/util/concurrent/TimeUnit;)Lv1/k;
    .locals 4
    .param p0    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Timeout must be positive"

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv1/v;

    invoke-direct {v0}, Lv1/v;-><init>()V

    new-instance v1, Lv1/l;

    invoke-direct {v1, v0}, Lv1/l;-><init>(Lv1/a;)V

    new-instance v2, Ll1/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Ll1/a;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lv1/S;

    invoke-direct {v3, v1}, Lv1/S;-><init>(Lv1/l;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Lv1/T;

    invoke-direct {p1, v2, v1, v0}, Lv1/T;-><init>(Ll1/a;Lv1/l;Lv1/v;)V

    invoke-virtual {p0, p1}, Lv1/k;->f(Lv1/e;)Lv1/k;

    invoke-virtual {v1}, Lv1/l;->a()Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lv1/k;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lv1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lv1/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lv1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static t(Lv1/k;Lv1/t;)V
    .locals 1

    sget-object v0, Lv1/m;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lv1/k;->k(Ljava/util/concurrent/Executor;Lv1/g;)Lv1/k;

    invoke-virtual {p0, v0, p1}, Lv1/k;->h(Ljava/util/concurrent/Executor;Lv1/f;)Lv1/k;

    invoke-virtual {p0, v0, p1}, Lv1/k;->b(Ljava/util/concurrent/Executor;Lv1/d;)Lv1/k;

    return-void
.end method
