.class public final Lsg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Leg/y;Lv1/k;)V
    .locals 0

    invoke-static {p0, p1}, Lsg/c;->f(Leg/y;Lv1/k;)V

    return-void
.end method

.method public static final synthetic b(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lsg/c;->j(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lv1/k;)Leg/Z;
    .locals 1
    .param p0    # Lv1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TT;>;)",
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsg/c;->e(Lv1/k;Lv1/b;)Leg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lv1/k;Lv1/b;)Leg/Z;
    .locals 0
    .param p0    # Lv1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lv1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TT;>;",
            "Lv1/b;",
            ")",
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lsg/c;->e(Lv1/k;Lv1/b;)Leg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lv1/k;Lv1/b;)Leg/Z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TT;>;",
            "Lv1/b;",
            ")",
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Leg/A;->c(Leg/K0;ILjava/lang/Object;)Leg/y;

    move-result-object v2

    invoke-virtual {p0}, Lv1/k;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lv1/k;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0, v1, v0}, Leg/K0$a;->b(Leg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Leg/y;->n(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Leg/y;->c(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lsg/a;->b:Lsg/a;

    new-instance v1, Lsg/b;

    invoke-direct {v1, v2}, Lsg/b;-><init>(Leg/y;)V

    invoke-virtual {p0, v0, v1}, Lv1/k;->e(Ljava/util/concurrent/Executor;Lv1/e;)Lv1/k;

    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, Lsg/c$a;

    invoke-direct {p0, p1}, Lsg/c$a;-><init>(Lv1/b;)V

    invoke-interface {v2, p0}, Leg/K0;->w(LMf/l;)Leg/m0;

    :cond_3
    new-instance p0, Lsg/c$b;

    invoke-direct {p0, v2}, Lsg/c$b;-><init>(Leg/y;)V

    return-object p0
.end method

.method public static final f(Leg/y;Lv1/k;)V
    .locals 1

    invoke-virtual {p1}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lv1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Leg/K0$a;->b(Leg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Leg/y;->n(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Leg/y;->c(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public static final g(Leg/Z;)Lv1/k;
    .locals 3
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/Z<",
            "+TT;>;)",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lv1/b;

    invoke-direct {v0}, Lv1/b;-><init>()V

    new-instance v1, Lv1/l;

    invoke-virtual {v0}, Lv1/b;->b()Lv1/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lv1/l;-><init>(Lv1/a;)V

    new-instance v2, Lsg/c$c;

    invoke-direct {v2, v0, p0, v1}, Lsg/c$c;-><init>(Lv1/b;Leg/Z;Lv1/l;)V

    invoke-interface {p0, v2}, Leg/K0;->w(LMf/l;)Leg/m0;

    invoke-virtual {v1}, Lv1/l;->a()Lv1/k;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lv1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lv1/b;
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
            "Lv1/k<",
            "TT;>;",
            "Lv1/b;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lsg/c;->j(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lv1/k;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lv1/k;
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
            "Lv1/k<",
            "TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lsg/c;->j(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lv1/k;Lv1/b;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/k<",
            "TT;>;",
            "Lv1/b;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lv1/k;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lv1/k;->t()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled normally."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw p1

    :cond_2
    new-instance v0, Leg/q;

    invoke-static {p2}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    sget-object v1, Lsg/a;->b:Lsg/a;

    new-instance v2, Lsg/c$d;

    invoke-direct {v2, v0}, Lsg/c$d;-><init>(Leg/p;)V

    invoke-virtual {p0, v1, v2}, Lv1/k;->e(Ljava/util/concurrent/Executor;Lv1/e;)Lv1/k;

    if-eqz p1, :cond_3

    new-instance p0, Lsg/c$e;

    invoke-direct {p0, p1}, Lsg/c$e;-><init>(Lv1/b;)V

    invoke-interface {v0, p0}, Leg/p;->K(LMf/l;)V

    :cond_3
    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_4
    return-object p0
.end method
