.class public final LLe/E1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/E1;
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
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final n:J = -0x4eca0434695949bbL


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

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LBe/J;

.field public final g:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public i:Lhn/d;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile k:Z

.field public volatile l:Z

.field public m:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lhn/c;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/E1$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, LLe/E1$a;->b:Lhn/c;

    iput-wide p2, p0, LLe/E1$a;->c:J

    iput-wide p4, p0, LLe/E1$a;->d:J

    iput-object p6, p0, LLe/E1$a;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LLe/E1$a;->f:LBe/J;

    new-instance p1, LRe/c;

    invoke-direct {p1, p8}, LRe/c;-><init>(I)V

    iput-object p1, p0, LLe/E1$a;->g:LRe/c;

    iput-boolean p9, p0, LLe/E1$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LLe/E1$a;->f:LBe/J;

    iget-object v1, p0, LLe/E1$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, LLe/E1$a;->g:LRe/c;

    invoke-virtual {p0, v0, v1, v2}, LLe/E1$a;->d(JLRe/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/E1$a;->l:Z

    invoke-virtual {p0}, LLe/E1$a;->c()V

    return-void
.end method

.method public b(ZLhn/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lhn/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, LLe/E1$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, LLe/E1$a;->g:LRe/c;

    invoke-virtual {p1}, LRe/c;->clear()V

    return v1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    iget-object p1, p0, LLe/E1$a;->m:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lhn/c;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p3, p0, LLe/E1$a;->m:Ljava/lang/Throwable;

    if-eqz p3, :cond_3

    iget-object p1, p0, LLe/E1$a;->g:LRe/c;

    invoke-virtual {p1}, LRe/c;->clear()V

    invoke-interface {p2, p3}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p2}, Lhn/c;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/E1$a;->b:Lhn/c;

    iget-object v1, p0, LLe/E1$a;->g:LRe/c;

    iget-boolean v2, p0, LLe/E1$a;->h:Z

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    iget-boolean v5, p0, LLe/E1$a;->l:Z

    if-eqz v5, :cond_6

    invoke-virtual {v1}, LRe/c;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v5, v0, v2}, LLe/E1$a;->b(ZLhn/c;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, LLe/E1$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    invoke-virtual {v1}, LRe/c;->peek()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {p0, v11, v0, v2}, LLe/E1$a;->b(ZLhn/c;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    return-void

    :cond_4
    cmp-long v11, v5, v9

    if-nez v11, :cond_5

    cmp-long v5, v9, v7

    if-eqz v5, :cond_6

    iget-object v5, p0, LLe/E1$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v5, v9, v10}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_6
    :goto_2
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/E1$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/E1$a;->k:Z

    iget-object v0, p0, LLe/E1$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/E1$a;->g:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    :cond_0
    return-void
.end method

.method public d(JLRe/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LRe/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, LLe/E1$a;->d:J

    iget-wide v2, p0, LLe/E1$a;->c:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3}, LRe/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p3}, LRe/c;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v8, p1, v0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    if-nez v4, :cond_2

    invoke-virtual {p3}, LRe/c;->p()I

    move-result v6

    shr-int/2addr v6, v5

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    :cond_1
    invoke-virtual {p3}, LRe/c;->poll()Ljava/lang/Object;

    invoke-virtual {p3}, LRe/c;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/E1$a;->g:LRe/c;

    iget-object v1, p0, LLe/E1$a;->f:LBe/J;

    iget-object v2, p0, LLe/E1$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, LRe/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2, v0}, LLe/E1$a;->d(JLRe/c;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/E1$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/E1$a;->c()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/E1$a;->i:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/E1$a;->i:Lhn/d;

    iget-object v0, p0, LLe/E1$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, LLe/E1$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/E1$a;->f:LBe/J;

    iget-object v1, p0, LLe/E1$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, LLe/E1$a;->g:LRe/c;

    invoke-virtual {p0, v0, v1, v2}, LLe/E1$a;->d(JLRe/c;)V

    :cond_0
    iput-object p1, p0, LLe/E1$a;->m:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/E1$a;->l:Z

    invoke-virtual {p0}, LLe/E1$a;->c()V

    return-void
.end method
