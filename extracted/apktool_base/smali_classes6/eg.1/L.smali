.class public final Leg/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = " @"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Lyf/j;Lyf/j;Z)Lyf/j;
    .locals 3

    invoke-static {p0}, Leg/L;->c(Lyf/j;)Z

    move-result v0

    invoke-static {p1}, Leg/L;->c(Lyf/j;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, Lyf/l;->b:Lyf/l;

    new-instance v2, Leg/L$b;

    invoke-direct {v2, v0, p2}, Leg/L$b;-><init>(Lkotlin/jvm/internal/m0$h;Z)V

    invoke-interface {p0, p1, v2}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyf/j;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, Lyf/j;

    sget-object v1, Leg/L$a;->b:Leg/L$a;

    invoke-interface {p2, p1, v1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p1, Lyf/j;

    invoke-interface {p0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lyf/j;)Ljava/lang/String;
    .locals 0
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Lyf/j;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Leg/L$c;->b:Leg/L$c;

    invoke-interface {p0, v0, v1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Leg/S;Lyf/j;)Lyf/j;
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Leg/L;->a(Lyf/j;Lyf/j;Z)Lyf/j;

    move-result-object p0

    invoke-static {}, Leg/j0;->a()Leg/M;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {p0, p1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Leg/j0;->a()Leg/M;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Lyf/j;Lyf/j;)Lyf/j;
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Leg/L;->c(Lyf/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leg/L;->a(Lyf/j;Lyf/j;Z)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final f(LBf/e;)Leg/w1;
    .locals 2
    .param p0    # LBf/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBf/e;",
            ")",
            "Leg/w1<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :cond_0
    instance-of v0, p0, Leg/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, LBf/e;->getCallerFrame()LBf/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Leg/w1;

    if-eqz v0, :cond_0

    check-cast p0, Leg/w1;

    return-object p0
.end method

.method public static final g(Lyf/f;Lyf/j;Ljava/lang/Object;)Leg/w1;
    .locals 2
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;",
            "Lyf/j;",
            "Ljava/lang/Object;",
            ")",
            "Leg/w1<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, LBf/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Leg/x1;->b:Leg/x1;

    invoke-interface {p1, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, LBf/e;

    invoke-static {p0}, Leg/L;->f(LBf/e;)Leg/w1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Leg/w1;->D1(Lyf/j;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final h(Lyf/f;Ljava/lang/Object;LMf/a;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "*>;",
            "Ljava/lang/Object;",
            "LMf/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0, p1}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lmg/Z;->a:Lmg/T;

    if-eq p1, v1, :cond_0

    invoke-static {p0, v0, p1}, Leg/L;->g(Lyf/f;Lyf/j;Ljava/lang/Object;)Leg/w1;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Leg/w1;->C1()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {v0, p1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Leg/w1;->C1()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {v0, p1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method

.method public static final i(Lyf/j;Ljava/lang/Object;LMf/a;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/j;",
            "Ljava/lang/Object;",
            "LMf/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method
