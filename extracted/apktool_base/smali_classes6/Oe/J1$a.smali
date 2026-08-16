.class public final LOe/J1$a;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/J1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LJe/v<",
        "TT;",
        "Ljava/lang/Object;",
        "LBe/B<",
        "TT;>;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final L:J

.field public final M:Ljava/util/concurrent/TimeUnit;

.field public final N:LBe/J;

.field public final O:I

.field public final P:Z

.field public final Q:J

.field public final R:LBe/J$c;

.field public S:J

.field public T:J

.field public U:LDe/c;

.field public V:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile W:Z

.field public final X:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "IJZ)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p2, p0, LOe/J1$a;->L:J

    iput-object p4, p0, LOe/J1$a;->M:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/J1$a;->N:LBe/J;

    iput p6, p0, LOe/J1$a;->O:I

    iput-wide p7, p0, LOe/J1$a;->Q:J

    iput-boolean p9, p0, LOe/J1$a;->P:Z

    if-eqz p9, :cond_0

    invoke-virtual {p5}, LBe/J;->c()LBe/J$c;

    move-result-object p1

    iput-object p1, p0, LOe/J1$a;->R:LBe/J$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LOe/J1$a;->R:LBe/J$c;

    :goto_0
    return-void
.end method

.method public static synthetic n(LOe/J1$a;)Z
    .locals 0

    iget-boolean p0, p0, LJe/v;->I:Z

    return p0
.end method

