.class public final LOe/X0$a;
.super LOe/X0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/X0;
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
        "LOe/X0$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:J = -0x2a0bdab9530de829L


# instance fields
.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile h:Z


# direct methods
.method public constructor <init>(LBe/I;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LBe/G<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, LOe/X0$c;-><init>(LBe/I;LBe/G;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/X0$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/X0$a;->h:Z

    iget-object v0, p0, LOe/X0$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOe/X0$c;->f()V

    iget-object v0, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, LOe/X0$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, LOe/X0$a;->h:Z

    invoke-virtual {p0}, LOe/X0$c;->f()V

    if-eqz v0, :cond_1

    iget-object v0, p0, LOe/X0$c;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    return-void

    :cond_1
    iget-object v0, p0, LOe/X0$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
