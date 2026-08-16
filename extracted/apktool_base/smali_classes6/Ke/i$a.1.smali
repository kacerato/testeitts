.class public final LKe/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements Ljava/lang/Runnable;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKe/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/f;",
        "Ljava/lang/Runnable;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final h:J = 0x67777c1e4b8e28eL


# instance fields
.field public final b:LBe/f;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LBe/J;

.field public final f:Z

.field public g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LBe/f;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LKe/i$a;->b:LBe/f;

    iput-wide p2, p0, LKe/i$a;->c:J

    iput-object p4, p0, LKe/i$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, LKe/i$a;->e:LBe/J;

    iput-boolean p6, p0, LKe/i$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LKe/i$a;->e:LBe/J;

    iget-wide v1, p0, LKe/i$a;->c:J

    iget-object v3, p0, LKe/i$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v1, v2, v3}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object v0

    invoke-static {p0, v0}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

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

    iget-object p1, p0, LKe/i$a;->b:LBe/f;

    invoke-interface {p1, p0}, LBe/f;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iput-object p1, p0, LKe/i$a;->g:Ljava/lang/Throwable;

    iget-object p1, p0, LKe/i$a;->e:LBe/J;

    iget-boolean v0, p0, LKe/i$a;->f:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, LKe/i$a;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, LKe/i$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p0, v0, v1, v2}, LBe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LDe/c;

    move-result-object p1

    invoke-static {p0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, LKe/i$a;->g:Ljava/lang/Throwable;

    const/4 v1, 0x0

    iput-object v1, p0, LKe/i$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, LKe/i$a;->b:LBe/f;

    invoke-interface {v1, v0}, LBe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LKe/i$a;->b:LBe/f;

    invoke-interface {v0}, LBe/f;->a()V

    :goto_0
    return-void
.end method
