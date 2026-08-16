.class public final Lcom/google/android/gms/measurement/internal/Y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LB0/c;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/Z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/Z5;LB0/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Y5;->b:LB0/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Y5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Y5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/Z5;->e:Lcom/google/android/gms/measurement/internal/f6;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f6;->O(Lcom/google/android/gms/measurement/internal/i2;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/Y5;->b:LB0/c;

    invoke-virtual {v2}, LB0/c;->n()I

    move-result v2

    const/16 v3, 0x1e61

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->P()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/f6;->Q(Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->P()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/W5;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/W5;-><init>(Lcom/google/android/gms/measurement/internal/Y5;)V

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->a0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->L()V

    return-void
.end method
