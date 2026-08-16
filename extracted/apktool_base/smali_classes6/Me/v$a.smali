.class public final LMe/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/v;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LMe/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LMe/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMe/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/N;LFe/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "LFe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LMe/v$a;->b:LBe/N;

    iput-object p2, p0, LMe/v$a;->e:LFe/d;

    new-instance p1, LMe/v$b;

    invoke-direct {p1, p0}, LMe/v$b;-><init>(LMe/v$a;)V

    iput-object p1, p0, LMe/v$a;->c:LMe/v$b;

    new-instance p1, LMe/v$b;

    invoke-direct {p1, p0}, LMe/v$b;-><init>(LMe/v$a;)V

    iput-object p1, p0, LMe/v$a;->d:LMe/v$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LMe/v$a;->c:LMe/v$b;

    iget-object v0, v0, LMe/v$b;->c:Ljava/lang/Object;

    iget-object v1, p0, LMe/v$a;->d:LMe/v$b;

    iget-object v1, v1, LMe/v$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, LMe/v$a;->e:LFe/d;

    invoke-interface {v2, v0, v1}, LFe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LMe/v$a;->b:LBe/N;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LMe/v$a;->b:LBe/N;

    invoke-interface {v1, v0}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v2, p0, LMe/v$a;->b:LBe/N;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, LBe/N;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(LMe/v$b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMe/v$b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LMe/v$a;->c:LMe/v$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LMe/v$a;->d:LMe/v$b;

    invoke-virtual {p1}, LMe/v$b;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LMe/v$b;->c()V

    :goto_0
    iget-object p1, p0, LMe/v$a;->b:LBe/N;

    invoke-interface {p1, p2}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(LBe/y;LBe/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;",
            "LBe/y<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LMe/v$a;->c:LMe/v$b;

    invoke-interface {p1, v0}, LBe/y;->d(LBe/v;)V

    iget-object p1, p0, LMe/v$a;->d:LMe/v$b;

    invoke-interface {p2, p1}, LBe/y;->d(LBe/v;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LMe/v$a;->c:LMe/v$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LMe/v$a;->c:LMe/v$b;

    invoke-virtual {v0}, LMe/v$b;->c()V

    iget-object v0, p0, LMe/v$a;->d:LMe/v$b;

    invoke-virtual {v0}, LMe/v$b;->c()V

    return-void
.end method
