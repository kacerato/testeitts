.class public final synthetic Ljg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljg/D;)Ljg/I;
    .locals 2
    .param p0    # Ljg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/D<",
            "TT;>;)",
            "Ljg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljg/F;-><init>(Ljg/I;Leg/K0;)V

    return-object v0
.end method

.method public static final b(Ljg/E;)Ljg/U;
    .locals 2
    .param p0    # Ljg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/E<",
            "TT;>;)",
            "Ljg/U<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljg/G;-><init>(Ljg/U;Leg/K0;)V

    return-object v0
.end method

.method public static final c(Ljg/i;I)Ljg/N;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;I)",
            "Ljg/N<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lgg/l;->z4:Lgg/l$b;

    invoke-virtual {v0}, Lgg/l$b;->a()I

    move-result v0

    invoke-static {p1, v0}, LVf/u;->w(II)I

    move-result v0

    sub-int/2addr v0, p1

    instance-of v1, p0, Lkg/d;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lkg/d;

    invoke-virtual {v1}, Lkg/d;->i()Ljg/i;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, Ljg/N;

    iget v3, v1, Lkg/d;->c:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lkg/d;->d:Lgg/i;

    sget-object v5, Lgg/i;->SUSPEND:Lgg/i;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_3

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_3
    :goto_0
    iget-object p1, v1, Lkg/d;->d:Lgg/i;

    iget-object v1, v1, Lkg/d;->b:Lyf/j;

    invoke-direct {p0, v2, v0, p1, v1}, Ljg/N;-><init>(Ljg/i;ILgg/i;Lyf/j;)V

    return-object p0

    :cond_4
    new-instance p1, Ljg/N;

    sget-object v1, Lgg/i;->SUSPEND:Lgg/i;

    sget-object v2, Lyf/l;->b:Lyf/l;

    invoke-direct {p1, p0, v0, v1, v2}, Ljg/N;-><init>(Ljg/i;ILgg/i;Lyf/j;)V

    return-object p1
.end method

.method public static final d(Leg/S;Lyf/j;Ljg/i;Ljg/D;Ljg/O;Ljava/lang/Object;)Leg/K0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "Ljg/i<",
            "+TT;>;",
            "Ljg/D<",
            "TT;>;",
            "Ljg/O;",
            "TT;)",
            "Leg/K0;"
        }
    .end annotation

    sget-object v0, Ljg/O;->a:Ljg/O$a;

    invoke-virtual {v0}, Ljg/O$a;->c()Ljg/O;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leg/U;->DEFAULT:Leg/U;

    goto :goto_0

    :cond_0
    sget-object v0, Leg/U;->UNDISPATCHED:Leg/U;

    :goto_0
    new-instance v7, Ljg/z$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Ljg/z$a;-><init>(Ljg/O;Ljg/i;Ljg/D;Ljava/lang/Object;Lyf/f;)V

    invoke-static {p0, p1, v0, v7}, Leg/i;->d(Leg/S;Lyf/j;Leg/U;LMf/p;)Leg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Leg/S;Lyf/j;Ljg/i;Leg/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "Ljg/i<",
            "+TT;>;",
            "Leg/y<",
            "Ljg/U<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v3, Ljg/z$b;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p3, v0}, Ljg/z$b;-><init>(Ljg/i;Leg/y;Lyf/f;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    return-void
.end method

.method public static final f(Ljg/I;LMf/p;)Ljg/I;
    .locals 1
    .param p0    # Ljg/I;
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
            "Ljg/I<",
            "+TT;>;",
            "LMf/p<",
            "-",
            "Ljg/j<",
            "-TT;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/Z;

    invoke-direct {v0, p0, p1}, Ljg/Z;-><init>(Ljg/I;LMf/p;)V

    return-object v0
.end method

.method public static final g(Ljg/i;Leg/S;Ljg/O;I)Ljg/I;
    .locals 8
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/O;
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
            "Leg/S;",
            "Ljg/O;",
            "I)",
            "Ljg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p3}, Ljg/z;->c(Ljg/i;I)Ljg/N;

    move-result-object p0

    iget v0, p0, Ljg/N;->b:I

    iget-object v1, p0, Ljg/N;->c:Lgg/i;

    invoke-static {p3, v0, v1}, Ljg/K;->a(IILgg/i;)Ljg/D;

    move-result-object p3

    iget-object v3, p0, Ljg/N;->d:Lyf/j;

    iget-object v4, p0, Ljg/N;->a:Ljg/i;

    sget-object v7, Ljg/K;->a:Lmg/T;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Ljg/z;->d(Leg/S;Lyf/j;Ljg/i;Ljg/D;Ljg/O;Ljava/lang/Object;)Leg/K0;

    move-result-object p0

    new-instance p1, Ljg/F;

    invoke-direct {p1, p3, p0}, Ljg/F;-><init>(Ljg/I;Leg/K0;)V

    return-object p1
.end method

.method public static synthetic h(Ljg/i;Leg/S;Ljg/O;IILjava/lang/Object;)Ljg/I;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljg/k;->G1(Ljg/i;Leg/S;Ljg/O;I)Ljg/I;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljg/i;Leg/S;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/S;
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
            "Leg/S;",
            "Lyf/f<",
            "-",
            "Ljg/U<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljg/z;->c(Ljg/i;I)Ljg/N;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Leg/A;->c(Leg/K0;ILjava/lang/Object;)Leg/y;

    move-result-object v0

    iget-object v1, p0, Ljg/N;->d:Lyf/j;

    iget-object p0, p0, Ljg/N;->a:Ljg/i;

    invoke-static {p1, v1, p0, v0}, Ljg/z;->e(Leg/S;Lyf/j;Ljg/i;Leg/y;)V

    invoke-interface {v0, p2}, Leg/Z;->Z(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljg/i;Leg/S;Ljg/O;Ljava/lang/Object;)Ljg/U;
    .locals 7
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/O;
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
            "Leg/S;",
            "Ljg/O;",
            "TT;)",
            "Ljg/U<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljg/z;->c(Ljg/i;I)Ljg/N;

    move-result-object p0

    invoke-static {p3}, Ljg/W;->a(Ljava/lang/Object;)Ljg/E;

    move-result-object v6

    iget-object v1, p0, Ljg/N;->d:Lyf/j;

    iget-object v2, p0, Ljg/N;->a:Ljg/i;

    move-object v0, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljg/z;->d(Leg/S;Lyf/j;Ljg/i;Ljg/D;Ljg/O;Ljava/lang/Object;)Leg/K0;

    move-result-object p0

    new-instance p1, Ljg/G;

    invoke-direct {p1, v6, p0}, Ljg/G;-><init>(Ljg/U;Leg/K0;)V

    return-object p1
.end method
