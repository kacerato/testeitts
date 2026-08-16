.class public final LOe/v$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/v$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final l:J = 0x7a85719c209ca572L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:LOe/v$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/v$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public f:LIe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:LDe/c;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public k:I


# direct methods
.method public constructor <init>(LBe/I;LFe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TU;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "+TU;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/v$b;->b:LBe/I;

    iput-object p2, p0, LOe/v$b;->c:LFe/o;

    iput p3, p0, LOe/v$b;->e:I

    new-instance p2, LOe/v$b$a;

    invoke-direct {p2, p1, p0}, LOe/v$b$a;-><init>(LBe/I;LOe/v$b;)V

    iput-object p2, p0, LOe/v$b;->d:LOe/v$b$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LOe/v$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/v$b;->j:Z

    invoke-virtual {p0}, LOe/v$b;->b()V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LOe/v$b;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void

    :cond_1
    iget-boolean v0, p0, LOe/v$b;->h:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LOe/v$b;->j:Z

    :try_start_0
    iget-object v1, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v1}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, LOe/v$b;->i:Z

    iget-object v0, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    :try_start_1
    iget-object v0, p0, LOe/v$b;->c:LFe/o;

    invoke-interface {v0, v1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, LOe/v$b;->h:Z

    iget-object v1, p0, LOe/v$b;->d:LOe/v$b$a;

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/v$b;->dispose()V

    iget-object v1, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v1}, LIe/o;->clear()V

    iget-object v1, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LOe/v$b;->dispose()V

    iget-object v1, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v1}, LIe/o;->clear()V

    iget-object v1, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LOe/v$b;->h:Z

    invoke-virtual {p0}, LOe/v$b;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/v$b;->i:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/v$b;->i:Z

    iget-object v0, p0, LOe/v$b;->d:LOe/v$b$a;

    invoke-virtual {v0}, LOe/v$b$a;->b()V

    iget-object v0, p0, LOe/v$b;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LOe/v$b;->g:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LOe/v$b;->g:LDe/c;

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, LOe/v$b;->k:I

    iput-object p1, p0, LOe/v$b;->f:LIe/o;

    iput-boolean v1, p0, LOe/v$b;->j:Z

    iget-object p1, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    invoke-virtual {p0}, LOe/v$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, LOe/v$b;->k:I

    iput-object p1, p0, LOe/v$b;->f:LIe/o;

    iget-object p1, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LOe/v$b;->e:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LOe/v$b;->f:LIe/o;

    iget-object p1, p0, LOe/v$b;->b:LBe/I;

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

    iget-boolean v0, p0, LOe/v$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LOe/v$b;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/v$b;->f:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, LOe/v$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LOe/v$b;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/v$b;->j:Z

    invoke-virtual {p0}, LOe/v$b;->dispose()V

    iget-object v0, p0, LOe/v$b;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
