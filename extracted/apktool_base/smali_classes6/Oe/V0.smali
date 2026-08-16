.class public final LOe/V0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/V0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "LBe/B<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LBe/G<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-",
            "LBe/B<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LBe/G<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/V0;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lbf/e;->p8()Lbf/e;

    move-result-object v0

    invoke-virtual {v0}, Lbf/i;->n8()Lbf/i;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, LOe/V0;->c:LFe/o;

    invoke-interface {v1, v0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, LOe/V0$a;

    iget-object v3, p0, LOe/a;->b:LBe/G;

    invoke-direct {v2, p1, v0, v3}, LOe/V0$a;-><init>(LBe/I;Lbf/i;LBe/G;)V

    invoke-interface {p1, v2}, LBe/I;->e(LDe/c;)V

    iget-object p1, v2, LOe/V0$a;->f:LOe/V0$a$a;

    invoke-interface {v1, p1}, LBe/G;->c(LBe/I;)V

    invoke-virtual {v2}, LOe/V0$a;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->h(Ljava/lang/Throwable;LBe/I;)V

    return-void
.end method
