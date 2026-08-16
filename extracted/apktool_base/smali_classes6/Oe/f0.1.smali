.class public final LOe/f0;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
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

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/f0;->b:Ljava/util/concurrent/Future;

    iput-wide p2, p0, LOe/f0;->c:J

    iput-object p4, p0, LOe/f0;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LJe/l;

    invoke-direct {v0, p1}, LJe/l;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {v0}, LJe/l;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, LOe/f0;->d:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_0

    iget-object v2, p0, LOe/f0;->b:Ljava/util/concurrent/Future;

    iget-wide v3, p0, LOe/f0;->c:J

    invoke-interface {v2, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LOe/f0;->b:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const-string v2, "Future returned null"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, LJe/l;->f(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, LJe/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method
