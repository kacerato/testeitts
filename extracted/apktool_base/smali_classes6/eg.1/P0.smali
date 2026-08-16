.class public final synthetic Leg/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final A(Lyf/j;)Z
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Leg/K0;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final B(Ljava/lang/Throwable;Leg/K0;)Ljava/lang/Throwable;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/JobCancellationException;

    const-string v0, "Job was cancelled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Leg/K0;)V

    :cond_0
    return-object p0
.end method

.method public static final a(Leg/K0;)Leg/B;
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/M0;

    invoke-direct {v0, p0}, Leg/M0;-><init>(Leg/K0;)V

    return-object v0
.end method

.method public static final synthetic b(Leg/K0;)Leg/K0;
    .locals 0
    .annotation build LLf/j;
        name = "Job"
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Leg/N0;->a(Leg/K0;)Leg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Leg/K0;ILjava/lang/Object;)Leg/B;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Leg/N0;->a(Leg/K0;)Leg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Leg/K0;ILjava/lang/Object;)Leg/K0;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Leg/N0;->b(Leg/K0;)Leg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Leg/K0;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Leg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-interface {p0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic f(Lyf/j;)V
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Leg/N0;->g(Lyf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(Lyf/j;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final synthetic h(Lyf/j;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    instance-of v0, p0, Leg/R0;

    if-eqz v0, :cond_0

    check-cast p0, Leg/R0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1, p0}, Leg/P0;->B(Ljava/lang/Throwable;Leg/K0;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Leg/R0;->l0(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic i(Leg/K0;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Leg/N0;->e(Leg/K0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic j(Lyf/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->g(Lyf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic k(Lyf/j;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->h(Lyf/j;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final l(Leg/K0;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Leg/K0;
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
            "Leg/K0;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Leg/K0$a;->b(Leg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Leg/K0;->c0(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final synthetic m(Leg/K0;)V
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Leg/N0;->o(Leg/K0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic n(Leg/K0;Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-interface {p0}, Leg/K0;->getChildren()LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leg/K0;

    instance-of v2, v1, Leg/R0;

    if-eqz v2, :cond_1

    check-cast v1, Leg/R0;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p1, p0}, Leg/P0;->B(Ljava/lang/Throwable;Leg/K0;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Leg/R0;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final o(Leg/K0;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-interface {p0}, Leg/K0;->getChildren()LXf/m;

    move-result-object p0

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg/K0;

    invoke-interface {v0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic p(Lyf/j;)V
    .locals 1
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Leg/N0;->r(Lyf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic q(Lyf/j;Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Leg/K0;->getChildren()LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leg/K0;

    instance-of v2, v1, Leg/R0;

    if-eqz v2, :cond_2

    check-cast v1, Leg/R0;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Leg/P0;->B(Ljava/lang/Throwable;Leg/K0;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Leg/R0;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final r(Lyf/j;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Leg/K0;->getChildren()LXf/m;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg/K0;

    invoke-interface {v0, p1}, Leg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic s(Leg/K0;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->n(Leg/K0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic t(Leg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->o(Leg/K0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic u(Lyf/j;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->q(Lyf/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic v(Lyf/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Leg/N0;->r(Lyf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final w(Leg/K0;Leg/m0;)Leg/m0;
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/o0;

    invoke-direct {v0, p1}, Leg/o0;-><init>(Leg/m0;)V

    invoke-interface {p0, v0}, Leg/K0;->w(LMf/l;)Leg/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Leg/K0;)V
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Leg/K0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Leg/K0;->Q()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final y(Lyf/j;)V
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    check-cast p0, Leg/K0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Leg/N0;->z(Leg/K0;)V

    :cond_0
    return-void
.end method

.method public static final z(Lyf/j;)Leg/K0;
    .locals 3
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/K0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
