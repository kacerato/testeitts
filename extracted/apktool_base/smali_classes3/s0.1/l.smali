.class public final synthetic Ls0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/q;


# instance fields
.field public final synthetic a:Landroid/accounts/Account;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/l;->a:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls0/l;->a:Landroid/accounts/Account;

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/f1;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/G1;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/G1;->d0(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Service call returned null."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
