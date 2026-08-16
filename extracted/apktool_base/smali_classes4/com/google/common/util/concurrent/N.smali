.class public abstract Lcom/google/common/util/concurrent/N;
.super Lcom/google/common/util/concurrent/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/d0;


# annotations
.annotation build LI2/a;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/J;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/N;->o0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/N;->o0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    return-object v0
.end method

.method public abstract o0()Lcom/google/common/util/concurrent/d0;
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "*>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/N;->o0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/d0;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/N;->o0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/d0;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/N;->o0()Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/d0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/N;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/N;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/N;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method
