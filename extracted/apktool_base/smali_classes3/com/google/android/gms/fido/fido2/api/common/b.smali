.class public Lcom/google/android/gms/fido/fido2/api/common/b;
.super La1/f;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthenticatorErrorResponseCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    .annotation build LI0/c$c;
        getter = "getErrorCodeAsInt"
        id = 0x2
        type = "int"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LI0/c$c;
        getter = "getErrorMessage"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I
    .annotation build LI0/c$c;
        defaultValue = "0"
        getter = "getInternalErrorCode"
        id = 0x4
        type = "int"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/h0;

    invoke-direct {v0}, La1/h0;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1    # I
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build LI0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, La1/f;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->e(I)Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/ErrorCode$UnsupportedErrorCodeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->d:I

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static b0([B)Lcom/google/android/gms/fido/fido2/api/common/b;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LI0/d;->a([BLandroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/b;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/b;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/fido/fido2/api/common/b;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public n0()Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    return-object v0
.end method

.method public t()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LI0/d;->n(LI0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lj1/l;->a(Ljava/lang/Object;)Lj1/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->b()I

    move-result v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Lj1/k;->a(Ljava/lang/String;I)Lj1/k;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Lj1/k;->b(Ljava/lang/String;Ljava/lang/Object;)Lj1/k;

    :cond_0
    invoke-virtual {v0}, Lj1/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->b:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->b()I

    move-result v0

    return v0
.end method

.method public v0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/b;->u0()I

    move-result v1

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/b;->v0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/fido/fido2/api/common/b;->d:I

    invoke-static {p1, v0, v1}, LI0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
