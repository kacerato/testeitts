.class public final LOe/n1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/n1;
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
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final l:J = -0x3072c973d405526bL

.field public static final m:LOe/n1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/n1$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Z

.field public final f:Lio/reactivex/internal/util/c;

.field public volatile g:Z

.field public volatile h:Z

.field public i:LDe/c;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/n1$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field public volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LOe/n1$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, LOe/n1$a;-><init>(LOe/n1$b;JI)V

    sput-object v0, LOe/n1$b;->m:LOe/n1$a;

    invoke-virtual {v0}, LOe/n1$a;->b()V

    return-void
.end method

.method public constructor <init>(LBe/I;LFe/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LOe/n1$b;->b:LBe/I;

    iput-object p2, p0, LOe/n1$b;->c:LFe/o;

    iput p3, p0, LOe/n1$b;->d:I

    iput-boolean p4, p0, LOe/n1$b;->e:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/n1$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/n1$b;->g:Z

    invoke-virtual {p0}, LOe/n1$b;->c()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/n1$a;

    sget-object v1, LOe/n1$b;->m:LOe/n1$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/n1$a;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOe/n1$a;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/n1$b;->b:LBe/I;

    iget-object v1, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, LOe/n1$b;->e:Z

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v5, p0, LOe/n1$b;->h:Z

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-boolean v5, p0, LOe/n1$b;->g:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v5, :cond_7

    iget-object v1, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, LBe/I;->a()V

    :goto_2
    return-void

    :cond_5
    iget-object v7, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    iget-object v1, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v0}, LBe/I;->a()V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LOe/n1$a;

    if-eqz v5, :cond_12

    iget-object v7, v5, LOe/n1$a;->e:LIe/o;

    if-eqz v7, :cond_12

    iget-boolean v8, v5, LOe/n1$a;->f:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v7}, LIe/o;->isEmpty()Z

    move-result v8

    if-eqz v2, :cond_8

    if-eqz v8, :cond_a

    invoke-static {v1, v5, v9}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v10, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_9

    iget-object v1, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    if-eqz v8, :cond_a

    invoke-static {v1, v5, v9}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    move v8, v6

    :goto_3
    iget-boolean v10, p0, LOe/n1$b;->h:Z

    if-eqz v10, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v5, v10, :cond_c

    :goto_4
    move v8, v3

    goto :goto_8

    :cond_c
    if-nez v2, :cond_d

    iget-object v10, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_d

    iget-object v1, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    iget-boolean v10, v5, LOe/n1$a;->f:Z

    :try_start_0
    invoke-interface {v7}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v8

    invoke-static {v8}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v11, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v11, v8}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1, v5, v9}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v2, :cond_e

    invoke-virtual {p0}, LOe/n1$b;->b()V

    iget-object v8, p0, LOe/n1$b;->i:LDe/c;

    invoke-interface {v8}, LDe/c;->dispose()V

    iput-boolean v3, p0, LOe/n1$b;->g:Z

    goto :goto_5

    :cond_e
    invoke-virtual {v5}, LOe/n1$a;->b()V

    :goto_5
    move v8, v3

    move-object v11, v9

    :goto_6
    if-nez v11, :cond_f

    move v12, v3

    goto :goto_7

    :cond_f
    move v12, v6

    :goto_7
    if-eqz v10, :cond_10

    if-eqz v12, :cond_10

    invoke-static {v1, v5, v9}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    if-eqz v12, :cond_11

    :goto_8
    if-eqz v8, :cond_12

    goto/16 :goto_0

    :cond_11
    invoke-interface {v0, v11}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_3

    :cond_12
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/n1$b;->h:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/n1$b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/n1$b;->h:Z

    iget-object v0, p0, LOe/n1$b;->i:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/n1$b;->b()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/n1$b;->i:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/n1$b;->i:LDe/c;

    iget-object p1, p0, LOe/n1$b;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public f(LOe/n1$a;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/n1$a<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-wide v0, p1, LOe/n1$a;->c:J

    iget-wide v2, p0, LOe/n1$b;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p2, p0, LOe/n1$b;->e:Z

    if-nez p2, :cond_0

    iget-object p2, p0, LOe/n1$b;->i:LDe/c;

    invoke-interface {p2}, LDe/c;->dispose()V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p1, LOe/n1$a;->f:Z

    invoke-virtual {p0}, LOe/n1$b;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, LOe/n1$b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LOe/n1$b;->k:J

    iget-object v2, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOe/n1$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LOe/n1$a;->b()V

    :cond_0
    :try_start_0
    iget-object v2, p0, LOe/n1$b;->c:LFe/o;

    invoke-interface {v2, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, LOe/n1$a;

    iget v3, p0, LOe/n1$b;->d:I

    invoke-direct {v2, p0, v0, v1, v3}, LOe/n1$a;-><init>(LOe/n1$b;JI)V

    :cond_1
    iget-object v0, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/n1$a;

    sget-object v1, LOe/n1$b;->m:LOe/n1$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, LOe/n1$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, LBe/G;->c(LBe/I;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/n1$b;->i:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0, p1}, LOe/n1$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/n1$b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/n1$b;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LOe/n1$b;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, LOe/n1$b;->b()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/n1$b;->g:Z

    invoke-virtual {p0}, LOe/n1$b;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
