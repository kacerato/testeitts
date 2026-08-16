.class public final LLe/I0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/I0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/I0$a$a;
    }
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
.field public static final p:J = -0x3fbd8a98db8e76f7L

.field public static final q:I = 0x1

.field public static final r:I = 0x2


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LLe/I0$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/I0$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:I

.field public final h:I

.field public volatile i:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:I

.field public n:J

.field public o:I


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/I0$a;->b:Lhn/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, LLe/I0$a$a;

    invoke-direct {p1, p0}, LLe/I0$a$a;-><init>(LLe/I0$a;)V

    iput-object p1, p0, LLe/I0$a;->d:LLe/I0$a$a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/I0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, LBe/l;->a0()I

    move-result p1

    iput p1, p0, LLe/I0$a;->g:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, LLe/I0$a;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/I0$a;->l:Z

    invoke-virtual {p0}, LLe/I0$a;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LLe/I0$a;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LLe/I0$a;->b:Lhn/c;

    iget-wide v2, v0, LLe/I0$a;->n:J

    iget v4, v0, LLe/I0$a;->o:I

    iget v5, v0, LLe/I0$a;->h:I

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    iget-object v8, v0, LLe/I0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :goto_1
    cmp-long v10, v2, v8

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v10, :cond_8

    iget-boolean v14, v0, LLe/I0$a;->k:Z

    if-eqz v14, :cond_0

    iput-object v13, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    return-void

    :cond_0
    iget-object v14, v0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    iput-object v13, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    iget-object v2, v0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget v14, v0, LLe/I0$a;->m:I

    const-wide/16 v15, 0x1

    if-ne v14, v6, :cond_2

    iget-object v10, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput-object v13, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput v12, v0, LLe/I0$a;->m:I

    invoke-interface {v1, v10}, Lhn/c;->h(Ljava/lang/Object;)V

    add-long/2addr v2, v15

    goto :goto_1

    :cond_2
    iget-boolean v6, v0, LLe/I0$a;->l:Z

    iget-object v11, v0, LLe/I0$a;->i:LIe/n;

    if-eqz v11, :cond_3

    invoke-interface {v11}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object v11, v13

    :goto_2
    if-nez v11, :cond_4

    const/16 v17, 0x1

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v17, :cond_5

    if-ne v14, v12, :cond_5

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    invoke-interface {v1}, Lhn/c;->a()V

    return-void

    :cond_5
    if-eqz v17, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v1, v11}, Lhn/c;->h(Ljava/lang/Object;)V

    add-long/2addr v2, v15

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_7

    iget-object v4, v0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhn/d;

    int-to-long v10, v5

    invoke-interface {v4, v10, v11}, Lhn/d;->i(J)V

    const/4 v4, 0x0

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    if-nez v10, :cond_d

    iget-boolean v6, v0, LLe/I0$a;->k:Z

    if-eqz v6, :cond_9

    iput-object v13, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    return-void

    :cond_9
    iget-object v6, v0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    iput-object v13, v0, LLe/I0$a;->j:Ljava/lang/Object;

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    iget-object v2, v0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    iget-boolean v6, v0, LLe/I0$a;->l:Z

    iget-object v8, v0, LLe/I0$a;->i:LIe/n;

    if-eqz v8, :cond_c

    invoke-interface {v8}, LIe/o;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-eqz v6, :cond_d

    if-eqz v11, :cond_d

    iget v6, v0, LLe/I0$a;->m:I

    if-ne v6, v12, :cond_d

    iput-object v13, v0, LLe/I0$a;->i:LIe/n;

    invoke-interface {v1}, Lhn/c;->a()V

    return-void

    :cond_d
    iput-wide v2, v0, LLe/I0$a;->n:J

    iput v4, v0, LLe/I0$a;->o:I

    neg-int v6, v7

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_e

    return-void

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/I0$a;->k:Z

    iget-object v0, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/I0$a;->d:LLe/I0$a$a;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LLe/I0$a;->i:LIe/n;

    iput-object v0, p0, LLe/I0$a;->j:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()LIe/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LIe/n<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LLe/I0$a;->i:LIe/n;

    if-nez v0, :cond_0

    new-instance v0, LRe/b;

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-direct {v0, v1}, LRe/b;-><init>(I)V

    iput-object v0, p0, LLe/I0$a;->i:LIe/n;

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, LLe/I0$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, LLe/I0$a;->n:J

    iget-object v0, p0, LLe/I0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, LLe/I0$a;->n:J

    iget-object v0, p0, LLe/I0$a;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    const/4 p1, 0x2

    iput p1, p0, LLe/I0$a;->m:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, LLe/I0$a;->j:Ljava/lang/Object;

    iput v1, p0, LLe/I0$a;->m:I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iput-object p1, p0, LLe/I0$a;->j:Ljava/lang/Object;

    iput v1, p0, LLe/I0$a;->m:I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, LLe/I0$a;->c()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, LLe/I0$a;->n:J

    iget-object v4, p0, LLe/I0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, LLe/I0$a;->i:LIe/n;

    if-eqz v4, :cond_1

    invoke-interface {v4}, LIe/o;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, LLe/I0$a;->n:J

    iget-object v2, p0, LLe/I0$a;->b:Lhn/c;

    invoke-interface {v2, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    iget p1, p0, LLe/I0$a;->o:I

    add-int/2addr p1, v1

    iget v1, p0, LLe/I0$a;->h:I

    if-ne p1, v1, :cond_2

    iput v0, p0, LLe/I0$a;->o:I

    iget-object v0, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    goto :goto_1

    :cond_2
    iput p1, p0, LLe/I0$a;->o:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LLe/I0$a;->d()LIe/n;

    move-result-object v0

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_4
    invoke-virtual {p0}, LLe/I0$a;->d()LIe/n;

    move-result-object v0

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, LLe/I0$a;->c()V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/I0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, LLe/I0$a;->b()V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 3

    iget-object v0, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, LLe/I0$a;->g:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/I0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LLe/I0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, LLe/I0$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
