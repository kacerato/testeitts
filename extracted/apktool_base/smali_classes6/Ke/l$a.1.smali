.class public final LKe/l$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:J = 0x3907ba0b13897e3dL


# instance fields
.field public final b:LBe/f;

.field public final c:LFe/a;

.field public d:LDe/c;


# direct methods
.method public constructor <init>(LBe/f;LFe/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LKe/l$a;->b:LBe/f;

    iput-object p2, p0, LKe/l$a;->c:LFe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LKe/l$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    invoke-virtual {p0}, LKe/l$a;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LKe/l$a;->c:LFe/a;

    invoke-interface {v0}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LKe/l$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LKe/l$a;->d:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-virtual {p0}, LKe/l$a;->b()V

    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/l$a;->d:LDe/c;

    invoke-static {v0, p1}, LGe/d;->j(LDe/c;LDe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LKe/l$a;->d:LDe/c;

    iget-object p1, p0, LKe/l$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/l$a;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LKe/l$a;->b()V

    return-void
.end method
