.class public final LLe/Q$b;
.super LUe/c;
.source "SourceFile"

# interfaces
.implements LBe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/Q;
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
        "LUe/c<",
        "TT;>;",
        "LBe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:J = 0x3907ba0b13897e3dL


# instance fields
.field public final c:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/a;

.field public e:Lhn/d;

.field public f:LIe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lhn/c;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LUe/c;-><init>()V

    iput-object p1, p0, LLe/Q$b;->c:Lhn/c;

    iput-object p2, p0, LLe/Q$b;->d:LFe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->c:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    invoke-virtual {p0}, LLe/Q$b;->d()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->e:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0}, LLe/Q$b;->d()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->f:LIe/l;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LLe/Q$b;->d:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/Q$b;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->e:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LLe/Q$b;->f:LIe/l;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->e:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LLe/Q$b;->e:Lhn/d;

    instance-of v0, p1, LIe/l;

    if-eqz v0, :cond_0

    check-cast p1, LIe/l;

    iput-object p1, p0, LLe/Q$b;->f:LIe/l;

    :cond_0
    iget-object p1, p0, LLe/Q$b;->c:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_1
    return-void
.end method

.method public m(I)I
    .locals 3

    iget-object v0, p0, LLe/Q$b;->f:LIe/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, LIe/k;->m(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, LLe/Q$b;->g:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LLe/Q$b;->c:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LLe/Q$b;->d()V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LLe/Q$b;->f:LIe/l;

    invoke-interface {v0}, LIe/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, LLe/Q$b;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LLe/Q$b;->d()V

    :cond_0
    return-object v0
.end method
