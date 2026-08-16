.class public final LOe/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/v$a$a;
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
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final n:J = -0x6077449f877ccfe7L


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

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:LOe/v$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/v$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public h:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:LDe/c;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(LBe/I;LFe/o;IZ)V
    .locals 0
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

    iput-object p1, p0, LOe/v$a;->b:LBe/I;

    iput-object p2, p0, LOe/v$a;->c:LFe/o;

    iput p3, p0, LOe/v$a;->d:I

    iput-boolean p4, p0, LOe/v$a;->g:Z

    new-instance p2, Lio/reactivex/internal/util/c;

    invoke-direct {p2}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p2, p0, LOe/v$a;->e:Lio/reactivex/internal/util/c;

    new-instance p2, LOe/v$a$a;

    invoke-direct {p2, p1, p0}, LOe/v$a$a;-><init>(LBe/I;LOe/v$a;)V

    iput-object p2, p0, LOe/v$a;->f:LOe/v$a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/v$a;->k:Z

    invoke-virtual {p0}, LOe/v$a;->b()V

    return-void
.end method

.method public b()V
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOe/v$a;->b:LBe/I;

    iget-object v1, p0, LOe/v$a;->h:LIe/o;

    iget-object v2, p0, LOe/v$a;->e:Lio/reactivex/internal/util/c;

    :cond_1
    :goto_0
    iget-boolean v3, p0, LOe/v$a;->j:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, LOe/v$a;->l:Z

    if-eqz v3, :cond_2

    invoke-interface {v1}, LIe/o;->clear()V

    return-void

    :cond_2
    iget-boolean v3, p0, LOe/v$a;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-interface {v1}, LIe/o;->clear()V

    iput-boolean v4, p0, LOe/v$a;->l:Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v3, p0, LOe/v$a;->k:Z

    :try_start_0
    invoke-interface {v1}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    iput-boolean v4, p0, LOe/v$a;->l:Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, LBe/I;->a()V

    :goto_2
    return-void

    :cond_6
    if-nez v6, :cond_8

    :try_start_1
    iget-object v3, p0, LOe/v$a;->c:LFe/o;

    invoke-interface {v3, v5}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LBe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of v5, v3, Ljava/util/concurrent/Callable;

    if-eqz v5, :cond_7

    :try_start_2
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    iget-boolean v4, p0, LOe/v$a;->l:Z

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, LBe/I;->h(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_7
    iput-boolean v4, p0, LOe/v$a;->j:Z

    iget-object v4, p0, LOe/v$a;->f:LOe/v$a$a;

    invoke-interface {v3, v4}, LBe/G;->c(LBe/I;)V

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, LOe/v$a;->l:Z

    iget-object v4, p0, LOe/v$a;->i:LDe/c;

    invoke-interface {v4}, LDe/c;->dispose()V

    invoke-interface {v1}, LIe/o;->clear()V

    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, LOe/v$a;->l:Z

    iget-object v3, p0, LOe/v$a;->i:LDe/c;

    invoke-interface {v3}, LDe/c;->dispose()V

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/v$a;->l:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/v$a;->l:Z

    iget-object v0, p0, LOe/v$a;->i:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/v$a;->f:LOe/v$a$a;

    invoke-virtual {v0}, LOe/v$a$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/v$a;->i:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LOe/v$a;->i:LDe/c;

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LOe/v$a;->m:I

    iput-object p1, p0, LOe/v$a;->h:LIe/o;

    iput-boolean v1, p0, LOe/v$a;->k:Z

    iget-object p1, p0, LOe/v$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0}, LOe/v$a;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LOe/v$a;->m:I

    iput-object p1, p0, LOe/v$a;->h:LIe/o;

    iget-object p1, p0, LOe/v$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LOe/v$a;->d:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/v$a;->h:LIe/o;

    iget-object p1, p0, LOe/v$a;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, LOe/v$a;->m:I

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/v$a;->h:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LOe/v$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/v$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOe/v$a;->k:Z

    invoke-virtual {p0}, LOe/v$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
