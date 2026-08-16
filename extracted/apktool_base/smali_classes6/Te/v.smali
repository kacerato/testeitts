.class public final LTe/v;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;
.implements Lhn/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LDe/c;",
        ">;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;",
        "Lhn/d;"
    }
.end annotation


# static fields
.field public static final d:J = -0x77840c661fe71fc2L


# instance fields
.field public final b:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LTe/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, LTe/v;->b:Lhn/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LTe/v;->b:Lhn/c;

    invoke-interface {v0}, Lhn/c;->a()V

    return-void
.end method

.method public b(LDe/c;)V
    .locals 0

    invoke-static {p0, p1}, LGe/d;->g(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, LTe/v;->dispose()V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LTe/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LUe/j;->CANCELLED:LUe/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LTe/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LTe/v;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LTe/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhn/d;

    invoke-interface {v0, p1, p2}, Lhn/d;->i(J)V

    :cond_0
    return-void
.end method

.method public j(Lhn/d;)V
    .locals 1

    iget-object v0, p0, LTe/v;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LUe/j;->j(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LTe/v;->b:Lhn/c;

    invoke-interface {p1, p0}, Lhn/c;->j(Lhn/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, LTe/v;->b:Lhn/c;

    invoke-interface {v0, p1}, Lhn/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
