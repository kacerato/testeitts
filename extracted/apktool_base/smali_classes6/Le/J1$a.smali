.class public final LLe/J1$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
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

.field public final g:LGe/h;

.field public volatile h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J$c;)V
    .locals 1
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

    new-instance v0, LGe/h;

    invoke-direct {v0}, LGe/h;-><init>()V

    iput-object v0, p0, LLe/J1$a;->g:LGe/h;

    iput-object p1, p0, LLe/J1$a;->b:Lhn/c;

    iput-wide p2, p0, LLe/J1$a;->c:J

    iput-object p4, p0, LLe/J1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/J1$a;->e:LBe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/J1$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/J1$a;->i:Z

    iget-object v0, p0, LLe/J1$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    iget-object v0, p0, LLe/J1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/J1$a;->f:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/J1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/J1$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LLe/J1$a;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/J1$a;->h:Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v0, p0, LLe/J1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, LLe/J1$a;->g:LGe/h;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDe/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_1
    iget-object p1, p0, LLe/J1$a;->g:LGe/h;

    iget-object v0, p0, LLe/J1$a;->e:LBe/J$c;

    iget-wide v1, p0, LLe/J1$a;->c:J

    iget-object v3, p0, LLe/J1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v0

    invoke-virtual {p1, v0}, LGe/h;->a(LDe/c;)Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, LLe/J1$a;->i:Z

    invoke-virtual {p0}, LLe/J1$a;->cancel()V

    iget-object p1, p0, LLe/J1$a;->b:Lhn/c;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver value due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
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

    iget-object v0, p0, LLe/J1$a;->f:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/J1$a;->f:Lhn/d;

    iget-object v0, p0, LLe/J1$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/J1$a;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/J1$a;->i:Z

    iget-object v0, p0, LLe/J1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LLe/J1$a;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LLe/J1$a;->h:Z

    return-void
.end method
