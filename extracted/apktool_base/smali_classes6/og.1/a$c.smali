.class public final Log/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1033:1\n298#2:1034\n285#2:1035\n299#2,4:1036\n304#2:1040\n294#2,2:1041\n294#2,2:1045\n280#2:1052\n289#2:1053\n283#2:1054\n280#2:1055\n1#3:1043\n90#4:1044\n28#5,4:1047\n20#6:1051\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n665#1:1034\n665#1:1035\n665#1:1036,4\n679#1:1040\n753#1:1041,2\n807#1:1045,2\n855#1:1052\n881#1:1053\n881#1:1054\n963#1:1055\n790#1:1044\n851#1:1047,4\n851#1:1051\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1033:1\n298#2:1034\n285#2:1035\n299#2,4:1036\n304#2:1040\n294#2,2:1041\n294#2,2:1045\n280#2:1052\n289#2:1053\n283#2:1054\n280#2:1055\n1#3:1043\n90#4:1044\n28#5,4:1047\n20#6:1051\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n665#1:1034\n665#1:1035\n665#1:1036,4\n679#1:1040\n753#1:1041,2\n807#1:1045,2\n855#1:1052\n881#1:1053\n881#1:1054\n963#1:1055\n790#1:1044\n851#1:1047,4\n851#1:1051\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Log/q;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Log/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Log/a$d;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:J

.field public f:J

.field public g:I

.field public h:Z
    .annotation build LLf/g;
    .end annotation
.end field

.field public final synthetic i:Log/a;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile workerCtl:I
    .annotation runtime LLf/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Log/a$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Log/a$c;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Log/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Log/a$c;->i:Log/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Log/q;

    invoke-direct {p1}, Log/q;-><init>()V

    iput-object p1, p0, Log/a$c;->b:Log/q;

    .line 4
    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, p0, Log/a$c;->c:Lkotlin/jvm/internal/m0$h;

    .line 5
    sget-object p1, Log/a$d;->DORMANT:Log/a$d;

    iput-object p1, p0, Log/a$c;->d:Log/a$d;

    .line 6
    sget-object p1, Log/a;->m:Lmg/T;

    iput-object p1, p0, Log/a$c;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, LTf/f;->b:LTf/f$a;

    invoke-virtual {p1}, LTf/f$a;->l()I

    move-result p1

    iput p1, p0, Log/a$c;->g:I

    return-void
.end method

