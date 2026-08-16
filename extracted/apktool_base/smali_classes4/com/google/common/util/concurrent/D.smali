.class public final Lcom/google/common/util/concurrent/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/D$d;,
        Lcom/google/common/util/concurrent/D$c;,
        Lcom/google/common/util/concurrent/D$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lcom/google/common/util/concurrent/D$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/common/util/concurrent/Q;->n()Lcom/google/common/util/concurrent/Z;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/D;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/common/util/concurrent/D$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/D$e;-><init>(Lcom/google/common/util/concurrent/D$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/D;->b:Lcom/google/common/util/concurrent/D$e;

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/D;->e(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/D;)Lcom/google/common/util/concurrent/D$e;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/D;->b:Lcom/google/common/util/concurrent/D$e;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$e;)Lcom/google/common/util/concurrent/D$e;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/D;->b:Lcom/google/common/util/concurrent/D$e;

    return-object p1
.end method

.method public static d()Lcom/google/common/util/concurrent/D;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/D;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/D;-><init>()V

    return-object v0
.end method

.method public static synthetic e(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/F$a;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/r0;->E(Lcom/google/common/util/concurrent/Z;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p4}, Lcom/google/common/util/concurrent/D$d;->b(Lcom/google/common/util/concurrent/D$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/F$a;->cancel(Z)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public f(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/D$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/D$a;-><init>(Lcom/google/common/util/concurrent/D;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/D;->g(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/l<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/util/concurrent/D$d;

    const/4 v0, 0x0

    invoke-direct {v5, p2, p0, v0}, Lcom/google/common/util/concurrent/D$d;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$a;)V

    new-instance p2, Lcom/google/common/util/concurrent/D$b;

    invoke-direct {p2, p0, v5, p1}, Lcom/google/common/util/concurrent/D$b;-><init>(Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$d;Lcom/google/common/util/concurrent/l;)V

    invoke-static {}, Lcom/google/common/util/concurrent/r0;->G()Lcom/google/common/util/concurrent/r0;

    move-result-object v2

    iget-object p1, p0, Lcom/google/common/util/concurrent/D;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/common/util/concurrent/Z;

    invoke-static {p2}, Lcom/google/common/util/concurrent/F0;->O(Lcom/google/common/util/concurrent/l;)Lcom/google/common/util/concurrent/F0;

    move-result-object p1

    invoke-interface {v3, p1, v5}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->q(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/Z;

    move-result-object p2

    new-instance v6, Lcom/google/common/util/concurrent/C;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/C;-><init>(Lcom/google/common/util/concurrent/F0;Lcom/google/common/util/concurrent/r0;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/D$d;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/google/common/util/concurrent/F$a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method
