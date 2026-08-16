.class public abstract LLe/K0$a;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LUe/c<",
        "TT;>;",
        "LBe/q<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final p:J = -0x725dec0716520049L


# instance fields
.field public final c:LBe/J$c;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Lhn/d;

.field public i:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile j:Z

.field public volatile k:Z

.field public l:Ljava/lang/Throwable;

.field public m:I

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>(LBe/J$c;ZI)V
    .locals 0

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LLe/K0$a;->c:LBe/J$c;

    iput-boolean p2, p0, LLe/K0$a;->d:Z

    iput p3, p0, LLe/K0$a;->e:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/K0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, LLe/K0$a;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, LLe/K0$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/K0$a;->k:Z

    invoke-virtual {p0}, LLe/K0$a;->v()V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/K0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/K0$a;->j:Z

    iget-object v0, p0, LLe/K0$a;->h:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/K0$a;->c:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/K0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LLe/K0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public final d(ZZLhn/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lhn/c<",
            "*>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LLe/K0$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/K0$a;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-boolean p1, p0, LLe/K0$a;->d:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, LLe/K0$a;->j:Z

    iget-object p1, p0, LLe/K0$a;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lhn/c;->a()V

    :goto_0
    iget-object p1, p0, LLe/K0$a;->c:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_2
    iget-object p1, p0, LLe/K0$a;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    iput-boolean v1, p0, LLe/K0$a;->j:Z

    invoke-virtual {p0}, LLe/K0$a;->clear()V

    invoke-interface {p3, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/K0$a;->c:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, LLe/K0$a;->j:Z

    invoke-interface {p3}, Lhn/c;->a()V

    iget-object p1, p0, LLe/K0$a;->c:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/K0$a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LLe/K0$a;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LLe/K0$a;->v()V

    return-void

    :cond_1
    iget-object v0, p0, LLe/K0$a;->i:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LLe/K0$a;->h:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LLe/K0$a;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/K0$a;->k:Z

    :cond_2
    invoke-virtual {p0}, LLe/K0$a;->v()V

    return-void
.end method

.method public final i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/K0$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/K0$a;->v()V

    :cond_0
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LLe/K0$a;->i:LIe/o;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/K0$a;->o:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract n()V
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/K0$a;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LLe/K0$a;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/K0$a;->k:Z

    invoke-virtual {p0}, LLe/K0$a;->v()V

    return-void
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public final run()V
    .locals 2

    iget-boolean v0, p0, LLe/K0$a;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/K0$a;->p()V

    goto :goto_0

    :cond_0
    iget v0, p0, LLe/K0$a;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LLe/K0$a;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LLe/K0$a;->n()V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/K0$a;->c:LBe/J$c;

    invoke-virtual {v0, p0}, LBe/J$c;->b(Ljava/lang/Runnable;)LDe/c;

    return-void
.end method
