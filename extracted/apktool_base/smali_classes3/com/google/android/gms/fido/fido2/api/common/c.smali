.class public Lcom/google/android/gms/fido/fido2/api/common/c;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LI0/c$a;
    creator = "AuthenticatorSelectionCriteriaCreator"
.end annotation

.annotation build LI0/c$g;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/c$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;
    .annotation build LI0/c$c;
        getter = "getAttachmentAsString"
        id = 0x2
        type = "java.lang.String"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/Boolean;
    .annotation build LI0/c$c;
        getter = "getRequireResidentKey"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:La1/V;
    .annotation build LI0/c$c;
        getter = "getRequireUserVerificationAsString"
        id = 0x4
        type = "java.lang.String"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;
    .annotation build LI0/c$c;
        getter = "getResidentKeyRequirementAsString"
        id = 0x5
        type = "java.lang.String"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/i0;

    invoke-direct {v0}, La1/i0;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
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

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LI0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->b(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->c:Ljava/lang/Boolean;

    if-nez p3, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-static {p3}, La1/V;->b(Ljava/lang/String;)La1/V;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->d:La1/V;

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p4}, Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;->b(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/Attachment$UnsupportedAttachmentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/fido/fido2/api/common/zzax; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement$UnsupportedResidentKeyRequirementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public b0()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/c;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/c;->c:Ljava/lang/Boolean;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->d:La1/V;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/c;->d:La1/V;

    invoke-static {v0, v2}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    invoke-static {v0, p1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->c:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->d:La1/V;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LG0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()Lcom/google/android/gms/fido/fido2/api/common/Attachment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    return-object v0
.end method

.method public n0()Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->b:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->e:Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;->toString()Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/c;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/c;->b0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LI0/b;->j(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/c;->d:La1/V;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La1/V;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LI0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
