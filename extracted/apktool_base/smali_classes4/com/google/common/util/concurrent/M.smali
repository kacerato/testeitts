.class public abstract Lcom/google/common/util/concurrent/M;
.super Lcom/google/common/util/concurrent/L;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Z;


# annotations
.annotation build LI2/a;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/M$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/L<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/Z<",
        "TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/L;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/M;->o0()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/Z;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/M;->o0()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/M;->o0()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method

.method public abstract o0()Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;"
        }
    .end annotation
.end method
