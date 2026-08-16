.class public final Lmg/s;
.super Leg/M;
.source "SourceFile"

# interfaces
.implements Leg/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Leg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I

.field public final synthetic d:Leg/b0;

.field public final e:Lmg/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmg/z<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile runningWorkers:I
    .annotation runtime LLf/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lmg/s;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Leg/M;I)V
    .locals 0
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Leg/M;-><init>()V

    iput-object p1, p0, Lmg/s;->b:Leg/M;

    iput p2, p0, Lmg/s;->c:I

    instance-of p2, p1, Leg/b0;

    if-eqz p2, :cond_0

    check-cast p1, Leg/b0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Leg/Y;->a()Leg/b0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lmg/s;->d:Leg/b0;

    new-instance p1, Lmg/z;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmg/z;-><init>(Z)V

    iput-object p1, p0, Lmg/s;->e:Lmg/z;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg/s;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic s(Lmg/s;)Leg/M;
    .locals 0

    iget-object p0, p0, Lmg/s;->b:Leg/M;

    return-object p0
.end method

.method public static final synthetic t(Lmg/s;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lmg/s;->v()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lmg/s;->e:Lmg/z;

    invoke-virtual {p1, p2}, Lmg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lmg/s;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lmg/s;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmg/s;->v()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmg/s$a;

    invoke-direct {p2, p0, p1}, Lmg/s$a;-><init>(Lmg/s;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lmg/s;->b:Leg/M;

    invoke-virtual {p1, p0, p2}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lyf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    iget-object p1, p0, Lmg/s;->e:Lmg/z;

    invoke-virtual {p1, p2}, Lmg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lmg/s;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lmg/s;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmg/s;->v()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lmg/s$a;

    invoke-direct {p2, p0, p1}, Lmg/s$a;-><init>(Lmg/s;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lmg/s;->b:Leg/M;

    invoke-virtual {p1, p0, p2}, Leg/M;->dispatchYield(Lyf/j;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lmg/t;->a(I)V

    iget v0, p0, Lmg/s;->c:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Leg/M;->limitedParallelism(I)Leg/M;

    move-result-object p1

    return-object p1
.end method

.method public m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lmg/s;->d:Leg/b0;

    invoke-interface {v0, p1, p2, p3, p4}, Leg/b0;->m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;

    move-result-object p1

    return-object p1
.end method

.method public o(JLeg/p;)V
    .locals 1
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Leg/p<",
            "-",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmg/s;->d:Leg/b0;

    invoke-interface {v0, p1, p2, p3}, Leg/b0;->o(JLeg/p;)V

    return-void
.end method

.method public p(JLyf/f;)Ljava/lang/Object;
    .locals 1
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lmg/s;->d:Leg/b0;

    invoke-interface {v0, p1, p2, p3}, Leg/b0;->p(JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ljava/lang/Runnable;LMf/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "LMf/l<",
            "-",
            "Lmg/s$a;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmg/s;->e:Lmg/z;

    invoke-virtual {v0, p1}, Lmg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lmg/s;->c:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmg/s;->x()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lmg/s;->v()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lmg/s$a;

    invoke-direct {v0, p0, p1}, Lmg/s$a;-><init>(Lmg/s;Ljava/lang/Runnable;)V

    invoke-interface {p2, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final v()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lmg/s;->e:Lmg/z;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmg/s;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lmg/s;->e:Lmg/z;

    invoke-virtual {v2}, Lmg/z;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method public final x()Z
    .locals 4

    iget-object v0, p0, Lmg/s;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lmg/s;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
