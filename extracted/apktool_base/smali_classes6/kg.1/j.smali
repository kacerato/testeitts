.class public final Lkg/j;
.super Lkg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/d<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n*L\n95#1:101,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge\n*L\n95#1:101,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljg/i<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lyf/j;ILgg/i;)V
    .locals 0
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljg/i<",
            "+TT;>;>;",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3, p4}, Lkg/d;-><init>(Lyf/j;ILgg/i;)V

    .line 5
    iput-object p1, p0, Lkg/j;->e:Ljava/lang/Iterable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Iterable;Lyf/j;ILgg/i;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lyf/l;->b:Lyf/l;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lgg/i;->SUSPEND:Lgg/i;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lkg/j;-><init>(Ljava/lang/Iterable;Lyf/j;ILgg/i;)V

    return-void
.end method


# virtual methods
.method public f(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lgg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/B<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p2, Lkg/w;

    invoke-direct {p2, p1}, Lkg/w;-><init>(Lgg/E;)V

    iget-object v0, p0, Lkg/j;->e:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljg/i;

    new-instance v5, Lkg/j$a;

    const/4 v2, 0x0

    invoke-direct {v5, v1, p2, v2}, Lkg/j$a;-><init>(Ljg/i;Lkg/w;Lyf/f;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    goto :goto_0

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public g(Lyf/j;ILgg/i;)Lkg/d;
    .locals 2
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "I",
            "Lgg/i;",
            ")",
            "Lkg/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkg/j;

    iget-object v1, p0, Lkg/j;->e:Ljava/lang/Iterable;

    invoke-direct {v0, v1, p1, p2, p3}, Lkg/j;-><init>(Ljava/lang/Iterable;Lyf/j;ILgg/i;)V

    return-object v0
.end method

.method public l(Leg/S;)Lgg/D;
    .locals 3
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
            ")",
            "Lgg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/d;->b:Lyf/j;

    iget v1, p0, Lkg/d;->c:I

    invoke-virtual {p0}, Lkg/d;->j()LMf/p;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lgg/z;->c(Leg/S;Lyf/j;ILMf/p;)Lgg/D;

    move-result-object p1

    return-object p1
.end method
