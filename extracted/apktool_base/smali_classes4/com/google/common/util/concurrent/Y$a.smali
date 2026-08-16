.class public Lcom/google/common/util/concurrent/Y$a;
.super Lcom/google/common/util/concurrent/L;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/L<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/Z<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/ThreadFactory;

.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/google/common/util/concurrent/B;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/D0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/D0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/D0;->e(Z)Lcom/google/common/util/concurrent/D0;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/D0;->f(Ljava/lang/String;)Lcom/google/common/util/concurrent/D0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/D0;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Y$a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Y$a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/Y$a;->g:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Y$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/L;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/B;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/B;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->c:Lcom/google/common/util/concurrent/B;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->e:Ljava/util/concurrent/Future;

    .line 6
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic o0(Lcom/google/common/util/concurrent/Y$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Y$a;->p0()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->c:Lcom/google/common/util/concurrent/B;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->e:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->c:Lcom/google/common/util/concurrent/B;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/B;->b()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/Y$a;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/common/util/concurrent/X;

    invoke-direct {p2, p0}, Lcom/google/common/util/concurrent/X;-><init>(Lcom/google/common/util/concurrent/Y$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Y$a;->m0()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->e:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final synthetic p0()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->e:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Y$a;->c:Lcom/google/common/util/concurrent/B;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/B;->b()V

    return-void
.end method
