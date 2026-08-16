.class public final LLe/b0$a;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/b0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LUe/c<",
        "TT;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:J = 0x752c1ce874ed53bfL


# instance fields
.field public final c:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/c;

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:LDe/b;

.field public final h:I

.field public i:Lhn/d;

.field public volatile j:Z


# direct methods
.method public constructor <init>(Lhn/c;LFe/o;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LLe/b0$a;->c:Lhn/c;

    iput-object p2, p0, LLe/b0$a;->e:LFe/o;

    iput-boolean p3, p0, LLe/b0$a;->f:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LLe/b0$a;->d:Lio/reactivex/internal/util/c;

    new-instance p1, LDe/b;

    invoke-direct {p1}, LDe/b;-><init>()V

    iput-object p1, p0, LLe/b0$a;->g:LDe/b;

    iput p4, p0, LLe/b0$a;->h:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LLe/b0$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LLe/b0$a;->c:Lhn/c;

    invoke-interface {v1, v0}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLe/b0$a;->c:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    goto :goto_0

    :cond_1
    iget v0, p0, LLe/b0$a;->h:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    iget-object v0, p0, LLe/b0$a;->i:Lhn/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lhn/d;->i(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/b0$a;->j:Z

    iget-object v0, p0, LLe/b0$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LLe/b0$a;->g:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d(LLe/b0$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/b0$a<",
            "TT;>.a;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/b0$a;->g:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->b(LDe/c;)Z

    invoke-virtual {p0}, LLe/b0$a;->a()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/b0$a;->e:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, LLe/b0$a$a;

    invoke-direct {v0, p0}, LLe/b0$a$a;-><init>(LLe/b0$a;)V

    iget-boolean v1, p0, LLe/b0$a;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LLe/b0$a;->g:LDe/b;

    invoke-virtual {v1, v0}, LDe/b;->a(LDe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LLe/b0$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LLe/b0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LLe/b0$a;->i:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LLe/b0$a;->i:Lhn/d;

    iget-object v0, p0, LLe/b0$a;->c:Lhn/c;

    invoke-interface {v0, p0}, Lhn/c;->j(Lhn/d;)V

    iget v0, p0, LLe/b0$a;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public n(LLe/b0$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LLe/b0$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LLe/b0$a;->g:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->b(LDe/c;)Z

    invoke-virtual {p0, p2}, LLe/b0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LLe/b0$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, LLe/b0$a;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LLe/b0$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, LLe/b0$a;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget p1, p0, LLe/b0$a;->h:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    iget-object p1, p0, LLe/b0$a;->i:Lhn/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LLe/b0$a;->cancel()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, LLe/b0$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, LLe/b0$a;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
