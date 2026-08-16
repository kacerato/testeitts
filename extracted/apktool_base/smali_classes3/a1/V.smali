.class public final enum La1/V;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build LG0/F;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La1/V;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La1/V;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zza:La1/V;

.field public static final enum zzb:La1/V;

.field public static final enum zzc:La1/V;

.field private static final synthetic zzd:[La1/V;


# instance fields
.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, La1/V;

    const-string v1, "USER_VERIFICATION_REQUIRED"

    const/4 v2, 0x0

    const-string v3, "required"

    invoke-direct {v0, v1, v2, v3}, La1/V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La1/V;->zza:La1/V;

    new-instance v1, La1/V;

    const-string v2, "USER_VERIFICATION_PREFERRED"

    const/4 v3, 0x1

    const-string v4, "preferred"

    invoke-direct {v1, v2, v3, v4}, La1/V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, La1/V;->zzb:La1/V;

    new-instance v2, La1/V;

    const-string v3, "USER_VERIFICATION_DISCOURAGED"

    const/4 v4, 0x2

    const-string v5, "discouraged"

    invoke-direct {v2, v3, v4, v5}, La1/V;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, La1/V;->zzc:La1/V;

    filled-new-array {v0, v1, v2}, [La1/V;

    move-result-object v0

    sput-object v0, La1/V;->zzd:[La1/V;

    new-instance v0, La1/U;

    invoke-direct {v0}, La1/U;-><init>()V

    sput-object v0, La1/V;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La1/V;->zze:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)La1/V;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/zzax;
        }
    .end annotation

    invoke-static {}, La1/V;->values()[La1/V;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, La1/V;->zze:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/zzax;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[La1/V;
    .locals 1

    sget-object v0, La1/V;->zzd:[La1/V;

    invoke-virtual {v0}, [La1/V;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La1/V;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La1/V;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, La1/V;->zze:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
