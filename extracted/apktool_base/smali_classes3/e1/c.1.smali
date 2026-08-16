.class public final synthetic Le1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Le1/e;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;


# direct methods
.method public synthetic constructor <init>(Le1/e;Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/c;->a:Le1/e;

    iput-object p2, p0, Le1/c;->b:Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le1/c;->a:Le1/e;

    check-cast p2, Lv1/l;

    check-cast p1, Le1/S;

    new-instance v1, Le1/m0;

    invoke-direct {v1, v0, p2}, Le1/m0;-><init>(Le1/e;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Le1/W;

    iget-object v0, p0, Le1/c;->b:Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    invoke-virtual {p1}, LG0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Le1/W;->e1(Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method
