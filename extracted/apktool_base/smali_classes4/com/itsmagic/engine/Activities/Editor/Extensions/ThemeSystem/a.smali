.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "theme:projects_panel_button"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "legacyColors",
            "themeColors"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    :try_start_0
    invoke-static {v0}, Lg4/a;->a(Lcom/google/android/material/textfield/TextInputEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v0, v2}, Lg4/b;->a(Lcom/google/android/material/textfield/TextInputEditText;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    const-string v1, "theme:projects_panel_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->g(Landroid/view/View;)V

    return-void

    :cond_2
    instance-of v0, p0, Lzd/d;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_8

    const-string v0, "getSelectedIndicatorColors"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->n(Ljava/lang/Object;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "getIndicatorColors"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->n(Ljava/lang/Object;Ljava/lang/String;)[I

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_6

    array-length v2, v0

    if-lez v2, :cond_6

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_5

    aget v5, v0, v3

    invoke-static {v5, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v5

    if-eq v5, v1, :cond_4

    aput v5, v2, v3

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_7

    const-string p1, "setSelectedIndicatorColors"

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->p(Ljava/lang/Object;Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "setIndicatorColors"

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->p(Ljava/lang/Object;Ljava/lang/String;[I)Z

    goto :goto_1

    :cond_6
    const-string v0, "getIndicatorColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result p1

    if-eq p1, v1, :cond_7

    const-string p2, "setIndicatorColor"

    invoke-static {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "setSelectedIndicatorColor"

    invoke-static {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_7
    :goto_1
    return-void

    :cond_8
    instance-of v0, p0, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    if-eqz v0, :cond_c

    const-string v0, "getReachedBarColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "getProgressReachedColor"

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->j([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_9

    const-string v2, "setReachedBarColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "setProgressReachedColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_9
    const-string v0, "getUnreachedBarColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "getProgressUnreachedColor"

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->j([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_a

    const-string v2, "setUnreachedBarColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "setProgressUnreachedColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_a
    const-string v0, "getTextColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "getProgressTextColor"

    invoke-static {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->j([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result p1

    if-eq p1, v1, :cond_b

    const-string p2, "setTextColor"

    invoke-static {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "setProgressTextColor"

    invoke-static {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_b
    return-void

    :cond_c
    instance-of v0, p0, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;

    if-eqz v0, :cond_10

    const-string v0, "getActiveBgColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_d

    const-string v2, "setActiveBgColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_d
    const-string v0, "getInactiveBgColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_e

    const-string v2, "setInactiveBgColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_e
    const-string v0, "getActiveTextColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_f

    const-string v2, "setActiveTextColor"

    invoke-static {p0, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_f
    const-string v0, "getInactiveTextColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result p1

    if-eq p1, v1, :cond_10

    const-string p2, "setInactiveTextColor"

    invoke-static {p0, p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_10
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0500ad

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    filled-new-array/range {v2 .. v10}, [I

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    sget-object v9, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    move-object v3, v4

    move-object v5, v7

    move-object v6, v7

    filled-new-array/range {v1 .. v9}, [LAc/b;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->i(Landroid/view/View;Landroid/content/Context;[I[LAc/b;)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->i(Landroid/view/View;Landroid/content/Context;[I[LAc/b;)V

    return-void
.end method

.method public static d(Landroid/view/View;[I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "legacyColors",
            "themeColors"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->f(Landroid/view/View;[I[I)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->d(Landroid/view/View;[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static e(Landroid/graphics/drawable/Drawable;[I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "legacyColors",
            "themeColors"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->e(Landroid/graphics/drawable/Drawable;[I[I)V

    return-void

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_4

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    const-string v0, "getColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->l(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->e(Landroid/graphics/drawable/Drawable;[I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result p1

    if-eq p1, v2, :cond_5

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_5
    return-void

    :cond_6
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_c

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v3, v0

    if-lez v3, :cond_9

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v4, v1

    move v5, v4

    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_8

    aget v6, v0, v4

    invoke-static {v6, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v6

    if-eq v6, v2, :cond_7

    aput v6, v3, v4

    const/4 v5, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_a

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v2, :cond_a

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_a
    :goto_2
    const-string v0, "getStrokeColor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->l(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result p1

    if-eq p1, v2, :cond_b

    const-string p2, "getStrokeWidth"

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->j([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_b
    return-void

    :cond_c
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_d

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    :goto_3
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-ge v1, v0, :cond_d

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->e(Landroid/graphics/drawable/Drawable;[I[I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public static f(Landroid/view/View;[I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "legacyColors",
            "themeColors"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->e(Landroid/graphics/drawable/Drawable;[I[I)V

    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    instance-of v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    :try_start_0
    invoke-virtual {v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getBorderColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    instance-of v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    invoke-virtual {v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->getBaseColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_5

    invoke-virtual {v0, v2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBaseColor(I)V

    :cond_5
    invoke-virtual {v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->getFillColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_6

    invoke-virtual {v0, v2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setFillColor(I)V

    :cond_6
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_8
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_9

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_a

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_b

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_b
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_c

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_c
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_d

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_d
    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getTickMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_e

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsSeekBar;->setTickMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_e
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_f

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_f
    instance-of v0, p0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_11

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_10

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_10
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_11

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :cond_11
    instance-of v0, p0, Landroid/widget/Switch;

    if-eqz v0, :cond_13

    move-object v0, p0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_12

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_12
    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_13

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    :cond_13
    instance-of v0, p0, Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_14

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_14
    instance-of v0, p0, LE1/a;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, LE1/a;

    invoke-virtual {v0}, LE1/a;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_15

    invoke-virtual {v0, v2}, LE1/a;->setCardBackgroundColor(I)V

    :cond_15
    instance-of v0, p0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v2, "getSelectedTabIndicatorColor"

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->k(I[I[I)I

    move-result v2

    if-eq v2, v1, :cond_16

    const-string v1, "setSelectedTabIndicatorColor"

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->o(Ljava/lang/Object;Ljava/lang/String;I)Z

    :cond_16
    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->a(Landroid/view/View;[I[I)V

    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static h(Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "selected"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, LNc/b;->k0(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static i(Landroid/view/View;Landroid/content/Context;[I[LAc/b;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "root",
            "context",
            "extraLegacyColors",
            "extraTags"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x26

    new-array v4, v3, [I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05016c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f050160

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f05016d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v8, 0x2

    aput v5, v4, v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f05015f

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v9, 0x3

    aput v5, v4, v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f050173

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v10, 0x4

    aput v5, v4, v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f050176

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v11, 0x5

    aput v5, v4, v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f050177

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v12, 0x6

    aput v5, v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f050167

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v13, 0x7

    aput v5, v4, v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f05016b

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v14, 0x8

    aput v5, v4, v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050164

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x9

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050170

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xa

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050171

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xb

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050158

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xc

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050159

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xd

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05015a

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xe

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050161

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0xf

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050163

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x10

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050162

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x11

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05016e

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x12

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050174

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x13

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050175

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x14

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050168

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x15

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050169

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x16

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050166

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x17

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05016a

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x18

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050172

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x19

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05016f

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1a

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050086

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1b

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050087

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1c

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050165

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1d

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050179

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1e

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017e

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x1f

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017b

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x20

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017a

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x21

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017f

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x22

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f050178

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x23

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017d

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x24

    aput v5, v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v15, 0x7f05017c

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/16 v15, 0x25

    aput v5, v4, v15

    new-array v5, v3, [LAc/b;

    sget-object v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    aput-object v15, v5, v6

    sget-object v15, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    aput-object v15, v5, v7

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    aput-object v7, v5, v9

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SEMI_CARD:LAc/b;

    aput-object v7, v5, v10

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    aput-object v7, v5, v11

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LAc/b;

    aput-object v7, v5, v12

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    aput-object v7, v5, v13

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    aput-object v7, v5, v14

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->DROP_LOCATION:LAc/b;

    const/16 v8, 0x9

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    const/16 v8, 0xa

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    const/16 v8, 0xb

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    const/16 v8, 0xc

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    const/16 v8, 0xd

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN_DARK:LAc/b;

    const/16 v8, 0xe

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_BACKGROUND:LAc/b;

    const/16 v8, 0xf

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_OUTLINE:LAc/b;

    const/16 v8, 0x10

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_CHECKMARK:LAc/b;

    const/16 v8, 0x11

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANELS_SPACING:LAc/b;

    const/16 v8, 0x12

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_BACKGROUND:LAc/b;

    const/16 v8, 0x13

    aput-object v7, v5, v8

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_TEXT_COLOR:LAc/b;

    const/16 v8, 0x14

    aput-object v7, v5, v8

    const/16 v7, 0x15

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_BACKGROUND:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x16

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_OUTLINE:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x17

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x18

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x19

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SELECTED_ELEMENTS:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1a

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->POPUP_MENU_SEPARATOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1b

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1c

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON_OUTLINE:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1d

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ERROR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1e

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x1f

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x20

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_TEXT_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x21

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_OUTLINE_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x22

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x23

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BACKGROUND_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x24

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_COLOR:LAc/b;

    aput-object v8, v5, v7

    const/16 v7, 0x25

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_BACKGROUND:LAc/b;

    aput-object v8, v5, v7

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    array-length v7, v1

    add-int/2addr v7, v3

    new-array v7, v7, [I

    array-length v8, v2

    add-int/2addr v8, v3

    new-array v8, v8, [LAc/b;

    invoke-static {v4, v6, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    invoke-static {v1, v6, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v6, v8, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    invoke-static {v2, v6, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v7

    move-object v5, v8

    :cond_1
    array-length v1, v5

    new-array v2, v1, [I

    move v3, v6

    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    aget-object v7, v5, v3

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v7

    aput v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->w([LAc/b;)[I

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-ne v5, v1, :cond_3

    array-length v5, v4

    array-length v7, v3

    add-int/2addr v5, v7

    new-array v5, v5, [I

    array-length v7, v3

    add-int/2addr v7, v1

    new-array v7, v7, [I

    array-length v8, v4

    invoke-static {v4, v6, v5, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v8, v3

    invoke-static {v3, v6, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v6, v7, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    move-object v2, v7

    :cond_3
    invoke-static {v0, v4, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->d(Landroid/view/View;[I[I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static varargs j([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static k(I[I[I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "legacyColors",
            "themeColors"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne p0, v3, :cond_1

    aget p0, p2, v2

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "methodName"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "methodName"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    instance-of p1, p0, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/String;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "methodName"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, [I

    if-eqz p1, :cond_1

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "methodName",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "methodName",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [I

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
