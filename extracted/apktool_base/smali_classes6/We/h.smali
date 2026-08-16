.class public abstract LWe/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/f;
.implements LDe/c;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LGe/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LWe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, LGe/f;

    invoke-direct {v0}, LGe/f;-><init>()V

    iput-object v0, p0, LWe/h;->c:LGe/f;

    return-void
.end method


# virtual methods
.method public final b(LDe/c;)V
    .locals 1
    .param p1    # LDe/c;
        .annotation build LCe/f;
        .end annotation
    .end param

    const-string v0, "resource is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LWe/h;->c:LGe/f;

    invoke-virtual {v0, p1}, LGe/f;->a(LDe/c;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, LWe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/c;

    invoke-static {v0}, LGe/d;->b(LDe/c;)Z

    move-result v0

    return v0
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, LWe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LGe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWe/h;->c:LGe/f;

    invoke-virtual {v0}, LGe/f;->dispose()V

    :cond_0
    return-void
.end method

.method public final e(LDe/c;)V
    .locals 2
    .param p1    # LDe/c;
        .annotation build LCe/f;
        .end annotation
    .end param

    iget-object v0, p0, LWe/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->c(Ljava/util/concurrent/atomic/AtomicReference;LDe/c;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LWe/h;->c()V

    :cond_0
    return-void
.end method
