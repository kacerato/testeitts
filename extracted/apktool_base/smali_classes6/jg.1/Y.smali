.class public final Ljg/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/j<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,426:1\n329#2:427\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n417#1:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,426:1\n329#2:427\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n417#1:427\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/j;LMf/p;)V
    .locals 0
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "LMf/p<",
            "-",
            "Ljg/j<",
            "-TT;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/Y;->b:Ljg/j;

    iput-object p2, p0, Ljg/Y;->c:LMf/p;

    return-void
.end method


# virtual methods
.method public final a(Lyf/f;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Ljg/Y$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljg/Y$a;

    iget v1, v0, Ljg/Y$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/Y$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/Y$a;

    invoke-direct {v0, p0, p1}, Ljg/Y$a;-><init>(Ljg/Y;Lyf/f;)V

    :goto_0
    iget-object p1, v0, Ljg/Y$a;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/Y$a;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Ljg/Y$a;->c:Ljava/lang/Object;

    check-cast v2, Lkg/t;

    iget-object v4, v0, Ljg/Y$a;->b:Ljava/lang/Object;

    check-cast v4, Ljg/Y;

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance v2, Lkg/t;

    iget-object p1, p0, Ljg/Y;->b:Ljg/j;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lkg/t;-><init>(Ljg/j;Lyf/j;)V

    :try_start_1
    iget-object p1, p0, Ljg/Y;->c:LMf/p;

    iput-object p0, v0, Ljg/Y$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/Y$a;->c:Ljava/lang/Object;

    iput v4, v0, Ljg/Y$a;->f:I

    invoke-interface {p1, v2, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    :goto_1
    invoke-virtual {v2}, Lkg/t;->releaseIntercepted()V

    iget-object p1, v4, Ljg/Y;->b:Ljg/j;

    instance-of v2, p1, Ljg/Y;

    if-eqz v2, :cond_6

    check-cast p1, Ljg/Y;

    const/4 v2, 0x0

    iput-object v2, v0, Ljg/Y$a;->b:Ljava/lang/Object;

    iput-object v2, v0, Ljg/Y$a;->c:Ljava/lang/Object;

    iput v3, v0, Ljg/Y$a;->f:I

    invoke-virtual {p1, v0}, Ljg/Y;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_6
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :goto_3
    invoke-virtual {v2}, Lkg/t;->releaseIntercepted()V

    throw p1
.end method

.method public emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ljg/Y;->b:Ljg/j;

    invoke-interface {v0, p1, p2}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
