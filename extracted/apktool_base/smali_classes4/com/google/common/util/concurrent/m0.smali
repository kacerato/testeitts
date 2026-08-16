.class public abstract Lcom/google/common/util/concurrent/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/m0$a;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/m0$a;

.field public volatile b:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/m0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/m0$a;

    iput-object p1, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    return-void
.end method

.method public static d(I)V
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requested permits (%s) must be positive"

    invoke-static {v0, v1, p0}, Lw2/H;->k(ZLjava/lang/String;I)V

    return-void
.end method

.method public static e(D)Lcom/google/common/util/concurrent/m0;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/m0$a;->a()Lcom/google/common/util/concurrent/m0$a;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/m0;->h(DLcom/google/common/util/concurrent/m0$a;)Lcom/google/common/util/concurrent/m0;

    move-result-object p0

    return-object p0
.end method

.method public static f(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/m0;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "warmupPeriod must not be negative: %s"

    invoke-static {v0, v1, p2, p3}, Lw2/H;->p(ZLjava/lang/String;J)V

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {}, Lcom/google/common/util/concurrent/m0$a;->a()Lcom/google/common/util/concurrent/m0$a;

    move-result-object v9

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v2 .. v9}, Lcom/google/common/util/concurrent/m0;->g(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/m0$a;)Lcom/google/common/util/concurrent/m0;

    move-result-object p0

    return-object p0
.end method

.method public static g(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/m0$a;)Lcom/google/common/util/concurrent/m0;
    .locals 8
    .annotation build Lv2/d;
    .end annotation

    new-instance v7, Lcom/google/common/util/concurrent/u0$c;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/u0$c;-><init>(Lcom/google/common/util/concurrent/m0$a;JLjava/util/concurrent/TimeUnit;D)V

    invoke-virtual {v7, p0, p1}, Lcom/google/common/util/concurrent/m0;->q(D)V

    return-object v7
.end method

.method public static h(DLcom/google/common/util/concurrent/m0$a;)Lcom/google/common/util/concurrent/m0;
    .locals 3
    .annotation build Lv2/d;
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/u0$b;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/common/util/concurrent/u0$b;-><init>(Lcom/google/common/util/concurrent/m0$a;D)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/m0;->q(D)V

    return-object v0
.end method


# virtual methods
.method public a()D
    .locals 2
    .annotation build LI2/a;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/m0;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)D
    .locals 4
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/m0;->n(I)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/m0$a;->c(J)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v0

    mul-double/2addr v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final c(JJ)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/m0;->m(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract i()D
.end method

.method public abstract j(DJ)V
.end method

.method public final k()D
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->i()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/m0;->b:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public abstract m(J)J
.end method

.method public final n(I)J
    .locals 3

    invoke-static {p1}, Lcom/google/common/util/concurrent/m0;->d(I)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/m0$a;->b()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/util/concurrent/m0;->o(IJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o(IJ)J
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/m0;->p(IJ)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract p(IJ)J
.end method

.method public final q(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rate must be positive"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/m0$a;->b()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/util/concurrent/m0;->j(DJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r()Z
    .locals 4

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/common/util/concurrent/m0;->t(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public s(I)Z
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/m0;->t(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public t(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {p1}, Lcom/google/common/util/concurrent/m0;->d(I)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->l()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/m0$a;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/google/common/util/concurrent/m0;->c(JJ)Z

    move-result p2

    if-nez p2, :cond_0

    monitor-exit p4

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/m0;->o(IJ)J

    move-result-wide p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/google/common/util/concurrent/m0;->a:Lcom/google/common/util/concurrent/m0$a;

    invoke-virtual {p3, p1, p2}, Lcom/google/common/util/concurrent/m0$a;->c(J)V

    const/4 p1, 0x1

    return p1

    :goto_0
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m0;->k()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/m0;->t(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