.method public static synthetic o(LOe/J1$a;)LIe/n;
    .locals 0

    iget-object p0, p0, LJe/v;->H:LIe/n;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/J1$a;->q()V

    :cond_0
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    invoke-virtual {p0}, LOe/J1$a;->p()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LJe/v;->I:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->I:Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 8

    iget-object v0, p0, LOe/J1$a;->U:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LOe/J1$a;->U:LDe/c;

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-boolean v0, p0, LJe/v;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LOe/J1$a;->O:I

    invoke-static {v0}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v0

    iput-object v0, p0, LOe/J1$a;->V:Lbf/j;

    invoke-interface {p1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    new-instance v2, LOe/J1$a$a;

    iget-wide v0, p0, LOe/J1$a;->T:J

    invoke-direct {v2, v0, v1, p0}, LOe/J1$a$a;-><init>(JLOe/J1$a;)V

    iget-boolean p1, p0, LOe/J1$a;->P:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, LOe/J1$a;->R:LBe/J$c;

    iget-wide v5, p0, LOe/J1$a;->L:J

    iget-object v7, p0, LOe/J1$a;->M:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LOe/J1$a;->N:LBe/J;

    iget-wide v5, p0, LOe/J1$a;->L:J

    iget-object v7, p0, LOe/J1$a;->M:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    :goto_0
    iget-object v0, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/J1$a;->W:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJe/v;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LOe/J1$a;->V:Lbf/j;

    invoke-virtual {v0, p1}, Lbf/j;->h(Ljava/lang/Object;)V

    iget-wide v1, p0, LOe/J1$a;->S:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v5, p0, LOe/J1$a;->Q:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    iget-wide v1, p0, LOe/J1$a;->T:J

    add-long/2addr v1, v3

    iput-wide v1, p0, LOe/J1$a;->T:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LOe/J1$a;->S:J

    invoke-virtual {v0}, Lbf/j;->a()V

    iget p1, p0, LOe/J1$a;->O:I

    invoke-static {p1}, Lbf/j;->p8(I)Lbf/j;

    move-result-object p1

    iput-object p1, p0, LOe/J1$a;->V:Lbf/j;

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    iget-boolean p1, p0, LOe/J1$a;->P:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/J1$a;->R:LBe/J$c;

    new-instance v1, LOe/J1$a$a;

    iget-wide v2, p0, LOe/J1$a;->T:J

    invoke-direct {v1, v2, v3, p0}, LOe/J1$a$a;-><init>(JLOe/J1$a;)V

    iget-wide v4, p0, LOe/J1$a;->L:J

    iget-object v6, p0, LOe/J1$a;->M:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iget-object v0, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    goto :goto_0

    :cond_1
    iput-wide v1, p0, LOe/J1$a;->S:J

    :cond_2
    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_3
    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, LOe/J1$a;->q()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, LJe/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/J1$a;->q()V

    :cond_0
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/J1$a;->p()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LOe/J1$a;->R:LBe/J$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 13

    iget-object v0, p0, LJe/v;->H:LIe/n;

    check-cast v0, LRe/a;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    iget-object v2, p0, LOe/J1$a;->V:Lbf/j;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, LOe/J1$a;->W:Z

    if-eqz v5, :cond_1

    iget-object v1, p0, LOe/J1$a;->U:LDe/c;

    invoke-interface {v1}, LDe/c;->dispose()V

    invoke-virtual {v0}, LRe/a;->clear()V

    invoke-virtual {p0}, LOe/J1$a;->p()V

    return-void

    :cond_1
    iget-boolean v5, p0, LJe/v;->J:Z

    invoke-virtual {v0}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    instance-of v8, v6, LOe/J1$a$a;

    if-eqz v5, :cond_5

    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, LOe/J1$a;->V:Lbf/j;

    invoke-virtual {v0}, LRe/a;->clear()V

    invoke-virtual {p0}, LOe/J1$a;->p()V

    iget-object v0, p0, LJe/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lbf/j;->a()V

    :goto_2
    return-void

    :cond_5
    if-eqz v7, :cond_6

    neg-int v4, v4

    invoke-virtual {p0, v4}, LJe/v;->c(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_8

    check-cast v6, LOe/J1$a$a;

    iget-boolean v5, p0, LOe/J1$a;->P:Z

    if-nez v5, :cond_7

    iget-wide v7, p0, LOe/J1$a;->T:J

    iget-wide v5, v6, LOe/J1$a$a;->b:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_0

    :cond_7
    invoke-virtual {v2}, Lbf/j;->a()V

    iput-wide v9, p0, LOe/J1$a;->S:J

    iget v2, p0, LOe/J1$a;->O:I

    invoke-static {v2}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v2

    iput-object v2, p0, LOe/J1$a;->V:Lbf/j;

    invoke-interface {v1, v2}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbf/j;->h(Ljava/lang/Object;)V

    iget-wide v5, p0, LOe/J1$a;->S:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-wide v11, p0, LOe/J1$a;->Q:J

    cmp-long v11, v5, v11

    if-ltz v11, :cond_9

    iget-wide v5, p0, LOe/J1$a;->T:J

    add-long/2addr v5, v7

    iput-wide v5, p0, LOe/J1$a;->T:J

    iput-wide v9, p0, LOe/J1$a;->S:J

    invoke-virtual {v2}, Lbf/j;->a()V

    iget v2, p0, LOe/J1$a;->O:I

    invoke-static {v2}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v2

    iput-object v2, p0, LOe/J1$a;->V:Lbf/j;

    iget-object v5, p0, LJe/v;->G:LBe/I;

    invoke-interface {v5, v2}, LBe/I;->h(Ljava/lang/Object;)V

    iget-boolean v5, p0, LOe/J1$a;->P:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LDe/c;

    invoke-interface {v5}, LDe/c;->dispose()V

    iget-object v6, p0, LOe/J1$a;->R:LBe/J$c;

    new-instance v7, LOe/J1$a$a;

    iget-wide v8, p0, LOe/J1$a;->T:J

    invoke-direct {v7, v8, v9, p0}, LOe/J1$a$a;-><init>(JLOe/J1$a;)V

    iget-wide v10, p0, LOe/J1$a;->L:J

    iget-object v12, p0, LOe/J1$a;->M:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v6

    iget-object v7, p0, LOe/J1$a;->X:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7, v5, v6}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v6}, LDe/c;->dispose()V

    goto/16 :goto_0

    :cond_9
    iput-wide v5, p0, LOe/J1$a;->S:J

    goto/16 :goto_0
.end method
