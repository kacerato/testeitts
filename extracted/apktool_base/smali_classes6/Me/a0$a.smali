.class public final LMe/a0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/v;
.implements LDe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMe/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/v<",
        "TT;>;",
        "LDe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x76f356c87ebda749L


# instance fields
.field public final b:LBe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/J;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LBe/v;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/v<",
            "-TT;>;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, LMe/a0$a;->b:LBe/v;

    iput-object p2, p0, LMe/a0$a;->c:LBe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LMe/a0$a;->c:LBe/J;

    invoke-virtual {v0, p0}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object v0

    invoke-static {p0, v0}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LMe/a0$a;->d:Ljava/lang/Object;

    iget-object p1, p0, LMe/a0$a;->c:LBe/J;

    invoke-virtual {p1, p0}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    invoke-static {p0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

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

    iget-object p1, p0, LMe/a0$a;->b:LBe/v;

    invoke-interface {p1, p0}, LBe/v;->e(LDe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, LMe/a0$a;->e:Ljava/lang/Throwable;

    iget-object p1, p0, LMe/a0$a;->c:LBe/J;

    invoke-virtual {p1, p0}, LBe/J;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    invoke-static {p0, p1}, LGe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, LMe/a0$a;->e:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, LMe/a0$a;->e:Ljava/lang/Throwable;

    iget-object v1, p0, LMe/a0$a;->b:LBe/v;

    invoke-interface {v1, v0}, LBe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LMe/a0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iput-object v1, p0, LMe/a0$a;->d:Ljava/lang/Object;

    iget-object v1, p0, LMe/a0$a;->b:LBe/v;

    invoke-interface {v1, v0}, LBe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LMe/a0$a;->b:LBe/v;

    invoke-interface {v0}, LBe/v;->a()V

    :goto_0
    return-void
.end method
