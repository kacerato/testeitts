.class public abstract Lcom/google/android/gms/internal/measurement/T;
.super Lcom/google/android/gms/internal/measurement/P;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/U;


# direct methods
.method public static k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/U;
    .locals 2

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/U;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/U;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/S;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/S;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
