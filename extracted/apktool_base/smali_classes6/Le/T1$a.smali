.class public final LLe/T1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/T1;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final i:J = -0x20d478356927aeadL


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:I

.field public f:J

.field public g:Lhn/d;

.field public h:LZe/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;JI)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LLe/T1$a;->b:Lhn/c;

    iput-wide p2, p0, LLe/T1$a;->c:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/T1$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p4, p0, LLe/T1$a;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LLe/T1$a;->h:LZe/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LLe/T1$a;->h:LZe/h;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    iget-object v0, p0, LLe/T1$a;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, LLe/T1$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/T1$a;->run()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/T1$a;->f:J

    iget-object v2, p0, LLe/T1$a;->h:LZe/h;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v2, p0, LLe/T1$a;->e:I

    invoke-static {v2, p0}, LZe/h;->W8(ILjava/lang/Runnable;)LZe/h;

    move-result-object v2

    iput-object v2, p0, LLe/T1$a;->h:LZe/h;

    iget-object v5, p0, LLe/T1$a;->b:Lhn/c;

    invoke-interface {v5, v2}, Lhn/c;->h(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    invoke-virtual {v2, p1}, LZe/h;->h(Ljava/lang/Object;)V

    iget-wide v5, p0, LLe/T1$a;->c:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_1

    iput-wide v3, p0, LLe/T1$a;->f:J

    const/4 p1, 0x0

    iput-object p1, p0, LLe/T1$a;->h:LZe/h;

    invoke-virtual {v2}, LZe/h;->a()V

    goto :goto_0

    :cond_1
    iput-wide v0, p0, LLe/T1$a;->f:J

    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 2

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LLe/T1$a;->c:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/d;->d(JJ)J

    move-result-wide p1

    iget-object v0, p0, LLe/T1$a;->g:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/T1$a;->g:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/T1$a;->g:Lhn/d;

    iget-object p1, p0, LLe/T1$a;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LLe/T1$a;->h:LZe/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LLe/T1$a;->h:LZe/h;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, LLe/T1$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/T1$a;->g:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    :cond_0
    return-void
.end method
