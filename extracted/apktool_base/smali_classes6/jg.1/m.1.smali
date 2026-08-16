.class public final synthetic Ljg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Ljg/j;Lgg/D;ZLyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljg/m;->e(Ljg/j;Lgg/D;ZLyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lgg/d;)Ljg/i;
    .locals 1
    .param p0    # Lgg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgg/d<",
            "TT;>;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "\'BroadcastChannel\' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/m$a;

    invoke-direct {v0, p0}, Ljg/m$a;-><init>(Lgg/d;)V

    return-object v0
.end method

.method public static final c(Lgg/D;)Ljg/i;
    .locals 9
    .param p0    # Lgg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgg/D<",
            "+TT;>;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Ljg/e;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljg/e;-><init>(Lgg/D;ZLyf/j;ILgg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method

.method public static final d(Ljg/j;Lgg/D;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lgg/D;
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
            "Lgg/D<",
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

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Ljg/m;->e(Ljg/j;Lgg/D;ZLyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final e(Ljg/j;Lgg/D;ZLyf/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/j<",
            "-TT;>;",
            "Lgg/D<",
            "+TT;>;Z",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ljg/m$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljg/m$b;

    iget v1, v0, Ljg/m$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/m$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/m$b;

    invoke-direct {v0, p3}, Ljg/m$b;-><init>(Lyf/f;)V

    :goto_0
    iget-object p3, v0, Ljg/m$b;->f:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/m$b;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, Ljg/m$b;->e:Z

    iget-object p0, v0, Ljg/m$b;->d:Ljava/lang/Object;

    check-cast p0, Lgg/n;

    iget-object p1, v0, Ljg/m$b;->c:Ljava/lang/Object;

    check-cast p1, Lgg/D;

    iget-object v2, v0, Ljg/m$b;->b:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    :try_start_0
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Ljg/m$b;->e:Z

    iget-object p0, v0, Ljg/m$b;->d:Ljava/lang/Object;

    check-cast p0, Lgg/n;

    iget-object p1, v0, Ljg/m$b;->c:Ljava/lang/Object;

    check-cast p1, Lgg/D;

    iget-object v2, v0, Ljg/m$b;->b:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    :try_start_1
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    invoke-static {p0}, Ljg/k;->o0(Ljg/j;)V

    :try_start_2
    invoke-interface {p1}, Lgg/D;->iterator()Lgg/n;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Ljg/m$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Ljg/m$b;->c:Ljava/lang/Object;

    iput-object p3, v0, Ljg/m$b;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Ljg/m$b;->e:Z

    iput v4, v0, Ljg/m$b;->g:I

    invoke-interface {p3, v0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v5

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, Ljg/m$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Ljg/m$b;->c:Ljava/lang/Object;

    iput-object p0, v0, Ljg/m$b;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Ljg/m$b;->e:Z

    iput v3, v0, Ljg/m$b;->g:I

    invoke-interface {v2, p3, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lgg/r;->b(Lgg/D;Ljava/lang/Throwable;)V

    :cond_7
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_8

    invoke-static {p1, p0}, Lgg/r;->b(Lgg/D;Ljava/lang/Throwable;)V

    :cond_8
    throw p3
.end method

.method public static final f(Ljg/i;Leg/S;)Lgg/D;
    .locals 0
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
            "Lgg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkg/e;->b(Ljg/i;)Lkg/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkg/d;->l(Leg/S;)Lgg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lgg/D;)Ljg/i;
    .locals 9
    .param p0    # Lgg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgg/D<",
            "+TT;>;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Ljg/e;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljg/e;-><init>(Lgg/D;ZLyf/j;ILgg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method
