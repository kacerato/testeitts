.class public final LKe/S$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final f:J = -0x95bf75d78cfb0efL


# instance fields
.field public final b:LBe/f;

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public e:LDe/c;


# direct methods
.method public constructor <init>(LBe/f;Ljava/lang/Object;LFe/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/f;",
            "TR;",
            "LFe/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LKe/S$a;->b:LBe/f;

    iput-object p3, p0, LKe/S$a;->c:LFe/g;

    iput-boolean p4, p0, LKe/S$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LKe/S$a;->e:LDe/c;

    iget-boolean v0, p0, LKe/S$a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, LKe/S$a;->c:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LKe/S$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LKe/S$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    iget-boolean v0, p0, LKe/S$a;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, LKe/S$a;->b()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, LKe/S$a;->c:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
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

    iget-object v0, p0, LKe/S$a;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LKe/S$a;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LKe/S$a;->e:LDe/c;

    invoke-virtual {p0}, LKe/S$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/S$a;->e:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LKe/S$a;->e:LDe/c;

    iget-object p1, p0, LKe/S$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LGe/d;->DISPOSED:LGe/d;

    iput-object v0, p0, LKe/S$a;->e:LDe/c;

    iget-boolean v0, p0, LKe/S$a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, LKe/S$a;->c:LFe/g;

    invoke-interface {v1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
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

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, LKe/S$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    iget-boolean p1, p0, LKe/S$a;->d:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, LKe/S$a;->b()V

    :cond_2
    return-void
.end method
