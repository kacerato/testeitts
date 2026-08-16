.class public final Lcom/google/android/gms/auth/api/identity/u;
.super Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Landroid/accounts/Account;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/u;->a:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->h()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/u;->b:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/u;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/u;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/u;->b:Landroid/accounts/Account;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/u;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/u;->b:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/u;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;-><init>(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/u;->a:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v1, " scopes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/u;->b:Landroid/accounts/Account;

    if-nez v1, :cond_3

    const-string v1, " account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/u;->b:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null account"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/u;->a:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null scopes"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/u;->c:Ljava/lang/String;

    return-object p0
.end method
