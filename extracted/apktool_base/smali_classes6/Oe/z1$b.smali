.class public final LOe/z1$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements LOe/z1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/z1;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "LOe/z1$d;"
    }
.end annotation


# static fields
.field public static final j:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public final f:LGe/h;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "LBe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/z1$b;->b:LBe/I;

    iput-wide p2, p0, LOe/z1$b;->c:J

    iput-object p4, p0, LOe/z1$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/z1$b;->e:LBe/J$c;

    iput-object p6, p0, LOe/z1$b;->i:LBe/G;

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LOe/z1$b;->f:LGe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/z1$b;->f:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LOe/z1$b;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    iget-object v0, p0, LOe/z1$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LOe/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, LOe/z1$b;->i:LBe/G;

    const/4 p2, 0x0

    iput-object p2, p0, LOe/z1$b;->i:LBe/G;

    new-instance p2, LOe/z1$a;

    iget-object v0, p0, LOe/z1$b;->b:LBe/I;

    invoke-direct {p2, v0, p0}, LOe/z1$a;-><init>(LBe/I;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, LBe/G;->c(LBe/I;)V

    iget-object p1, p0, LOe/z1$b;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LOe/z1$b;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public f(J)V
    .locals 4

    iget-object v0, p0, LOe/z1$b;->f:LGe/h;

    iget-object v1, p0, LOe/z1$b;->e:LBe/J$c;

    new-instance v2, LOe/z1$e;

    invoke-direct {v2, p1, p2, p0}, LOe/z1$e;-><init>(JLOe/z1$d;)V

    iget-wide p1, p0, LOe/z1$b;->c:J

    iget-object v3, p0, LOe/z1$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/z1$b;->f:LGe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/z1$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, LOe/z1$b;->f(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, LOe/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/z1$b;->f:LGe/h;

    invoke-virtual {v0}, LGe/h;->dispose()V

    iget-object v0, p0, LOe/z1$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LOe/z1$b;->e:LBe/J$c;

    invoke-interface {p1}, LDe/c;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
