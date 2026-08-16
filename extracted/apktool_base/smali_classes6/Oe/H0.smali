.class public final LOe/H0;
.super LVe/a;
.source "SourceFile"

# interfaces
.implements LIe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/H0$c;,
        LOe/H0$a;,
        LOe/H0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LVe/a<",
        "TT;>;",
        "LIe/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/H0$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LBe/G;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LOe/H0$b<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LVe/a;-><init>()V

    iput-object p1, p0, LOe/H0;->d:LBe/G;

    iput-object p2, p0, LOe/H0;->b:LBe/G;

    iput-object p3, p0, LOe/H0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static u8(LBe/G;)LVe/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/G<",
            "TT;>;)",
            "LVe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, LOe/H0$c;

    invoke-direct {v1, v0}, LOe/H0$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v2, LOe/H0;

    invoke-direct {v2, v1, p0, v0}, LOe/H0;-><init>(LBe/G;LBe/G;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, LYe/a;->U(LVe/a;)LVe/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/H0;->d:LBe/G;

    invoke-interface {v0, p1}, LBe/G;->c(LBe/I;)V

    return-void
.end method

.method public n8(LFe/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, LOe/H0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOe/H0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOe/H0$b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, LOe/H0$b;

    iget-object v2, p0, LOe/H0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, LOe/H0$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v2, p0, LOe/H0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, LOe/H0$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, LOe/H0$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    :try_start_0
    invoke-interface {p1, v0}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    iget-object p1, p0, LOe/H0;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public source()LBe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/G<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/H0;->b:LBe/G;

    return-object v0
.end method
