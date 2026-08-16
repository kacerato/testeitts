.class public final LOe/r1$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/r1;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final l:J = -0x4eca0434695949bbL


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

.field public i:LDe/c;

.field public volatile j:Z

.field public k:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LBe/I;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LOe/r1$a;->b:LBe/I;

    iput-wide p2, p0, LOe/r1$a;->c:J

    iput-wide p4, p0, LOe/r1$a;->d:J

    iput-object p6, p0, LOe/r1$a;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LOe/r1$a;->f:LBe/J;

    new-instance p1, LRe/c;

    invoke-direct {p1, p8}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/r1$a;->g:LRe/c;

    iput-boolean p9, p0, LOe/r1$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LOe/r1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/r1$a;->b:LBe/I;

    iget-object v1, p0, LOe/r1$a;->g:LRe/c;

    iget-boolean v2, p0, LOe/r1$a;->h:Z

    :goto_0
    iget-boolean v3, p0, LOe/r1$a;->j:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, LRe/c;->clear()V

    return-void

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, LOe/r1$a;->k:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, LRe/c;->clear()V

    invoke-interface {v0, v3}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v1, p0, LOe/r1$a;->k:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, LBe/I;->a()V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, p0, LOe/r1$a;->f:LBe/J;

    iget-object v7, p0, LOe/r1$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    iget-wide v9, p0, LOe/r1$a;->d:J

    sub-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0, v4}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/r1$a;->j:Z

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, LOe/r1$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/r1$a;->j:Z

    iget-object v1, p0, LOe/r1$a;->i:LDe/c;

    invoke-interface {v1}, LDe/c;->dispose()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/r1$a;->g:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/r1$a;->i:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/r1$a;->i:LDe/c;

    iget-object p1, p0, LOe/r1$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/r1$a;->g:LRe/c;

    iget-object v1, p0, LOe/r1$a;->f:LBe/J;

    iget-object v2, p0, LOe/r1$a;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, LOe/r1$a;->d:J

    iget-wide v5, p0, LOe/r1$a;->c:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    const/4 v8, 0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, p1}, LRe/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, LRe/c;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, LRe/c;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v11, v1, v3

    cmp-long p1, v9, v11

    if-lez p1, :cond_1

    if-nez v7, :cond_2

    invoke-virtual {v0}, LRe/c;->p()I

    move-result p1

    shr-int/2addr p1, v8

    int-to-long v9, p1

    cmp-long p1, v9, v5

    if-lez p1, :cond_2

    :cond_1
    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    invoke-virtual {v0}, LRe/c;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LOe/r1$a;->k:Ljava/lang/Throwable;

    invoke-virtual {p0}, LOe/r1$a;->b()V

    return-void
.end method
