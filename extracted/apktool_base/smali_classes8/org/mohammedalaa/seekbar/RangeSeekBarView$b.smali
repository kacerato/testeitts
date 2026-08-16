.class public final Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mohammedalaa/seekbar/RangeSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$b;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->c:Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$b;

    new-instance v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$a;

    invoke-direct {v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b$a;-><init>()V

    sput-object v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "superState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
