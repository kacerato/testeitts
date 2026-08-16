.class public final LOe/J1$b;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final T:Ljava/lang/Object;


# instance fields
.field public final L:J

.field public final M:Ljava/util/concurrent/TimeUnit;

.field public final N:LBe/J;

.field public final O:I

.field public P:LDe/c;

.field public Q:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final R:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile S:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOe/J1$b;->T:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;I)V
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
            "I)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p2, p0, LOe/J1$b;->L:J

    iput-object p4, p0, LOe/J1$b;->M:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/J1$b;->N:LBe/J;

    iput p6, p0, LOe/J1$b;->O:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/J1$b;->o()V

    :cond_0
    invoke-virtual {p0}, LOe/J1$b;->n()V

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

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
    .locals 7

    iget-object v0, p0, LOe/J1$b;->P:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/J1$b;->P:LDe/c;

    iget p1, p0, LOe/J1$b;->O:I

    invoke-static {p1}, Lbf/j;->p8(I)Lbf/j;

    move-result-object p1

    iput-object p1, p0, LOe/J1$b;->Q:Lbf/j;

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, LOe/J1$b;->Q:Lbf/j;

    invoke-interface {p1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    iget-boolean p1, p0, LJe/v;->I:Z

    if-nez p1, :cond_0

    iget-object v0, p0, LOe/J1$b;->N:LBe/J;

    iget-wide v4, p0, LOe/J1$b;->L:J

    iget-object v6, p0, LOe/J1$b;->M:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iget-object v0, p0, LOe/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LOe/J1$b;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJe/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/J1$b;->Q:Lbf/j;

    invoke-virtual {v0, p1}, Lbf/j;->h(Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOe/J1$b;->o()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, LOe/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public o()V
    .locals 7

    iget-object v0, p0, LJe/v;->H:LIe/n;

    check-cast v0, LRe/a;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    iget-object v2, p0, LOe/J1$b;->Q:Lbf/j;

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-boolean v4, p0, LOe/J1$b;->S:Z

    iget-boolean v5, p0, LJe/v;->J:Z

    invoke-virtual {v0}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    sget-object v5, LOe/J1$b;->T:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, LOe/J1$b;->Q:Lbf/j;

    invoke-virtual {v0}, LRe/a;->clear()V

    invoke-virtual {p0}, LOe/J1$b;->n()V

    iget-object v0, p0, LJe/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lbf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lbf/j;->a()V

    :goto_1
    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, LJe/v;->c(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    sget-object v5, LOe/J1$b;->T:Ljava/lang/Object;

    if-ne v6, v5, :cond_6

    invoke-virtual {v2}, Lbf/j;->a()V

    if-nez v4, :cond_5

    iget v2, p0, LOe/J1$b;->O:I

    invoke-static {v2}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v2

    iput-object v2, p0, LOe/J1$b;->Q:Lbf/j;

    invoke-interface {v1, v2}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, LOe/J1$b;->P:LDe/c;

    invoke-interface {v4}, LDe/c;->dispose()V

    goto :goto_0

    :cond_6
    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, LJe/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, LJe/v;->J:Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/J1$b;->o()V

    :cond_0
    invoke-virtual {p0}, LOe/J1$b;->n()V

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, LJe/v;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/J1$b;->S:Z

    invoke-virtual {p0}, LOe/J1$b;->n()V

    :cond_0
    iget-object v0, p0, LJe/v;->H:LIe/n;

    sget-object v1, LOe/J1$b;->T:Ljava/lang/Object;

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOe/J1$b;->o()V

    :cond_1
    return-void
.end method
