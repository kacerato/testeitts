.class public La1/a;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthenticationExtensionsCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:La1/l;
    .annotation build LI0/c$c;
        getter = "getFidoAppIdExtension"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:La1/n0;
    .annotation build LI0/c$c;
        getter = "getCableAuthenticationExtension"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:La1/w;
    .annotation build LI0/c$c;
        getter = "getUserVerificationMethodExtension"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:La1/t0;
    .annotation build LI0/c$c;
        getter = "getGoogleMultiAssertionExtension"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:La1/B;
    .annotation build LI0/c$c;
        getter = "getGoogleSessionIdExtension"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:La1/D;
    .annotation build LI0/c$c;
        getter = "getGoogleSilentVerificationExtension"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:La1/p0;
    .annotation build LI0/c$c;
        getter = "getDevicePublicKeyExtension"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:La1/G;
    .annotation build LI0/c$c;
        getter = "getGoogleTunnelServerIdExtension"
        id = 0x9
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:La1/n;
    .annotation build LI0/c$c;
        getter = "getGoogleThirdPartyPaymentExtension"
        id = 0xa
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:La1/I;
    .annotation build LI0/c$c;
        getter = "getPrfExtension"
        id = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/Z;

    invoke-direct {v0}, La1/Z;-><init>()V

    sput-object v0, La1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(La1/l;La1/n0;La1/w;La1/t0;La1/B;La1/D;La1/p0;La1/G;La1/n;La1/I;)V
    .locals 0
    .param p1    # La1/l;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # La1/n0;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # La1/w;
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # La1/t0;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # La1/B;
        .annotation build LI0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # La1/D;
        .annotation build LI0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # La1/p0;
        .annotation build LI0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # La1/G;
        .annotation build LI0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # La1/n;
        .annotation build LI0/c$e;
            id = 0xa
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # La1/I;
        .annotation build LI0/c$e;
            id = 0xb
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, La1/a;->b:La1/l;

    iput-object p3, p0, La1/a;->d:La1/w;

    iput-object p2, p0, La1/a;->c:La1/n0;

    iput-object p4, p0, La1/a;->e:La1/t0;

    iput-object p5, p0, La1/a;->f:La1/B;

    iput-object p6, p0, La1/a;->g:La1/D;

    iput-object p7, p0, La1/a;->h:La1/p0;

    iput-object p8, p0, La1/a;->i:La1/G;

    iput-object p9, p0, La1/a;->j:La1/n;

    iput-object p10, p0, La1/a;->k:La1/I;

    return-void
.end method


# virtual methods
.method public final b0()La1/n0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->c:La1/n0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, La1/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, La1/a;

    iget-object v0, p0, La1/a;->b:La1/l;

    iget-object v2, p1, La1/a;->b:La1/l;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->c:La1/n0;

    iget-object v2, p1, La1/a;->c:La1/n0;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->d:La1/w;

    iget-object v2, p1, La1/a;->d:La1/w;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->e:La1/t0;

    iget-object v2, p1, La1/a;->e:La1/t0;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->f:La1/B;

    iget-object v2, p1, La1/a;->f:La1/B;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->g:La1/D;

    iget-object v2, p1, La1/a;->g:La1/D;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->h:La1/p0;

    iget-object v2, p1, La1/a;->h:La1/p0;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->i:La1/G;

    iget-object v2, p1, La1/a;->i:La1/G;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->j:La1/n;

    iget-object v2, p1, La1/a;->j:La1/n;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La1/a;->k:La1/I;

    iget-object p1, p1, La1/a;->k:La1/I;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, La1/a;->b:La1/l;

    iget-object v1, p0, La1/a;->c:La1/n0;

    iget-object v2, p0, La1/a;->d:La1/w;

    iget-object v3, p0, La1/a;->e:La1/t0;

    iget-object v4, p0, La1/a;->f:La1/B;

    iget-object v5, p0, La1/a;->g:La1/D;

    iget-object v6, p0, La1/a;->h:La1/p0;

    iget-object v7, p0, La1/a;->i:La1/G;

    iget-object v8, p0, La1/a;->j:La1/n;

    iget-object v9, p0, La1/a;->k:La1/I;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()La1/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->b:La1/l;

    return-object v0
.end method

.method public final n0()La1/p0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->h:La1/p0;

    return-object v0
.end method

.method public t()La1/w;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->d:La1/w;

    return-object v0
.end method

.method public final u0()La1/t0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->e:La1/t0;

    return-object v0
.end method

.method public final v0()La1/B;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->f:La1/B;

    return-object v0
.end method

.method public final w0()La1/D;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->g:La1/D;

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

    invoke-virtual {p0}, La1/a;->n()La1/l;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, La1/a;->c:La1/n0;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, La1/a;->t()La1/w;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, La1/a;->e:La1/t0;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, La1/a;->f:La1/B;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, La1/a;->g:La1/D;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, La1/a;->h:La1/p0;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, La1/a;->i:La1/G;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, La1/a;->j:La1/n;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, La1/a;->k:La1/I;

    invoke-static {p1, v1, v2, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final x0()La1/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->j:La1/n;

    return-object v0
.end method

.method public final y0()La1/G;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->i:La1/G;

    return-object v0
.end method

.method public final z0()La1/I;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La1/a;->k:La1/I;

    return-object v0
.end method
