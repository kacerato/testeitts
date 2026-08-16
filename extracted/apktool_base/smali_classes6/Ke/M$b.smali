.class public final LKe/M$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:LDe/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:LBe/f;


# direct methods
.method public constructor <init>(LDe/b;Ljava/util/concurrent/atomic/AtomicBoolean;LBe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKe/M$b;->b:LDe/b;

    iput-object p2, p0, LKe/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, LKe/M$b;->d:LBe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LKe/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LKe/M$b;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LKe/M$b;->d:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    :cond_0
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LKe/M$b;->b:LDe/b;

    invoke-virtual {v0, p1}, LDe/b;->a(LDe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, LKe/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LKe/M$b;->b:LDe/b;

    invoke-virtual {v0}, LDe/b;->dispose()V

    iget-object v0, p0, LKe/M$b;->d:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
