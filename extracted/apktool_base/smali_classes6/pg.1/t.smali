.class public Lpg/t;
.super Lpg/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lpg/l<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n63#1:69,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n63#1:69,2\n*E\n"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpg/l<",
            "TR;>.a;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lpg/l;-><init>(Lyf/j;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpg/t;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic n0(Lpg/t;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/t<",
            "TR;>;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    invoke-virtual {p0}, Lpg/t;->o0()V

    invoke-super {p0, p1}, Lpg/l;->X(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public X(Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lpg/t;->n0(Lpg/t;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lpg/g;LMf/p;)V
    .locals 10
    .param p1    # Lpg/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/g<",
            "+TQ;>;",
            "LMf/p<",
            "-TQ;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, Lpg/l$a;

    invoke-interface {p1}, Lpg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lpg/k;->c()LMf/q;

    move-result-object v4

    invoke-interface {p1}, Lpg/k;->b()LMf/q;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1}, Lpg/k;->a()LMf/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lpg/l$a;-><init>(Lpg/l;Ljava/lang/Object;LMf/q;LMf/q;Ljava/lang/Object;Ljava/lang/Object;LMf/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lpg/e;LMf/l;)V
    .locals 10
    .param p1    # Lpg/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/e;",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, Lpg/l$a;

    invoke-interface {p1}, Lpg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lpg/k;->c()LMf/q;

    move-result-object v4

    invoke-interface {p1}, Lpg/k;->b()LMf/q;

    move-result-object v5

    invoke-static {}, Lpg/o;->l()Lmg/T;

    move-result-object v6

    invoke-interface {p1}, Lpg/k;->a()LMf/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lpg/l$a;-><init>(Lpg/l;Ljava/lang/Object;LMf/q;LMf/q;Ljava/lang/Object;Ljava/lang/Object;LMf/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Lpg/i;Ljava/lang/Object;LMf/p;)V
    .locals 10
    .param p1    # Lpg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/i<",
            "-TP;+TQ;>;TP;",
            "LMf/p<",
            "-TQ;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, Lpg/l$a;

    invoke-interface {p1}, Lpg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lpg/k;->c()LMf/q;

    move-result-object v4

    invoke-interface {p1}, Lpg/k;->b()LMf/q;

    move-result-object v5

    invoke-interface {p1}, Lpg/k;->a()LMf/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lpg/l$a;-><init>(Lpg/l;Ljava/lang/Object;LMf/q;LMf/q;Ljava/lang/Object;Ljava/lang/Object;LMf/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o0()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpg/l$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2, v3}, Lpg/l;->h0(Lpg/l;Lpg/l$a;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpg/t;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :goto_1
    iget-object v1, p0, Lpg/t;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method
