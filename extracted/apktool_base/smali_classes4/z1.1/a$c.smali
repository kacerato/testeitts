.class public final Lz1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz1/a$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:I
    .annotation build Landroidx/annotation/PluralsRes;
    .end annotation
.end field

.field public i:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public j:I

.field public k:Z

.field public l:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field public m:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field public n:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field public o:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field public p:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field

.field public q:I
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/a$c$a;

    invoke-direct {v0}, Lz1/a$c$a;-><init>()V

    sput-object v0, Lz1/a$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lz1/a$c;->d:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lz1/a$c;->e:I

    .line 4
    new-instance v0, LX1/d;

    sget v1, Lw1/a$n;->f6:I

    invoke-direct {v0, p1, v1}, LX1/d;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v0}, LX1/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lz1/a$c;->c:I

    .line 6
    sget v0, Lw1/a$m;->k0:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz1/a$c;->g:Ljava/lang/CharSequence;

    .line 8
    sget p1, Lw1/a$l;->a:I

    iput p1, p0, Lz1/a$c;->h:I

    .line 9
    sget p1, Lw1/a$m;->m0:I

    iput p1, p0, Lz1/a$c;->i:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lz1/a$c;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Lz1/a$c;->d:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lz1/a$c;->e:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->b:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->c:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->d:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->e:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->f:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz1/a$c;->g:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->h:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->j:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->l:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->m:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->n:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->o:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->p:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lz1/a$c;->q:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lz1/a$c;->k:Z

    return-void
.end method

.method public static synthetic C(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->i:I

    return p0
.end method

.method public static synthetic D(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->i:I

    return p1
.end method

.method public static synthetic E(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->e:I

    return p0
.end method

.method public static synthetic F(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->e:I

    return p1
.end method

.method public static synthetic H(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->b:I

    return p0
.end method

.method public static synthetic I(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->b:I

    return p1
.end method

.method public static synthetic J(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->c:I

    return p0
.end method

.method public static synthetic K(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->c:I

    return p1
.end method

.method public static synthetic M(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->j:I

    return p0
.end method

.method public static synthetic O(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->j:I

    return p1
.end method

.method public static synthetic P(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->l:I

    return p0
.end method

.method public static synthetic T(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->l:I

    return p1
.end method

.method public static synthetic U(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->m:I

    return p0
.end method

.method public static synthetic W(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->m:I

    return p1
.end method

.method public static synthetic X(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->n:I

    return p0
.end method

.method public static synthetic a0(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->n:I

    return p1
.end method

.method public static synthetic b(Lz1/a$c;)Z
    .locals 0

    iget-boolean p0, p0, Lz1/a$c;->k:Z

    return p0
.end method

.method public static synthetic b0(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->o:I

    return p0
.end method

.method public static synthetic c(Lz1/a$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lz1/a$c;->k:Z

    return p1
.end method

.method public static synthetic d(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->f:I

    return p0
.end method

.method public static synthetic e(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->p:I

    return p0
.end method

.method public static synthetic f(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->p:I

    return p1
.end method

.method public static synthetic g(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->f:I

    return p1
.end method

.method public static synthetic h(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->q:I

    return p0
.end method

.method public static synthetic h0(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->o:I

    return p1
.end method

.method public static synthetic i(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->q:I

    return p1
.end method

.method public static synthetic l(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->d:I

    return p0
.end method

.method public static synthetic m(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->d:I

    return p1
.end method

.method public static synthetic n(Lz1/a$c;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lz1/a$c;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic p(Lz1/a$c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lz1/a$c;->g:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public static synthetic q(Lz1/a$c;)I
    .locals 0

    iget p0, p0, Lz1/a$c;->h:I

    return p0
.end method

.method public static synthetic t(Lz1/a$c;I)I
    .locals 0

    iput p1, p0, Lz1/a$c;->h:I

    return p1
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

    iget p2, p0, Lz1/a$c;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lz1/a$c;->g:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lz1/a$c;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lz1/a$c;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lz1/a$c;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
