.class public LQe/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:LDe/b;

.field public final d:[Ljava/lang/Object;

.field public final e:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILDe/b;[Ljava/lang/Object;LBe/N;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LDe/b;",
            "[",
            "Ljava/lang/Object;",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LQe/v$a;->b:I

    iput-object p2, p0, LQe/v$a;->c:LDe/b;

    iput-object p3, p0, LQe/v$a;->d:[Ljava/lang/Object;

    iput-object p4, p0, LQe/v$a;->e:LBe/N;

    iput-object p5, p0, LQe/v$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LQe/v$a;->d:[Ljava/lang/Object;

    iget v1, p0, LQe/v$a;->b:I

    aput-object p1, v0, v1

    iget-object p1, p0, LQe/v$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LQe/v$a;->e:LBe/N;

    iget-object v0, p0, LQe/v$a;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v1, v0}, LHe/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, LBe/N;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LQe/v$a;->c:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    :cond_0
    iget-object v0, p0, LQe/v$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v2, p0, LQe/v$a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQe/v$a;->c:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LQe/v$a;->e:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
