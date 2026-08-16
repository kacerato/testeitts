.class public final Ljg/V;
.super Lkg/a;
.source "SourceFile"

# interfaces
.implements Ljg/E;
.implements Ljg/c;
.implements Lkg/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/a<",
        "Ljg/X;",
        ">;",
        "Ljg/E<",
        "TT;>;",
        "Ljg/c<",
        "TT;>;",
        "Lkg/p<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation runtime LLf/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Ljg/V;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljg/V;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lkg/a;-><init>()V

    iput-object p1, p0, Ljg/V;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljg/j;
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
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/V$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/V$a;

    iget v1, v0, Ljg/V$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/V$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/V$a;

    invoke-direct {v0, p0, p2}, Ljg/V$a;-><init>(Ljg/V;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/V$a;->g:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/V$a;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Ljg/V$a;->f:Ljava/lang/Object;

    iget-object v2, v0, Ljg/V$a;->e:Ljava/lang/Object;

    check-cast v2, Leg/K0;

    iget-object v6, v0, Ljg/V$a;->d:Ljava/lang/Object;

    check-cast v6, Ljg/X;

    iget-object v7, v0, Ljg/V$a;->c:Ljava/lang/Object;

    check-cast v7, Ljg/j;

    iget-object v8, v0, Ljg/V$a;->b:Ljava/lang/Object;

    check-cast v8, Ljg/V;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/V$a;->f:Ljava/lang/Object;

    iget-object v2, v0, Ljg/V$a;->e:Ljava/lang/Object;

    check-cast v2, Leg/K0;

    iget-object v6, v0, Ljg/V$a;->d:Ljava/lang/Object;

    check-cast v6, Ljg/X;

    iget-object v7, v0, Ljg/V$a;->c:Ljava/lang/Object;

    check-cast v7, Ljg/j;

    iget-object v8, v0, Ljg/V$a;->b:Ljava/lang/Object;

    check-cast v8, Ljg/V;

    :try_start_1
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Ljg/V$a;->d:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljg/X;

    iget-object p1, v0, Ljg/V$a;->c:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v2, v0, Ljg/V$a;->b:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljg/V;

    :try_start_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkg/a;->f()Lkg/c;

    move-result-object p2

    check-cast p2, Ljg/X;

    :try_start_3
    instance-of v2, p1, Ljg/Y;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Ljg/Y;

    iput-object p0, v0, Ljg/V$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Ljg/V$a;->c:Ljava/lang/Object;

    iput-object p2, v0, Ljg/V$a;->d:Ljava/lang/Object;

    iput v6, v0, Ljg/V$a;->i:I

    invoke-virtual {v2, v0}, Ljg/Y;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v1, :cond_5

    return-object v1

    :catchall_1
    move-exception p1

    move-object v8, p0

    move-object v6, p2

    goto :goto_5

    :cond_5
    move-object v8, p0

    move-object v6, p2

    :goto_1
    :try_start_4
    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object p2

    sget-object v2, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {p2, v2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p2

    check-cast p2, Leg/K0;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    :cond_6
    :goto_2
    sget-object p2, Ljg/V;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_7

    invoke-static {v2}, Leg/N0;->z(Leg/K0;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_8
    sget-object p1, Lkg/s;->a:Lmg/T;

    if-ne p2, p1, :cond_9

    move-object p1, v3

    goto :goto_3

    :cond_9
    move-object p1, p2

    :goto_3
    iput-object v8, v0, Ljg/V$a;->b:Ljava/lang/Object;

    iput-object v7, v0, Ljg/V$a;->c:Ljava/lang/Object;

    iput-object v6, v0, Ljg/V$a;->d:Ljava/lang/Object;

    iput-object v2, v0, Ljg/V$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Ljg/V$a;->f:Ljava/lang/Object;

    iput v5, v0, Ljg/V$a;->i:I

    invoke-interface {v7, p1, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object p1, p2

    :cond_b
    :goto_4
    invoke-virtual {v6}, Ljg/X;->i()Z

    move-result p2

    if-nez p2, :cond_6

    iput-object v8, v0, Ljg/V$a;->b:Ljava/lang/Object;

    iput-object v7, v0, Ljg/V$a;->c:Ljava/lang/Object;

    iput-object v6, v0, Ljg/V$a;->d:Ljava/lang/Object;

    iput-object v2, v0, Ljg/V$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/V$a;->f:Ljava/lang/Object;

    iput v4, v0, Ljg/V$a;->i:I

    invoke-virtual {v6, v0}, Ljg/X;->e(Lyf/f;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :goto_5
    invoke-virtual {v8, v6}, Lkg/a;->k(Lkg/c;)V

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljg/V;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lpf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lyf/j;ILgg/i;)Ljg/i;
    .locals 0
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
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljg/W;->d(Ljg/U;Lyf/j;ILgg/i;)Ljg/i;

    move-result-object p1

    return-object p1
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lkg/s;->a:Lmg/T;

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lkg/s;->a:Lmg/T;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljg/V;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0, p1}, Ljg/V;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic g()Lkg/c;
    .locals 1

    invoke-virtual {p0}, Ljg/V;->n()Ljg/X;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lkg/s;->a:Lmg/T;

    sget-object v1, Ljg/V;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic i(I)[Lkg/c;
    .locals 0

    invoke-virtual {p0, p1}, Ljg/V;->o(I)[Ljg/X;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljg/X;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/X;

    invoke-direct {v0}, Ljg/X;-><init>()V

    return-object v0
.end method

.method public o(I)[Ljg/X;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-array p1, p1, [Ljg/X;

    return-object p1
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljg/V;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Ljg/V;->f:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5

    add-int/2addr p1, v1

    iput p1, p0, Ljg/V;->f:I

    invoke-virtual {p0}, Lkg/a;->m()[Lkg/c;

    move-result-object p2

    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Ljg/X;

    if-eqz p2, :cond_3

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljg/X;->h()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget p2, p0, Ljg/V;->f:I

    if-ne p2, p1, :cond_4

    add-int/2addr p1, v1

    iput p1, p0, Ljg/V;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lkg/a;->m()[Lkg/c;

    move-result-object p1

    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :goto_2
    monitor-exit p0

    throw p1

    :cond_5
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Ljg/V;->f:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lkg/s;->a:Lmg/T;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljg/V;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljg/V;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
