.class public final LKe/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/M$a$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LDe/b;

.field public final d:LBe/f;

.field public final synthetic e:LKe/M;


# direct methods
.method public constructor <init>(LKe/M;Ljava/util/concurrent/atomic/AtomicBoolean;LDe/b;LBe/f;)V
    .locals 0

    iput-object p1, p0, LKe/M$a;->e:LKe/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LKe/M$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, LKe/M$a;->c:LDe/b;

    iput-object p4, p0, LKe/M$a;->d:LBe/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LKe/M$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LKe/M$a;->c:LDe/b;

    invoke-virtual {v0}, LDe/b;->f()V

    iget-object v0, p0, LKe/M$a;->e:LKe/M;

    iget-object v0, v0, LKe/M;->f:LBe/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LKe/M$a;->d:LBe/f;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, LKe/M$a;->e:LKe/M;

    iget-wide v3, v2, LKe/M;->c:J

    iget-object v2, v2, LKe/M;->d:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v2}, Lio/reactivex/internal/util/ExceptionHelper;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, LKe/M$a$a;

    invoke-direct {v1, p0}, LKe/M$a$a;-><init>(LKe/M$a;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    :cond_1
    :goto_0
    return-void
.end method
