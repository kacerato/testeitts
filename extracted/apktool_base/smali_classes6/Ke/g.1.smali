.class public final LKe/g;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/g$a;
    }
.end annotation


# instance fields
.field public final b:LBe/g;


# direct methods
.method public constructor <init>(LBe/g;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/g;->b:LBe/g;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 1

    new-instance v0, LKe/g$a;

    invoke-direct {v0, p1}, LKe/g$a;-><init>(LBe/f;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    :try_start_0
    iget-object p1, p0, LKe/g;->b:LBe/g;

    invoke-interface {p1, v0}, LBe/g;->a(LBe/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LKe/g$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
