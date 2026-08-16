.class public abstract LPe/o$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/o;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final l:J = 0x7ffc3440018b78e6L


# instance fields
.field public final b:I

.field public final c:I

.field public final d:LRe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LBe/J$c;

.field public f:Lhn/d;

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile j:Z

.field public k:I


# direct methods
.method public constructor <init>(ILRe/b;LBe/J$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LRe/b<",
            "TT;>;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LPe/o$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iput p1, p0, LPe/o$a;->b:I

    iput-object p2, p0, LPe/o$a;->d:LRe/b;

    shr-int/lit8 p2, p1, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, LPe/o$a;->c:I

    iput-object p3, p0, LPe/o$a;->e:LBe/J$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, LPe/o$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/o$a;->g:Z

    invoke-virtual {p0}, LPe/o$a;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LPe/o$a;->e:LBe/J$c;

    invoke-virtual {v0, p0}, LBe/J$c;->b(Ljava/lang/Runnable;)LDe/c;

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, LPe/o$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/o$a;->j:Z

    iget-object v0, p0, LPe/o$a;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LPe/o$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LPe/o$a;->d:LRe/b;

    invoke-virtual {v0}, LRe/b;->clear()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LPe/o$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LPe/o$a;->d:LRe/b;

    invoke-virtual {v0, p1}, LRe/b;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LPe/o$a;->f:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LPe/o$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, LPe/o$a;->b()V

    return-void
.end method

.method public final i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LPe/o$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LPe/o$a;->b()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LPe/o$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LPe/o$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LPe/o$a;->g:Z

    invoke-virtual {p0}, LPe/o$a;->b()V

    return-void
.end method
