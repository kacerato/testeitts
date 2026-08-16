.class public abstract LT1/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT1/e$e;,
        LT1/e$c;,
        LT1/e$d;,
        LT1/e$b;
    }
.end annotation


# static fields
.field public static final i:I = -0x1

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x1


# instance fields
.field public final b:LT1/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:LT1/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:LT1/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/view/MenuInflater;

.field public g:LT1/e$d;

.field public h:LT1/e$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4}, Lh2/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, LT1/d;

    invoke-direct {p1}, LT1/d;-><init>()V

    iput-object p1, p0, LT1/e;->d:LT1/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v2, Lw1/a$o;->Vn:[I

    sget v7, Lw1/a$o;->ho:I

    sget v8, Lw1/a$o;->go:I

    filled-new-array {v7, v8}, [I

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->k(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    new-instance p3, LT1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, LT1/e;->getMaxItemCount()I

    move-result v0

    invoke-direct {p3, v6, p4, v0}, LT1/b;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object p3, p0, LT1/e;->b:LT1/b;

    invoke-virtual {p0, v6}, LT1/e;->d(Landroid/content/Context;)LT1/c;

    move-result-object p4

    iput-object p4, p0, LT1/e;->c:LT1/c;

    invoke-virtual {p1, p4}, LT1/d;->b(LT1/c;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LT1/d;->a(I)V

    invoke-virtual {p4, p1}, LT1/c;->setPresenter(LT1/d;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, LT1/d;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    sget p1, Lw1/a$o;->bo:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, LT1/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const p1, 0x1010038

    invoke-virtual {p4, p1}, LT1/c;->d(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p4, p1}, LT1/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    sget p1, Lw1/a$o;->ao:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lw1/a$f;->h5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemIconSize(I)V

    invoke-virtual {p2, v7}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2, v7, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemTextAppearanceInactive(I)V

    :cond_1
    invoke-virtual {p2, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, v8, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemTextAppearanceActive(I)V

    :cond_2
    sget p1, Lw1/a$o;->io:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LT1/e;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, v6}, LT1/e;->c(Landroid/content/Context;)La2/j;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget p1, Lw1/a$o;->eo:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemPaddingTop(I)V

    :cond_6
    sget p1, Lw1/a$o;->co:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemPaddingBottom(I)V

    :cond_7
    sget p1, Lw1/a$o;->Xn:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, LT1/e;->setElevation(F)V

    :cond_8
    sget p1, Lw1/a$o;->Wn:I

    invoke-static {v6, p2, p1}, LX1/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget p1, Lw1/a$o;->jo:I

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setLabelVisibilityMode(I)V

    sget p1, Lw1/a$o;->Zn:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p4, p1}, LT1/c;->setItemBackgroundRes(I)V

    goto :goto_1

    :cond_9
    sget p1, Lw1/a$o;->fo:I

    invoke-static {v6, p2, p1}, LX1/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LT1/e;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    sget p1, Lw1/a$o;->Yn:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorEnabled(Z)V

    sget-object v0, Lw1/a$o;->Pn:[I

    invoke-virtual {v6, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lw1/a$o;->Rn:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorWidth(I)V

    sget v0, Lw1/a$o;->Qn:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorHeight(I)V

    sget v0, Lw1/a$o;->Tn:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorMarginHorizontal(I)V

    sget v0, Lw1/a$o;->Sn:I

    invoke-static {v6, p1, v0}, LX1/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    sget v0, Lw1/a$o;->Un:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v6, v0, v1}, La2/o;->b(Landroid/content/Context;II)La2/o$b;

    move-result-object v0

    invoke-virtual {v0}, La2/o$b;->m()La2/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LT1/e;->setItemActiveIndicatorShapeAppearance(La2/o;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_a
    sget p1, Lw1/a$o;->ko:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->g(I)V

    :cond_b
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, LT1/e$a;

    invoke-direct {p1, p0}, LT1/e$a;-><init>(LT1/e;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method public static synthetic a(LT1/e;)LT1/e$c;
    .locals 0

    iget-object p0, p0, LT1/e;->h:LT1/e$c;

    return-object p0
.end method

.method public static synthetic b(LT1/e;)LT1/e$d;
    .locals 0

    iget-object p0, p0, LT1/e;->g:LT1/e$d;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, LT1/e;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LT1/e;->f:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, LT1/e;->f:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)La2/j;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/j;

    invoke-direct {v0}, La2/j;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0, p1}, La2/j;->Y(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract d(Landroid/content/Context;)LT1/c;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public e(I)Lz1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->h(I)Lz1/a;

    move-result-object p1

    return-object p1
.end method

.method public f(I)Lz1/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->i(I)Lz1/a;

    move-result-object p1

    return-object p1
.end method

.method public g(I)V
    .locals 3

    iget-object v0, p0, LT1/e;->d:LT1/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LT1/d;->c(Z)V

    invoke-direct {p0}, LT1/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v2, p0, LT1/e;->b:LT1/b;

    invoke-virtual {v0, p1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, LT1/e;->d:LT1/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LT1/d;->c(Z)V

    iget-object p1, p0, LT1/e;->d:LT1/d;

    invoke-virtual {p1, v1}, LT1/d;->updateMenuView(Z)V

    return-void
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorMarginHorizontal()I

    move-result v0

    return v0
.end method

.method public getItemActiveIndicatorShapeAppearance()La2/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorShapeAppearance()La2/o;

    move-result-object v0

    return-object v0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorWidth()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getItemPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemPaddingTop()I

    move-result v0

    return v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT1/e;->b:LT1/b;

    return-object v0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/MenuView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    return-object v0
.end method

.method public getPresenter()LT1/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT1/e;->d:LT1/d;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getItemActiveIndicatorEnabled()Z

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->l(I)V

    return-void
.end method

.method public j(ILandroid/view/View$OnTouchListener;)V
    .locals 1
    .param p2    # Landroid/view/View$OnTouchListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1, p2}, LT1/c;->n(ILandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {p0}, La2/k;->e(Landroid/view/View;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LT1/e$e;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LT1/e$e;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, LT1/e;->b:LT1/b;

    iget-object p1, p1, LT1/e$e;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, LT1/e$e;

    invoke-direct {v1, v0}, LT1/e$e;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, LT1/e$e;->b:Landroid/os/Bundle;

    iget-object v2, p0, LT1/e;->b:LT1/b;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-static {p0, p1}, La2/k;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(La2/o;)V
    .locals 1
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorShapeAppearance(La2/o;)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, LT1/e;->e:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    iput-object p1, p0, LT1/e;->e:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, LT1/e;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->e:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, LT1/e;->c:LT1/c;

    invoke-virtual {p1}, LT1/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LT1/e;->c:LT1/c;

    invoke-virtual {p1, v1}, LT1/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, LT1/e;->e:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    iget-object p1, p0, LT1/e;->c:LT1/c;

    invoke-virtual {p1, v1}, LT1/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LY1/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, LT1/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0}, LT1/c;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, LT1/e;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setLabelVisibilityMode(I)V

    iget-object p1, p0, LT1/e;->d:LT1/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LT1/d;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(LT1/e$c;)V
    .locals 0
    .param p1    # LT1/e$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LT1/e;->h:LT1/e$c;

    return-void
.end method

.method public setOnItemSelectedListener(LT1/e$d;)V
    .locals 0
    .param p1    # LT1/e$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LT1/e;->g:LT1/e$d;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, LT1/e;->b:LT1/b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, LT1/e;->b:LT1/b;

    iget-object v1, p0, LT1/e;->d:LT1/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
