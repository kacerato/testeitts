.class public final Lcom/google/android/gms/common/api/b;
.super LI0/a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LI0/c$a;
    creator = "ApiMetadataCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/b;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/h;
    .annotation build LI0/c$c;
        getter = "getComplianceOptions"
        id = 0x1
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/api/I;->a()Lcom/google/android/gms/common/api/I;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Lcom/google/android/gms/common/api/b;->t()Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->a()Lcom/google/android/gms/common/api/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/h;
        .annotation build LI0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LI0/c$b;
    .end annotation

    invoke-direct {p0}, LI0/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    return-void
.end method

.method public static final b(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/b;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/api/b;->t()Lcom/google/android/gms/common/api/b$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/b$a;->b(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b$a;->a()Lcom/google/android/gms/common/api/b;

    move-result-object p0

    return-object p0
.end method

.method public static final n()Lcom/google/android/gms/common/api/b;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/api/b;->c:Lcom/google/android/gms/common/api/b;

    return-object v0
.end method

.method public static t()Lcom/google/android/gms/common/api/b$a;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/common/api/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    iget-object p1, p1, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApiMetadata(complianceOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, -0xc2a5d3a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->b:Lcom/google/android/gms/common/api/h;

    invoke-static {p1}, LI0/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, p2, v3}, LI0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, LI0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
