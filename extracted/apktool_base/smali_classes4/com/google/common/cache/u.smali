.class public final Lcom/google/common/cache/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/cache/u;->d(Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/cache/u;->e(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V

    return-void
.end method

.method public static c(Lcom/google/common/cache/r;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/r<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/cache/r<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/cache/t;

    invoke-direct {v0, p1, p0}, Lcom/google/common/cache/t;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/common/cache/r;->a(Lcom/google/common/cache/v;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/concurrent/Executor;Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V
    .locals 1

    new-instance v0, Lcom/google/common/cache/s;

    invoke-direct {v0, p1, p2}, Lcom/google/common/cache/s;-><init>(Lcom/google/common/cache/r;Lcom/google/common/cache/v;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
