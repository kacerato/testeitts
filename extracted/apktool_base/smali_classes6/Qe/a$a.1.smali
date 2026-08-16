.class public final LQe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQe/a;
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
        "Ljava/lang/Object;",
        "LBe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LDe/b;

.field public final c:LBe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:LDe/c;


# direct methods
.method public constructor <init>(LBe/N;LDe/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;",
            "LDe/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQe/a$a;->c:LBe/N;

    iput-object p2, p0, LQe/a$a;->b:LDe/b;

    iput-object p3, p0, LQe/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object v0, p0, LQe/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQe/a$a;->b:LDe/b;

    iget-object v1, p0, LQe/a$a;->e:LDe/c;

    invoke-virtual {v0, v1}, LDe/b;->b(LDe/c;)Z

    iget-object v0, p0, LQe/a$a;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LQe/a$a;->c:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iput-object p1, p0, LQe/a$a;->e:LDe/c;

    iget-object v0, p0, LQe/a$a;->b:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LQe/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQe/a$a;->b:LDe/b;

    iget-object v1, p0, LQe/a$a;->e:LDe/c;

    invoke-virtual {v0, v1}, LDe/b;->b(LDe/c;)Z

    iget-object v0, p0, LQe/a$a;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LQe/a$a;->c:LBe/N;

    invoke-interface {v0, p1}, LBe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
