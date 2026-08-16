.class public Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.super LI0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build LI0/c$a;
    creator = "AuthorizationRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;,
        Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getRequestedScopes"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getServerClientId"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Z
    .annotation build LI0/c$c;
        getter = "isOfflineAccessRequested"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LI0/c$c;
        getter = "isIdTokenRequested"
        id = 0x4
    .end annotation
.end field

.field public final f:Landroid/accounts/Account;
    .annotation build LI0/c$c;
        getter = "getAccount"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getHostedDomain"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getSessionId"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Z
    .annotation build LI0/c$c;
        getter = "isForceCodeForRefreshToken"
        id = 0x8
    .end annotation
.end field

.field public final j:Landroid/os/Bundle;
    .annotation build LI0/c$c;
        getter = "getResourceParameters"
        id = 0x9
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Z
    .annotation build LI0/c$c;
        defaultValue = "false"
        getter = "getOptOutIncludingGrantedScopes"
        id = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/q;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/accounts/Account;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Landroid/os/Bundle;
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Z
        .annotation build LI0/c$e;
            id = 0xa
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "requestedScopes cannot be null or empty"

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->d:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    return-void
.end method

.method public static n()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;-><init>()V

    return-object v0
.end method

.method public static z0(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;
    .locals 10
    .param p0    # Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n()Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->h(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->v0()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->values()[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    iget-object v9, v8, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->zba:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v4, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v0, v8, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->a(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->x0()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->w0()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->j(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->f(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v0, v5}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->i(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->y0()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->e(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    :cond_8
    iget-boolean p0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;->g(Z)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$a;

    return-object v0
.end method


# virtual methods
.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->d:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->d:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Landroid/accounts/Account;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    return v1
.end method

.method public h()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    iget-boolean v9, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n0()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public u0(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$b;->zba:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v0()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public w0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->c:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n0()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->w0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->y0()Z

    move-result v2

    invoke-static {p1, v1, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Z

    invoke-static {p1, v1, v2}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->x0()Z

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->v0()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 p2, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->b0()Z

    move-result v1

    invoke-static {p1, p2, v1}, LI0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public x0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Z

    return v0
.end method

.method public y0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->d:Z

    return v0
.end method
