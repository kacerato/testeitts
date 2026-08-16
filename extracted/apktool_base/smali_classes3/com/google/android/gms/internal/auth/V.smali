.class public final Lcom/google/android/gms/internal/auth/V;
.super Lcom/google/android/gms/internal/auth/L;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/W;Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/L;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final C(Landroid/content/Context;Lcom/google/android/gms/internal/auth/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/auth/U;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/U;-><init>(Lcom/google/android/gms/internal/auth/V;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/J;->l0(Lcom/google/android/gms/internal/auth/I;)V

    return-void
.end method
