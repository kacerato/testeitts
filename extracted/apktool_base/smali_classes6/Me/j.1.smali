.class public final LMe/j;
.super LBe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/w<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/s;-><init>()V

    iput-object p1, p0, LMe/j;->b:LBe/w;

    return-void
.end method


# virtual methods
.method public t1(LBe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LMe/j$a;

    invoke-direct {v0, p1}, LMe/j$a;-><init>(LBe/v;)V

    invoke-interface {p1, v0}, LBe/v;->e(LDe/c;)V

    :try_start_0
    iget-object p1, p0, LMe/j;->b:LBe/w;

    invoke-interface {p1, v0}, LBe/w;->a(LBe/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LMe/j$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
