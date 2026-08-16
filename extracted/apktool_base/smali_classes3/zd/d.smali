.class public Lzd/d;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd/d$b;,
        Lzd/d$c;,
        Lzd/d$f;,
        Lzd/d$h;,
        Lzd/d$e;,
        Lzd/d$d;,
        Lzd/d$g;
    }
.end annotation


# static fields
.field public static final q:Z = false

.field public static final r:I = 0x18

.field public static final s:I = -0x1

.field public static final t:I = 0x10

.field public static final u:Z = true

.field public static final v:I = 0xc

.field public static final w:I = -0x4000000

.field public static final x:I = 0x0

.field public static final y:Z = true


# instance fields
.field public final b:Lzd/e;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Landroid/content/res/ColorStateList;

.field public g:F

.field public h:I

.field public i:I

.field public j:Landroidx/viewpager/widget/ViewPager;

.field public k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public l:Lzd/d$d;

.field public m:Lzd/d$h;

.field public n:Lzd/d$b;

.field public o:Lzd/d$e;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lzd/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lzd/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 6
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x2

    const/high16 v7, 0x41400000    # 12.0f

    .line 7
    invoke-static {v6, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    const/4 v7, 0x0

    mul-float/2addr v7, v5

    float-to-int v7, v7

    const/high16 v8, 0x41c00000    # 24.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    .line 8
    sget-object v8, Lzd/b$j;->a0:[I

    move/from16 v9, p3

    invoke-virtual {v1, v2, v8, v9, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 9
    sget v9, Lzd/b$j;->e0:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 10
    sget v11, Lzd/b$j;->f0:I

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 11
    sget v13, Lzd/b$j;->g0:I

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 12
    sget v14, Lzd/b$j;->j0:I

    invoke-virtual {v8, v14, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 13
    sget v14, Lzd/b$j;->h0:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 14
    sget v14, Lzd/b$j;->i0:I

    invoke-virtual {v8, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 15
    sget v14, Lzd/b$j;->c0:I

    invoke-virtual {v8, v14, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 16
    sget v15, Lzd/b$j;->d0:I

    invoke-virtual {v8, v15, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 17
    sget v10, Lzd/b$j;->k0:I

    invoke-virtual {v8, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 18
    sget v10, Lzd/b$j;->b0:I

    invoke-virtual {v8, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 19
    sget v12, Lzd/b$j;->B0:I

    invoke-virtual {v8, v12, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    .line 20
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    iput v5, v0, Lzd/d;->c:I

    .line 22
    iput v9, v0, Lzd/d;->d:I

    .line 23
    iput-boolean v11, v0, Lzd/d;->e:Z

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, -0x4000000

    .line 24
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :goto_0
    iput-object v13, v0, Lzd/d;->f:Landroid/content/res/ColorStateList;

    .line 25
    iput v4, v0, Lzd/d;->g:F

    .line 26
    iput v6, v0, Lzd/d;->h:I

    .line 27
    iput v7, v0, Lzd/d;->i:I

    const/4 v4, 0x0

    if-eqz v10, :cond_1

    .line 28
    new-instance v5, Lzd/d$b;

    invoke-direct {v5, v0, v4}, Lzd/d$b;-><init>(Lzd/d;Lzd/d$a;)V

    move-object v4, v5

    :cond_1
    iput-object v4, v0, Lzd/d;->n:Lzd/d$b;

    .line 29
    iput-boolean v3, v0, Lzd/d;->p:Z

    const/4 v4, -0x1

    if-eq v14, v4, :cond_2

    .line 30
    invoke-virtual {v0, v14, v15}, Lzd/d;->i(II)V

    .line 31
    :cond_2
    new-instance v4, Lzd/e;

    invoke-direct {v4, v1, v2}, Lzd/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, v0, Lzd/d;->b:Lzd/e;

    if-eqz v3, :cond_4

    .line 32
    invoke-virtual {v4}, Lzd/e;->h()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "\'distributeEvenly\' and \'indicatorAlwaysInCenter\' both use does not support"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lzd/e;->h()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/4 v1, -0x1

    .line 35
    invoke-virtual {v0, v4, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic a(Lzd/d;IF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lzd/d;->h(IF)V

    return-void
.end method

.method public static synthetic b(Lzd/d;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lzd/d;->k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method public static synthetic c(Lzd/d;)Lzd/d$e;
    .locals 0

    iget-object p0, p0, Lzd/d;->o:Lzd/d$e;

    return-object p0
.end method

.method public static synthetic d(Lzd/d;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lzd/d;->j:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lzd/d;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget p1, p0, Lzd/d;->g:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lzd/d;->d:I

    if-eq p1, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-boolean p1, p0, Lzd/d;->e:Z

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget p1, p0, Lzd/d;->h:I

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget p1, p0, Lzd/d;->i:I

    if-lez p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_1
    return-object v0
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lzd/d;->j:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lzd/d;->m:Lzd/d$h;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lzd/d;->e(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lzd/d;->b:Lzd/e;

    invoke-interface {v3, v4, v2, v0}, Lzd/d$h;->a(Landroid/view/ViewGroup;ILandroidx/viewpager/widget/PagerAdapter;)Landroid/view/View;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    iget-boolean v4, p0, Lzd/d;->p:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_1
    iget-object v4, p0, Lzd/d;->n:Lzd/d$b;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v4, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lzd/d;->j:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tabView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public final h(IF)V
    .locals 8

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    if-lt p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {p0}, Lzd/f;->n(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lzd/f;->l(Landroid/view/View;)I

    move-result v2

    invoke-static {v1}, Lzd/f;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget-object v3, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v3}, Lzd/e;->h()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    cmpg-float v3, v5, p2

    if-gez v3, :cond_1

    cmpg-float v3, p2, v4

    if-gez v3, :cond_1

    iget-object v2, p0, Lzd/d;->b:Lzd/e;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lzd/f;->l(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lzd/f;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Lzd/f;->l(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1}, Lzd/f;->e(Landroid/view/View;)I

    move-result p1

    add-int/2addr v3, p1

    add-int/2addr v2, v3

    int-to-float p1, v2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_1
    iget-object p1, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lzd/f;->l(Landroid/view/View;)I

    move-result p2

    invoke-static {p1}, Lzd/f;->c(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    invoke-static {v1}, Lzd/f;->l(Landroid/view/View;)I

    move-result p1

    invoke-static {v1}, Lzd/f;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1}, Lzd/f;->a(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Lzd/f;->c(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr v0, p2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lzd/f;->l(Landroid/view/View;)I

    move-result p2

    invoke-static {p1}, Lzd/f;->e(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    invoke-static {v1}, Lzd/f;->l(Landroid/view/View;)I

    move-result p1

    invoke-static {v1}, Lzd/f;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v1}, Lzd/f;->j(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Lzd/f;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0, v6}, Landroid/view/View;->scrollTo(II)V

    return-void

    :cond_3
    iget v3, p0, Lzd/d;->c:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_6

    cmpg-float v3, v5, p2

    if-gez v3, :cond_4

    cmpg-float v3, p2, v4

    if-gez v3, :cond_4

    iget-object v2, p0, Lzd/d;->b:Lzd/e;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v1}, Lzd/f;->l(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lzd/f;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Lzd/f;->l(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1}, Lzd/f;->e(Landroid/view/View;)I

    move-result p1

    add-int/2addr v3, p1

    add-int/2addr v2, v3

    int-to-float p1, v2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v1}, Lzd/f;->m(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-static {p0}, Lzd/f;->i(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lzd/f;->m(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-static {p0}, Lzd/f;->i(Landroid/view/View;)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_9

    if-gtz p1, :cond_8

    cmpl-float p1, p2, v5

    if-lez p1, :cond_7

    goto :goto_2

    :cond_7
    move v3, v6

    :cond_8
    :goto_2
    move p1, v3

    goto :goto_4

    :cond_9
    if-gtz p1, :cond_b

    cmpl-float p1, p2, v5

    if-lez p1, :cond_a

    goto :goto_3

    :cond_a
    move p1, v6

    goto :goto_4

    :cond_b
    :goto_3
    neg-int p1, v3

    :goto_4
    invoke-static {v1}, Lzd/f;->j(Landroid/view/View;)I

    move-result p2

    invoke-static {v1}, Lzd/f;->e(Landroid/view/View;)I

    move-result v1

    if-eqz v0, :cond_c

    add-int/2addr p2, v1

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p0}, Lzd/f;->h(Landroid/view/View;)I

    move-result v0

    add-int/2addr p2, v0

    :goto_5
    add-int/2addr p1, p2

    goto :goto_6

    :cond_c
    sub-int/2addr p2, v1

    add-int/2addr p2, v2

    goto :goto_5

    :goto_6
    invoke-virtual {p0, p1, v6}, Landroid/view/View;->scrollTo(II)V

    :cond_d
    :goto_7
    return-void
.end method

.method public i(II)V
    .locals 3

    new-instance v0, Lzd/d$f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lzd/d$f;-><init>(Landroid/content/Context;IILzd/d$a;)V

    iput-object v0, p0, Lzd/d;->m:Lzd/d$h;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzd/d;->j:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lzd/d;->h(IF)V

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p2, p0, Lzd/d;->l:Lzd/d$d;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3}, Lzd/d$d;->a(II)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-object p2, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {p2}, Lzd/e;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lzd/d;->b:Lzd/e;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p4, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-static {p2}, Lzd/f;->f(Landroid/view/View;)I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Lzd/f;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {p4}, Lzd/f;->f(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-static {p4}, Lzd/f;->c(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-static {p0, v0, p2, p1, p4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lzd/d$g;)V
    .locals 1

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0, p1}, Lzd/e;->k(Lzd/d$g;)V

    return-void
.end method

.method public setCustomTabView(Lzd/d$h;)V
    .locals 0

    iput-object p1, p0, Lzd/d;->m:Lzd/d$h;

    return-void
.end method

.method public setDefaultTabTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lzd/d;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setDefaultTabTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzd/d;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    iput-boolean p1, p0, Lzd/d;->p:Z

    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0, p1}, Lzd/e;->l([I)V

    return-void
.end method

.method public setIndicationInterpolator(Lzd/c;)V
    .locals 1

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0, p1}, Lzd/e;->m(Lzd/c;)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lzd/d;->k:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollChangeListener(Lzd/d$d;)V
    .locals 0

    iput-object p1, p0, Lzd/d;->l:Lzd/d$d;

    return-void
.end method

.method public setOnTabClickListener(Lzd/d$e;)V
    .locals 0

    iput-object p1, p0, Lzd/d;->o:Lzd/d$e;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0, p1}, Lzd/e;->n([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lzd/d;->b:Lzd/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Lzd/d;->j:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lzd/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzd/d$c;-><init>(Lzd/d;Lzd/d$a;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lzd/d;->g()V

    :cond_0
    return-void
.end method
