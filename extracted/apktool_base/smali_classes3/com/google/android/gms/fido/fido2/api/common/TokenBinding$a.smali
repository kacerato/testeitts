.class public final enum Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOT_SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PRESENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;


# instance fields
.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    const-string v3, "present"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->PRESENT:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    const-string v2, "SUPPORTED"

    const/4 v3, 0x1

    const-string v4, "supported"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    const-string v3, "NOT_SUPPORTED"

    const/4 v4, 0x2

    const-string v5, "not-supported"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->NOT_SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zza:[Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/i;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$UnsupportedTokenBindingStatusException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->values()[Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zzb:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$UnsupportedTokenBindingStatusException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$UnsupportedTokenBindingStatusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zza:[Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$a;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
