.class public final Lcom/google/android/gms/internal/measurement/o1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/t0;

.field public final synthetic g:I

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;I)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Lcom/google/android/gms/internal/measurement/t0;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/o1;->g:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/I1;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->h:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Lcom/google/android/gms/internal/measurement/t0;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/o1;->g:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/w0;->getTestFlag(Lcom/google/android/gms/internal/measurement/z0;I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->f:Lcom/google/android/gms/internal/measurement/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->l(Landroid/os/Bundle;)V

    return-void
.end method
