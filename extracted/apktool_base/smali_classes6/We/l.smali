.class public final LWe/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LDe/c;

.field public d:Z


# direct methods
.method public constructor <init>(LBe/I;)V
    .locals 0
    .param p1    # LBe/I;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWe/l;->b:LBe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LWe/l;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LWe/l;->d:Z

    iget-object v0, p0, LWe/l;->c:LDe/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LWe/l;->b()V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, LWe/l;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Subscription not set!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, LWe/l;->b:LBe/I;

    sget-object v5, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {v4, v5}, LBe/I;->e(LDe/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, LWe/l;->b:LBe/I;

    invoke-interface {v4, v3}, LBe/I;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    invoke-direct {v5, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    invoke-direct {v5, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iput-boolean v2, p0, LWe/l;->d:Z

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Subscription not set!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, LWe/l;->b:LBe/I;

    sget-object v5, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {v4, v5}, LBe/I;->e(LDe/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, LWe/l;->b:LBe/I;

    invoke-interface {v4, v3}, LBe/I;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v5, Lio/reactivex/exceptions/CompositeException;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v3, v1, v0

    aput-object v4, v1, v2

    invoke-direct {v5, v1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v5}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LWe/l;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LWe/l;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 2
    .param p1    # LDe/c;
        .annotation build LCe/f;
        .end annotation
    .end param

    iget-object v0, p0, LWe/l;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LWe/l;->c:LDe/c;

    :try_start_0
    iget-object v0, p0, LWe/l;->b:LBe/I;

    invoke-interface {v0, p0}, LBe/I;->e(LDe/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, LWe/l;->d:Z

    :try_start_1
    invoke-interface {p1}, LDe/c;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, LWe/l;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LWe/l;->c:LDe/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LWe/l;->c()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, LWe/l;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, LWe/l;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LWe/l;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, LWe/l;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_2
    iget-object v0, p0, LWe/l;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0, p1}, LWe/l;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LWe/l;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build LCe/f;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v4, p0, LWe/l;->d:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-boolean v3, p0, LWe/l;->d:Z

    iget-object v4, p0, LWe/l;->c:LDe/c;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Subscription not set!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, LWe/l;->b:LBe/I;

    sget-object v6, LGe/e;->INSTANCE:LGe/e;

    invoke-interface {v5, v6}, LBe/I;->e(LDe/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, LWe/l;->b:LBe/I;

    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    new-array v7, v2, [Ljava/lang/Throwable;

    aput-object p1, v7, v1

    aput-object v4, v7, v3

    invoke-direct {v6, v7}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, LBe/I;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object p1, v0, v1

    aput-object v4, v0, v3

    aput-object v5, v0, v2

    invoke-direct {v6, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v6}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v6, Lio/reactivex/exceptions/CompositeException;

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object p1, v0, v1

    aput-object v4, v0, v3

    aput-object v5, v0, v2

    invoke-direct {v6, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v6}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    :try_start_2
    iget-object v0, p0, LWe/l;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
