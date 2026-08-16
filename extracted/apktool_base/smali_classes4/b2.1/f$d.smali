.class public Lb2/f$d;
.super Landroid/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb2/f$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:F

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb2/f$d$a;

    invoke-direct {v0}, Lb2/f$d$a;-><init>()V

    sput-object v0, Lb2/f$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    const-class v0, Lb2/f$d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lb2/f$d;->b:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lb2/f$d;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lb2/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb2/f$d;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic b(Lb2/f$d;)F
    .locals 0

    iget p0, p0, Lb2/f$d;->b:F

    return p0
.end method

.method public static synthetic c(Lb2/f$d;F)F
    .locals 0

    iput p1, p0, Lb2/f$d;->b:F

    return p1
.end method

.method public static synthetic d(Lb2/f$d;)I
    .locals 0

    iget p0, p0, Lb2/f$d;->c:I

    return p0
.end method

.method public static synthetic e(Lb2/f$d;I)I
    .locals 0

    iput p1, p0, Lb2/f$d;->c:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lb2/f$d;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lb2/f$d;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
