.class public final enum Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ABSENT:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OBJECT:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum STRING:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    const-string v1, "ABSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->ABSENT:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    new-instance v1, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    const-string v2, "STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->STRING:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    new-instance v2, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    const-string v3, "OBJECT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->OBJECT:Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->zza:[Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/d;

    invoke-direct {v0}, Lcom/google/android/gms/fido/u2f/api/common/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->zzb:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->zzb:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->zza:[Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Lcom/google/android/gms/fido/u2f/api/common/ChannelIdValue$a;->zzb:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
