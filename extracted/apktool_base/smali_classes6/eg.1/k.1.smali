.class public final synthetic Leg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n95#2,5:274\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n166#1:274,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n95#2,5:274\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n166#1:274,5\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public static final a(Leg/S;Lyf/j;Leg/U;LMf/p;)Leg/Z;
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "Leg/U;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/L;->d(Leg/S;Lyf/j;)Lyf/j;

    move-result-object p0

    invoke-virtual {p2}, Leg/U;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Leg/T0;

    invoke-direct {p1, p0, p3}, Leg/T0;-><init>(Lyf/j;LMf/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Leg/a0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Leg/a0;-><init>(Lyf/j;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Leg/a;->B1(Leg/U;Ljava/lang/Object;LMf/p;)V

    return-object p1
.end method

.method public static synthetic b(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/Z;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Leg/U;->DEFAULT:Leg/U;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Leg/i;->a(Leg/S;Lyf/j;Leg/U;LMf/p;)Leg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Leg/M;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # Leg/M;
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
            "Leg/M;",
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

    invoke-static {p0, p1, p2}, Leg/i;->h(Lyf/j;LMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Leg/M;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/M;",
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

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p0, p1, p2}, Leg/i;->h(Lyf/j;LMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final e(Leg/S;Lyf/j;Leg/U;LMf/p;)Leg/K0;
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
            "Lyf/j;",
            "Leg/U;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Leg/K0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/L;->d(Leg/S;Lyf/j;)Lyf/j;

    move-result-object p0

    invoke-virtual {p2}, Leg/U;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Leg/U0;

    invoke-direct {p1, p0, p3}, Leg/U0;-><init>(Lyf/j;LMf/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Leg/h1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Leg/h1;-><init>(Lyf/j;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Leg/a;->B1(Leg/U;Ljava/lang/Object;LMf/p;)V

    return-object p1
.end method

.method public static synthetic f(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Leg/U;->DEFAULT:Leg/U;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Leg/i;->d(Leg/S;Lyf/j;Leg/U;LMf/p;)Leg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lyf/j;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lyf/j;
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
            "Lyf/j;",
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

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0, p0}, Leg/L;->e(Lyf/j;Lyf/j;)Lyf/j;

    move-result-object p0

    invoke-static {p0}, Leg/N0;->A(Lyf/j;)V

    if-ne p0, v0, :cond_0

    new-instance v0, Lmg/O;

    invoke-direct {v0, p0, p2}, Lmg/O;-><init>(Lyf/j;Lyf/f;)V

    invoke-static {v0, v0, p1}, Lng/b;->e(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {p0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v2

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Leg/w1;

    invoke-direct {v0, p0, p2}, Leg/w1;-><init>(Lyf/j;Lyf/f;)V

    invoke-virtual {v0}, Leg/a;->getContext()Lyf/j;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Lng/b;->e(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Leg/f0;

    invoke-direct {v0, p0, p2}, Leg/f0;-><init>(Lyf/j;Lyf/f;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lng/a;->f(LMf/p;Ljava/lang/Object;Lyf/f;LMf/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, Leg/f0;->C1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_2
    return-object p0
.end method
