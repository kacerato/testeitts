.class public final Lcom/google/android/gms/internal/measurement/D1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/H1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/D1;->f:Landroid/app/Activity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/D1;->g:Lcom/google/android/gms/internal/measurement/H1;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/D1;->g:Lcom/google/android/gms/internal/measurement/H1;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/D1;->f:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/K0;->b(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/K0;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/w1;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/w0;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/K0;J)V

    return-void
.end method
