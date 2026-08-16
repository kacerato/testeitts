.class public abstract Lcom/google/common/util/concurrent/y$c;
.super Lcom/google/common/util/concurrent/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/W<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final synthetic f:Lcom/google/common/util/concurrent/y;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/y;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/W;-><init>()V

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/y$c;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/y;->c0(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/y$c;)Lcom/google/common/util/concurrent/y$c;

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->D(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$i;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->D(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/y;->c0(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/y$c;)Lcom/google/common/util/concurrent/y$c;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/y$c;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$i;->isDone()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/y$c;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/y$c;->f:Lcom/google/common/util/concurrent/y;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->D(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public abstract j(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
