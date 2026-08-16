.class public final LOe/C;
.super LBe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/C$b;,
        LOe/C$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/E<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/E<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/B;-><init>()V

    iput-object p1, p0, LOe/C;->b:LBe/E;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LOe/C$a;

    invoke-direct {v0, p1}, LOe/C$a;-><init>(LBe/I;)V

    invoke-interface {p1, v0}, LBe/I;->e(LDe/c;)V

    :try_start_0
    iget-object p1, p0, LOe/C;->b:LBe/E;

    invoke-interface {p1, v0}, LBe/E;->subscribe(LBe/D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LOe/C$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
