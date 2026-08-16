.class public final LZe/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZe/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LZe/f$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LBe/J;

.field public e:I

.field public volatile f:LZe/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/f$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:LZe/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/f$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Throwable;

.field public volatile i:Z


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "maxSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, LZe/f$d;->a:I

    const-string p1, "maxAge"

    invoke-static {p2, p3, p1}, LHe/b;->i(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, LZe/f$d;->b:J

    const-string p1, "unit is null"

    invoke-static {p4, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    invoke-static {p5, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/J;

    iput-object p1, p0, LZe/f$d;->d:LBe/J;

    new-instance p1, LZe/f$f;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, LZe/f$f;-><init>(Ljava/lang/Object;J)V

    iput-object p1, p0, LZe/f$d;->g:LZe/f$f;

    iput-object p1, p0, LZe/f$d;->f:LZe/f$f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LZe/f$d;->f:LZe/f$f;

    iget-object v0, v0, LZe/f$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, LZe/f$f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, LZe/f$f;-><init>(Ljava/lang/Object;J)V

    iget-object v1, p0, LZe/f$d;->f:LZe/f$f;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, LZe/f$d;->f:LZe/f$f;

    :cond_0
    return-void
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, LZe/f$d;->f()LZe/f$f;

    move-result-object v0

    invoke-virtual {p0, v0}, LZe/f$d;->g(LZe/f$f;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_3

    aput-object v2, p1, v3

    goto :goto_1

    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZe/f$f;

    iget-object v4, v0, LZe/f$f;->b:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, LZe/f$f;

    iget-object v1, p0, LZe/f$d;->d:LBe/J;

    iget-object v2, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, LZe/f$f;-><init>(Ljava/lang/Object;J)V

    iget-object p1, p0, LZe/f$d;->g:LZe/f$f;

    iput-object v0, p0, LZe/f$d;->g:LZe/f$f;

    iget v1, p0, LZe/f$d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LZe/f$d;->e:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, LZe/f$d;->h()V

    return-void
.end method

.method public complete()V
    .locals 1

    invoke-virtual {p0}, LZe/f$d;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LZe/f$d;->i:Z

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, LZe/f$d;->i()V

    iput-object p1, p0, LZe/f$d;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LZe/f$d;->i:Z

    return-void
.end method

.method public e(LZe/f$c;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, LZe/f$c;->b:Lhn/c;

    iget-object v1, p1, LZe/f$c;->d:Ljava/lang/Object;

    check-cast v1, LZe/f$f;

    if-nez v1, :cond_1

    invoke-virtual {p0}, LZe/f$d;->f()LZe/f$f;

    move-result-object v1

    :cond_1
    iget-wide v2, p1, LZe/f$c;->g:J

    const/4 v4, 0x1

    move v5, v4

    :cond_2
    iget-object v6, p1, LZe/f$c;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_0
    cmp-long v8, v2, v6

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    iget-boolean v10, p1, LZe/f$c;->f:Z

    if-eqz v10, :cond_3

    iput-object v9, p1, LZe/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_3
    iget-boolean v10, p0, LZe/f$d;->i:Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LZe/f$f;

    if-nez v11, :cond_4

    move v12, v4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    if-eqz v10, :cond_6

    if-eqz v12, :cond_6

    iput-object v9, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-boolean v4, p1, LZe/f$c;->f:Z

    iget-object p1, p0, LZe/f$d;->h:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_2

    :cond_5
    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_6
    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v11, LZe/f$f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object v1, v11

    goto :goto_0

    :cond_8
    :goto_3
    if-nez v8, :cond_b

    iget-boolean v6, p1, LZe/f$c;->f:Z

    if-eqz v6, :cond_9

    iput-object v9, p1, LZe/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_9
    iget-boolean v6, p0, LZe/f$d;->i:Z

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    iput-object v9, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-boolean v4, p1, LZe/f$c;->f:Z

    iget-object p1, p0, LZe/f$d;->h:Ljava/lang/Throwable;

    if-nez p1, :cond_a

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_4

    :cond_a
    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_b
    iput-object v1, p1, LZe/f$c;->d:Ljava/lang/Object;

    iput-wide v2, p1, LZe/f$c;->g:J

    neg-int v5, v5

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_2

    return-void
.end method

.method public f()LZe/f$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZe/f$f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LZe/f$d;->f:LZe/f$f;

    iget-object v1, p0, LZe/f$d;->d:LBe/J;

    iget-object v2, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, LZe/f$d;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZe/f$f;

    :goto_0
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    if-eqz v0, :cond_1

    iget-wide v4, v0, LZe/f$f;->c:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZe/f$f;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public g(LZe/f$f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/f$f<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZe/f$f;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, LZe/f$d;->h:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LZe/f$d;->f:LZe/f$f;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZe/f$f;

    if-nez v1, :cond_1

    iget-object v1, p0, LZe/f$d;->d:LBe/J;

    iget-object v2, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, LZe/f$d;->b:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, LZe/f$f;->c:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, LZe/f$f;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public h()V
    .locals 6

    iget v0, p0, LZe/f$d;->e:I

    iget v1, p0, LZe/f$d;->a:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LZe/f$d;->e:I

    iget-object v0, p0, LZe/f$d;->f:LZe/f$f;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZe/f$f;

    iput-object v0, p0, LZe/f$d;->f:LZe/f$f;

    :cond_0
    iget-object v0, p0, LZe/f$d;->d:LBe/J;

    iget-object v1, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LZe/f$d;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, LZe/f$d;->f:LZe/f$f;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZe/f$f;

    if-nez v3, :cond_1

    iput-object v2, p0, LZe/f$d;->f:LZe/f$f;

    goto :goto_1

    :cond_1
    iget-wide v4, v3, LZe/f$f;->c:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    iput-object v2, p0, LZe/f$d;->f:LZe/f$f;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public i()V
    .locals 9

    iget-object v0, p0, LZe/f$d;->d:LBe/J;

    iget-object v1, p0, LZe/f$d;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, LZe/f$d;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, LZe/f$d;->f:LZe/f$f;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZe/f$f;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_1

    iget-object v0, v2, LZe/f$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, LZe/f$f;

    invoke-direct {v0, v6, v4, v5}, LZe/f$f;-><init>(Ljava/lang/Object;J)V

    iput-object v0, p0, LZe/f$d;->f:LZe/f$f;

    goto :goto_1

    :cond_0
    iput-object v2, p0, LZe/f$d;->f:LZe/f$f;

    goto :goto_1

    :cond_1
    iget-wide v7, v3, LZe/f$f;->c:J

    cmp-long v7, v7, v0

    if-lez v7, :cond_3

    iget-object v0, v2, LZe/f$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance v0, LZe/f$f;

    invoke-direct {v0, v6, v4, v5}, LZe/f$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, LZe/f$d;->f:LZe/f$f;

    goto :goto_1

    :cond_2
    iput-object v2, p0, LZe/f$d;->f:LZe/f$f;

    :goto_1
    return-void

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, LZe/f$d;->i:Z

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, LZe/f$d;->f()LZe/f$f;

    move-result-object v0

    invoke-virtual {p0, v0}, LZe/f$d;->g(LZe/f$f;)I

    move-result v0

    return v0
.end method
