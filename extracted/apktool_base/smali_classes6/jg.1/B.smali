.class public final synthetic Ljg/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,332:1\n272#1,3:334\n272#1,3:337\n261#1:340\n263#1:342\n272#1,3:343\n261#1:346\n263#1:348\n272#1,3:349\n261#1:352\n263#1:354\n272#1,3:355\n107#2:333\n107#2:341\n107#2:347\n107#2:353\n107#2:358\n107#2:359\n107#2:362\n37#3,2:360\n37#3,2:363\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n75#1:334,3\n103#1:337,3\n119#1:340\n119#1:342\n138#1:343,3\n156#1:346\n156#1:348\n177#1:349,3\n197#1:352\n197#1:354\n220#1:355,3\n32#1:333\n119#1:341\n156#1:347\n197#1:353\n237#1:358\n261#1:359\n288#1:362\n287#1:360,2\n306#1:363,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,332:1\n272#1,3:334\n272#1,3:337\n261#1:340\n263#1:342\n272#1,3:343\n261#1:346\n263#1:348\n272#1,3:349\n261#1:352\n263#1:354\n272#1,3:355\n107#2:333\n107#2:341\n107#2:347\n107#2:353\n107#2:358\n107#2:359\n107#2:362\n37#3,2:360\n37#3,2:363\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n75#1:334,3\n103#1:337,3\n119#1:340\n119#1:342\n138#1:343,3\n156#1:346\n156#1:348\n177#1:349,3\n197#1:352\n197#1:354\n220#1:355,3\n32#1:333\n119#1:341\n156#1:347\n197#1:353\n237#1:358\n261#1:359\n288#1:362\n287#1:360,2\n306#1:363,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a()LMf/a;
    .locals 1

    invoke-static {}, Ljg/B;->r()LMf/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Iterable;LMf/p;)Ljg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljg/i<",
            "+TT;>;>;",
            "LMf/p<",
            "-[TT;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0}, Lpf/S;->a6(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljg/i;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$f;

    invoke-direct {v0, p0, p1}, Ljg/B$f;-><init>([Ljg/i;LMf/p;)V

    return-object v0
.end method

.method public static final c(Ljg/i;Ljg/i;LMf/q;)Ljg/i;
    .locals 0
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Ljg/k;->K0(Ljg/i;Ljg/i;LMf/q;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljg/i;Ljg/i;Ljg/i;LMf/r;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/r;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "LMf/r<",
            "-TT1;-TT2;-TT3;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    new-instance p0, Ljg/B$a;

    invoke-direct {p0, v0, p3}, Ljg/B$a;-><init>([Ljg/i;LMf/r;)V

    return-object p0
.end method

.method public static final e(Ljg/i;Ljg/i;Ljg/i;Ljg/i;LMf/s;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "Ljg/i<",
            "+TT4;>;",
            "LMf/s<",
            "-TT1;-TT2;-TT3;-TT4;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    new-instance p0, Ljg/B$b;

    invoke-direct {p0, v0, p4}, Ljg/B$b;-><init>([Ljg/i;LMf/s;)V

    return-object p0
.end method

.method public static final f(Ljg/i;Ljg/i;Ljg/i;Ljg/i;Ljg/i;LMf/t;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LMf/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "Ljg/i<",
            "+TT4;>;",
            "Ljg/i<",
            "+TT5;>;",
            "LMf/t<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    new-instance p0, Ljg/B$c;

    invoke-direct {p0, v0, p5}, Ljg/B$c;-><init>([Ljg/i;LMf/t;)V

    return-object p0
.end method

.method public static final synthetic g([Ljg/i;LMf/p;)Ljg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-[TT;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$e;

    invoke-direct {v0, p0, p1}, Ljg/B$e;-><init>([Ljg/i;LMf/p;)V

    return-object v0
.end method

.method public static final synthetic h(Ljava/lang/Iterable;LMf/q;)Ljg/i;
    .locals 2
    .param p1    # LMf/q;
        .annotation build Lnf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljg/i<",
            "+TT;>;>;",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-[TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0}, Lpf/S;->a6(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljg/i;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljg/B$r;-><init>([Ljg/i;LMf/q;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljg/i;Ljg/i;LMf/r;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/r;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "LMf/r<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT1;-TT2;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Ljg/B$m;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljg/B$m;-><init>([Ljg/i;Lyf/f;LMf/r;)V

    invoke-static {p0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljg/i;Ljg/i;Ljg/i;LMf/s;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/s;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "LMf/s<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    new-instance p0, Ljg/B$n;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p3}, Ljg/B$n;-><init>([Ljg/i;Lyf/f;LMf/s;)V

    invoke-static {p0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Ljg/i;Ljg/i;Ljg/i;Ljg/i;LMf/t;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/t;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "Ljg/i<",
            "+TT4;>;",
            "LMf/t<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-TT4;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    new-instance p0, Ljg/B$o;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p4}, Ljg/B$o;-><init>([Ljg/i;Lyf/f;LMf/t;)V

    invoke-static {p0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Ljg/i;Ljg/i;Ljg/i;Ljg/i;Ljg/i;LMf/u;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LMf/u;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT3;>;",
            "Ljg/i<",
            "+TT4;>;",
            "Ljg/i<",
            "+TT5;>;",
            "LMf/u<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT1;-TT2;-TT3;-TT4;-TT5;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    new-instance p0, Ljg/B$p;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p5}, Ljg/B$p;-><init>([Ljg/i;Lyf/f;LMf/u;)V

    invoke-static {p0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m([Ljg/i;LMf/q;)Ljg/i;
    .locals 2
    .param p1    # LMf/q;
        .annotation build Lnf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-[TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljg/B$q;-><init>([Ljg/i;LMf/q;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n([Ljg/i;LMf/q;)Ljg/i;
    .locals 2
    .param p1    # LMf/q;
        .annotation build Lnf/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljg/i<",
            "+TT;>;",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-[TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljg/B$s;-><init>([Ljg/i;LMf/q;Lyf/f;)V

    invoke-static {v0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o([Ljg/i;LMf/p;)Ljg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-[TT;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v0, Ljg/B$t;

    invoke-direct {v0, p0, p1}, Ljg/B$t;-><init>([Ljg/i;LMf/p;)V

    return-object v0
.end method

.method public static final p(Ljg/i;Ljg/i;LMf/q;)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "flowCombine"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/B$d;

    invoke-direct {v0, p0, p1, p2}, Ljg/B$d;-><init>(Ljg/i;Ljg/i;LMf/q;)V

    return-object v0
.end method

.method public static final q(Ljg/i;Ljg/i;LMf/r;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/r;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "flowCombineTransform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "LMf/r<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT1;-TT2;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljg/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Ljg/B$l;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljg/B$l;-><init>([Ljg/i;Lyf/f;LMf/r;)V

    invoke-static {p0}, Ljg/k;->J0(LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final r()LMf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LMf/a<",
            "[TT;>;"
        }
    .end annotation

    sget-object v0, Ljg/B$v;->b:Ljg/B$v;

    return-object v0
.end method

.method public static final s(Ljg/i;Ljg/i;LMf/q;)Ljg/i;
    .locals 0
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT1;>;",
            "Ljg/i<",
            "+TT2;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkg/k;->b(Ljg/i;Ljg/i;LMf/q;)Ljg/i;

    move-result-object p0

    return-object p0
.end method
