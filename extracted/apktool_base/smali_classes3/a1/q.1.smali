.class public La1/q;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "PublicKeyCredentialCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/q$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/q;",
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

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getType"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:[B
    .annotation build LI0/c$c;
        getter = "getRawId"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:La1/e;
    .annotation build LI0/c$c;
        getter = "getRegisterResponse"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:La1/d;
    .annotation build LI0/c$c;
        getter = "getSignResponse"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lcom/google/android/gms/fido/fido2/api/common/b;
    .annotation build LI0/c$c;
        getter = "getErrorResponse"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:La1/b;
    .annotation build LI0/c$c;
        getter = "getClientExtensionResults"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getAuthenticatorAttachment"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/L;

    invoke-direct {v0}, La1/L;-><init>()V

    sput-object v0, La1/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLa1/e;La1/d;Lcom/google/android/gms/fido/fido2/api/common/b;La1/b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # La1/e;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # La1/d;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/fido/fido2/api/common/b;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # La1/b;
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
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    if-eqz p6, :cond_3

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_3

    :cond_1
    const/4 v1, 0x0

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-eqz p6, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    invoke-static {v0}, LG0/A;->a(Z)V

    iput-object p1, p0, La1/q;->b:Ljava/lang/String;

    iput-object p2, p0, La1/q;->c:Ljava/lang/String;

    iput-object p3, p0, La1/q;->d:[B

    iput-object p4, p0, La1/q;->e:La1/e;

    iput-object p5, p0, La1/q;->f:La1/d;

    iput-object p6, p0, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    iput-object p7, p0, La1/q;->h:La1/b;

    iput-object p8, p0, La1/q;->i:Ljava/lang/String;

    return-void
.end method

.method public static b([B)La1/q;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, La1/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LI0/d;->a([BLandroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p0

    check-cast p0, La1/q;

    return-object p0
.end method


# virtual methods
.method public b0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, La1/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, La1/q;

    iget-object v0, p0, La1/q;->b:Ljava/lang/String;

    iget-object v2, p1, La1/q;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->c:Ljava/lang/String;

    iget-object v2, p1, La1/q;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->d:[B

    iget-object v2, p1, La1/q;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->e:La1/e;

    iget-object v2, p1, La1/q;->e:La1/e;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->f:La1/d;

    iget-object v2, p1, La1/q;->f:La1/d;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    iget-object v2, p1, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->h:La1/b;

    iget-object v2, p1, La1/q;->h:La1/b;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/q;->i:Ljava/lang/String;

    iget-object p1, p1, La1/q;->i:Ljava/lang/String;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, La1/q;->b:Ljava/lang/String;

    iget-object v1, p0, La1/q;->c:Ljava/lang/String;

    iget-object v2, p0, La1/q;->d:[B

    iget-object v3, p0, La1/q;->f:La1/d;

    iget-object v4, p0, La1/q;->e:La1/e;

    iget-object v5, p0, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    iget-object v6, p0, La1/q;->h:La1/b;

    iget-object v7, p0, La1/q;->i:Ljava/lang/String;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/q;->d:[B

    return-object v0
.end method

.method public t()La1/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/q;->h:La1/b;

    return-object v0
.end method

.method public u0()La1/f;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/q;->e:La1/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, La1/q;->f:La1/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public w0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LI0/d;->n(LI0/c;)[B

    move-result-object v0

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

    invoke-virtual {p0}, La1/q;->b0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, La1/q;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, La1/q;->n0()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x4

    iget-object v2, p0, La1/q;->e:La1/e;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, La1/q;->f:La1/d;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, La1/q;->g:Lcom/google/android/gms/fido/fido2/api/common/b;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, La1/q;->t()La1/b;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    invoke-virtual {p0}, La1/q;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
