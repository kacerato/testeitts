.class public abstract Lcf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/q;
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/q<",
        "TT;>;",
        "LDe/c;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LGe/f;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, LGe/f;

    invoke-direct {v0}, LGe/f;-><init>()V

    iput-object v0, p0, Lcf/c;->c:LGe/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcf/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final b(LDe/c;)V
    .locals 1

    const-string v0, "resource is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcf/c;->c:LGe/f;

    invoke-virtual {v0, p1}, LGe/f;->a(LDe/c;)Z

    return-void
.end method

.method public c()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcf/c;->e(J)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LUe/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/c;->c:LGe/f;

    invoke-virtual {v0}, LGe/f;->dispose()V

    :cond_0
    return-void
.end method

.method public final e(J)V
    .locals 2

    iget-object v0, p0, Lcf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcf/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, LUe/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public final j(Lhn/d;)V
    .locals 5

    iget-object v0, p0, Lcf/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->d(Ljava/util/concurrent/atomic/AtomicReference;Lhn/d;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcf/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-interface {p1, v3, v4}, Lhn/d;->i(J)V

    :cond_0
    invoke-virtual {p0}, Lcf/c;->c()V

    :cond_1
    return-void
.end method
