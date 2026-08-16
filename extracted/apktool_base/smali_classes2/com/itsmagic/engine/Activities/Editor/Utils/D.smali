.class public final Lcom/itsmagic/engine/Activities/Editor/Utils/D;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "paint",
            "maxWidthPx"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;FI)Landroid/text/TextPaint;
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "textSizeSp",
            "fontResId"
        }
    .end annotation

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {p0, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dp"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;FII)[F
    .locals 5
    .param p3    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "text",
            "textSizeSp",
            "fontResId",
            "maxWidthDp"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->b(Landroid/content/Context;FI)Landroid/text/TextPaint;

    move-result-object p2

    int-to-float p3, p4

    invoke-static {p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->c(Landroid/content/Context;F)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->a(Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object p1

    move p2, v2

    :goto_0
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->h(Landroid/content/Context;F)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->h(Landroid/content/Context;F)F

    move-result p0

    new-array p1, v0, [F

    aput p2, p1, v2

    aput p0, p1, v1

    return-object p1

    :cond_2
    :goto_1
    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;FI)[F
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "text",
            "textSizeSp",
            "fontResId"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->b(Landroid/content/Context;FI)Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p3, p2

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->h(Landroid/content/Context;F)F

    move-result p1

    invoke-static {p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->h(Landroid/content/Context;F)F

    move-result p0

    new-array p2, v0, [F

    const/4 p3, 0x0

    aput p1, p2, p3

    const/4 p1, 0x1

    aput p0, p2, p1

    return-object p2

    :cond_1
    :goto_0
    new-array p0, v0, [F

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "text",
            "textSizeInSp"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f080006

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->e(Landroid/content/Context;Ljava/lang/String;FI)[F

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;FI)[F
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "text",
            "textSizeSp",
            "fontResId"
        }
    .end annotation

    const/16 v0, 0x1f4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/D;->d(Landroid/content/Context;Ljava/lang/String;FII)[F

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "px"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    return p1
.end method
