.class public Lcom/google/android/flexbox/FlexboxLayoutManager$c;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "SourceFile"

# interfaces
.implements Lo0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/flexbox/FlexboxLayoutManager$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:F

.field public c:F

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$c$a;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$c$a;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const p1, 0xffffff

    .line 13
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 14
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const p1, 0xffffff

    .line 6
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 7
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    const/4 v0, -0x2

    .line 52
    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const v0, 0xffffff

    .line 57
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 58
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 26
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const p1, 0xffffff

    .line 27
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 28
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 19
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const p1, 0xffffff

    .line 20
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 21
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 31
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const p1, 0xffffff

    .line 34
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 35
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    const v0, 0xffffff

    .line 41
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 42
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 43
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    .line 44
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    .line 45
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 46
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    .line 47
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 48
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    .line 49
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 50
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 51
    iget-boolean p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    return-void
.end method


# virtual methods
.method public G(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public R(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    return v0
.end method

.method public V()F
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    return v0
.end method

.method public Y(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minHeight"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    return-void
.end method

.method public Z()F
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    return v0
.end method

.method public c0()F
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    return v0
.end method

.method public d0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e0()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v0
.end method

.method public i0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexShrink"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    return-void
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxWidth"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    return-void
.end method

.method public j0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minWidth"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    return-void
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapBefore"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    return-void
.end method

.method public k0()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public m0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    return v0
.end method

.method public o0()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method public p0()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    return v0
.end method

.method public q0()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return v0
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHeight"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    return-void
.end method

.method public r0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignSelf"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method public w(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexGrow"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public x(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexBasisPercent"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:F

    return-void
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v0
.end method
