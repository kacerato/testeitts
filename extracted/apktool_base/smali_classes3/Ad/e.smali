.class public LAd/e;
.super LAd/b;
.source "SourceFile"


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FI)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, LAd/b;-><init>(Ljava/lang/CharSequence;F)V

    iput p3, p0, LAd/e;->d:I

    return-void
.end method

.method public static d(Ljava/lang/CharSequence;FI)LAd/e;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    new-instance v0, LAd/e;

    invoke-direct {v0, p0, p1, p2}, LAd/e;-><init>(Ljava/lang/CharSequence;FI)V

    return-object v0
.end method

.method public static e(Ljava/lang/CharSequence;I)LAd/e;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, LAd/e;->d(Ljava/lang/CharSequence;FI)LAd/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget v0, p0, LAd/e;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
