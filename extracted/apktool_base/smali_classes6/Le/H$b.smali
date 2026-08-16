.class public final LLe/H$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final j:J = -0x7e5310a1f6e139dcL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public f:Lhn/d;

.field public g:LDe/c;

.field public volatile h:J

.field public i:Z


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/H$b;->b:Lhn/c;

    iput-wide p2, p0, LLe/H$b;->c:J

    iput-object p4, p0, LLe/H$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/H$b;->e:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/H$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/H$b;->i:Z

    iget-object v0, p0, LLe/H$b;->g:LDe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_1
    check-cast v0, LLe/H$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LLe/H$a;->a()V

    :cond_2
    iget-object v0, p0, LLe/H$b;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LLe/H$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public b(JLjava/lang/Object;LLe/H$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "LLe/H$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/H$b;->h:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/H$b;->b:Lhn/c;

    invoke-interface {p1, p3}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p4}, LLe/H$a;->dispose()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LLe/H$b;->cancel()V

    iget-object p1, p0, LLe/H$b;->b:Lhn/c;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/H$b;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/H$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/H$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LLe/H$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LLe/H$b;->h:J

    iget-object v2, p0, LLe/H$b;->g:LDe/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LDe/c;->dispose()V

    :cond_1
    new-instance v2, LLe/H$a;

    invoke-direct {v2, p1, v0, v1, p0}, LLe/H$a;-><init>(Ljava/lang/Object;JLLe/H$b;)V

    iput-object v2, p0, LLe/H$b;->g:LDe/c;

    iget-object p1, p0, LLe/H$b;->e:LBe/J$c;

    iget-wide v0, p0, LLe/H$b;->c:J

    iget-object v3, p0, LLe/H$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v2, p1}, LLe/H$a;->b(LDe/c;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/H$b;->f:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/H$b;->f:Lhn/d;

    iget-object v0, p0, LLe/H$b;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/H$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/H$b;->i:Z

    iget-object v0, p0, LLe/H$b;->g:LDe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_1
    iget-object v0, p0, LLe/H$b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/H$b;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return-void
.end method
