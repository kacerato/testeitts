.class public final synthetic Lcom/google/android/gms/measurement/internal/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/r6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/r6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q6;->b:Lcom/google/android/gms/measurement/internal/r6;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q6;->b:Lcom/google/android/gms/measurement/internal/r6;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/s6;->b:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Application going to the background"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->t:Lcom/google/android/gms/measurement/internal/K2;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/K2;->b(Z)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/x6;->o(Z)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/r6;->c:J

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v3, v4}, Lcom/google/android/gms/measurement/internal/u6;->d(ZZJ)Z

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/measurement/internal/u6;->b(J)V

    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/r6;->b:J

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Application backgrounded at: timestamp_millis"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->y()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m7;->W()I

    move-result v1

    const v4, 0x3b3a8

    if-lt v1, v4, :cond_2

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->t()V

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->O0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/m7;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->E:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->D(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)J

    move-result-wide v3

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "[sgtm] Scheduling batch upload with minimum latency in millis"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->N()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/i5;->o(J)V

    :cond_4
    return-void
.end method
