.class public final LPe/e$d;
.super LPe/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LPe/e$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;LFe/r;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;",
            "LFe/r<",
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

    invoke-direct {p0, p2, p3}, LPe/e$b;-><init>(LFe/r;LFe/c;)V

    iput-object p1, p0, LPe/e$d;->f:Lhn/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, LPe/e$b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/e$b;->e:Z

    iget-object v0, p0, LPe/e$d;->f:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LPe/e$b;->d:Lhn/d;

    invoke-static {v0, p1}, LUe/j;->o(Lhn/d;Lhn/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LPe/e$b;->d:Lhn/d;

    iget-object p1, p0, LPe/e$d;->f:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, LPe/e$b;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LPe/e$b;->e:Z

    iget-object v0, p0, LPe/e$d;->f:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public u(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LPe/e$b;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v4, p0, LPe/e$b;->b:LFe/r;

    invoke-interface {v4, p1}, LFe/r;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v1, p0, LPe/e$d;->f:Lhn/c;

    invoke-interface {v1, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v5, p0, LPe/e$b;->c:LFe/c;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, LFe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The errorHandler returned a null item"

    invoke-static {v5, v6}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LXe/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v6, LPe/e$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v0, :cond_0

    const/4 p1, 0x2

    if-eq v5, p1, :cond_3

    const/4 p1, 0x3

    if-eq v5, p1, :cond_2

    invoke-virtual {p0}, LPe/e$b;->cancel()V

    invoke-virtual {p0, v4}, LPe/e$d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, LPe/e$b;->cancel()V

    invoke-virtual {p0}, LPe/e$d;->a()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LPe/e$b;->cancel()V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v4, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LPe/e$d;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method
