.class public final LLe/X1$c;
.super LTe/n;
.source "SourceFile"

# interfaces
.implements Lhn/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/X1$c$a;,
        LLe/X1$c$b;
    }
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
        "Lhn/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final D0:J

.field public final b1:Ljava/util/concurrent/TimeUnit;

.field public final i1:LBe/J$c;

.field public final m1:I

.field public final q1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LZe/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final v0:J

.field public v1:Lhn/d;

.field public volatile y1:Z


# direct methods
.method public constructor <init>(Lhn/c;JJLjava/util/concurrent/TimeUnit;LBe/J$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "LBe/l<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "I)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LTe/n;-><init>(Lhn/c;LIe/n;)V

    iput-wide p2, p0, LLe/X1$c;->v0:J

    iput-wide p4, p0, LLe/X1$c;->D0:J

    iput-object p6, p0, LLe/X1$c;->b1:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LLe/X1$c;->i1:LBe/J$c;

    iput p8, p0, LLe/X1$c;->m1:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, LLe/X1$c;->q1:Ljava/util/List;

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

    invoke-virtual {p0}, LLe/X1$c;->s()V

    :cond_0
    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    invoke-virtual {p0}, LLe/X1$c;->dispose()V

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

    iget-object v0, p0, LLe/X1$c;->i1:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, LTe/n;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LLe/X1$c;->q1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZe/h;

    invoke-virtual {v1, p1}, LZe/h;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LTe/n;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, LTe/n;->X:LIe/n;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LLe/X1$c;->s()V

    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LTe/n;->q(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 14

    iget-object v0, p0, LLe/X1$c;->v1:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, LLe/X1$c;->v1:Lhn/d;

    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget-boolean v0, p0, LTe/n;->Y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LTe/n;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, LLe/X1$c;->m1:I

    invoke-static {v2}, LZe/h;->V8(I)LZe/h;

    move-result-object v2

    iget-object v3, p0, LLe/X1$c;->q1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v3, v2}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, LTe/n;->m(J)J

    :cond_1
    iget-object v0, p0, LLe/X1$c;->i1:LBe/J$c;

    new-instance v1, LLe/X1$c$a;

    invoke-direct {v1, p0, v2}, LLe/X1$c$a;-><init>(LLe/X1$c;LZe/h;)V

    iget-wide v5, p0, LLe/X1$c;->v0:J

    iget-object v2, p0, LLe/X1$c;->b1:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    iget-object v7, p0, LLe/X1$c;->i1:LBe/J$c;

    iget-wide v11, p0, LLe/X1$c;->D0:J

    iget-object v13, p0, LLe/X1$c;->b1:Ljava/util/concurrent/TimeUnit;

    move-object v8, p0

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    invoke-interface {p1, v3, v4}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LTe/n;->W:Lhn/c;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit the first window due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
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

    invoke-virtual {p0}, LLe/X1$c;->s()V

    :cond_0
    iget-object v0, p0, LTe/n;->W:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/X1$c;->dispose()V

    return-void
.end method

.method public r(LZe/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/h<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LTe/n;->X:LIe/n;

    new-instance v1, LLe/X1$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LLe/X1$c$b;-><init>(LZe/h;Z)V

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LTe/n;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LLe/X1$c;->s()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget v0, p0, LLe/X1$c;->m1:I

    invoke-static {v0}, LZe/h;->V8(I)LZe/h;

    move-result-object v0

    new-instance v1, LLe/X1$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LLe/X1$c$b;-><init>(LZe/h;Z)V

    iget-boolean v0, p0, LTe/n;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LTe/n;->X:LIe/n;

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LTe/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LLe/X1$c;->s()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 10

    iget-object v0, p0, LTe/n;->X:LIe/n;

    iget-object v1, p0, LTe/n;->W:Lhn/c;

    iget-object v2, p0, LLe/X1$c;->q1:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, LLe/X1$c;->y1:Z

    if-eqz v5, :cond_1

    iget-object v1, p0, LLe/X1$c;->v1:Lhn/d;

    invoke-interface {v1}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/X1$c;->dispose()V

    invoke-interface {v0}, LIe/o;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, LTe/n;->Z:Z

    invoke-interface {v0}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    instance-of v8, v6, LLe/X1$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    :cond_3
    invoke-interface {v0}, LIe/o;->clear()V

    iget-object v0, p0, LTe/n;->q0:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LZe/h;

    invoke-virtual {v3, v0}, LZe/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZe/h;

    invoke-virtual {v1}, LZe/h;->a()V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, LLe/X1$c;->dispose()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    invoke-virtual {p0, v4}, LTe/n;->c(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_c

    check-cast v6, LLe/X1$c$b;

    iget-boolean v5, v6, LLe/X1$c$b;->b:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, LTe/n;->Y:Z

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, LTe/n;->l()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_a

    iget v7, p0, LLe/X1$c;->m1:I

    invoke-static {v7}, LZe/h;->V8(I)LZe/h;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v5, v6}, LTe/n;->m(J)J

    :cond_9
    iget-object v5, p0, LLe/X1$c;->i1:LBe/J$c;

    new-instance v6, LLe/X1$c$a;

    invoke-direct {v6, p0, v7}, LLe/X1$c$a;-><init>(LLe/X1$c;LZe/h;)V

    iget-wide v7, p0, LLe/X1$c;->v0:J

    iget-object v9, p0, LLe/X1$c;->b1:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8, v9}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    goto/16 :goto_0

    :cond_a
    new-instance v5, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v6, "Can\'t emit window due to lack of requests"

    invoke-direct {v5, v6}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, v6, LLe/X1$c$b;->a:LZe/h;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, v6, LLe/X1$c$b;->a:LZe/h;

    invoke-virtual {v5}, LZe/h;->a()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, LTe/n;->Y:Z

    if-eqz v5, :cond_0

    iput-boolean v3, p0, LLe/X1$c;->y1:Z

    goto/16 :goto_0

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LZe/h;

    invoke-virtual {v7, v6}, LZe/h;->h(Ljava/lang/Object;)V

    goto :goto_4
.end method
