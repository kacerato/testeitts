.class public final LKe/r;
.super LBe/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/r;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    invoke-static {}, LDe/d;->b()LDe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    :try_start_0
    iget-object v1, p0, LKe/r;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LBe/f;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
