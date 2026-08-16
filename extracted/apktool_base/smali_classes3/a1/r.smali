.class public La1/r;
.super La1/v;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "PublicKeyCredentialRequestOptionsCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/r$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[B
    .annotation build LI0/c$c;
        getter = "getChallenge"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Double;
    .annotation build LI0/c$c;
        getter = "getTimeoutSeconds"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getRpId"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation build LI0/c$c;
        getter = "getAllowList"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/Integer;
    .annotation build LI0/c$c;
        getter = "getRequestId"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .annotation build LI0/c$c;
        getter = "getTokenBinding"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:La1/V;
    .annotation build LI0/c$c;
        getter = "getUserVerificationAsString"
        id = 0x8
        type = "java.lang.String"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:La1/a;
    .annotation build LI0/c$c;
        getter = "getAuthenticationExtensions"
        id = 0x9
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/Long;
    .annotation build LI0/c$c;
        getter = "getLongRequestId"
        id = 0xa
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/O;

    invoke-direct {v0}, La1/O;-><init>()V

    sput-object v0, La1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;La1/a;Ljava/lang/Long;)V
    .locals 0
    .param p1    # [B
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # La1/a;
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Long;
        .annotation build LI0/c$e;
            id = 0xa
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, La1/v;-><init>()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, La1/r;->b:[B

    iput-object p2, p0, La1/r;->c:Ljava/lang/Double;

    invoke-static {p3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La1/r;->d:Ljava/lang/String;

    iput-object p4, p0, La1/r;->e:Ljava/util/List;

    iput-object p5, p0, La1/r;->f:Ljava/lang/Integer;

    iput-object p6, p0, La1/r;->g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iput-object p9, p0, La1/r;->j:Ljava/lang/Long;

    if-eqz p7, :cond_0

    :try_start_0
    invoke-static {p7}, La1/V;->b(Ljava/lang/String;)La1/V;

    move-result-object p1

    iput-object p1, p0, La1/r;->h:La1/V;
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/zzax; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, La1/r;->h:La1/V;

    :goto_0
    iput-object p8, p0, La1/r;->i:La1/a;

    return-void
.end method

.method public static w0([B)La1/r;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, La1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LI0/d;->a([BLandroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p0

    check-cast p0, La1/r;

    return-object p0
.end method


# virtual methods
.method public b0()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/r;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, La1/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, La1/r;

    iget-object v0, p0, La1/r;->b:[B

    iget-object v2, p1, La1/r;->b:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->c:Ljava/lang/Double;

    iget-object v2, p1, La1/r;->c:Ljava/lang/Double;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->d:Ljava/lang/String;

    iget-object v2, p1, La1/r;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->e:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v2, p1, La1/r;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, p1, La1/r;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, La1/r;->e:Ljava/util/List;

    iget-object v2, p0, La1/r;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, La1/r;->f:Ljava/lang/Integer;

    iget-object v2, p1, La1/r;->f:Ljava/lang/Integer;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v2, p1, La1/r;->g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->h:La1/V;

    iget-object v2, p1, La1/r;->h:La1/V;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->i:La1/a;

    iget-object v2, p1, La1/r;->i:La1/a;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La1/r;->j:Ljava/lang/Long;

    iget-object p1, p1, La1/r;->j:Ljava/lang/Long;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, La1/r;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, La1/r;->c:Ljava/lang/Double;

    iget-object v3, p0, La1/r;->d:Ljava/lang/String;

    iget-object v4, p0, La1/r;->e:Ljava/util/List;

    iget-object v5, p0, La1/r;->f:Ljava/lang/Integer;

    iget-object v6, p0, La1/r;->g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v7, p0, La1/r;->h:La1/V;

    iget-object v8, p0, La1/r;->i:La1/a;

    iget-object v9, p0, La1/r;->j:Ljava/lang/Long;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()La1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/r;->i:La1/a;

    return-object v0
.end method

.method public n0()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/r;->c:Ljava/lang/Double;

    return-object v0
.end method

.method public t()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/r;->b:[B

    return-object v0
.end method

.method public u0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/r;->g:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, La1/r;->t()[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LI0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, La1/r;->n0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->u(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, La1/r;->y0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, La1/r;->x0()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, La1/r;->b0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LI0/b;->I(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, La1/r;->u0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, La1/r;->h:La1/V;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La1/V;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, La1/r;->n()La1/a;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xa

    iget-object v1, p0, La1/r;->j:Ljava/lang/Long;

    invoke-static {p1, p2, v1, v3}, LI0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public x0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La1/r;->e:Ljava/util/List;

    return-object v0
.end method

.method public y0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, La1/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final z0()La1/V;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/r;->h:La1/V;

    return-object v0
.end method
