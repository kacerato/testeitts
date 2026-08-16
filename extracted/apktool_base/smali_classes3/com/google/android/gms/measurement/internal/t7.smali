.class public final Lcom/google/android/gms/measurement/internal/t7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/p3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->N()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/e2;->D:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i5;->o(J)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "App receiver called with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "App receiver called with null action"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x72ee9a21

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    const v0, 0x4c497878    # 5.2814304E7f

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_3
    const-string p2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "App receiver called with unknown action"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "[sgtm] App Receiver notified batches are available"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/q7;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/q7;-><init>(Lcom/google/android/gms/measurement/internal/t7;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/measurement/internal/e2;->R0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "App receiver notified triggers are available"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/r7;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/r7;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method
