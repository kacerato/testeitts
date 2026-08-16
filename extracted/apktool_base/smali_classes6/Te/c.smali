.class public abstract LTe/c;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Throwable;

.field public d:Lhn/d;

.field public volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/e;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LTe/c;->d:Lhn/d;

    sget-object v2, LUe/j;->CANCELLED:LUe/j;

    iput-object v2, p0, LTe/c;->d:Lhn/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lhn/d;->cancel()V

    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, LTe/c;->c:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p0, LTe/c;->b:Ljava/lang/Object;

    return-object v0

    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LTe/c;->d:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LTe/c;->d:Lhn/d;

    iget-boolean v0, p0, LTe/c;->e:Z

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    iget-boolean v0, p0, LTe/c;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, LUe/j;->CANCELLED:LUe/j;

    iput-object v0, p0, LTe/c;->d:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method
