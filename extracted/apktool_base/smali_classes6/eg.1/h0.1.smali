.class public final Leg/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,222:1\n200#1,17:240\n1#2:223\n255#3:224\n256#3,2:235\n258#3:239\n107#4,10:225\n118#4,2:237\n61#5,2:257\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n190#1:240,17\n178#1:224\n178#1:235,2\n178#1:239\n178#1:225,10\n178#1:237,2\n220#1:257,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,222:1\n200#1,17:240\n1#2:223\n255#3:224\n256#3,2:235\n258#3:239\n107#4,10:225\n118#4,2:237\n61#5,2:257\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n190#1:240,17\n178#1:224\n178#1:235,2\n178#1:239\n178#1:225,10\n178#1:237,2\n220#1:257,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = -0x1


# direct methods
.method public static final a(Leg/g0;I)V
    .locals 3
    .param p0    # Leg/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/g0<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Leg/g0;->e()Lyf/f;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    instance-of v2, v0, Lmg/l;

    if-eqz v2, :cond_2

    invoke-static {p1}, Leg/h0;->c(I)Z

    move-result p1

    iget v2, p0, Leg/g0;->d:I

    invoke-static {v2}, Leg/h0;->c(I)Z

    move-result v2

    if-ne p1, v2, :cond_2

    move-object p1, v0

    check-cast p1, Lmg/l;

    iget-object p1, p1, Lmg/l;->e:Leg/M;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Leg/M;->isDispatchNeeded(Lyf/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, p0}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Leg/h0;->f(Leg/g0;)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, v1}, Leg/h0;->e(Leg/g0;Lyf/f;Z)V

    :goto_1
    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final c(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final d(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(Leg/g0;Lyf/f;Z)V
    .locals 3
    .param p0    # Leg/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/g0<",
            "-TT;>;",
            "Lyf/f<",
            "-TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Leg/g0;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Leg/g0;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object p0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    invoke-virtual {p0, v0}, Leg/g0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_5

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmg/l;

    iget-object p2, p1, Lmg/l;->f:Lyf/f;

    iget-object v0, p1, Lmg/l;->h:Ljava/lang/Object;

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-static {v1, v0}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lmg/Z;->a:Lmg/T;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, Leg/L;->g(Lyf/f;Lyf/j;Ljava/lang/Object;)Leg/w1;

    move-result-object p2

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_2
    :try_start_0
    iget-object p1, p1, Lmg/l;->f:Lyf/f;

    invoke-interface {p1, p0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Leg/w1;->C1()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    invoke-static {v1, v0}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Leg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v0}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_4
    throw p0

    :cond_5
    invoke-interface {p1, p0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static final f(Leg/g0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/g0<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Leg/n1;->a:Leg/n1;

    invoke-virtual {v0}, Leg/n1;->b()Leg/q0;

    move-result-object v0

    invoke-virtual {v0}, Leg/q0;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Leg/q0;->v(Leg/g0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leg/q0;->A(Z)V

    :try_start_0
    invoke-virtual {p0}, Leg/g0;->e()Lyf/f;

    move-result-object v2

    invoke-static {p0, v2, v1}, Leg/h0;->e(Leg/g0;Lyf/f;Z)V

    :cond_1
    invoke-virtual {v0}, Leg/q0;->i0()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Leg/q0;->s(Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Leg/g0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Leg/q0;->s(Z)V

    throw p0
.end method

.method public static final g(Lyf/f;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(Leg/g0;Leg/q0;LMf/a;)V
    .locals 2
    .param p0    # Leg/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/q0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/g0<",
            "*>;",
            "Leg/q0;",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leg/q0;->A(Z)V

    :try_start_0
    invoke-interface {p2}, LMf/a;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Leg/q0;->i0()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    :goto_0
    invoke-virtual {p1, v0}, Leg/q0;->s(Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    goto :goto_1

    :catchall_0
    move-exception p2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v1}, Leg/g0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-virtual {p1, v0}, Leg/q0;->s(Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p0
.end method
