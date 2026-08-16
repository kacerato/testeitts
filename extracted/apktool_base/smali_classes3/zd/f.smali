.class public final Lzd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lzd/f;->b(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lzd/f;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-static {p0}, Lzd/f;->g(Landroid/view/View;)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_0
    return p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-static {p0}, Lzd/f;->g(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    :goto_1
    return p1
.end method

.method public static c(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lzd/f;->k(Landroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lzd/f;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-static {p0}, Lzd/f;->i(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    :goto_0
    return p1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-static {p0}, Lzd/f;->i(Landroid/view/View;)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_1
    return p1
.end method

.method public static l(Landroid/view/View;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lzd/f;->l(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lzd/f;->d(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
