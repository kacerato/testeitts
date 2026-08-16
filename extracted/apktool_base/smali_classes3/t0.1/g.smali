.class public abstract Lt0/g;
.super Lcom/google/android/gms/internal/auth/B;
.source "SourceFile"

# interfaces
.implements Lt0/h;


# direct methods
.method public static k(Landroid/os/IBinder;)Lt0/h;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.auth.account.IWorkAccountService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lt0/h;

    if-eqz v1, :cond_1

    check-cast v0, Lt0/h;

    return-object v0

    :cond_1
    new-instance v0, Lt0/f;

    invoke-direct {v0, p0}, Lt0/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
