.class public final LKe/y;
.super LBe/c;
.source "SourceFile"


# instance fields
.field public final b:LBe/i;

.field public final c:LBe/h;


# direct methods
.method public constructor <init>(LBe/i;LBe/h;)V
    .locals 0

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/y;->b:LBe/i;

    iput-object p2, p0, LKe/y;->c:LBe/h;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LKe/y;->c:LBe/h;

    invoke-interface {v0, p1}, LBe/h;->a(LBe/f;)LBe/f;

    move-result-object p1

    iget-object v0, p0, LKe/y;->b:LBe/i;

    invoke-interface {v0, p1}, LBe/i;->b(LBe/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :goto_2
    throw p1
.end method
