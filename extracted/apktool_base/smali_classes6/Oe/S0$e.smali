.class public final LOe/S0$e;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LVe/a<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "LBe/B<",
            "TU;>;+",
            "LBe/G<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LVe/a<",
            "TU;>;>;",
            "LFe/o<",
            "-",
            "LBe/B<",
            "TU;>;+",
            "LBe/G<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/S0$e;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, LOe/S0$e;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LOe/S0$e;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned a null ConnectableObservable"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/a;

    iget-object v1, p0, LOe/S0$e;->c:LFe/o;

    invoke-interface {v1, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, LOe/O1;

    invoke-direct {v2, p1}, LOe/O1;-><init>(LBe/I;)V

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    new-instance p1, LOe/S0$c;

    invoke-direct {p1, v2}, LOe/S0$c;-><init>(LOe/O1;)V

    invoke-virtual {v0, p1}, LVe/a;->n8(LFe/g;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    return-void
.end method
