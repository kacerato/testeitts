.class public abstract Lcom/google/common/util/concurrent/F;
.super Lcom/google/common/util/concurrent/T;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
    value = "Use FluentFuture.from(Futures.immediate*Future) or SettableFuture"
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/F$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/T<",
        "TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/T;-><init>()V

    return-void
.end method

.method public static J(Lcom/google/common/util/concurrent/F;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/F;

    return-object p0
.end method

.method public static K(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/util/concurrent/F;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/F;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/K;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/K;-><init>(Lcom/google/common/util/concurrent/Z;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final G(Lcom/google/common/util/concurrent/P;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/P<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Q;->a(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/P;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final H(Ljava/lang/Class;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/k0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lw2/t<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Q;->d(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/F;

    return-object p1
.end method

.method public final I(Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation build Lcom/google/common/util/concurrent/k0$a;
        value = "AVAILABLE but requires exceptionType to be Throwable.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/common/util/concurrent/m<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Q;->e(Lcom/google/common/util/concurrent/Z;Ljava/lang/Class;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/F;

    return-object p1
.end method

.method public final L(Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/t<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Q;->x(Lcom/google/common/util/concurrent/Z;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/F;

    return-object p1
.end method

.method public final M(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/m<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/Q;->y(Lcom/google/common/util/concurrent/Z;Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/F;

    return-object p1
.end method

.method public final N(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/F<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/Q;->D(Lcom/google/common/util/concurrent/Z;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/F;

    return-object p1
.end method
