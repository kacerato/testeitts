.class public final LOe/i1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/i1;
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

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:LRe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public h:LDe/c;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/i1$a;->b:LBe/I;

    iput-wide p2, p0, LOe/i1$a;->c:J

    iput-object p4, p0, LOe/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/i1$a;->e:LBe/J;

    new-instance p1, LRe/c;

    invoke-direct {p1, p6}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/i1$a;->f:LRe/c;

    iput-boolean p7, p0, LOe/i1$a;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/i1$a;->j:Z

    invoke-virtual {p0}, LOe/i1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LOe/i1$a;->b:LBe/I;

    iget-object v2, v0, LOe/i1$a;->f:LRe/c;

    iget-boolean v3, v0, LOe/i1$a;->g:Z

    iget-object v4, v0, LOe/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, LOe/i1$a;->e:LBe/J;

    iget-wide v6, v0, LOe/i1$a;->c:J

    const/4 v8, 0x1

    move v9, v8

    :cond_1
    :goto_0
    iget-boolean v10, v0, LOe/i1$a;->i:Z

    if-eqz v10, :cond_2

    iget-object v1, v0, LOe/i1$a;->f:LRe/c;

    invoke-virtual {v1}, LRe/c;->clear()V

    return-void

    :cond_2
    iget-boolean v10, v0, LOe/i1$a;->j:Z

    invoke-virtual {v2}, LRe/c;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_3

    move v12, v8

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v5, v4}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v13

    if-nez v12, :cond_4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v6

    cmp-long v11, v15, v13

    if-lez v11, :cond_4

    move v12, v8

    :cond_4
    if-eqz v10, :cond_8

    if-eqz v3, :cond_6

    if-eqz v12, :cond_8

    iget-object v2, v0, LOe/i1$a;->k:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    invoke-interface {v1, v2}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, LBe/I;->a()V

    :goto_2
    return-void

    :cond_6
    iget-object v10, v0, LOe/i1$a;->k:Ljava/lang/Throwable;

    if-eqz v10, :cond_7

    iget-object v2, v0, LOe/i1$a;->f:LRe/c;

    invoke-virtual {v2}, LRe/c;->clear()V

    invoke-interface {v1, v10}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v1}, LBe/I;->a()V

    return-void

    :cond_8
    if-eqz v12, :cond_9

    neg-int v9, v9

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void

    :cond_9
    invoke-virtual {v2}, LRe/c;->poll()Ljava/lang/Object;

    invoke-virtual {v2}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/i1$a;->i:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/i1$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/i1$a;->i:Z

    iget-object v0, p0, LOe/i1$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/i1$a;->f:LRe/c;

    invoke-virtual {v0}, LRe/c;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/i1$a;->h:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/i1$a;->h:LDe/c;

    iget-object p1, p0, LOe/i1$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/i1$a;->f:LRe/c;

    iget-object v1, p0, LOe/i1$a;->e:LBe/J;

    iget-object v2, p0, LOe/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LBe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LRe/c;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOe/i1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LOe/i1$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/i1$a;->j:Z

    invoke-virtual {p0}, LOe/i1$a;->b()V

    return-void
.end method
