.class public final LLe/m1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final n:J = -0x18a87226297dfae5L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field public final d:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:I

.field public final g:I

.field public volatile h:Z

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public k:Lhn/d;

.field public l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>(Lhn/c;LFe/c;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;TR;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/m1$a;->b:Lhn/c;

    iput-object p2, p0, LLe/m1$a;->c:LFe/c;

    iput-object p3, p0, LLe/m1$a;->l:Ljava/lang/Object;

    iput p4, p0, LLe/m1$a;->f:I

    shr-int/lit8 p1, p4, 0x2

    sub-int p1, p4, p1

    iput p1, p0, LLe/m1$a;->g:I

    new-instance p1, LRe/b;

    invoke-direct {p1, p4}, LRe/b;-><init>(I)V

    iput-object p1, p0, LLe/m1$a;->d:LIe/n;

    invoke-interface {p1, p3}, LIe/o;->offer(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/m1$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/m1$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/m1$a;->i:Z

    invoke-virtual {p0}, LLe/m1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LLe/m1$a;->b:Lhn/c;

    iget-object v2, v0, LLe/m1$a;->d:LIe/n;

    iget v3, v0, LLe/m1$a;->g:I

    iget v4, v0, LLe/m1$a;->m:I

    const/4 v5, 0x1

    move v6, v5

    :cond_1
    iget-object v7, v0, LLe/m1$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_2
    :goto_0
    cmp-long v13, v11, v7

    if-eqz v13, :cond_8

    iget-boolean v14, v0, LLe/m1$a;->h:Z

    if-eqz v14, :cond_3

    invoke-interface {v2}, LIe/o;->clear()V

    return-void

    :cond_3
    iget-boolean v14, v0, LLe/m1$a;->i:Z

    if-eqz v14, :cond_4

    iget-object v15, v0, LLe/m1$a;->j:Ljava/lang/Throwable;

    if-eqz v15, :cond_4

    invoke-interface {v2}, LIe/o;->clear()V

    invoke-interface {v1, v15}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-interface {v2}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_5

    move/from16 v17, v5

    goto :goto_1

    :cond_5
    move/from16 v17, v16

    :goto_1
    if-eqz v14, :cond_6

    if-eqz v17, :cond_6

    invoke-interface {v1}, Lhn/c;->a()V

    return-void

    :cond_6
    if-eqz v17, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1, v15}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_2

    iget-object v4, v0, LLe/m1$a;->k:Lhn/d;

    int-to-long v13, v3

    invoke-interface {v4, v13, v14}, Lhn/d;->i(J)V

    move/from16 v4, v16

    goto :goto_0

    :cond_8
    :goto_2
    if-nez v13, :cond_a

    iget-boolean v7, v0, LLe/m1$a;->i:Z

    if-eqz v7, :cond_a

    iget-object v7, v0, LLe/m1$a;->j:Ljava/lang/Throwable;

    if-eqz v7, :cond_9

    invoke-interface {v2}, LIe/o;->clear()V

    invoke-interface {v1, v7}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    invoke-interface {v2}, LIe/o;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Lhn/c;->a()V

    return-void

    :cond_a
    cmp-long v7, v11, v9

    if-eqz v7, :cond_b

    iget-object v7, v0, LLe/m1$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v7, v11, v12}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_b
    iput v4, v0, LLe/m1$a;->m:I

    neg-int v6, v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/m1$a;->h:Z

    iget-object v0, p0, LLe/m1$a;->k:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/m1$a;->d:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/m1$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/m1$a;->l:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, LLe/m1$a;->c:LFe/c;

    invoke-interface {v1, v0, p1}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The accumulator returned a null value"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, LLe/m1$a;->l:Ljava/lang/Object;

    iget-object v0, p0, LLe/m1$a;->d:LIe/n;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LLe/m1$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/m1$a;->k:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/m1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/m1$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/m1$a;->b()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/m1$a;->k:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/m1$a;->k:Lhn/d;

    iget-object v0, p0, LLe/m1$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/m1$a;->f:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/m1$a;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, LLe/m1$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/m1$a;->i:Z

    invoke-virtual {p0}, LLe/m1$a;->b()V

    return-void
.end method
