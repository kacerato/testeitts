.class public LAf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyf/f;LMf/l;)Lyf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Lyf/l;->b:Lyf/l;

    if-ne v0, v1, :cond_0

    new-instance v0, LAf/c$a;

    invoke-direct {v0, p0, p1}, LAf/c$a;-><init>(Lyf/f;LMf/l;)V

    goto :goto_0

    :cond_0
    new-instance v1, LAf/c$b;

    invoke-direct {v1, p0, v0, p1}, LAf/c$b;-><init>(Lyf/f;Lyf/j;LMf/l;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static b(LMf/l;Lyf/f;)Lyf/f;
    .locals 2
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

    invoke-static {p1}, LBf/h;->a(Lyf/f;)Lyf/f;

    move-result-object p1

    instance-of v0, p0, LBf/a;

    if-eqz v0, :cond_0

    check-cast p0, LBf/a;

    invoke-virtual {p0, p1}, LBf/a;->create(Lyf/f;)Lyf/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Lyf/l;->b:Lyf/l;

    if-ne v0, v1, :cond_1

    new-instance v0, LAf/c$c;

    invoke-direct {v0, p1, p0}, LAf/c$c;-><init>(Lyf/f;LMf/l;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, LAf/c$d;

    invoke-direct {v1, p1, v0, p0}, LAf/c$d;-><init>(Lyf/f;Lyf/j;LMf/l;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 2
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

    invoke-static {p2}, LBf/h;->a(Lyf/f;)Lyf/f;

    move-result-object p2

    instance-of v0, p0, LBf/a;

    if-eqz v0, :cond_0

    check-cast p0, LBf/a;

    invoke-virtual {p0, p1, p2}, LBf/a;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Lyf/l;->b:Lyf/l;

    if-ne v0, v1, :cond_1

    new-instance v0, LAf/c$e;

    invoke-direct {v0, p2, p0, p1}, LAf/c$e;-><init>(Lyf/f;LMf/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, LAf/c$f;

    invoke-direct {v1, p2, v0, p0, p1}, LAf/c$f;-><init>(Lyf/f;Lyf/j;LMf/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final d(Lyf/f;)Lyf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Lyf/l;->b:Lyf/l;

    if-ne v0, v1, :cond_0

    new-instance v0, LAf/c$g;

    invoke-direct {v0, p0}, LAf/c$g;-><init>(Lyf/f;)V

    goto :goto_0

    :cond_0
    new-instance v1, LAf/c$h;

    invoke-direct {v1, p0, v0}, LAf/c$h;-><init>(Lyf/f;Lyf/j;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static e(Lyf/f;)Lyf/f;
    .locals 1
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/f<",
            "-TT;>;)",
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LBf/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LBf/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LBf/d;->intercepted()Lyf/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final f(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 1
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
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LBf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, LAf/c;->i(LMf/l;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/l;

    invoke-interface {p0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final g(LMf/p;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LEf/f;
    .end annotation

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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LBf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, LAf/c;->j(LMf/p;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/p;

    invoke-interface {p0, p1, p2}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final h(LMf/q;Ljava/lang/Object;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/q<",
            "-TR;-TP;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;TP;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LBf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, LAf/c;->k(LMf/q;Ljava/lang/Object;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/q;

    invoke-interface {p0, p1, p2, p3}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final i(LMf/l;Lyf/f;)Ljava/lang/Object;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LBf/h;->a(Lyf/f;)Lyf/f;

    move-result-object p1

    invoke-static {p1}, LAf/c;->d(Lyf/f;)Lyf/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/l;

    invoke-interface {p0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(LMf/p;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LBf/h;->a(Lyf/f;)Lyf/f;

    move-result-object p2

    invoke-static {p2}, LAf/c;->d(Lyf/f;)Lyf/f;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/p;

    invoke-interface {p0, p1, p2}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(LMf/q;Ljava/lang/Object;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/q<",
            "-TR;-TP;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;TP;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LBf/h;->a(Lyf/f;)Lyf/f;

    move-result-object p3

    invoke-static {p3}, LAf/c;->d(Lyf/f;)Lyf/f;

    move-result-object p3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/q;

    invoke-interface {p0, p1, p2, p3}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