.method public constructor <init>(Log/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Log/a$c;-><init>(Log/a;)V

    .line 9
    invoke-virtual {p0, p2}, Log/a$c;->w(I)V

    return-void
.end method

.method public static final synthetic a(Log/a$c;)Log/a;
    .locals 0

    iget-object p0, p0, Log/a$c;->i:Log/a;

    return-object p0
.end method

.method public static final n()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Log/a$c;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final A(Log/a$d;)Z
    .locals 6
    .param p1    # Log/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Log/a$c;->d:Log/a$d;

    sget-object v1, Log/a$d;->CPU_ACQUIRED:Log/a$d;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Log/a$c;->i:Log/a;

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Log/a$c;->d:Log/a$d;

    :cond_2
    return v1
.end method

.method public final B(I)Log/k;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Log/a$c;->i:Log/a;

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Log/a$c;->r(I)I

    move-result v2

    iget-object v4, v0, Log/a$c;->i:Log/a;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v7, v1, :cond_5

    const/4 v12, 0x1

    add-int/2addr v2, v12

    if-le v2, v1, :cond_1

    move v2, v12

    :cond_1
    iget-object v12, v4, Log/a;->h:Lmg/N;

    invoke-virtual {v12, v2}, Lmg/N;->b(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Log/a$c;

    if-eqz v12, :cond_3

    if-eq v12, v0, :cond_3

    iget-object v12, v12, Log/a$c;->b:Log/q;

    iget-object v13, v0, Log/a$c;->c:Lkotlin/jvm/internal/m0$h;

    move/from16 v14, p1

    invoke-virtual {v12, v14, v13}, Log/q;->p(ILkotlin/jvm/internal/m0$h;)J

    move-result-wide v12

    const-wide/16 v15, -0x1

    cmp-long v15, v12, v15

    if-nez v15, :cond_2

    iget-object v1, v0, Log/a$c;->c:Lkotlin/jvm/internal/m0$h;

    iget-object v2, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast v2, Log/k;

    iput-object v3, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object v2

    :cond_2
    cmp-long v10, v12, v10

    if-lez v10, :cond_4

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_3
    move/from16 v14, p1

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    cmp-long v1, v8, v5

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v8, v10

    :goto_2
    iput-wide v8, v0, Log/a$c;->f:J

    return-object v3
.end method

.method public final C()V
    .locals 8

    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v1, v0, Log/a;->h:Lmg/N;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Log/a;->isTerminated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v0, Log/a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Log/a$c;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_3
    iget v2, p0, Log/a$c;->indexInArray:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Log/a$c;->w(I)V

    invoke-virtual {v0, p0, v2, v3}, Log/a;->x(Log/a$c;II)V

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long v3, v6, v4

    long-to-int v3, v3

    if-eq v3, v2, :cond_3

    iget-object v4, v0, Log/a;->h:Lmg/N;

    invoke-virtual {v4, v3}, Lmg/N;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    check-cast v4, Log/a$c;

    iget-object v5, v0, Log/a;->h:Lmg/N;

    invoke-virtual {v5, v2, v4}, Lmg/N;->c(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Log/a$c;->w(I)V

    invoke-virtual {v0, v4, v3, v2}, Log/a;->x(Log/a$c;II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, v0, Log/a;->h:Lmg/N;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lmg/N;->c(ILjava/lang/Object;)V

    sget-object v0, Lnf/P0;->a:Lnf/P0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    sget-object v0, Log/a$d;->TERMINATED:Log/a$d;

    iput-object v0, p0, Log/a$c;->d:Log/a$d;

    return-void

    :goto_1
    monitor-exit v1

    throw v0
.end method

.method public final b(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Log/a$c;->i:Log/a;

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Log/a$c;->d:Log/a$d;

    sget-object v0, Log/a$d;->TERMINATED:Log/a$d;

    if-eq p1, v0, :cond_1

    sget-object p1, Log/a$d;->DORMANT:Log/a$d;

    iput-object p1, p0, Log/a$c;->d:Log/a$d;

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Log/a$d;->BLOCKING:Log/a$d;

    invoke-virtual {p0, p1}, Log/a$c;->A(Log/a$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Log/a$c;->i:Log/a;

    invoke-virtual {p1}, Log/a;->G()V

    :cond_1
    return-void
.end method

.method public final d(Log/k;)V
    .locals 2

    iget-object v0, p1, Log/k;->c:Log/l;

    invoke-interface {v0}, Log/l;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Log/a$c;->o(I)V

    invoke-virtual {p0, v0}, Log/a$c;->c(I)V

    iget-object v1, p0, Log/a$c;->i:Log/a;

    invoke-virtual {v1, p1}, Log/a;->z(Log/k;)V

    invoke-virtual {p0, v0}, Log/a$c;->b(I)V

    return-void
.end method

.method public final e(Z)Log/k;
    .locals 1

    if-eqz p1, :cond_3

    iget-object p1, p0, Log/a$c;->i:Log/a;

    iget p1, p1, Log/a;->b:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Log/a$c;->r(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Log/a$c;->t()Log/k;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Log/a$c;->b:Log/q;

    invoke-virtual {v0}, Log/q;->h()Log/k;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0}, Log/a$c;->t()Log/k;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_3
    invoke-virtual {p0}, Log/a$c;->t()Log/k;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Log/a$c;->B(I)Log/k;

    move-result-object p1

    return-object p1
.end method

.method public final f()Log/k;
    .locals 1

    iget-object v0, p0, Log/a$c;->b:Log/q;

    invoke-virtual {v0}, Log/q;->i()Log/k;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->g:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Log/a$c;->B(I)Log/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final h()Log/k;
    .locals 1

    iget-object v0, p0, Log/a$c;->b:Log/q;

    invoke-virtual {v0}, Log/q;->k()Log/k;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->g:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Log/a$c;->B(I)Log/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final i(Z)Log/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Log/a$c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Log/a$c;->e(Z)Log/k;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Log/a$c;->f()Log/k;

    move-result-object p1

    return-object p1
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Log/a$c;->indexInArray:I

    return v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Log/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final l()Log/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Log/a$c;->a(Log/a$c;)Log/a;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Log/a$c;->workerCtl:I

    return v0
.end method

.method public final o(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Log/a$c;->e:J

    iget-object p1, p0, Log/a$c;->d:Log/a$d;

    sget-object v0, Log/a$d;->PARKING:Log/a$d;

    if-ne p1, v0, :cond_0

    sget-object p1, Log/a$d;->BLOCKING:Log/a$d;

    iput-object p1, p0, Log/a$c;->d:Log/a$d;

    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Log/a$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Log/a;->m:Lmg/T;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Log/a$c;->d:Log/a$d;

    sget-object v1, Log/a$d;->BLOCKING:Log/a$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r(I)I
    .locals 3

    iget v0, p0, Log/a$c;->g:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Log/a$c;->g:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Log/a$c;->v()V

    return-void
.end method

.method public final s()V
    .locals 6

    iget-wide v0, p0, Log/a$c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Log/a$c;->i:Log/a;

    iget-wide v4, v4, Log/a;->d:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Log/a$c;->e:J

    :cond_0
    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-wide v0, v0, Log/a;->d:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Log/a$c;->e:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iput-wide v2, p0, Log/a$c;->e:J

    invoke-virtual {p0}, Log/a$c;->C()V

    :cond_1
    return-void
.end method

.method public final t()Log/k;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Log/a$c;->r(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->f:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->g:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    return-object v0

    :cond_1
    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->g:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Log/a$c;->i:Log/a;

    iget-object v0, v0, Log/a;->f:Log/f;

    invoke-virtual {v0}, Lmg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Log/k;

    return-object v0
.end method

.method public final u()J
    .locals 6

    iget-object v0, p0, Log/a$c;->d:Log/a$d;

    sget-object v1, Log/a$d;->CPU_ACQUIRED:Log/a$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Log/a$c;->h()Log/k;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Log/a$c;->f()Log/k;

    move-result-object v1

    :goto_1
    const-wide/16 v2, 0x0

    if-nez v1, :cond_3

    iget-wide v0, p0, Log/a$c;->f:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/16 v0, -0x1

    :cond_2
    return-wide v0

    :cond_3
    iget-object v4, p0, Log/a$c;->i:Log/a;

    invoke-virtual {v4, v1}, Log/a;->z(Log/k;)V

    if-nez v0, :cond_4

    iget-object v0, p0, Log/a$c;->i:Log/a;

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    const-wide/32 v4, -0x200000

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_4
    return-wide v2
.end method

.method public final v()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Log/a$c;->i:Log/a;

    invoke-virtual {v2}, Log/a;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Log/a$c;->d:Log/a$d;

    sget-object v3, Log/a$d;->TERMINATED:Log/a$d;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Log/a$c;->h:Z

    invoke-virtual {p0, v2}, Log/a$c;->i(Z)Log/k;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Log/a$c;->f:J

    invoke-virtual {p0, v2}, Log/a$c;->d(Log/k;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Log/a$c;->h:Z

    iget-wide v5, p0, Log/a$c;->f:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Log/a$d;->PARKING:Log/a$d;

    invoke-virtual {p0, v1}, Log/a$c;->A(Log/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, p0, Log/a$c;->f:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v3, p0, Log/a$c;->f:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Log/a$c;->z()V

    goto :goto_1

    :cond_3
    sget-object v0, Log/a$d;->TERMINATED:Log/a$d;

    invoke-virtual {p0, v0}, Log/a$c;->A(Log/a$d;)Z

    return-void
.end method

.method public final w(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Log/a$c;->i:Log/a;

    iget-object v1, v1, Log/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Log/a$c;->indexInArray:I

    return-void
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Log/a$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final y()Z
    .locals 9

    iget-object v0, p0, Log/a$c;->d:Log/a$d;

    sget-object v1, Log/a$d;->CPU_ACQUIRED:Log/a$d;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Log/a$c;->i:Log/a;

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    invoke-static {}, Log/a;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Log/a$d;->CPU_ACQUIRED:Log/a$d;

    iput-object v0, p0, Log/a$c;->d:Log/a$d;

    :goto_0
    return v2
.end method

.method public final z()V
    .locals 3

    invoke-virtual {p0}, Log/a$c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Log/a$c;->i:Log/a;

    invoke-virtual {v0, p0}, Log/a;->w(Log/a$c;)Z

    return-void

    :cond_0
    sget-object v0, Log/a$c;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {p0}, Log/a$c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Log/a$c;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Log/a$c;->i:Log/a;

    invoke-virtual {v0}, Log/a;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Log/a$c;->d:Log/a$d;

    sget-object v2, Log/a$d;->TERMINATED:Log/a$d;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Log/a$d;->PARKING:Log/a$d;

    invoke-virtual {p0, v0}, Log/a$c;->A(Log/a$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Log/a$c;->s()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
