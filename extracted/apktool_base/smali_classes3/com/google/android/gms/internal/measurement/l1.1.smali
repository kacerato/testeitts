.class public final Lcom/google/android/gms/internal/measurement/l1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/t0;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/t0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l1;->h:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->h:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/l1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/t0;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/w0;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z0;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l1;->g:Lcom/google/android/gms/internal/measurement/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->l(Landroid/os/Bundle;)V

    return-void
.end method
