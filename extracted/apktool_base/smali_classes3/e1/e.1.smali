.class public final Le1/e;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/a;


# static fields
.field public static final l:Lcom/google/android/gms/common/api/a$g;

.field public static final m:Lcom/google/android/gms/common/api/a$a;

.field public static final n:Lcom/google/android/gms/common/api/a;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Le1/e;->l:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Le1/j0;

    invoke-direct {v1}, Le1/j0;-><init>()V

    sput-object v1, Le1/e;->m:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.Api.Identity.Authorization.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Le1/e;->n:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/p;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Le1/e;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 2
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/e;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/p;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Le1/e;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 4
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/e;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final D(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;->n0()Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;

    move-result-object p1

    iget-object v0, p0, Le1/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$a;->a()Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->e:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/c;

    invoke-direct {v1, p0, p1}, Le1/c;-><init>(Le1/e;Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x6b9

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/b;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "status"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "authorization_result"

    sget-object v1, Lcom/google/android/gms/auth/api/identity/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/b;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final q(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->n0()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;

    move-result-object p1

    iget-object v0, p0, Le1/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;->a()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->d:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/b;

    invoke-direct {v1, p0, p1}, Le1/b;-><init>(Le1/e;Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x6b9

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/b;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->z0(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    move-result-object p1

    iget-object v0, p0, Le1/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->j(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->b()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->c:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/d;

    invoke-direct {v1, p0, p1}, Le1/d;-><init>(Le1/e;Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5fe

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
