.class public abstract LOe/W0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/I;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/W0;
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
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final h:J = -0x30d108f96c89b153L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:LDe/c;


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LOe/W0$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LOe/W0$c;->b:LBe/I;

    iput-wide p2, p0, LOe/W0$c;->c:J

    iput-object p4, p0, LOe/W0$c;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LOe/W0$c;->e:LBe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LOe/W0$c;->b()V

    invoke-virtual {p0}, LOe/W0$c;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LOe/W0$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public abstract c()V
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LOe/W0$c;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, LOe/W0$c;->b()V

    iget-object v0, p0, LOe/W0$c;->g:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 7

    iget-object v0, p0, LOe/W0$c;->g:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LOe/W0$c;->g:LDe/c;

    iget-object p1, p0, LOe/W0$c;->b:LBe/I;

    invoke-interface {p1, p0}, LBe/I;->e(LDe/c;)V

    iget-object v0, p0, LOe/W0$c;->e:LBe/J;

    iget-wide v4, p0, LOe/W0$c;->c:J

    iget-object v6, p0, LOe/W0$c;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LBe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    iget-object v0, p0, LOe/W0$c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LOe/W0$c;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->h(Ljava/lang/Object;)V

    :cond_0
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

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, LOe/W0$c;->b()V

    iget-object v0, p0, LOe/W0$c;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
