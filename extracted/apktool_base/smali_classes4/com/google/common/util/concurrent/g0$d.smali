.class public Lcom/google/common/util/concurrent/g0$d;
.super Lcom/google/common/util/concurrent/K0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/g0;->s(Ljava/util/concurrent/ScheduledExecutorService;Lw2/Q;)Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lw2/Q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lw2/Q;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/g0$d;->d:Lw2/Q;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/K0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$d;->d:Lw2/Q;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/v;->k(Ljava/lang/Runnable;Lw2/Q;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$d;->d:Lw2/Q;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/v;->l(Ljava/util/concurrent/Callable;Lw2/Q;)Ljava/util/concurrent/Callable;

    move-result-object p1

    return-object p1
.end method
