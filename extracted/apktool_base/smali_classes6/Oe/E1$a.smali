.class public final LOe/E1$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/E1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final g:J = 0x51f0e7a17ed319a6L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public f:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;Ljava/lang/Object;LFe/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;TD;",
            "LFe/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LOe/E1$a;->b:LBe/I;

    iput-object p2, p0, LOe/E1$a;->c:Ljava/lang/Object;

    iput-object p3, p0, LOe/E1$a;->d:LFe/g;

    iput-boolean p4, p0, LOe/E1$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, LOe/E1$a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LOe/E1$a;->d:LFe/g;

    iget-object v1, p0, LOe/E1$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, LOe/E1$a;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    iget-object v0, p0, LOe/E1$a;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/E1$a;->b()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LOe/E1$a;->d:LFe/g;

    iget-object v1, p0, LOe/E1$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, LOe/E1$a;->b()V

    iget-object v0, p0, LOe/E1$a;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/E1$a;->f:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/E1$a;->f:LDe/c;

    iget-object p1, p0, LOe/E1$a;->b:LBe/I;

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

    iget-object v0, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, LOe/E1$a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LOe/E1$a;->d:LFe/g;

    iget-object v1, p0, LOe/E1$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, LFe/g;->accept(Ljava/lang/Object;)V
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

    :cond_0
    :goto_0
    iget-object v0, p0, LOe/E1$a;->f:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LOe/E1$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, LOe/E1$a;->f:LDe/c;

    invoke-interface {p1}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/E1$a;->b()V

    :goto_1
    return-void
.end method
