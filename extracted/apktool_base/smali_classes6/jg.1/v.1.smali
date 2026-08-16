.class public final synthetic Ljg/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,141:1\n1#2:142\n107#3:143\n107#3:144\n107#3:145\n107#3:146\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n22#1:143\n33#1:144\n52#1:145\n83#1:146\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,141:1\n1#2:142\n107#3:143\n107#3:144\n107#3:145\n107#3:146\n*S KotlinDebug\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n22#1:143\n33#1:144\n52#1:145\n83#1:146\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Ljg/j;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ljg/v;->f(Ljg/j;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/v$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/v$a;

    iget v1, v0, Ljg/v$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/v$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/v$a;

    invoke-direct {v0, p2}, Ljg/v$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/v$a;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/v$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/v$a;->b:Ljava/lang/Object;

    check-cast p0, Ljg/v$b;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Ljg/v$b;

    invoke-direct {p2, p1}, Ljg/v$b;-><init>(LMf/p;)V

    :try_start_1
    iput-object p2, v0, Ljg/v$a;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/v$a;->d:I

    invoke-interface {p0, p2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :catch_1
    move-exception p1

    move-object p0, p2

    :goto_1
    invoke-static {p1, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :cond_3
    :goto_2
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final c(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljg/v$b;

    invoke-direct {v0, p1}, Ljg/v$b;-><init>(LMf/p;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, v0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0, v0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final d(Ljg/i;I)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;I)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-ltz p1, :cond_0

    new-instance v0, Ljg/v$c;

    invoke-direct {v0, p0, p1}, Ljg/v$c;-><init>(Ljg/i;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drop count should be non-negative, but had "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final e(Ljg/i;LMf/p;)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/v$e;

    invoke-direct {v0, p0, p1}, Ljg/v$e;-><init>(Ljg/i;LMf/p;)V

    return-object v0
.end method

.method public static final f(Ljg/j;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/j<",
            "-TT;>;TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ljg/v$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/v$g;

    iget v1, v0, Ljg/v$g;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/v$g;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/v$g;

    invoke-direct {v0, p2}, Ljg/v$g;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/v$g;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/v$g;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, v0, Ljg/v$g;->b:Ljava/lang/Object;

    check-cast p0, Ljg/j;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, Ljg/v$g;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/v$g;->d:I

    invoke-interface {p0, p1, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Ljg/j;)V

    throw p1
.end method

.method public static final g(Ljg/i;I)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;I)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    new-instance v0, Ljg/v$h;

    invoke-direct {v0, p0, p1}, Ljg/v$h;-><init>(Ljg/i;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final h(Ljg/i;LMf/p;)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/v$j;

    invoke-direct {v0, p0, p1}, Ljg/v$j;-><init>(Ljg/i;LMf/p;)V

    return-object v0
.end method

.method public static final i(Ljg/i;LMf/q;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/q;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT;-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/v$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljg/v$l;-><init>(Ljg/i;LMf/q;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method
