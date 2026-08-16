.class public final LNe/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/l$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final m:J = 0x321c7f6dd838d46aL


# instance fields
.field public final b:LBe/f;

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:LNe/l$a$a;

.field public final g:I

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


# direct methods
.method public constructor <init>(LBe/f;LFe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/f;",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LNe/l$a;->b:LBe/f;

    iput-object p2, p0, LNe/l$a;->c:LFe/o;

    iput-object p3, p0, LNe/l$a;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/l$a;->g:I

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, LNe/l$a$a;

    invoke-direct {p1, p0}, LNe/l$a$a;-><init>(LNe/l$a;)V

    iput-object p1, p0, LNe/l$a;->f:LNe/l$a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/l$a;->k:Z

    invoke-virtual {p0}, LNe/l$a;->b()V

    return-void
.end method

.method public b()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    iget-object v1, p0, LNe/l$a;->d:Lio/reactivex/internal/util/j;

    :cond_1
    iget-boolean v2, p0, LNe/l$a;->l:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void

    :cond_2
    iget-boolean v2, p0, LNe/l$a;->j:Z

    if-nez v2, :cond_7

    sget-object v2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-boolean v3, p0, LNe/l$a;->l:Z

    iget-object v1, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v1}, LIe/o;->clear()V

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v2, p0, LNe/l$a;->k:Z

    :try_start_0
    iget-object v4, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v4}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, LNe/l$a;->c:LFe/o;

    invoke-interface {v5, v4}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LBe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    iput-boolean v3, p0, LNe/l$a;->l:Z

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    :goto_1
    return-void

    :cond_6
    if-nez v5, :cond_7

    iput-boolean v3, p0, LNe/l$a;->j:Z

    iget-object v2, p0, LNe/l$a;->f:LNe/l$a$a;

    invoke-interface {v4, v2}, LBe/i;->b(LBe/f;)V

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v3, p0, LNe/l$a;->l:Z

    iget-object v2, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v2}, LIe/o;->clear()V

    iget-object v2, p0, LNe/l$a;->i:LDe/c;

    invoke-interface {v2}, LDe/c;->dispose()V

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LNe/l$a;->j:Z

    invoke-virtual {p0}, LNe/l$a;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LNe/l$a;->l:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/l$a;->l:Z

    iget-object v0, p0, LNe/l$a;->i:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LNe/l$a;->f:LNe/l$a$a;

    invoke-virtual {v0}, LNe/l$a$a;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 2

    iget-object v0, p0, LNe/l$a;->i:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LNe/l$a;->i:LDe/c;

    instance-of v0, p1, LIe/j;

    if-eqz v0, :cond_1

    check-cast p1, LIe/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LIe/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, LNe/l$a;->h:LIe/o;

    iput-boolean v1, p0, LNe/l$a;->k:Z

    iget-object p1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    invoke-virtual {p0}, LNe/l$a;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-object p1, p0, LNe/l$a;->h:LIe/o;

    iget-object p1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    return-void

    :cond_1
    new-instance p1, LRe/c;

    iget v0, p0, LNe/l$a;->g:I

    invoke-direct {p1, v0}, LRe/c;-><init>(I)V

    iput-object p1, p0, LNe/l$a;->h:LIe/o;

    iget-object p1, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, LNe/l$a;->d:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LNe/l$a;->l:Z

    iget-object p1, p0, LNe/l$a;->i:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    iget-object p1, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {p1}, LIe/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LNe/l$a;->j:Z

    invoke-virtual {p0}, LNe/l$a;->b()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LNe/l$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, LNe/l$a;->d:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, LNe/l$a;->l:Z

    iget-object p1, p0, LNe/l$a;->f:LNe/l$a$a;

    invoke-virtual {p1}, LNe/l$a$a;->b()V

    iget-object p1, p0, LNe/l$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LNe/l$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LNe/l$a;->h:LIe/o;

    invoke-interface {p1}, LIe/o;->clear()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, LNe/l$a;->k:Z

    invoke-virtual {p0}, LNe/l$a;->b()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
