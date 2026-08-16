.class public final LNe/c$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNe/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNe/c$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final n:J = 0x321c7f6dd838d46aL


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

.field public final f:LNe/c$a$a;

.field public final g:I

.field public final h:LIe/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Lhn/d;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:I


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

    iput-object p1, p0, LNe/c$a;->b:LBe/f;

    iput-object p2, p0, LNe/c$a;->c:LFe/o;

    iput-object p3, p0, LNe/c$a;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, LNe/c$a;->g:I

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, LNe/c$a$a;

    invoke-direct {p1, p0}, LNe/c$a$a;-><init>(LNe/c$a;)V

    iput-object p1, p0, LNe/c$a;->f:LNe/c$a$a;

    new-instance p1, LRe/b;

    invoke-direct {p1, p4}, LRe/b;-><init>(I)V

    iput-object p1, p0, LNe/c$a;->h:LIe/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/c$a;->k:Z

    invoke-virtual {p0}, LNe/c$a;->b()V

    return-void
.end method

.method public b()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LNe/c$a;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void

    :cond_1
    iget-boolean v0, p0, LNe/c$a;->j:Z

    if-nez v0, :cond_7

    iget-object v0, p0, LNe/c$a;->d:Lio/reactivex/internal/util/j;

    sget-object v1, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-boolean v0, p0, LNe/c$a;->k:Z

    iget-object v1, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v1}, LIe/n;->poll()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    :goto_1
    return-void

    :cond_5
    if-nez v4, :cond_7

    iget v0, p0, LNe/c$a;->g:I

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v4

    iget v4, p0, LNe/c$a;->m:I

    add-int/2addr v4, v3

    if-ne v4, v0, :cond_6

    iput v2, p0, LNe/c$a;->m:I

    iget-object v2, p0, LNe/c$a;->i:Lhn/d;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5}, Lhn/d;->i(J)V

    goto :goto_2

    :cond_6
    iput v4, p0, LNe/c$a;->m:I

    :goto_2
    :try_start_0
    iget-object v0, p0, LNe/c$a;->c:LFe/o;

    invoke-interface {v0, v1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null CompletableSource"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, LNe/c$a;->j:Z

    iget-object v1, p0, LNe/c$a;->f:LNe/c$a$a;

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v1}, LIe/o;->clear()V

    iget-object v1, p0, LNe/c$a;->i:Lhn/d;

    invoke-interface {v1}, Lhn/d;->cancel()V

    iget-object v1, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LNe/c$a;->j:Z

    invoke-virtual {p0}, LNe/c$a;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LNe/c$a;->l:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LNe/c$a;->l:Z

    iget-object v0, p0, LNe/c$a;->i:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    iget-object v0, p0, LNe/c$a;->f:LNe/c$a$a;

    invoke-virtual {v0}, LNe/c$a$a;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v0}, LIe/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, LNe/c$a;->d:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LNe/c$a;->i:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    iget-object p1, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {p1}, LIe/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LNe/c$a;->j:Z

    invoke-virtual {p0}, LNe/c$a;->b()V

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

    iget-object v0, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {v0, p1}, LIe/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LNe/c$a;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LNe/c$a;->i:Lhn/d;

    invoke-interface {p1}, Lhn/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LNe/c$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 2

    iget-object v0, p0, LNe/c$a;->i:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LNe/c$a;->i:Lhn/d;

    iget-object v0, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v0, p0}, LBe/f;->e(LDe/c;)V

    iget v0, p0, LNe/c$a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, LNe/c$a;->d:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LNe/c$a;->f:LNe/c$a$a;

    invoke-virtual {p1}, LNe/c$a$a;->b()V

    iget-object p1, p0, LNe/c$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LNe/c$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LNe/c$a;->h:LIe/n;

    invoke-interface {p1}, LIe/o;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LNe/c$a;->k:Z

    invoke-virtual {p0}, LNe/c$a;->b()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
