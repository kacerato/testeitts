.class public final LPe/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/a;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/c;
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
        "Ljava/lang/Object;",
        "LIe/a<",
        "TT;>;",
        "Lhn/d;"
    }
.end annotation


# instance fields
.field public final b:LIe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/a<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "LXe/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lhn/d;

.field public f:Z


# direct methods
.method public constructor <init>(LIe/a;LFe/g;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/a<",
            "-TT;>;",
            "LFe/g<",
            "-TT;>;",
            "LFe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "LXe/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPe/c$b;->b:LIe/a;

    iput-object p2, p0, LPe/c$b;->c:LFe/g;

    iput-object p3, p0, LPe/c$b;->d:LFe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LPe/c$b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/c$b;->f:Z

    iget-object v0, p0, LPe/c$b;->b:LIe/a;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LPe/c$b;->e:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LPe/c$b;->u(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, LPe/c$b;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LPe/c$b;->e:Lhn/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, LPe/c$b;->e:Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LPe/c$b;->e:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LPe/c$b;->e:Lhn/d;

    iget-object p1, p0, LPe/c$b;->b:LIe/a;

    invoke-interface {p1, p0}, LBe/q;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LPe/c$b;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/c$b;->f:Z

    iget-object v0, p0, LPe/c$b;->b:LIe/a;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LPe/c$b;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    :try_start_0
    iget-object v0, p0, LPe/c$b;->c:LFe/g;

    invoke-interface {v0, p1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LPe/c$b;->b:LIe/a;

    invoke-interface {v0, p1}, LIe/a;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v4, p0, LPe/c$b;->d:LFe/c;

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The errorHandler returned a null item"

    invoke-static {v4, v5}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXe/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v5, LPe/c$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 p1, 0x2

    if-eq v4, p1, :cond_3

    const/4 p1, 0x3

    if-eq v4, p1, :cond_2

    invoke-virtual {p0}, LPe/c$b;->cancel()V

    invoke-virtual {p0, v0}, LPe/c$b;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, LPe/c$b;->cancel()V

    invoke-virtual {p0}, LPe/c$b;->a()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LPe/c$b;->cancel()V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, LPe/c$b;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
