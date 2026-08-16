.class public final Lcom/google/common/util/concurrent/Q$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LI2/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/util/concurrent/Z<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Q$e;->a:Z

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/Q$e;->b:Lcom/google/common/collect/g1;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/google/common/collect/g1;Lcom/google/common/util/concurrent/Q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Q$e;-><init>(ZLcom/google/common/collect/g1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/y;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$e;->b:Lcom/google/common/collect/g1;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Q$e;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/y;-><init>(Lcom/google/common/collect/c1;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public b(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/l<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/y;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$e;->b:Lcom/google/common/collect/g1;

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Q$e;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/common/util/concurrent/y;-><init>(Lcom/google/common/collect/c1;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/l;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Q$e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Q$e$a;-><init>(Lcom/google/common/util/concurrent/Q$e;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/Q$e;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method
