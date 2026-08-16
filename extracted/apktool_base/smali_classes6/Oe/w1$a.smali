.class public final LOe/w1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final n:J = -0x7323c2cdbcdaca16L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J$c;

.field public final f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:LDe/c;

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public volatile k:Z

.field public volatile l:Z

.field public m:Z


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J$c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J$c;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/w1$a;->b:LBe/I;

    iput-wide p2, p0, LOe/w1$a;->c:J

    iput-object p4, p0, LOe/w1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/w1$a;->e:LBe/J$c;

    iput-boolean p6, p0, LOe/w1$a;->f:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LOe/w1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/w1$a;->i:Z

    invoke-virtual {p0}, LOe/w1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/w1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, LOe/w1$a;->b:LBe/I;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, LOe/w1$a;->k:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean v4, p0, LOe/w1$a;->i:Z

    if-eqz v4, :cond_3

    iget-object v6, p0, LOe/w1$a;->j:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, LOe/w1$a;->j:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/w1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_5

    iget-boolean v2, p0, LOe/w1$a;->f:Z

    if-eqz v2, :cond_5

    invoke-interface {v1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v1}, LBe/I;->a()V

    iget-object v0, p0, LOe/w1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void

    :cond_6
    if-eqz v6, :cond_7

    iget-boolean v4, p0, LOe/w1$a;->l:Z

    if-eqz v4, :cond_8

    iput-boolean v7, p0, LOe/w1$a;->m:Z

    iput-boolean v7, p0, LOe/w1$a;->l:Z

    goto :goto_2

    :cond_7
    iget-boolean v4, p0, LOe/w1$a;->m:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, LOe/w1$a;->l:Z

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_9
    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, LBe/I;->h(Ljava/lang/Object;)V

    iput-boolean v7, p0, LOe/w1$a;->l:Z

    iput-boolean v2, p0, LOe/w1$a;->m:Z

    iget-object v4, p0, LOe/w1$a;->e:LBe/J$c;

    iget-wide v5, p0, LOe/w1$a;->c:J

    iget-object v7, p0, LOe/w1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v5, v6, v7}, LBe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/w1$a;->k:Z

    return v0
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/w1$a;->k:Z

    iget-object v0, p0, LOe/w1$a;->h:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/w1$a;->e:LBe/J$c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/w1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/w1$a;->h:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/w1$a;->h:LDe/c;

    iget-object p1, p0, LOe/w1$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

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

    iget-object v0, p0, LOe/w1$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, LOe/w1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LOe/w1$a;->j:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/w1$a;->i:Z

    invoke-virtual {p0}, LOe/w1$a;->b()V

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/w1$a;->l:Z

    invoke-virtual {p0}, LOe/w1$a;->b()V

    return-void
.end method
