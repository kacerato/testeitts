.class public final Leg/T;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyf/j;)Leg/S;
    .locals 3
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lmg/h;

    sget-object v1, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Leg/N0;->c(Leg/K0;ILjava/lang/Object;)Leg/B;

    move-result-object v1

    invoke-interface {p0, v1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lmg/h;-><init>(Lyf/j;)V

    return-object v0
.end method

.method public static final b()Leg/S;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lmg/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Leg/k1;->c(Leg/K0;ILjava/lang/Object;)Leg/B;

    move-result-object v1

    invoke-static {}, Leg/j0;->e()Leg/V0;

    move-result-object v2

    invoke-interface {v1, v2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lmg/h;-><init>(Lyf/j;)V

    return-object v0
.end method

.method public static final c(Leg/S;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Leg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Leg/T;->d(Leg/S;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(Leg/S;Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-interface {p0}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object v0

    sget-object v1, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/K0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Leg/S;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Leg/T;->c(Leg/S;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Leg/S;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/T;->d(Leg/S;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lmg/O;

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmg/O;-><init>(Lyf/j;Lyf/f;)V

    invoke-static {v0, v0, p0}, Lng/b;->e(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final h(Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lyf/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lyf/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final j(Leg/S;)V
    .locals 0
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object p0

    invoke-static {p0}, Leg/N0;->A(Lyf/j;)V

    return-void
.end method

.method public static final k(Leg/S;)Z
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object p0

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Leg/K0;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static synthetic l(Leg/S;)V
    .locals 0

    return-void
.end method

.method public static final m(Leg/S;Lyf/j;)Leg/S;
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lmg/h;

    invoke-interface {p0}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object p0

    invoke-interface {p0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    invoke-direct {v0, p0}, Lmg/h;-><init>(Lyf/j;)V

    return-object v0
.end method
