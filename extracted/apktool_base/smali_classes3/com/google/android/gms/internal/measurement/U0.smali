.class public final Lcom/google/android/gms/internal/measurement/U0;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/U0;->f:Lcom/google/android/gms/internal/measurement/I1;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/U0;->f:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/w1;->b:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/w0;->resetAnalyticsData(J)V

    return-void
.end method
