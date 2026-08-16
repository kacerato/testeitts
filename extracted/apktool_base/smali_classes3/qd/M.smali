.class public final Lqd/M;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Lqd/z;

.field public final c:Lqd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:[Lqd/L;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lqd/L<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lqd/h;Lqd/p;[Lqd/K;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/h<",
            "TT;>;",
            "Lqd/p;",
            "[",
            "Lqd/K<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lqd/M;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Lqd/z;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lqd/z;-><init>(J)V

    iput-object v0, p0, Lqd/M;->b:Lqd/z;

    .line 11
    new-instance v0, Lqd/d;

    invoke-direct {v0}, Lqd/d;-><init>()V

    const/16 v2, 0x400

    invoke-static {p1, v2, v0}, Lqd/y;->r(Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p1

    iput-object p1, p0, Lqd/M;->c:Lqd/y;

    .line 12
    new-array v0, v1, [Lqd/z;

    invoke-virtual {p1, v0}, Lqd/y;->i([Lqd/z;)Lqd/A;

    move-result-object p1

    .line 13
    array-length v0, p3

    .line 14
    new-array v2, v0, [Lqd/L;

    iput-object v2, p0, Lqd/M;->d:[Lqd/L;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    iget-object v8, p0, Lqd/M;->d:[Lqd/L;

    new-instance v9, Lqd/L;

    iget-object v3, p0, Lqd/M;->c:Lqd/y;

    aget-object v5, p3, v1

    iget-object v7, p0, Lqd/M;->b:Lqd/z;

    move-object v2, v9

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lqd/L;-><init>(Lqd/y;Lqd/A;Lqd/K;Lqd/p;Lqd/z;)V

    aput-object v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lqd/M;->c:Lqd/y;

    invoke-virtual {p0}, Lqd/M;->b()[Lqd/z;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqd/y;->k([Lqd/z;)V

    return-void
.end method

.method public varargs constructor <init>(Lqd/y;Lqd/A;Lqd/p;[Lqd/K;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/y<",
            "TT;>;",
            "Lqd/A;",
            "Lqd/p;",
            "[",
            "Lqd/K<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lqd/M;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Lqd/z;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lqd/z;-><init>(J)V

    iput-object v0, p0, Lqd/M;->b:Lqd/z;

    .line 4
    iput-object p1, p0, Lqd/M;->c:Lqd/y;

    .line 5
    array-length v0, p4

    .line 6
    new-array v2, v0, [Lqd/L;

    iput-object v2, p0, Lqd/M;->d:[Lqd/L;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Lqd/M;->d:[Lqd/L;

    new-instance v9, Lqd/L;

    aget-object v6, p4, v1

    iget-object v8, p0, Lqd/M;->b:Lqd/z;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lqd/L;-><init>(Lqd/y;Lqd/A;Lqd/K;Lqd/p;Lqd/z;)V

    aput-object v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Lqd/M;->b()[Lqd/z;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lqd/M;->c:Lqd/y;

    invoke-virtual {v1}, Lqd/y;->getCursor()J

    move-result-wide v1

    invoke-static {v0}, Ltd/d;->c([Lqd/z;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqd/M;->d:[Lqd/L;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lqd/L;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lqd/M;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()[Lqd/z;
    .locals 4

    iget-object v0, p0, Lqd/M;->d:[Lqd/L;

    array-length v1, v0

    new-array v1, v1, [Lqd/z;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lqd/M;->d:[Lqd/L;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lqd/L;->R()Lqd/z;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lqd/M;->d:[Lqd/L;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lqd/L;->g()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqd/M;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public d(Ljava/util/concurrent/Executor;)Lqd/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lqd/M;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqd/M;->c:Lqd/y;

    invoke-virtual {v0}, Lqd/y;->getCursor()J

    move-result-wide v0

    iget-object v3, p0, Lqd/M;->b:Lqd/z;

    invoke-virtual {v3, v0, v1}, Lqd/z;->e(J)V

    iget-object v3, p0, Lqd/M;->d:[Lqd/L;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Lqd/L;->R()Lqd/z;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lqd/z;->e(J)V

    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqd/M;->c:Lqd/y;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WorkerPool has already been started and cannot be restarted until halted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
