.class public final LKe/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LBe/f;

.field public final synthetic c:LKe/H;


# direct methods
.method public constructor <init>(LKe/H;LBe/f;)V
    .locals 0

    iput-object p1, p0, LKe/H$a;->c:LKe/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LKe/H$a;->b:LBe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/H$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/H$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->e(LDe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LKe/H$a;->c:LKe/H;

    iget-object v0, v0, LKe/H;->c:LFe/r;

    invoke-interface {v0, p1}, LFe/r;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p1, p0, LKe/H$a;->b:LBe/f;

    invoke-interface {p1}, LBe/f;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LKe/H$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LKe/H$a;->b:LBe/f;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
