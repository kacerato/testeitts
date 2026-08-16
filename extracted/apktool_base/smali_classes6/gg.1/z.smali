.class public final Lgg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lgg/B;LMf/a;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lgg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/B<",
            "*>;",
            "LMf/a<",
            "Lnf/P0;",
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

    instance-of v0, p2, Lgg/z$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lgg/z$a;

    iget v1, v0, Lgg/z$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lgg/z$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lgg/z$a;

    invoke-direct {v0, p2}, Lgg/z$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Lgg/z$a;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lgg/z$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lgg/z$a;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, LMf/a;

    iget-object p0, v0, Lgg/z$a;->b:Ljava/lang/Object;

    check-cast p0, Lgg/B;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object p2

    sget-object v2, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p2, v2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p2

    if-ne p2, p0, :cond_5

    :try_start_1
    iput-object p0, v0, Lgg/z$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Lgg/z$a;->c:Ljava/lang/Object;

    iput v3, v0, Lgg/z$a;->e:I

    new-instance p2, Leg/q;

    invoke-static {v0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {p2}, Leg/q;->O()V

    new-instance v2, Lgg/z$c;

    invoke-direct {v2, p2}, Lgg/z$c;-><init>(Leg/p;)V

    invoke-interface {p0, v2}, Lgg/E;->F(LMf/l;)V

    invoke-virtual {p2}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_3

    invoke-static {v0}, LBf/h;->c(Lyf/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0

    :goto_2
    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lgg/B;LMf/a;Lyf/f;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lgg/z$b;->b:Lgg/z$b;

    :cond_0
    invoke-static {p0, p1, p2}, Lgg/z;->a(Lgg/B;LMf/a;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Leg/S;Lyf/j;ILMf/p;)Lgg/D;
    .locals 7
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "I",
            "LMf/p<",
            "-",
            "Lgg/B<",
            "-TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v3, Lgg/i;->SUSPEND:Lgg/i;

    sget-object v4, Leg/U;->DEFAULT:Leg/U;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lgg/z;->e(Leg/S;Lyf/j;ILgg/i;Leg/U;LMf/l;LMf/p;)Lgg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/D;
    .locals 7
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # LMf/p;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "I",
            "Leg/U;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;",
            "LMf/p<",
            "-",
            "Lgg/B<",
            "-TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v3, Lgg/i;->SUSPEND:Lgg/i;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lgg/z;->e(Leg/S;Lyf/j;ILgg/i;Leg/U;LMf/l;LMf/p;)Lgg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Leg/S;Lyf/j;ILgg/i;Leg/U;LMf/l;LMf/p;)Lgg/D;
    .locals 2
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # LMf/p;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            "Leg/U;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;",
            "LMf/p<",
            "-",
            "Lgg/B<",
            "-TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Lgg/o;->d(ILgg/i;LMf/l;ILjava/lang/Object;)Lgg/l;

    move-result-object p2

    invoke-static {p0, p1}, Leg/L;->d(Leg/S;Lyf/j;)Lyf/j;

    move-result-object p0

    new-instance p1, Lgg/A;

    invoke-direct {p1, p0, p2}, Lgg/A;-><init>(Lyf/j;Lgg/l;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Leg/R0;->w(LMf/l;)Leg/m0;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Leg/a;->B1(Leg/U;Ljava/lang/Object;LMf/p;)V

    return-object p1
.end method

.method public static synthetic f(Leg/S;Lyf/j;ILMf/p;ILjava/lang/Object;)Lgg/D;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lgg/z;->c(Leg/S;Lyf/j;ILMf/p;)Lgg/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;ILjava/lang/Object;)Lgg/D;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Leg/U;->DEFAULT:Leg/U;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lgg/z;->d(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Leg/S;Lyf/j;ILgg/i;Leg/U;LMf/l;LMf/p;ILjava/lang/Object;)Lgg/D;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lgg/i;->SUSPEND:Lgg/i;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Leg/U;->DEFAULT:Leg/U;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lgg/z;->e(Leg/S;Lyf/j;ILgg/i;Leg/U;LMf/l;LMf/p;)Lgg/D;

    move-result-object p0

    return-object p0
.end method
