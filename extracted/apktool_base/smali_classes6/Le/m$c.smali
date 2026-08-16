.class public final LLe/m$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final j:J = -0x4df0a4abec27f371L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TC;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public g:Lhn/d;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lhn/c;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TC;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/m$c;->b:Lhn/c;

    iput p2, p0, LLe/m$c;->d:I

    iput p3, p0, LLe/m$c;->e:I

    iput-object p4, p0, LLe/m$c;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LLe/m$c;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/m$c;->h:Z

    iget-object v0, p0, LLe/m$c;->f:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, LLe/m$c;->f:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v1, p0, LLe/m$c;->b:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, LLe/m$c;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/m$c;->g:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/m$c;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/m$c;->f:Ljava/util/Collection;

    iget v1, p0, LLe/m$c;->i:I

    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v0, p0, LLe/m$c;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, LLe/m$c;->f:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/m$c;->cancel()V

    invoke-virtual {p0, p1}, LLe/m$c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, LLe/m$c;->d:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, LLe/m$c;->f:Ljava/util/Collection;

    iget-object p1, p0, LLe/m$c;->b:Lhn/c;

    invoke-interface {p1, v0}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_2
    iget p1, p0, LLe/m$c;->e:I

    if-ne v2, p1, :cond_3

    const/4 v2, 0x0

    :cond_3
    iput v2, p0, LLe/m$c;->i:I

    return-void
.end method

.method public i(J)V
    .locals 6

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLe/m$c;->d:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide v0

    iget v2, p0, LLe/m$c;->e:I

    iget v3, p0, LLe/m$c;->d:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide p1

    iget-object v2, p0, LLe/m$c;->g:Lhn/d;

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/d;->c(JJ)J

    move-result-wide p1

    invoke-interface {v2, p1, p2}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/m$c;->g:Lhn/d;

    iget v1, p0, LLe/m$c;->e:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/m$c;->g:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/m$c;->g:Lhn/d;

    iget-object p1, p0, LLe/m$c;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/m$c;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/m$c;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, LLe/m$c;->f:Ljava/util/Collection;

    iget-object v0, p0, LLe/m$c;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
