.class public La1/g;
.super La1/i;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "BrowserPublicKeyCredentialCreationOptionsCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/g$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/fido/fido2/api/common/d;
    .annotation build LI0/c$c;
        getter = "getPublicKeyCredentialCreationOptions"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/net/Uri;
    .annotation build LI0/c$c;
        getter = "getOrigin"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:[B
    .annotation build LI0/c$c;
        getter = "getClientDataHash"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/j0;

    invoke-direct {v0}, La1/j0;-><init>()V

    sput-object v0, La1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fido/fido2/api/common/d;Landroid/net/Uri;[B)V
    .locals 0
    .param p1    # Lcom/google/android/gms/fido/fido2/api/common/d;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, La1/i;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/d;

    iput-object p1, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-static {p2}, La1/g;->C0(Landroid/net/Uri;)Landroid/net/Uri;

    iput-object p2, p0, La1/g;->c:Landroid/net/Uri;

    invoke-static {p3}, La1/g;->D0([B)[B

    iput-object p3, p0, La1/g;->d:[B

    return-void
.end method

.method public static bridge synthetic A0(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0}, La1/g;->C0(Landroid/net/Uri;)Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic B0([B)[B
    .locals 0

    invoke-static {p0}, La1/g;->D0([B)[B

    return-object p0
.end method

.method public static C0(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "origin scheme must be non-empty"

    invoke-static {v0, v3}, LG0/A;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "origin authority must be non-empty"

    invoke-static {v1, v0}, LG0/A;->b(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public static D0([B)[B
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    array-length v1, p0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "clientDataHash must be 32 bytes long"

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public static y0([B)La1/g;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, La1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LI0/d;->a([BLandroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p0

    check-cast p0, La1/g;

    return-object p0
.end method


# virtual methods
.method public b0()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/d;->b0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, La1/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, La1/g;

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    iget-object v2, p1, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/g;->c:Landroid/net/Uri;

    iget-object p1, p1, La1/g;->c:Landroid/net/Uri;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    iget-object v1, p0, La1/g;->c:Landroid/net/Uri;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()La1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/d;->n()La1/a;

    move-result-object v0

    return-object v0
.end method

.method public n0()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/d;->n0()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public t()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/d;->t()[B

    move-result-object v0

    return-object v0
.end method

.method public u0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/d;->u0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-result-object v0

    return-object v0
.end method

.method public v0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LI0/d;->n(LI0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public w0()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/g;->d:[B

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

    invoke-virtual {p0}, La1/g;->z0()Lcom/google/android/gms/fido/fido2/api/common/d;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, La1/g;->x0()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, La1/g;->w0()[B

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public x0()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/g;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public z0()Lcom/google/android/gms/fido/fido2/api/common/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/g;->b:Lcom/google/android/gms/fido/fido2/api/common/d;

    return-object v0
.end method
