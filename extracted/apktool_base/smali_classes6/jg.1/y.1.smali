.class public final synthetic Ljg/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/y$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/y$d;

    iget v1, v0, Ljg/y$d;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$d;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$d;

    invoke-direct {v0, p2}, Ljg/y$d;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/y$d;->e:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$d;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$d;->d:Ljava/lang/Object;

    check-cast p0, Ljg/y$b;

    iget-object p1, v0, Ljg/y$d;->c:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    iget-object v0, v0, Ljg/y$d;->b:Ljava/lang/Object;

    check-cast v0, LMf/p;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$b;

    invoke-direct {v2, p1, p2}, Ljg/y$b;-><init>(LMf/p;Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, Ljg/y$d;->b:Ljava/lang/Object;

    iput-object p2, v0, Ljg/y$d;->c:Ljava/lang/Object;

    iput-object v2, v0, Ljg/y$d;->d:Ljava/lang/Object;

    iput v3, v0, Ljg/y$d;->f:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    invoke-static {p2, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected at least one element matching the predicate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$c;

    iget v1, v0, Ljg/y$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$c;

    invoke-direct {v0, p1}, Ljg/y$c;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$c;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$c;->c:Ljava/lang/Object;

    check-cast p0, Ljg/y$a;

    iget-object v0, v0, Ljg/y$c;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
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
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$a;

    invoke-direct {v2, p1}, Ljg/y$a;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, Ljg/y$c;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/y$c;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/y$c;->e:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/y$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/y$h;

    iget v1, v0, Ljg/y$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$h;

    invoke-direct {v0, p2}, Ljg/y$h;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/y$h;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$h;->c:Ljava/lang/Object;

    check-cast p0, Ljg/y$f;

    iget-object p1, v0, Ljg/y$h;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, Ljg/y$f;

    invoke-direct {v2, p1, p2}, Ljg/y$f;-><init>(LMf/p;Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p2, v0, Ljg/y$h;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/y$h;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/y$h;->e:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    invoke-static {p2, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final d(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$g;

    iget v1, v0, Ljg/y$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$g;

    invoke-direct {v0, p1}, Ljg/y$g;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$g;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$g;->c:Ljava/lang/Object;

    check-cast p0, Ljg/y$e;

    iget-object v0, v0, Ljg/y$g;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
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
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, Ljg/y$e;

    invoke-direct {v2, p1}, Ljg/y$e;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, Ljg/y$g;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/y$g;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/y$g;->e:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final e(Ljg/i;Ljava/lang/Object;LMf/q;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/q;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;TR;",
            "LMf/q<",
            "-TR;-TT;-",
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

    instance-of v0, p3, Ljg/y$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljg/y$i;

    iget v1, v0, Ljg/y$i;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$i;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$i;

    invoke-direct {v0, p3}, Ljg/y$i;-><init>(Lyf/f;)V

    :goto_0
    iget-object p3, v0, Ljg/y$i;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$i;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$i;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p3, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p3}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, p3, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance p1, Ljg/y$j;

    invoke-direct {p1, p3, p2}, Ljg/y$j;-><init>(Lkotlin/jvm/internal/m0$h;LMf/q;)V

    iput-object p3, v0, Ljg/y$i;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$i;->d:I

    invoke-interface {p0, p1, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p3

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final f(Ljg/i;Ljava/lang/Object;LMf/q;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;TR;",
            "LMf/q<",
            "-TR;-TT;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance p1, Ljg/y$j;

    invoke-direct {p1, v0, p2}, Ljg/y$j;-><init>(Lkotlin/jvm/internal/m0$h;LMf/q;)V

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p1, p3}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final g(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$k;

    iget v1, v0, Ljg/y$k;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$k;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$k;

    invoke-direct {v0, p1}, Ljg/y$k;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$k;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$k;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$k;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$l;

    invoke-direct {v2, p1}, Ljg/y$l;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, Ljg/y$k;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$k;->d:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$m;

    iget v1, v0, Ljg/y$m;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$m;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$m;

    invoke-direct {v0, p1}, Ljg/y$m;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$m;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$m;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$m;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, Ljg/y$n;

    invoke-direct {v2, p1}, Ljg/y$n;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, Ljg/y$m;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$m;->d:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final i(Ljg/i;LMf/q;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;>(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-TS;-TT;-",
            "Lyf/f<",
            "-TS;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/y$o;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/y$o;

    iget v1, v0, Ljg/y$o;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$o;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$o;

    invoke-direct {v0, p2}, Ljg/y$o;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/y$o;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$o;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$o;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$p;

    invoke-direct {v2, p2, p1}, Ljg/y$p;-><init>(Lkotlin/jvm/internal/m0$h;LMf/q;)V

    iput-object p2, v0, Ljg/y$o;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$o;->d:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Empty flow can\'t be reduced"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$q;

    iget v1, v0, Ljg/y$q;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$q;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$q;

    invoke-direct {v0, p1}, Ljg/y$q;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$q;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$q;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$q;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$r;

    invoke-direct {v2, p1}, Ljg/y$r;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, Ljg/y$q;->b:Ljava/lang/Object;

    iput v3, v0, Ljg/y$q;->d:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Flow is empty"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/y$t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/y$t;

    iget v1, v0, Ljg/y$t;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/y$t;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/y$t;

    invoke-direct {v0, p1}, Ljg/y$t;-><init>(Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/y$t;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/y$t;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljg/y$t;->c:Ljava/lang/Object;

    check-cast p0, Ljg/y$s;

    iget-object v0, v0, Ljg/y$t;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
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
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, Lkg/s;->a:Lmg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, Ljg/y$s;

    invoke-direct {v2, p1}, Ljg/y$s;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, Ljg/y$t;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/y$t;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/y$t;->e:I

    invoke-interface {p0, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lkg/s;->a:Lmg/T;

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    :cond_4
    return-object p0
.end method
