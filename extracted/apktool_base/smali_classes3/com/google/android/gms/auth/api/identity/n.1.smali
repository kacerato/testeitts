.class public final Lcom/google/android/gms/auth/api/identity/n;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "SignInCredentialCreator"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getId"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getDisplayName"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getGivenName"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getFamilyName"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Landroid/net/Uri;
    .annotation build LI0/c$c;
        getter = "getProfilePictureUri"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getPassword"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getGoogleIdToken"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getPhoneNumber"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:La1/q;
    .annotation build LI0/c$c;
        getter = "getPublicKeyCredential"
        id = 0x9
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/L;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/L;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La1/q;)V
    .locals 0
    .param p1    # Ljava/lang/String;
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
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/net/Uri;
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
    .param p8    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # La1/q;
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/n;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/n;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/n;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/identity/n;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/n;->f:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/n;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/n;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/identity/n;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/identity/n;->j:La1/q;

    return-void
.end method


# virtual methods
.method public b0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/n;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->e:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->f:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->f:Landroid/net/Uri;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->g:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->h:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/n;->i:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->j:La1/q;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/n;->j:La1/q;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/n;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/n;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/n;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/n;->f:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/n;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/n;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/n;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/n;->j:La1/q;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->i:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->u0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->b0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->x0()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->w0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/n;->y0()La1/q;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public x0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public y0()La1/q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/n;->j:La1/q;

    return-object v0
.end method
