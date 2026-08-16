.class public final LLe/a1$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "LBe/q<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final f:J = -0x66f7ddf0554a95a7L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LLe/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLe/a1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LLe/a1$a;

.field public e:Lhn/d;


# direct methods
.method public constructor <init>(Lhn/c;LLe/a1;LLe/a1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LLe/a1<",
            "TT;>;",
            "LLe/a1$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LLe/a1$b;->b:Lhn/c;

    iput-object p2, p0, LLe/a1$b;->c:LLe/a1;

    iput-object p3, p0, LLe/a1$b;->d:LLe/a1$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/a1$b;->c:LLe/a1;

    iget-object v1, p0, LLe/a1$b;->d:LLe/a1$a;

    invoke-virtual {v0, v1}, LLe/a1;->P8(LLe/a1$a;)V

    iget-object v0, p0, LLe/a1$b;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, LLe/a1$b;->e:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/a1$b;->c:LLe/a1;

    iget-object v1, p0, LLe/a1$b;->d:LLe/a1$a;

    invoke-virtual {v0, v1}, LLe/a1;->O8(LLe/a1$a;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a1$b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/a1$b;->e:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/a1$b;->e:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LLe/a1$b;->e:Lhn/d;

    iget-object p1, p0, LLe/a1$b;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLe/a1$b;->c:LLe/a1;

    iget-object v1, p0, LLe/a1$b;->d:LLe/a1$a;

    invoke-virtual {v0, v1}, LLe/a1;->P8(LLe/a1$a;)V

    iget-object v0, p0, LLe/a1$b;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
