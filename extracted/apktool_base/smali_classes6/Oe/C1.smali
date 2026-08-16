.class public final LOe/C1;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/C1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LBe/K<",
        "TU;>;",
        "LIe/d<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LBe/K;-><init>()V

    .line 2
    iput-object p1, p0, LOe/C1;->b:LBe/G;

    .line 3
    invoke-static {p2}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, LOe/C1;->c:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(LBe/G;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, LBe/K;-><init>()V

    .line 5
    iput-object p1, p0, LOe/C1;->b:LBe/G;

    .line 6
    iput-object p2, p0, LOe/C1;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public c()LBe/B;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, LOe/B1;

    iget-object v1, p0, LOe/C1;->b:LBe/G;

    iget-object v2, p0, LOe/C1;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, LOe/B1;-><init>(LBe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LOe/C1;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LOe/C1;->b:LBe/G;

    new-instance v2, LOe/C1$a;

    invoke-direct {v2, p1, v0}, LOe/C1$a;-><init>(LBe/N;Ljava/util/Collection;)V

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->i(Ljava/lang/Throwable;LBe/N;)V

    return-void
.end method
