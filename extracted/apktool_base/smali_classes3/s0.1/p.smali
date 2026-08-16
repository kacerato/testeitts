.class public final Ls0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/q;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ls0/p;->a:Ljava/lang/String;

    iput-object p2, p0, Ls0/p;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/f1;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/G1;

    move-result-object p1

    iget-object v0, p0, Ls0/p;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/G1;->n0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ls0/r;->m(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Error"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userRecoveryIntent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "userRecoveryPendingIntent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/b0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/b0;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/auth/b0;->zzc:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v2, p0, Ls0/p;->b:Landroid/content/Context;

    const-string v3, "requestGoogleAccountsAccess"

    invoke-static {v2, v3, v0, v1, p1}, Ls0/r;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    new-instance p1, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v0, "Invalid state. Shouldn\'t happen"

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
