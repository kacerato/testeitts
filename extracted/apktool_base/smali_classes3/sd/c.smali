.class public Lsd/c;
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
.field public final a:Lqd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lsd/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsd/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Lqd/p;


# direct methods
.method public constructor <init>(Lqd/h;ILjava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/h<",
            "TT;>;I",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lqd/y;->q(Lqd/h;I)Lqd/y;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lsd/c;-><init>(Lqd/y;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lqd/h;ILjava/util/concurrent/Executor;Lsd/g;Lqd/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/h<",
            "TT;>;I",
            "Ljava/util/concurrent/Executor;",
            "Lsd/g;",
            "Lqd/J;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p4, p1, p2, p5}, Lqd/y;->p(Lsd/g;Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lsd/c;-><init>(Lqd/y;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lqd/y;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/y<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lsd/b;

    invoke-direct {v0}, Lsd/b;-><init>()V

    iput-object v0, p0, Lsd/c;->c:Lsd/b;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lsd/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lsd/c;->a:Lqd/y;

    .line 7
    iput-object p2, p0, Lsd/c;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public varargs a([Lqd/i;)Lsd/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [Lqd/z;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lsd/c;->c:Lsd/b;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lsd/b;->i(Lqd/i;)Lqd/z;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lsd/d;

    iget-object v1, p0, Lsd/c;->c:Lsd/b;

    invoke-direct {p1, p0, v1, v0}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object p1
.end method

.method public varargs b([Lqd/j;)Lsd/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/j;",
            ")",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v3, v2}, Lsd/b;->a(Lqd/j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lsd/d;

    iget-object v1, p0, Lsd/c;->c:Lsd/b;

    invoke-static {p1}, Ltd/d;->e([Lqd/j;)[Lqd/z;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lsd/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All event handlers must be added before calling starts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lsd/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Disruptor.start() must only be called once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e([Lqd/z;[Lqd/i;)Lsd/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/z;",
            "[",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lsd/c;->c()V

    array-length v0, p2

    new-array v1, v0, [Lqd/z;

    iget-object v2, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v2, p1}, Lqd/y;->i([Lqd/z;)Lqd/A;

    move-result-object v2

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    new-instance v6, Lqd/c;

    iget-object v7, p0, Lsd/c;->a:Lqd/y;

    invoke-direct {v6, v7, v2, v5}, Lqd/c;-><init>(Lqd/g;Lqd/A;Lqd/i;)V

    iget-object v7, p0, Lsd/c;->e:Lqd/p;

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Lqd/c;->d(Lqd/p;)V

    :cond_0
    iget-object v7, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v7, v6, v5, v2}, Lsd/b;->b(Lqd/j;Lqd/i;Lqd/A;)V

    invoke-virtual {v6}, Lqd/c;->R()Lqd/z;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object p2, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {p2, p1}, Lsd/b;->j([Lqd/z;)V

    :cond_2
    new-instance p1, Lsd/d;

    iget-object p2, p0, Lsd/c;->c:Lsd/b;

    invoke-direct {p1, p0, p2, v1}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object p1
.end method

.method public f([Lqd/z;[Lqd/K;)Lsd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/z;",
            "[",
            "Lqd/K<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0, p1}, Lqd/y;->i([Lqd/z;)Lqd/A;

    move-result-object p1

    new-instance v0, Lqd/M;

    iget-object v1, p0, Lsd/c;->a:Lqd/y;

    iget-object v2, p0, Lsd/c;->e:Lqd/p;

    invoke-direct {v0, v1, p1, v2, p2}, Lqd/M;-><init>(Lqd/y;Lqd/A;Lqd/p;[Lqd/K;)V

    iget-object p2, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {p2, v0, p1}, Lsd/b;->c(Lqd/M;Lqd/A;)V

    new-instance p1, Lsd/d;

    iget-object p2, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v0}, Lqd/M;->b()[Lqd/z;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object p1
.end method

.method public g(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0, p1, p2}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lqd/i;)Lqd/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lqd/A;"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v0, p1}, Lsd/b;->d(Lqd/i;)Lqd/A;

    move-result-object p1

    return-object p1
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0}, Lqd/y;->m()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0}, Lqd/y;->getCursor()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Lqd/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    return-object v0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v0}, Lsd/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsd/a;

    invoke-interface {v1}, Lsd/a;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs m([Lqd/i;)Lsd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lqd/z;

    invoke-virtual {p0, v0, p1}, Lsd/c;->e([Lqd/z;[Lqd/i;)Lsd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs n([Lqd/j;)Lsd/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/j;",
            ")",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v3, v2}, Lsd/b;->a(Lqd/j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lsd/d;

    iget-object v1, p0, Lsd/c;->c:Lsd/b;

    invoke-static {p1}, Ltd/d;->e([Lqd/j;)[Lqd/z;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lsd/d;-><init>(Lsd/c;Lsd/b;[Lqd/z;)V

    return-object v0
.end method

.method public varargs o([Lqd/K;)Lsd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lqd/K<",
            "TT;>;)",
            "Lsd/d<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lqd/z;

    invoke-virtual {p0, v0, p1}, Lsd/c;->f([Lqd/z;[Lqd/K;)Lsd/d;

    move-result-object p1

    return-object p1
.end method

.method public p(Lqd/i;)Lsd/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/i<",
            "TT;>;)",
            "Lsd/f<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lsd/f;

    iget-object v1, p0, Lsd/c;->c:Lsd/b;

    invoke-direct {v0, p1, v1}, Lsd/f;-><init>(Lqd/i;Lsd/b;)V

    return-object v0
.end method

.method public q(Lqd/p;)V
    .locals 0

    iput-object p1, p0, Lsd/c;->e:Lqd/p;

    return-void
.end method

.method public final r()Z
    .locals 8

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0}, Lqd/y;->getCursor()J

    move-result-wide v0

    iget-object v2, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v2}, Lsd/b;->h()[Lqd/z;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lqd/z;->c()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public s(Lqd/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/k<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v0, p1}, Lqd/y;->A(Lqd/k;)V

    return-void
.end method

.method public t()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lsd/c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsd/c;->l()V

    return-void
.end method

.method public u()Lqd/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v0}, Lsd/b;->h()[Lqd/z;

    move-result-object v0

    iget-object v1, p0, Lsd/c;->a:Lqd/y;

    invoke-virtual {v1, v0}, Lqd/y;->k([Lqd/z;)V

    invoke-virtual {p0}, Lsd/c;->d()V

    iget-object v0, p0, Lsd/c;->c:Lsd/b;

    invoke-virtual {v0}, Lsd/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsd/a;

    iget-object v2, p0, Lsd/c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Lsd/a;->b(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsd/c;->a:Lqd/y;

    return-object v0
.end method
