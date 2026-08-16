.class public final LKe/I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LBe/f;

.field public c:LDe/c;

.field public final synthetic d:LKe/I;


# direct methods
.method public constructor <init>(LKe/I;LBe/f;)V
    .locals 0

    iput-object p1, p0, LKe/I$a;->d:LKe/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LKe/I$a;->b:LBe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LKe/I$a;->c:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->e:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V

    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->f:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LKe/I$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    invoke-virtual {p0}, LKe/I$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LKe/I$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->g:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
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

.method public d()Z
    .locals 1

    iget-object v0, p0, LKe/I$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->h:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, LKe/I$a;->c:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->c:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LKe/I$a;->c:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LKe/I$a;->c:LDe/c;

    iget-object p1, p0, LKe/I$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LDe/c;->dispose()V

    sget-object p1, LGe/d;->DISPOSED:LGe/d;

    iput-object p1, p0, LKe/I$a;->c:LDe/c;

    iget-object p1, p0, LKe/I$a;->b:LBe/f;

    invoke-static {v0, p1}, LGe/e;->e(Ljava/lang/Throwable;LBe/f;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LKe/I$a;->c:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->d:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, LKe/I$a;->d:LKe/I;

    iget-object v0, v0, LKe/I;->f:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, LKe/I$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LKe/I$a;->b()V

    return-void
.end method
