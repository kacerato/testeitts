.class public final LLe/m1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/m1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Ljava/util/concurrent/Callable;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p3, p0, LLe/m1;->d:LFe/c;

    iput-object p2, p0, LLe/m1;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LLe/m1;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The seed supplied is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LLe/a;->c:LBe/l;

    new-instance v2, LLe/m1$a;

    iget-object v3, p0, LLe/m1;->d:LFe/c;

    invoke-static {}, LBe/l;->a0()I

    move-result v4

    invoke-direct {v2, p1, v3, v0, v4}, LLe/m1$a;-><init>(Lhn/c;LFe/c;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, LBe/l;->l6(LBe/q;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LUe/g;->b(Ljava/lang/Throwable;Lhn/c;)V

    return-void
.end method
