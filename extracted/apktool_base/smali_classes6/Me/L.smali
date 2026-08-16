.class public final LMe/L;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/L;->b:Ljava/util/concurrent/Future;

    iput-wide p2, p0, LMe/L;->c:J

    iput-object p4, p0, LMe/L;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LDe/d;->b()LDe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-wide v1, p0, LMe/L;->c:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    iget-object v1, p0, LMe/L;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, LMe/L;->b:Ljava/util/concurrent/Future;

    iget-object v4, p0, LMe/L;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v1, :cond_1

    invoke-interface {p1}, LBe/v;->a()V

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, LBe/v;->b(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
