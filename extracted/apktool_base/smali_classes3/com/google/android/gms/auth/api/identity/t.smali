.class public final Lcom/google/android/gms/auth/api/identity/t;
.super Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/t;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;->b0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/t;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/t;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/t;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/t;->b:Ljava/lang/String;

    return-object p0
.end method
