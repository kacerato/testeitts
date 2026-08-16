.class public final LMe/V;
.super LMe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LMe/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/x<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/y;LBe/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "TT;>;",
            "LBe/x<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LMe/a;-><init>(LBe/y;)V

    iput-object p2, p0, LMe/V;->c:LBe/x;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LMe/V;->c:LBe/x;

    invoke-interface {v0, p1}, LBe/x;->a(LBe/v;)LBe/v;

    move-result-object v0

    const-string v1, "The operator returned a null MaybeObserver"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMe/a;->b:LBe/y;

    invoke-interface {p1, v0}, LBe/y;->d(LBe/v;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->g(Ljava/lang/Throwable;LBe/v;)V

    return-void
.end method
