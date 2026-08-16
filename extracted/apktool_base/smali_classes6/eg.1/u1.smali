.class public final Leg/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLeg/b0;Leg/K0;)Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 2
    .param p2    # Leg/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Leg/d0;

    if-eqz v0, :cond_0

    check-cast p2, Leg/d0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Leg/d0;->j(J)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timed out waiting for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Leg/K0;)V

    return-object p0
.end method

.method public static final b(Leg/t1;LMf/p;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Leg/t1<",
            "TU;-TT;>;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lmg/O;->e:Lyf/f;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/c0;->d(Lyf/j;)Leg/b0;

    move-result-object v0

    iget-wide v1, p0, Leg/t1;->f:J

    invoke-virtual {p0}, Leg/a;->getContext()Lyf/j;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Leg/b0;->m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;

    move-result-object v0

    invoke-static {p0, v0}, Leg/N0;->y(Leg/K0;Leg/m0;)Leg/m0;

    invoke-static {p0, p0, p1}, Lng/b;->f(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(JLMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    new-instance v0, Leg/t1;

    invoke-direct {v0, p0, p1, p3}, Leg/t1;-><init>(JLyf/f;)V

    invoke-static {v0, p2}, Leg/u1;->b(Leg/t1;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p3}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string p1, "Timed out immediately"

    invoke-direct {p0, p1}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(JLMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Leg/c0;->e(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Leg/u1;->c(JLMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(JLMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 7
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Leg/u1$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Leg/u1$a;

    iget v1, v0, Leg/u1$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Leg/u1$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Leg/u1$a;

    invoke-direct {v0, p3}, Leg/u1$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p3, v0, Leg/u1$a;->e:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Leg/u1$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Leg/u1$a;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    iget-object p1, v0, Leg/u1$a;->c:Ljava/lang/Object;

    check-cast p1, LMf/p;

    :try_start_0
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    cmp-long p3, p0, v5

    if-gtz p3, :cond_3

    return-object v3

    :cond_3
    new-instance p3, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p3}, Lkotlin/jvm/internal/m0$h;-><init>()V

    :try_start_1
    iput-object p2, v0, Leg/u1$a;->c:Ljava/lang/Object;

    iput-object p3, v0, Leg/u1$a;->d:Ljava/lang/Object;

    iput-wide p0, v0, Leg/u1$a;->b:J

    iput v4, v0, Leg/u1$a;->f:I

    new-instance v2, Leg/t1;

    invoke-direct {v2, p0, p1, v0}, Leg/t1;-><init>(JLyf/f;)V

    iput-object v2, p3, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    invoke-static {v2, p2}, Leg/u1;->b(Leg/t1;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {v0}, LBf/h;->c(Lyf/f;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, p3

    goto :goto_3

    :cond_4
    :goto_1
    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p3, p0

    :goto_2
    return-object p3

    :goto_3
    iget-object p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Leg/K0;

    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-ne p2, p0, :cond_6

    return-object v3

    :cond_6
    throw p1
.end method

.method public static final f(JLMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Leg/c0;->e(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Leg/u1;->e(JLMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
