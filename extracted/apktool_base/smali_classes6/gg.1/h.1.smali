.class public final Lgg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,202:1\n48#2,4:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n51#1:203,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,202:1\n48#2,4:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n51#1:203,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/d;
    .locals 1
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
            "Lgg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Leg/a1;
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/L;->d(Leg/S;Lyf/j;)Lyf/j;

    move-result-object p0

    invoke-static {p2}, Lgg/f;->a(I)Lgg/d;

    move-result-object p1

    invoke-virtual {p3}, Leg/U;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lgg/y;

    invoke-direct {p2, p0, p1, p5}, Lgg/y;-><init>(Lyf/j;Lgg/d;LMf/p;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lgg/g;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lgg/g;-><init>(Lyf/j;Lgg/d;Z)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2, p4}, Leg/R0;->w(LMf/l;)Leg/m0;

    :cond_1
    invoke-virtual {p2, p3, p2, p5}, Leg/a;->B1(Leg/U;Ljava/lang/Object;LMf/p;)V

    return-object p2
.end method

.method public static final b(Lgg/D;ILeg/U;)Lgg/d;
    .locals 11
    .param p0    # Lgg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lgg/D<",
            "+TE;>;I",
            "Leg/U;",
            ")",
            "Lgg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Leg/a1;
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/B0;->b:Leg/B0;

    invoke-static {}, Leg/j0;->g()Leg/M;

    move-result-object v1

    invoke-static {v0, v1}, Leg/T;->m(Leg/S;Lyf/j;)Leg/S;

    move-result-object v0

    sget-object v1, Leg/N;->x4:Leg/N$b;

    new-instance v2, Lgg/h$a;

    invoke-direct {v2, v1}, Lgg/h$a;-><init>(Leg/N$b;)V

    invoke-static {v0, v2}, Leg/T;->m(Leg/S;Lyf/j;)Leg/S;

    move-result-object v3

    new-instance v7, Lgg/h$b;

    invoke-direct {v7, p0}, Lgg/h$b;-><init>(Lgg/D;)V

    new-instance v8, Lgg/h$c;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lgg/h$c;-><init>(Lgg/D;Lyf/f;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Lgg/h;->c(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;ILjava/lang/Object;)Lgg/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;ILjava/lang/Object;)Lgg/d;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Leg/U;->LAZY:Leg/U;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lgg/h;->a(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lgg/D;ILeg/U;ILjava/lang/Object;)Lgg/d;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Leg/U;->LAZY:Leg/U;

    :cond_1
    invoke-static {p0, p1, p2}, Lgg/h;->b(Lgg/D;ILeg/U;)Lgg/d;

    move-result-object p0

    return-object p0
.end method
