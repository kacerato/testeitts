.class public final LLe/A1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/A1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.field public static final m:J = -0x3072c973d405526bL

.field public static final n:LLe/A1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/A1$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Z

.field public volatile f:Z

.field public final g:Lio/reactivex/internal/util/c;

.field public volatile h:Z

.field public i:Lhn/d;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LLe/A1$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile l:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LLe/A1$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, LLe/A1$a;-><init>(LLe/A1$b;JI)V

    sput-object v0, LLe/A1$b;->n:LLe/A1$a;

    invoke-virtual {v0}, LLe/A1$a;->b()V

    return-void
.end method

.method public constructor <init>(Lhn/c;LFe/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LLe/A1$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, LLe/A1$b;->b:Lhn/c;

    iput-object p2, p0, LLe/A1$b;->c:LFe/o;

    iput p3, p0, LLe/A1$b;->d:I

    iput-boolean p4, p0, LLe/A1$b;->e:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LLe/A1$b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/A1$b;->f:Z

    invoke-virtual {p0}, LLe/A1$b;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/A1$a;

    sget-object v1, LLe/A1$b;->n:LLe/A1$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/A1$a;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LLe/A1$a;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, LLe/A1$b;->b:Lhn/c;

    const/4 v4, 0x1

    :cond_1
    :goto_0
    iget-boolean v0, v1, LLe/A1$b;->h:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v0, v1, LLe/A1$b;->f:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, LLe/A1$b;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lhn/c;->a()V

    :goto_1
    return-void

    :cond_4
    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, LLe/A1$b;->b()V

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {v2}, Lhn/c;->a()V

    return-void

    :cond_6
    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LLe/A1$a;

    if-eqz v6, :cond_7

    iget-object v0, v6, LLe/A1$a;->e:LIe/o;

    move-object v7, v0

    goto :goto_2

    :cond_7
    move-object v7, v5

    :goto_2
    if-eqz v7, :cond_15

    iget-boolean v0, v6, LLe/A1$a;->f:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, LLe/A1$b;->e:Z

    if-nez v0, :cond_9

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, LLe/A1$b;->b()V

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    invoke-interface {v7}, LIe/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v6, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-interface {v7}, LIe/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v6, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, v1, LLe/A1$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    move-wide v12, v10

    :goto_3
    cmp-long v0, v12, v8

    const/4 v14, 0x0

    if-eqz v0, :cond_12

    iget-boolean v0, v1, LLe/A1$b;->h:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-boolean v0, v6, LLe/A1$a;->f:Z

    :try_start_0
    invoke-interface {v7}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v15, v0

    invoke-static {v15}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v6}, LLe/A1$a;->b()V

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, v15}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-object v15, v5

    const/4 v0, 0x1

    :goto_4
    if-nez v15, :cond_c

    const/16 v16, 0x1

    goto :goto_5

    :cond_c
    move/from16 v16, v14

    :goto_5
    iget-object v3, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v6, v3, :cond_d

    :goto_6
    const/4 v14, 0x1

    goto :goto_7

    :cond_d
    if-eqz v0, :cond_10

    iget-boolean v0, v1, LLe/A1$b;->e:Z

    if-nez v0, :cond_f

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    iget-object v0, v1, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    if-eqz v16, :cond_10

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v6, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    if-eqz v16, :cond_10

    iget-object v0, v1, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v6, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    if-eqz v16, :cond_11

    goto :goto_7

    :cond_11
    invoke-interface {v2, v15}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    goto :goto_3

    :cond_12
    :goto_7
    cmp-long v0, v12, v10

    if-eqz v0, :cond_14

    iget-boolean v0, v1, LLe/A1$b;->h:Z

    if-nez v0, :cond_14

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_13

    iget-object v0, v1, LLe/A1$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v7, v12

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_13
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    invoke-interface {v0, v12, v13}, Lhn/d;->i(J)V

    :cond_14
    if-eqz v14, :cond_15

    goto/16 :goto_0

    :cond_15
    neg-int v0, v4

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, LLe/A1$b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/A1$b;->h:Z

    iget-object v0, p0, LLe/A1$b;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/A1$b;->b()V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/A1$b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, LLe/A1$b;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LLe/A1$b;->l:J

    iget-object v2, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLe/A1$a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LLe/A1$a;->b()V

    :cond_1
    :try_start_0
    iget-object v2, p0, LLe/A1$b;->c:LFe/o;

    invoke-interface {v2, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The publisher returned is null"

    invoke-static {p1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, LLe/A1$a;

    iget v3, p0, LLe/A1$b;->d:I

    invoke-direct {v2, p0, v0, v1, v3}, LLe/A1$a;-><init>(LLe/A1$b;JI)V

    :cond_2
    iget-object v0, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/A1$a;

    sget-object v1, LLe/A1$b;->n:LLe/A1$a;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, LLe/A1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Lhn/b;->l(Lhn/c;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/A1$b;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/A1$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 2

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LLe/A1$b;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-wide p1, p0, LLe/A1$b;->l:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/A1$b;->i:Lhn/d;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LLe/A1$b;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/A1$b;->i:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/A1$b;->i:Lhn/d;

    iget-object p1, p0, LLe/A1$b;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LLe/A1$b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/A1$b;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LLe/A1$b;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LLe/A1$b;->b()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/A1$b;->f:Z

    invoke-virtual {p0}, LLe/A1$b;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
