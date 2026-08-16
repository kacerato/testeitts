.class public abstract LTe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/a;
.implements LIe/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LIe/a<",
        "TT;>;",
        "LIe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LIe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/a<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:Lhn/d;

.field public d:LIe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(LIe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/a<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTe/a;->b:LIe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LTe/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/a;->e:Z

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LTe/a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTe/a;->d:LIe/l;

    invoke-interface {v0}, LIe/o;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, LTe/a;->c:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    invoke-virtual {p0, p1}, LTe/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(I)I
    .locals 2

    iget-object v0, p0, LTe/a;->d:LIe/l;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, LIe/k;->m(I)I

    move-result p1

    if-eqz p1, :cond_0

    iput p1, p0, LTe/a;->f:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LTe/a;->c:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LTe/a;->d:LIe/l;

    invoke-interface {v0}, LIe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LTe/a;->c:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, LTe/a;->c:Lhn/d;

    instance-of v0, p1, LIe/l;

    if-eqz v0, :cond_0

    check-cast p1, LIe/l;

    iput-object p1, p0, LTe/a;->d:LIe/l;

    :cond_0
    invoke-virtual {p0}, LTe/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LTe/a;->b:LIe/a;

    invoke-interface {p1, p0}, LBe/q;->j(Lhn/d;)V

    invoke-virtual {p0}, LTe/a;->b()V

    :cond_1
    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LTe/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/a;->e:Z

    iget-object v0, p0, LTe/a;->b:LIe/a;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
