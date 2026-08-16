.class public final LRe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRe/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LIe/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LRe/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LRe/a$a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LRe/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, LRe/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, LRe/a$a;

    invoke-direct {v0}, LRe/a$a;-><init>()V

    invoke-virtual {p0, v0}, LRe/a;->d(LRe/a$a;)V

    invoke-virtual {p0, v0}, LRe/a;->e(LRe/a$a;)LRe/a$a;

    return-void
.end method


# virtual methods
.method public a()LRe/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LRe/a$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LRe/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRe/a$a;

    return-object v0
.end method

.method public b()LRe/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LRe/a$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LRe/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRe/a$a;

    return-object v0
.end method

.method public c()LRe/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LRe/a$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LRe/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRe/a$a;

    return-object v0
.end method

.method public clear()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, LRe/a;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LRe/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(LRe/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRe/a$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LRe/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LRe/a$a;)LRe/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRe/a$a<",
            "TT;>;)",
            "LRe/a$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LRe/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LRe/a$a;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, LRe/a;->b()LRe/a$a;

    move-result-object v0

    invoke-virtual {p0}, LRe/a;->c()LRe/a$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LRe/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, LRe/a;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LRe/a$a;

    invoke-direct {v0, p1}, LRe/a$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LRe/a;->e(LRe/a$a;)LRe/a$a;

    move-result-object p1

    invoke-virtual {p1, v0}, LRe/a$a;->d(LRe/a$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null is not a valid element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, LRe/a;->a()LRe/a$a;

    move-result-object v0

    invoke-virtual {v0}, LRe/a$a;->c()LRe/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LRe/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, LRe/a;->d(LRe/a$a;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, LRe/a;->c()LRe/a$a;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    invoke-virtual {v0}, LRe/a$a;->c()LRe/a$a;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LRe/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1}, LRe/a;->d(LRe/a$a;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
