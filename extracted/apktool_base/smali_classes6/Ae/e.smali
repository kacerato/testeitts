.class public abstract LAe/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 0.0f

.field public static final b:F = 1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/text/Layout;I)I
    .locals 7
    .param p0    # Landroid/text/Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v3

    invoke-virtual {p0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_1

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v6, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, p1}, LAe/e;->b(Landroid/text/Layout;I)I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v5, v3

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    :cond_3
    int-to-float v0, v0

    sub-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public static b(Landroid/text/Layout;I)I
    .locals 1
    .param p0    # Landroid/text/Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static c(Landroid/text/Layout;I)I
    .locals 1
    .param p0    # Landroid/text/Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getTopPadding()I

    move-result p0

    sub-int/2addr v0, p0

    :cond_0
    return v0
.end method
