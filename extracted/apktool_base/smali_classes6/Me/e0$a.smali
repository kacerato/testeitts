.class public final LMe/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/e0;
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
        "Ljava/lang/Object;",
        "LBe/v<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LMe/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:LDe/c;


# direct methods
.method public constructor <init>(LBe/v;LMe/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;",
            "LMe/e0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMe/e0$a;->b:LBe/v;

    iput-object p2, p0, LMe/e0$a;->c:LMe/e0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->f:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, LMe/e0$a;->d:LDe/c;

    iget-object v0, p0, LMe/e0$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    invoke-virtual {p0}, LMe/e0$a;->c()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LMe/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->d:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, LMe/e0$a;->d:LDe/c;

    iget-object v0, p0, LMe/e0$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, LMe/e0$a;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, LMe/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->g:LFe/a;

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

    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->h:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/e0$a;->d:LDe/c;

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->c:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, LMe/e0$a;->d:LDe/c;

    iget-object p1, p0, LMe/e0$a;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LDe/c;->dispose()V

    sget-object p1, LGe/d;->DISPOSED:LGe/d;

    iput-object p1, p0, LMe/e0$a;->d:LDe/c;

    iget-object p1, p0, LMe/e0$a;->b:LBe/v;

    invoke-static {v0, p1}, LGe/e;->g(Ljava/lang/Throwable;LBe/v;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LMe/e0$a;->c:LMe/e0;

    iget-object v0, v0, LMe/e0;->e:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
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
    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LMe/e0$a;->d:LDe/c;

    iget-object v0, p0, LMe/e0$a;->b:LBe/v;

    invoke-interface {v0, p1}, LBe/v;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LMe/e0$a;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, LMe/e0$a;->d:LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, LMe/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
