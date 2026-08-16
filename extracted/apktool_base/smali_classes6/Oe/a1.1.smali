.class public final LOe/a1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/a1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;Ljava/util/concurrent/Callable;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p3, p0, LOe/a1;->c:LFe/c;

    iput-object p2, p0, LOe/a1;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LOe/a1;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The seed supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LOe/a;->b:LBe/G;

    new-instance v2, LOe/a1$a;

    iget-object v3, p0, LOe/a1;->c:LFe/c;

    invoke-direct {v2, p1, v3, v0}, LOe/a1$a;-><init>(LBe/I;LFe/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, LBe/G;->c(LBe/I;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    return-void
.end method
