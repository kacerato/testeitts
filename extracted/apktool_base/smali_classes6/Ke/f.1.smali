.class public final LKe/f;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/f$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/f;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LKe/f;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned is null"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, LKe/f$a;

    invoke-direct {v1, p1, v0}, LKe/f$a;-><init>(LBe/f;Ljava/util/Iterator;)V

    iget-object v0, v1, LKe/f$a;->d:LGe/h;

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    invoke-virtual {v1}, LKe/f$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LGe/e;->e(Ljava/lang/Throwable;LBe/f;)V

    return-void
.end method
