.class public final Lcom/google/common/util/concurrent/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Y$a;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/util/concurrent/Z;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/Z;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Y$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Y$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/util/concurrent/Z;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/util/concurrent/Z;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/Y$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Y$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
