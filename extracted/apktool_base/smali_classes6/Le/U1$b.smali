.class public final LLe/U1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
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
.field public static final n:J = 0x1efd47eb1fc2a3a0L

.field public static final o:Ljava/lang/Object;


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

.field public final c:I

.field public final d:LLe/U1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/U1$a<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:LRe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRe/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/reactivex/internal/util/c;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile k:Z

.field public l:LZe/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LLe/U1$b;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhn/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LLe/U1$b;->b:Lhn/c;

    iput p2, p0, LLe/U1$b;->c:I

    new-instance p1, LLe/U1$a;

    invoke-direct {p1, p0}, LLe/U1$a;-><init>(LLe/U1$b;)V

    iput-object p1, p0, LLe/U1$b;->d:LLe/U1$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LLe/U1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, LRe/a;

    invoke-direct {p1}, LRe/a;-><init>()V

    iput-object p1, p0, LLe/U1$b;->g:LRe/a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/U1$b;->h:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/U1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, LLe/U1$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->d:LLe/U1$a;

    invoke-virtual {v0}, Lcf/b;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/U1$b;->k:Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    return-void
.end method

.method public b()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LLe/U1$b;->b:Lhn/c;

    iget-object v1, p0, LLe/U1$b;->g:LRe/a;

    iget-object v2, p0, LLe/U1$b;->h:Lio/reactivex/internal/util/c;

    iget-wide v3, p0, LLe/U1$b;->m:J

    const/4 v5, 0x1

    move v6, v5

    :cond_1
    :goto_0
    iget-object v7, p0, LLe/U1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-virtual {v1}, LRe/a;->clear()V

    iput-object v8, p0, LLe/U1$b;->l:LZe/h;

    return-void

    :cond_2
    iget-object v7, p0, LLe/U1$b;->l:LZe/h;

    iget-boolean v9, p0, LLe/U1$b;->k:Z

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, LRe/a;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    iput-object v8, p0, LLe/U1$b;->l:LZe/h;

    invoke-virtual {v7, v1}, LZe/h;->onError(Ljava/lang/Throwable;)V

    :cond_3
    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-virtual {v1}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    move v11, v5

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    iput-object v8, p0, LLe/U1$b;->l:LZe/h;

    invoke-virtual {v7}, LZe/h;->a()V

    :cond_6
    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    iput-object v8, p0, LLe/U1$b;->l:LZe/h;

    invoke-virtual {v7, v1}, LZe/h;->onError(Ljava/lang/Throwable;)V

    :cond_8
    invoke-interface {v0, v1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v11, :cond_a

    iput-wide v3, p0, LLe/U1$b;->m:J

    neg-int v6, v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_a
    sget-object v9, LLe/U1$b;->o:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    invoke-virtual {v7, v10}, LZe/h;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    iput-object v8, p0, LLe/U1$b;->l:LZe/h;

    invoke-virtual {v7}, LZe/h;->a()V

    :cond_c
    iget-object v7, p0, LLe/U1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, p0, LLe/U1$b;->c:I

    invoke-static {v7, p0}, LZe/h;->W8(ILjava/lang/Runnable;)LZe/h;

    move-result-object v7

    iput-object v7, p0, LLe/U1$b;->l:LZe/h;

    iget-object v8, p0, LLe/U1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v8, p0, LLe/U1$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-eqz v8, :cond_d

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    invoke-interface {v0, v7}, Lhn/c;->h(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v7, p0, LLe/U1$b;->d:LLe/U1$a;

    invoke-virtual {v7}, Lcf/b;->dispose()V

    new-instance v7, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iput-boolean v5, p0, LLe/U1$b;->k:Z

    goto/16 :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/U1$b;->k:Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, LLe/U1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/U1$b;->d:LLe/U1$a;

    invoke-virtual {v0}, Lcf/b;->dispose()V

    iget-object v0, p0, LLe/U1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LLe/U1$b;->h:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/U1$b;->k:Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LLe/U1$b;->g:LRe/a;

    sget-object v1, LLe/U1$b;->o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/U1$b;->g:LRe/a;

    invoke-virtual {v0, p1}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 3

    iget-object v0, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, LUe/j;->k(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->d:LLe/U1$a;

    invoke-virtual {v0}, Lcf/b;->dispose()V

    iget-object v0, p0, LLe/U1$b;->h:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LLe/U1$b;->k:Z

    invoke-virtual {p0}, LLe/U1$b;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, LLe/U1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LLe/U1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
