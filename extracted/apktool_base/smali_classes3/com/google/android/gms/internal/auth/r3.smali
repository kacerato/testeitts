.class public final synthetic Lcom/google/android/gms/internal/auth/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/c;

.field public final synthetic b:Landroid/accounts/Account;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/c;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/r3;->a:Lcom/google/android/gms/internal/auth/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/r3;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/r3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/r3;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/r3;->a:Lcom/google/android/gms/internal/auth/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/r3;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/r3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/r3;->d:Landroid/os/Bundle;

    check-cast p1, Lcom/google/android/gms/internal/auth/h3;

    check-cast p2, Lv1/l;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/o3;

    new-instance v4, Lcom/google/android/gms/internal/auth/v3;

    invoke-direct {v4, v0, p2}, Lcom/google/android/gms/internal/auth/v3;-><init>(Lcom/google/android/gms/internal/auth/c;Lv1/l;)V

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/google/android/gms/internal/auth/o3;->f1(Lcom/google/android/gms/internal/auth/n3;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
