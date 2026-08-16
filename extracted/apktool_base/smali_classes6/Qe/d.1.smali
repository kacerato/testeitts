.class public final LQe/d;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQe/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/O<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/O<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LQe/d;->b:LBe/O;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LQe/d$a;

    invoke-direct {v0, p1}, LQe/d$a;-><init>(LBe/N;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    :try_start_0
    iget-object p1, p0, LQe/d;->b:LBe/O;

    invoke-interface {p1, v0}, LBe/O;->subscribe(LBe/M;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LQe/d$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
