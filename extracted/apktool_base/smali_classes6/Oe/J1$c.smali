.class public final LOe/J1$c;
.super LJe/v;
.source "SourceFile"

# interfaces
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/J1$c$a;,
        LOe/J1$c$b;
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
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final L:J

.field public final M:J

.field public final N:Ljava/util/concurrent/TimeUnit;

.field public final O:LBe/J$c;

.field public final P:I

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbf/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public R:LDe/c;

.field public volatile S:Z


# direct methods
.method public constructor <init>(LBe/I;JJLjava/util/concurrent/TimeUnit;LBe/J$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "I)V"
        }
    .end annotation

    new-instance v0, LRe/a;

    invoke-direct {v0}, LRe/a;-><init>()V

    invoke-direct {p0, p1, v0}, LJe/v;-><init>(LBe/I;LIe/n;)V

    iput-wide p2, p0, LOe/J1$c;->L:J

    iput-wide p4, p0, LOe/J1$c;->M:J

    iput-object p6, p0, LOe/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, LOe/J1$c;->O:LBe/J$c;

    iput p8, p0, LOe/J1$c;->P:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, LOe/J1$c;->Q:Ljava/util/List;

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

    invoke-virtual {p0}, LOe/J1$c;->p()V

    :cond_0
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    invoke-virtual {p0}, LOe/J1$c;->o()V

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
    .locals 11

    iget-object v0, p0, LOe/J1$c;->R:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LOe/J1$c;->R:LDe/c;

    iget-object p1, p0, LJe/v;->G:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-boolean p1, p0, LJe/v;->I:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, LOe/J1$c;->P:I

    invoke-static {p1}, Lbf/j;->p8(I)Lbf/j;

    move-result-object p1

    iget-object v0, p0, LOe/J1$c;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    iget-object v0, p0, LOe/J1$c;->O:LBe/J$c;

    new-instance v1, LOe/J1$c$a;

    invoke-direct {v1, p0, p1}, LOe/J1$c$a;-><init>(LOe/J1$c;Lbf/j;)V

    iget-wide v2, p0, LOe/J1$c;->L:J

    iget-object p1, p0, LOe/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    iget-object v4, p0, LOe/J1$c;->O:LBe/J$c;

    iget-wide v8, p0, LOe/J1$c;->M:J

    iget-object v10, p0, LOe/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, LBe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, LJe/v;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/J1$c;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf/j;

    invoke-virtual {v1, p1}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, LJe/v;->c(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LOe/J1$c;->p()V

    return-void
.end method

.method public n(Lbf/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/j<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LJe/v;->H:LIe/n;

    new-instance v1, LOe/J1$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LOe/J1$c$b;-><init>(Lbf/j;Z)V

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJe/v;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LOe/J1$c;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, LOe/J1$c;->O:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

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

    invoke-virtual {p0}, LOe/J1$c;->p()V

    :cond_0
    iget-object v0, p0, LJe/v;->G:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/J1$c;->o()V

    return-void
.end method

.method public p()V
    .locals 10

    iget-object v0, p0, LJe/v;->H:LIe/n;

    check-cast v0, LRe/a;

    iget-object v1, p0, LJe/v;->G:LBe/I;

    iget-object v2, p0, LOe/J1$c;->Q:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, LOe/J1$c;->S:Z

    if-eqz v5, :cond_1

    iget-object v1, p0, LOe/J1$c;->R:LDe/c;

    invoke-interface {v1}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/J1$c;->o()V

    invoke-virtual {v0}, LRe/a;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

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
    instance-of v8, v6, LOe/J1$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    :cond_3
    invoke-virtual {v0}, LRe/a;->clear()V

    iget-object v0, p0, LJe/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf/j;

    invoke-virtual {v3, v0}, Lbf/j;->onError(Ljava/lang/Throwable;)V

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

    check-cast v1, Lbf/j;

    invoke-virtual {v1}, Lbf/j;->a()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, LOe/J1$c;->o()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    invoke-virtual {p0, v4}, LJe/v;->c(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_a

    check-cast v6, LOe/J1$c$b;

    iget-boolean v5, v6, LOe/J1$c$b;->b:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, LJe/v;->I:Z

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    iget v5, p0, LOe/J1$c;->P:I

    invoke-static {v5}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, LBe/I;->h(Ljava/lang/Object;)V

    iget-object v6, p0, LOe/J1$c;->O:LBe/J$c;

    new-instance v7, LOe/J1$c$a;

    invoke-direct {v7, p0, v5}, LOe/J1$c$a;-><init>(LOe/J1$c;Lbf/j;)V

    iget-wide v8, p0, LOe/J1$c;->L:J

    iget-object v5, p0, LOe/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v5}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    goto/16 :goto_0

    :cond_9
    iget-object v5, v6, LOe/J1$c$b;->a:Lbf/j;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, v6, LOe/J1$c$b;->a:Lbf/j;

    invoke-virtual {v5}, Lbf/j;->a()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, LJe/v;->I:Z

    if-eqz v5, :cond_0

    iput-boolean v3, p0, LOe/J1$c;->S:Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbf/j;

    invoke-virtual {v7, v6}, Lbf/j;->h(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public run()V
    .locals 3

    iget v0, p0, LOe/J1$c;->P:I

    invoke-static {v0}, Lbf/j;->p8(I)Lbf/j;

    move-result-object v0

    new-instance v1, LOe/J1$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LOe/J1$c$b;-><init>(Lbf/j;Z)V

    iget-boolean v0, p0, LJe/v;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LJe/v;->H:LIe/n;

    invoke-interface {v0, v1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LJe/v;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOe/J1$c;->p()V

    :cond_1
    return-void
.end method
