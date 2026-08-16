.class public final Lcom/google/android/gms/common/api/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static final b:Lcom/google/android/gms/common/api/I;


# instance fields
.field public final a:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/I;

    new-instance v1, Lcom/google/android/gms/common/api/J;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/J;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/I;-><init>(Landroid/os/Parcelable$Creator;)V

    sput-object v0, Lcom/google/android/gms/common/api/I;->b:Lcom/google/android/gms/common/api/I;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable$Creator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/I;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/api/I;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/I;->b:Lcom/google/android/gms/common/api/I;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, -0xc2a5d3a

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/J;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Lcom/google/android/gms/common/api/b;->n()Lcom/google/android/gms/common/api/b;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/common/api/b;

    return-object p1
.end method
