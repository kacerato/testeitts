.class public interface abstract Lcom/google/common/util/concurrent/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
    value = "Create an AbstractIdleService"
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/p0$a;,
        Lcom/google/common/util/concurrent/p0$b;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# virtual methods
.method public abstract a(Lcom/google/common/util/concurrent/p0$a;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract b(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract c(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract e()Ljava/lang/Throwable;
.end method

.method public abstract f()V
.end method

.method public abstract g()Lcom/google/common/util/concurrent/p0;
    .annotation build LI2/a;
    .end annotation
.end method

.method public abstract h()Lcom/google/common/util/concurrent/p0;
    .annotation build LI2/a;
    .end annotation
.end method

.method public abstract isRunning()Z
.end method

.method public abstract state()Lcom/google/common/util/concurrent/p0$b;
.end method
