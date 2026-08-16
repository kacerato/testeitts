.class public final LNe/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/e$a$a;
    }
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
.field public static final q:J = -0x7ed83da4674d8da5L

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2


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
            "LBe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Lio/reactivex/internal/util/c;

.field public final g:LNe/e$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNe/e$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final h:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final i:Lio/reactivex/internal/util/j;

.field public j:Lhn/d;

.field public volatile k:Z

.field public volatile l:Z

.field public m:J

.field public n:I

.field public o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public volatile p:I


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LNe/e$a;->b:Lhn/c;

    iput-object p2, p0, LNe/e$a;->c:LFe/o;

    iput p3, p0, LNe/e$a;->d:I

    iput-object p4, p0, LNe/e$a;->i:Lio/reactivex/internal/util/j;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LNe/e$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LNe/e$a;->f:Lio/reactivex/internal/util/c;

    new-instance p1, LNe/e$a$a;

    invoke-direct {p1, p0}, LNe/e$a$a;-><init>(LNe/e$a;)V

    iput-object p1, p0, LNe/e$a;->g:LNe/e$a$a;

    new-instance p1, LRe/b;

    invoke-direct {p1, p3}, LRe/b;-><init>(I)V

    iput-object p1, p0, LNe/e$a;->h:LIe/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/e$a;->k:Z

    invoke-virtual {p0}, LNe/e$a;->b()V

    return-void
.end method

.method public b()V
    .locals 15

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LNe/e$a;->b:Lhn/c;

    iget-object v1, p0, LNe/e$a;->i:Lio/reactivex/internal/util/j;

    iget-object v2, p0, LNe/e$a;->h:LIe/n;

    iget-object v3, p0, LNe/e$a;->f:Lio/reactivex/internal/util/c;

    iget-object v4, p0, LNe/e$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    iget v5, p0, LNe/e$a;->d:I

    shr-int/lit8 v6, v5, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    move v7, v6

    :cond_1
    :goto_0
    iget-boolean v8, p0, LNe/e$a;->l:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-interface {v2}, LIe/o;->clear()V

    iput-object v9, p0, LNe/e$a;->o:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget v8, p0, LNe/e$a;->p:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    sget-object v10, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-eq v1, v10, :cond_3

    sget-object v10, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    if-ne v1, v10, :cond_4

    if-nez v8, :cond_4

    :cond_3
    invoke-interface {v2}, LIe/o;->clear()V

    iput-object v9, p0, LNe/e$a;->o:Ljava/lang/Object;

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v10, 0x0

    if-nez v8, :cond_a

    iget-boolean v8, p0, LNe/e$a;->k:Z

    invoke-interface {v2}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    move v11, v6

    goto :goto_1

    :cond_5
    move v11, v10

    :goto_1
    if-eqz v8, :cond_7

    if-eqz v11, :cond_7

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_2

    :cond_6
    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_7
    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    iget v8, p0, LNe/e$a;->n:I

    add-int/2addr v8, v6

    if-ne v8, v5, :cond_9

    iput v10, p0, LNe/e$a;->n:I

    iget-object v8, p0, LNe/e$a;->j:Lhn/d;

    int-to-long v10, v5

    invoke-interface {v8, v10, v11}, Lhn/d;->i(J)V

    goto :goto_3

    :cond_9
    iput v8, p0, LNe/e$a;->n:I

    :goto_3
    :try_start_0
    iget-object v8, p0, LNe/e$a;->c:LFe/o;

    invoke-interface {v8, v9}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "The mapper returned a null SingleSource"

    invoke-static {v8, v9}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LBe/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v6, p0, LNe/e$a;->p:I

    iget-object v9, p0, LNe/e$a;->g:LNe/e$a$a;

    invoke-interface {v8, v9}, LBe/Q;->a(LBe/N;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v4, p0, LNe/e$a;->j:Lhn/d;

    invoke-interface {v4}, Lhn/d;->cancel()V

    invoke-interface {v2}, LIe/o;->clear()V

    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v11, 0x2

    if-ne v8, v11, :cond_b

    iget-wide v11, p0, LNe/e$a;->m:J

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-eqz v8, :cond_b

    iget-object v8, p0, LNe/e$a;->o:Ljava/lang/Object;

    iput-object v9, p0, LNe/e$a;->o:Ljava/lang/Object;

    invoke-interface {v0, v8}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v11, v8

    iput-wide v11, p0, LNe/e$a;->m:J

    iput v10, p0, LNe/e$a;->p:I

    goto/16 :goto_0

    :cond_b
    :goto_4
    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/e$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LNe/e$a;->i:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, LNe/e$a;->j:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, LNe/e$a;->p:I

    invoke-virtual {p0}, LNe/e$a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/e$a;->l:Z

    iget-object v0, p0, LNe/e$a;->j:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LNe/e$a;->g:LNe/e$a$a;

    invoke-virtual {v0}, LNe/e$a$a;->a()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/e$a;->h:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LNe/e$a;->o:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, LNe/e$a;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LNe/e$a;->p:I

    invoke-virtual {p0}, LNe/e$a;->b()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LNe/e$a;->h:LIe/n;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LNe/e$a;->j:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LNe/e$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, LNe/e$a;->b()V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LNe/e$a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LNe/e$a;->b()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LNe/e$a;->j:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LNe/e$a;->j:Lhn/d;

    iget-object v0, p0, LNe/e$a;->b:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LNe/e$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/e$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LNe/e$a;->i:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LNe/e$a;->g:LNe/e$a$a;

    invoke-virtual {p1}, LNe/e$a$a;->a()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LNe/e$a;->k:Z

    invoke-virtual {p0}, LNe/e$a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
