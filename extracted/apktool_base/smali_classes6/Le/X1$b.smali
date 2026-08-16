.class public final LLe/X1$b;
.super LTe/n;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/X1;
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
        "LTe/n<",
        "TT;",
        "Ljava/lang/Object;",
        "LBe/l<",
        "TT;>;>;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final F1:Ljava/lang/Object;


# instance fields
.field public final D0:Ljava/util/concurrent/TimeUnit;

.field public final b1:LBe/J;

.field public final i1:I

.field public m1:Lhn/d;

.field public q1:LZe/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final v0:J

.field public final v1:LGe/h;

.field public volatile y1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LLe/X1$b;->F1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhn/c;JLjava/util/concurrent/TimeUnit;LBe/J;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LTe/n;-><init>(Lhn/c;LIe/n;)V

    new-instance p1, LGe/h;

    invoke-direct {p1}, LGe/h;-><init>()V

    iput-object p1, p0, LLe/X1$b;->v1:LGe/h;

    iput-wide p2, p0, LLe/X1$b;->v0:J

    iput-object p4, p0, LLe/X1$b;->D0:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LLe/X1$b;->b1:LBe/J;

    iput p6, p0, LLe/X1$b;->i1:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/n;->Z:Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/X1$b;->r()V

    :cond_0
    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    invoke-virtual {p0}, LLe/X1$b;->dispose()V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/n;->Y:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LLe/X1$b;->v1:LGe/h;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LLe/X1$b;->y1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LTe/n;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LLe/X1$b;->q1:LZe/h;

    invoke-virtual {v0, p1}, LZe/h;->h(Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LTe/n;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, LTe/n;->X:LIe/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LLe/X1$b;->r()V

    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LTe/n;->q(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 12

    iget-object v0, p0, LLe/X1$b;->m1:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LLe/X1$b;->m1:Lhn/d;

    iget v0, p0, LLe/X1$b;->i1:I

    invoke-static {v0}, LZe/h;->V8(I)LZe/h;

    move-result-object v0

    iput-object v0, p0, LLe/X1$b;->q1:LZe/h;

    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    invoke-virtual {p0}, LTe/n;->l()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LLe/X1$b;->q1:LZe/h;

    invoke-interface {v0, v3}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LTe/n;->m(J)J

    :cond_0
    iget-boolean v0, p0, LTe/n;->Y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LLe/X1$b;->v1:LGe/h;

    iget-object v5, p0, LLe/X1$b;->b1:LBe/J;

    iget-wide v9, p0, LLe/X1$b;->v0:J

    iget-object v11, p0, LLe/X1$b;->D0:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LGe/h;->a(LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v4}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, LTe/n;->Y:Z

    invoke-interface {p1}, Lhn/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, LTe/n;->q0:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/n;->Z:Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LLe/X1$b;->r()V

    :cond_0
    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/X1$b;->dispose()V

    return-void
.end method

.method public r()V
    .locals 10

    iget-object v0, p0, LTe/n;->X:LIe/n;

    iget-object v1, p0, LTe/n;->W:Lhn/c;

    iget-object v2, p0, LLe/X1$b;->q1:LZe/h;

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-boolean v4, p0, LLe/X1$b;->y1:Z

    iget-boolean v5, p0, LTe/n;->Z:Z

    invoke-interface {v0}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    sget-object v5, LLe/X1$b;->F1:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    iput-object v7, p0, LLe/X1$b;->q1:LZe/h;

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-virtual {p0}, LLe/X1$b;->dispose()V

    iget-object v0, p0, LTe/n;->q0:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, LZe/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, LZe/h;->a()V

    :goto_1
    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, LTe/n;->c(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    sget-object v5, LLe/X1$b;->F1:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    invoke-virtual {v2}, LZe/h;->a()V

    if-nez v4, :cond_6

    iget v2, p0, LLe/X1$b;->i1:I

    invoke-static {v2}, LZe/h;->V8(I)LZe/h;

    move-result-object v2

    iput-object v2, p0, LLe/X1$b;->q1:LZe/h;

    invoke-virtual {p0}, LTe/n;->l()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    invoke-interface {v1, v2}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, LTe/n;->m(J)J

    goto :goto_0

    :cond_5
    iput-object v7, p0, LLe/X1$b;->q1:LZe/h;

    iget-object v0, p0, LTe/n;->X:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    iget-object v0, p0, LLe/X1$b;->m1:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/X1$b;->dispose()V

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    iget-object v4, p0, LLe/X1$b;->m1:Lhn/d;

    invoke-interface {v4}, Lhn/d;->cancel()V

    goto :goto_0

    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, LZe/h;->h(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, LTe/n;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/X1$b;->y1:Z

    invoke-virtual {p0}, LLe/X1$b;->dispose()V

    :cond_0
    iget-object v0, p0, LTe/n;->X:LIe/n;

    sget-object v1, LLe/X1$b;->F1:Ljava/lang/Object;

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LLe/X1$b;->r()V

    :cond_1
    return-void
.end method
