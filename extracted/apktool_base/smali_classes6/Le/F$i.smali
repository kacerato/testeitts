.class public final LLe/F$i;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/n<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = 0x43c4fdd95fbcd5c6L


# instance fields
.field public final b:LLe/F$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/F$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lio/reactivex/internal/util/c;

.field public final d:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z


# direct methods
.method public constructor <init>(LLe/F$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/F$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/F$i;->b:LLe/F$b;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/F$i;->c:Lio/reactivex/internal/util/c;

    new-instance p1, LRe/c;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/F$i;->d:LIe/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, LLe/F$i;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/F$i;->e:Z

    invoke-virtual {p0}, LLe/F$i;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LLe/F$i;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 8

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    iget-object v1, p0, LLe/F$i;->d:LIe/n;

    iget-object v2, p0, LLe/F$i;->c:Lio/reactivex/internal/util/c;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-virtual {v0}, LLe/F$b;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, LIe/o;->clear()V

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, LIe/o;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, LLe/F$b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-boolean v5, p0, LLe/F$i;->e:Z

    invoke-interface {v1}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v0}, LLe/F$b;->a()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_5
    invoke-interface {v0, v6}, LBe/k;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e(LFe/f;)V
    .locals 1

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0, p1}, LLe/F$b;->e(LFe/f;)V

    return-void
.end method

.method public f(Ljava/lang/Throwable;)Z
    .locals 2

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, LLe/F$i;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, LLe/F$i;->c:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/F$i;->e:Z

    invoke-virtual {p0}, LLe/F$i;->b()V

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(LDe/c;)V
    .locals 1

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0, p1}, LLe/F$b;->g(LDe/c;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, LLe/F$i;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LLe/F$i;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-interface {v0, p1}, LBe/k;->h(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_2
    iget-object v0, p0, LLe/F$i;->d:LIe/n;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, LLe/F$i;->c()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, LLe/F$i;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public serialize()LBe/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/n<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLe/F$i;->b:LLe/F$b;

    invoke-virtual {v0}, LLe/F$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
