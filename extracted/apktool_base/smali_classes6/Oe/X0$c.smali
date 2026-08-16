.class public abstract LOe/X0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/X0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "LBe/I<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final f:J = -0x30d108f96c89b153L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;LBe/G;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LBe/G<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LOe/X0$c;->b:LBe/I;

    iput-object p2, p0, LOe/X0$c;->c:LBe/G;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, LOe/X0$c;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LOe/X0$c;->c()V

    return-void
.end method

.method public abstract c()V
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LOe/X0$c;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->e:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/X0$c;->e:LDe/c;

    iget-object p1, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LOe/X0$c;->c:LBe/G;

    new-instance v0, LOe/X0$d;

    invoke-direct {v0, p0}, LOe/X0$d;-><init>(LOe/X0$c;)V

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    iget-object v0, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract i()V
.end method

.method public j(LDe/c;)Z
    .locals 1

    iget-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result p1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/X0$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
