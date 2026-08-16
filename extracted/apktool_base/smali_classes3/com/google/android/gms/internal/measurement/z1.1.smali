.class public final Lcom/google/android/gms/internal/measurement/z1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Landroid/app/Activity;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/H1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/z1;->f:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/z1;->g:Landroid/app/Activity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/z1;->h:Lcom/google/android/gms/internal/measurement/H1;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.google.app_measurement.screen_service"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->h:Lcom/google/android/gms/internal/measurement/H1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/z1;->g:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/w1;->c:J

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/K0;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/K0;

    move-result-object v2

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/w0;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/K0;Landroid/os/Bundle;J)V

    return-void
.end method
