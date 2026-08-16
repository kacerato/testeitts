.class public final LOe/W0$a;
.super LOe/W0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/W0;
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
        "LOe/W0$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = -0x63165c33f8fff493L


# instance fields
.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;)V
    .locals 0
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

    invoke-direct/range {p0 .. p5}, LOe/W0$c;-><init>(LBe/I;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LOe/W0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-virtual {p0}, LOe/W0$c;->f()V

    iget-object v0, p0, LOe/W0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/W0$c;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, LOe/W0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LOe/W0$c;->f()V

    iget-object v0, p0, LOe/W0$a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOe/W0$c;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    :cond_0
    return-void
.end method
