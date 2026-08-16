.class public final LKe/b$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/f;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final d:J = -0x38ec1727c243e8a6L


# instance fields
.field public final b:LBe/f;

.field public final c:LBe/i;


# direct methods
.method public constructor <init>(LBe/f;LBe/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LKe/b$b;->b:LBe/f;

    iput-object p2, p0, LKe/b$b;->c:LBe/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LKe/b$b;->c:LBe/i;

    new-instance v1, LKe/b$a;

    iget-object v2, p0, LKe/b$b;->b:LBe/f;

    invoke-direct {v1, p0, v2}, LKe/b$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LBe/f;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LKe/b$b;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LKe/b$b;->b:LBe/f;

    invoke-interface {v0, p1}, LBe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
