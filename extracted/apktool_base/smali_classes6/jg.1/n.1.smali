.class public final synthetic Ljg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
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
            "Lnf/P0;",
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

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Backwards compatibility with JS and K/N"
    .end annotation

    new-instance v0, Ljg/n$a;

    invoke-direct {v0, p1}, Ljg/n$a;-><init>(LMf/p;)V

    invoke-interface {p0, v0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final b(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 1
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
            "(",
            "Ljg/i<",
            "*>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lkg/r;->b:Lkg/r;

    invoke-interface {p0, v0, p1}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final synthetic c(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
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
            "Lnf/P0;",
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

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Backwards compatibility with JS and K/N"
    .end annotation

    new-instance v0, Ljg/n$a;

    invoke-direct {v0, p1}, Ljg/n$a;-><init>(LMf/p;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, v0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final d(Ljg/i;LMf/q;Lyf/f;)Ljava/lang/Object;
    .locals 1
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
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

    new-instance v0, Ljg/n$b;

    invoke-direct {v0, p1}, Ljg/n$b;-><init>(LMf/q;)V

    invoke-interface {p0, v0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final e(Ljg/i;LMf/q;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
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

    new-instance v0, Ljg/n$b;

    invoke-direct {v0, p1}, Ljg/n$b;-><init>(LMf/q;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, v0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final f(Ljg/i;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
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
            "Lnf/P0;",
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

    invoke-static {p0, p1}, Ljg/k;->X0(Ljg/i;LMf/p;)Ljg/i;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, p1}, Ljg/k;->q(Ljg/i;ILgg/i;ILjava/lang/Object;)Ljg/i;

    move-result-object p0

    invoke-static {p0, p2}, Ljg/k;->y(Ljg/i;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final g(Ljg/j;Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
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
            "Ljg/j<",
            "-TT;>;",
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Ljg/k;->o0(Ljg/j;)V

    invoke-interface {p1, p0, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final h(Ljg/i;Leg/S;)Leg/K0;
    .locals 6
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/S;
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
            ")",
            "Leg/K0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v3, Ljg/n$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Ljg/n$c;-><init>(Ljg/i;Lyf/f;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    move-result-object p0

    return-object p0
.end method
