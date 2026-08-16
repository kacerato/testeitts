.class public Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
.super LI0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LI0/c$a;
    creator = "RevokeAccessRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Le1/K;
    .annotation build LI0/c$c;
        getter = "getScopes"
        id = 0x1
    .end annotation
.end field

.field public final c:Landroid/accounts/Account;
    .annotation build LI0/c$c;
        getter = "getAccount"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getSessionId"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/G;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/G;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/accounts/Account;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    invoke-static {p1}, Le1/K;->k(Ljava/util/Collection;)Le1/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b:Le1/K;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->c:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public static n()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/u;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/u;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b:Le1/K;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b:Le1/K;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->c:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->c:Landroid/accounts/Account;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public h()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->c:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b:Le1/K;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->c:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final n0()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/identity/u;-><init>(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)V

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->b:Le1/K;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->t()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->h()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
