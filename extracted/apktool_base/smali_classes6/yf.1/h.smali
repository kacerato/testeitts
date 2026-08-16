.class public final Lyf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyf/j;LMf/l;)Lyf/f;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/j;",
            "LMf/l<",
            "-",
            "Lnf/i0<",
            "+TT;>;",
            "Lnf/P0;",
            ">;)",
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumeWith"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyf/h$a;

    invoke-direct {v0, p0, p1}, Lyf/h$a;-><init>(Lyf/j;LMf/l;)V

    return-object v0
.end method

.method public static final b(LMf/l;Lyf/f;)Lyf/f;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyf/n;

    invoke-static {p0, p1}, LAf/c;->b(LMf/l;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lyf/n;-><init>(Lyf/f;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 1
    .param p0    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-TR;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyf/n;

    invoke-static {p0, p1, p2}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lyf/n;-><init>(Lyf/f;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d()Lyf/j;
    .locals 2

    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "Implemented as intrinsic"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e()V
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    return-void
.end method

.method public static final f(Lyf/f;Ljava/lang/Object;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(Lyf/f;Ljava/lang/Throwable;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(LMf/l;Lyf/f;)V
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LAf/c;->b(LMf/l;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(LMf/p;Ljava/lang/Object;Lyf/f;)V
    .locals 1
    .param p0    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-TR;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    sget-object p2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Lyf/n;

    invoke-static {p1}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lyf/n;-><init>(Lyf/f;)V

    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lyf/n;->a()Ljava/lang/Object;

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
