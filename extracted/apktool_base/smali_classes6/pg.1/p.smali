.class public final Lpg/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Leg/p;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lpg/p;->c(Leg/p;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Leg/p;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lpg/p;->d(Leg/p;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final c(Leg/p;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Leg/M;->Key:Leg/M$a;

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/M;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0, p1}, Leg/p;->x(Leg/M;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final d(Leg/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Leg/M;->Key:Leg/M$a;

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/M;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0, p1}, Leg/p;->i(Leg/M;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final e(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LMf/l;
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
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lpg/d;

    invoke-direct {v0, p1}, Lpg/d;-><init>(Lyf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lpg/d;->p0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lpg/d;->o0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final f(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Lpg/d;

    invoke-direct {v0, p1}, Lpg/d;-><init>(Lyf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lpg/d;->p0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lpg/d;->o0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final g(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LMf/l;
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
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lpg/s;

    invoke-direct {v0, p1}, Lpg/s;-><init>(Lyf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lpg/s;->q0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lpg/s;->r0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final h(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Lpg/s;

    invoke-direct {v0, p1}, Lpg/s;-><init>(Lyf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lpg/s;->q0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lpg/s;->r0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method
