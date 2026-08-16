.class public final Lbf/f$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lbf/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbf/f;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lbf/f$b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = -0x6fcd9699e42b76b5L


# instance fields
.field public final b:I

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public f:I

.field public volatile g:Lbf/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lbf/f$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile i:Z


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lbf/f$d;->b:I

    const-string p1, "maxAge"

    invoke-static {p2, p3, p1}, LHe/b;->i(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lbf/f$d;->c:J

    const-string p1, "unit is null"

    invoke-static {p4, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    invoke-static {p5, p1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/J;

    iput-object p1, p0, Lbf/f$d;->e:LBe/J;

    new-instance p1, Lbf/f$f;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    iput-object p1, p0, Lbf/f$d;->h:Lbf/f$f;

    iput-object p1, p0, Lbf/f$d;->g:Lbf/f$f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    iget-object v1, v0, Lbf/f$f;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    new-instance v1, Lbf/f$f;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v1, p0, Lbf/f$d;->g:Lbf/f$f;

    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lbf/f$f;

    iget-object v1, p0, Lbf/f$d;->e:LBe/J;

    iget-object v2, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    iget-object p1, p0, Lbf/f$d;->h:Lbf/f$f;

    iput-object v0, p0, Lbf/f$d;->h:Lbf/f$f;

    iget v1, p0, Lbf/f$d;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbf/f$d;->f:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbf/f$d;->g()V

    return-void
.end method

.method public b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lbf/f$d;->e()Lbf/f$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbf/f$d;->f(Lbf/f$f;)I

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

    check-cast v0, Lbf/f$f;

    iget-object v4, v0, Lbf/f$f;->b:Ljava/lang/Object;

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

    new-instance v0, Lbf/f$f;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    iget-object p1, p0, Lbf/f$d;->h:Lbf/f$f;

    iput-object v0, p0, Lbf/f$d;->h:Lbf/f$f;

    iget v1, p0, Lbf/f$d;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lbf/f$d;->f:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbf/f$d;->h()V

    iput-boolean v2, p0, Lbf/f$d;->i:Z

    return-void
.end method

.method public d(Lbf/f$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lbf/f$c;->b:LBe/I;

    iget-object v1, p1, Lbf/f$c;->d:Ljava/lang/Object;

    check-cast v1, Lbf/f$f;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lbf/f$d;->e()Lbf/f$f;

    move-result-object v1

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    iget-boolean v4, p1, Lbf/f$c;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iput-object v5, p1, Lbf/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_3
    :goto_1
    iget-boolean v4, p1, Lbf/f$c;->e:Z

    if-eqz v4, :cond_4

    iput-object v5, p1, Lbf/f$c;->d:Ljava/lang/Object;

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf/f$f;

    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    iput-object v1, p1, Lbf/f$c;->d:Ljava/lang/Object;

    neg-int v3, v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_6
    iget-object v1, v4, Lbf/f$f;->b:Ljava/lang/Object;

    iget-boolean v6, p0, Lbf/f$d;->i:Z

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-static {v1}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lio/reactivex/internal/util/p;->j(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :goto_2
    iput-object v5, p1, Lbf/f$c;->d:Ljava/lang/Object;

    iput-boolean v2, p1, Lbf/f$c;->e:Z

    return-void

    :cond_8
    invoke-interface {v0, v1}, LBe/I;->h(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_1
.end method

.method public e()Lbf/f$f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbf/f$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    iget-object v1, p0, Lbf/f$d;->e:LBe/J;

    iget-object v2, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lbf/f$d;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$f;

    :goto_0
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lbf/f$f;->c:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$f;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public f(Lbf/f$f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/f$f<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf/f$f;

    if-nez v1, :cond_1

    iget-object p1, p1, Lbf/f$f;->b:Ljava/lang/Object;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public g()V
    .locals 6

    iget v0, p0, Lbf/f$d;->f:I

    iget v1, p0, Lbf/f$d;->b:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbf/f$d;->f:I

    iget-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf/f$f;

    iput-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    :cond_0
    iget-object v0, p0, Lbf/f$d;->e:LBe/J;

    iget-object v1, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lbf/f$d;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$f;

    if-nez v3, :cond_1

    iput-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    goto :goto_1

    :cond_1
    iget-wide v4, v3, Lbf/f$f;->c:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    iput-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$f;

    if-nez v3, :cond_4

    iget-object v3, p0, Lbf/f$d;->e:LBe/J;

    iget-object v4, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget-wide v5, p0, Lbf/f$d;->c:J

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lbf/f$f;->c:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lbf/f$f;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/p;->o(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/p;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    iget-object v0, v2, Lbf/f$f;->b:Ljava/lang/Object;

    return-object v0

    :cond_4
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public h()V
    .locals 10

    iget-object v0, p0, Lbf/f$d;->e:LBe/J;

    iget-object v1, p0, Lbf/f$d;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lbf/f$d;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/f$f;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_1

    iget-object v0, v2, Lbf/f$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lbf/f$f;

    invoke-direct {v0, v7, v5, v6}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    goto :goto_1

    :cond_0
    iput-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    goto :goto_1

    :cond_1
    iget-wide v8, v3, Lbf/f$f;->c:J

    cmp-long v4, v8, v0

    if-lez v4, :cond_3

    iget-object v0, v2, Lbf/f$f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    new-instance v0, Lbf/f$f;

    invoke-direct {v0, v7, v5, v6}, Lbf/f$f;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iput-object v0, p0, Lbf/f$d;->g:Lbf/f$f;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lbf/f$d;->g:Lbf/f$f;

    :goto_1
    return-void

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lbf/f$d;->e()Lbf/f$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbf/f$d;->f(Lbf/f$f;)I

    move-result v0

    return v0
.end method
