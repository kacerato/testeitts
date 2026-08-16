.class public final Lcom/google/android/gms/auth/api/identity/b;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthorizationResultCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getServerAuthCode"
        id = 0x1
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getAccessToken"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getIdToken"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getGrantedScopes"
        id = 0x4
    .end annotation
.end field

.field public final f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build LI0/c$c;
        getter = "toGoogleSignInAccount"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Landroid/app/PendingIntent;
    .annotation build LI0/c$c;
        getter = "getPendingIntent"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/r;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/app/PendingIntent;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/b;->d:Ljava/lang/String;

    invoke-static {p4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/b;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/b;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public b0()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/b;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/b;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/b;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/b;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/b;->e:Ljava/util/List;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/b;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/b;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/b;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->b:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public u0()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/b;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/b;->n0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/b;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/b;->t()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/b;->v0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/b;->b0()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
