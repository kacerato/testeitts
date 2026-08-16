.class public final Lkg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,63:1\n107#2:64\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n50#1:64\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,63:1\n107#2:64\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n50#1:64\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LMf/p;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkg/m;

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkg/m;-><init>(Lyf/j;Lyf/f;)V

    invoke-static {v0, v0, p0}, Lng/b;->e(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final b(LMf/q;)Ljg/i;
    .locals 1
    .param p0    # LMf/q;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/q<",
            "-",
            "Leg/S;",
            "-",
            "Ljg/j<",
            "-TR;>;-",
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

    new-instance v0, Lkg/n$a;

    invoke-direct {v0, p0}, Lkg/n$a;-><init>(LMf/q;)V

    return-object v0
.end method
