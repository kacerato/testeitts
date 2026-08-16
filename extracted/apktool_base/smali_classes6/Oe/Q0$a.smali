.class public final LOe/Q0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LBe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/Q0;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LBe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x628271a96862fff0L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LGe/h;

.field public final d:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final e:LFe/e;


# direct methods
.method public constructor <init>(LBe/I;LFe/e;LGe/h;LBe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;",
            "LFe/e;",
            "LGe/h;",
            "LBe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/Q0$a;->b:LBe/I;

    iput-object p3, p0, LOe/Q0$a;->c:LGe/h;

    iput-object p4, p0, LOe/Q0$a;->d:LBe/G;

    iput-object p2, p0, LOe/Q0$a;->e:LFe/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LOe/Q0$a;->e:LFe/e;

    invoke-interface {v0}, LFe/e;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/Q0$a;->b:LBe/I;

    invoke-interface {v0}, LBe/I;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOe/Q0$a;->b()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LOe/Q0$a;->b:LBe/I;

    invoke-interface {v1, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, LOe/Q0$a;->d:LBe/G;

    invoke-interface {v1, p0}, LBe/G;->c(LBe/I;)V

    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public e(LDe/c;)V
    .locals 1

    iget-object v0, p0, LOe/Q0$a;->c:LGe/h;

    invoke-virtual {v0, p1}, LGe/h;->a(LDe/c;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/Q0$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, LOe/Q0$a;->b:LBe/I;

    invoke-interface {v0, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
