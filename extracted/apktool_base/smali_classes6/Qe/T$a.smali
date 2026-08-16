.class public final LQe/T$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/N;
.implements Ljava/lang/Runnable;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/T$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/N<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final h:J = 0x85380018ff2a7eL


# instance fields
.field public final b:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LQe/T$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQe/T$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:LBe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final f:J

.field public final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(LBe/N;LBe/Q;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;",
            "LBe/Q<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LQe/T$a;->b:LBe/N;

    iput-object p2, p0, LQe/T$a;->e:LBe/Q;

    iput-wide p3, p0, LQe/T$a;->f:J

    iput-object p5, p0, LQe/T$a;->g:Ljava/util/concurrent/TimeUnit;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, LQe/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_0

    new-instance p2, LQe/T$a$a;

    invoke-direct {p2, p1}, LQe/T$a$a;-><init>(LBe/N;)V

    iput-object p2, p0, LQe/T$a;->d:LQe/T$a$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LQe/T$a;->d:LQe/T$a$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQe/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LQe/T$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LQe/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LQe/T$a;->d:LQe/T$a$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQe/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LQe/T$a;->b:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    sget-object v1, LGe/d;->DISPOSED:LGe/d;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0}, LDe/c;->dispose()V

    :cond_0
    iget-object v0, p0, LQe/T$a;->e:LBe/Q;

    if-nez v0, :cond_1

    iget-object v0, p0, LQe/T$a;->b:LBe/N;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-wide v2, p0, LQe/T$a;->f:J

    iget-object v4, p0, LQe/T$a;->g:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lio/reactivex/internal/util/ExceptionHelper;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, LQe/T$a;->e:LBe/Q;

    iget-object v1, p0, LQe/T$a;->d:LQe/T$a$a;

    invoke-interface {v0, v1}, LBe/Q;->a(LBe/N;)V

    :cond_2
    :goto_0
    return-void
.end method
