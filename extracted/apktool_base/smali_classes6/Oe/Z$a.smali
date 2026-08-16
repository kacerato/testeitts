.class public final LOe/Z$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/Z$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:J = 0x752c1ce874ed53bfL


# instance fields
.field public final b:LBe/f;

.field public final c:Lio/reactivex/internal/util/c;

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:LDe/b;

.field public g:LDe/c;

.field public volatile h:Z


# direct methods
.method public constructor <init>(LBe/f;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/f;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/Z$a;->b:LBe/f;

    iput-object p2, p0, LOe/Z$a;->d:LFe/o;

    iput-boolean p3, p0, LOe/Z$a;->e:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LOe/Z$a;->c:Lio/reactivex/internal/util/c;

    new-instance p1, LDe/b;

    invoke-direct {p1}, LDe/b;-><init>()V

    iput-object p1, p0, LOe/Z$a;->f:LDe/b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LOe/Z$a;->c:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LOe/Z$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/Z$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(LOe/Z$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/Z$a<",
            "TT;>.a;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/Z$a;->f:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->b(LDe/c;)Z

    invoke-virtual {p0}, LOe/Z$a;->a()V

    return-void
.end method

.method public c(LOe/Z$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOe/Z$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LOe/Z$a;->f:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->b(LDe/c;)Z

    invoke-virtual {p0, p2}, LOe/Z$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/Z$a;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/Z$a;->h:Z

    iget-object v0, p0, LOe/Z$a;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/Z$a;->f:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/Z$a;->g:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/Z$a;->g:LDe/c;

    iget-object p1, p0, LOe/Z$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
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
    iget-object v0, p0, LOe/Z$a;->d:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, LOe/Z$a$a;

    invoke-direct {v0, p0}, LOe/Z$a$a;-><init>(LOe/Z$a;)V

    iget-boolean v1, p0, LOe/Z$a;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, LOe/Z$a;->f:LDe/b;

    invoke-virtual {v1, v0}, LDe/b;->a(LDe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LOe/Z$a;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0, p1}, LOe/Z$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/Z$a;->c:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LOe/Z$a;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LOe/Z$a;->c:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, LOe/Z$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOe/Z$a;->dispose()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, LOe/Z$a;->c:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, LOe/Z$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
