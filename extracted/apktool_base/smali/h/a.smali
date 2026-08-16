.class public abstract Lh/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a$a;,
        Lh/a$b;
    }
.end annotation


# instance fields
.field public b:Lh/a$b;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:Landroid/view/LayoutInflater;

.field public l:Landroid/widget/LinearLayout;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lh/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lh/a;->b:Lh/a$b;

    if-eqz p2, :cond_2

    .line 4
    sget-object v0, Lg/b$n;->c6:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    :try_start_0
    iput-object p1, p0, Lh/a;->n:Landroid/content/Context;

    .line 6
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lh/a;->k:Landroid/view/LayoutInflater;

    .line 7
    sget v1, Lg/b$i;->G:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget v0, Lg/b$g;->L0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    .line 9
    sget v0, Lg/b$n;->k6:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    sget v1, Lg/b$n;->l6:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    sget v2, Lg/b$n;->m6:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    sget v3, Lg/b$n;->e6:I

    sget v4, Lh/a$a;->a:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lh/a;->c:I

    .line 13
    sget v3, Lg/b$n;->f6:I

    const v4, 0x106000b

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lh/a;->d:I

    .line 14
    sget v3, Lg/b$n;->h6:I

    sget v4, Lh/a$a;->c:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lh/a;->e:I

    .line 15
    sget v3, Lg/b$n;->i6:I

    sget v4, Lh/a$a;->d:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lh/a;->f:I

    .line 16
    sget v3, Lg/b$n;->j6:I

    sget v4, Lh/a$a;->e:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lh/a;->g:I

    .line 17
    sget v3, Lg/b$n;->d6:I

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, p1, v4}, Lh/a;->g(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lh/a;->h:I

    .line 18
    sget v3, Lg/b$n;->n6:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {p0, v4, v5}, Lh/a;->g(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lh/a;->j:F

    .line 19
    sget v3, Lg/b$n;->g6:I

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p0, p1, v4}, Lh/a;->g(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lh/a;->i:F

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lh/a;->m:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lh/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object p1, p0, Lh/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p0}, Lh/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lh/a;->i(I)Li/a;

    move-result-object p1

    iget v0, p0, Lh/a;->c:I

    iget v1, p0, Lh/a;->d:I

    invoke-virtual {p0, p1, v0, v1}, Lh/a;->p(Li/a;II)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Li/a;

    iget-object v1, p0, Lh/a;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Li/a;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lh/a;->h:I

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lh/a;->j:F

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lh/a;->j:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Li/a;->a()Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lh/a;->g:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Li/a;->b()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lh/a;->j:F

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lh/a;->j:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_1
    iget-object v1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Li/a;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lh/a;->e(I)V

    return-void
.end method

.method public final c(Li/a;)Landroid/graphics/drawable/shapes/RoundRectShape;
    .locals 12

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lh/a;->k(Li/a;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget v10, p0, Lh/a;->i:F

    new-array v8, v8, [F

    aput v10, v8, v7

    aput v10, v8, v6

    aput v9, v8, v5

    aput v9, v8, v4

    aput v9, v8, v3

    aput v9, v8, v2

    aput v10, v8, v1

    aput v10, v8, v0

    invoke-direct {p1, v8, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lh/a;->m(Li/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget v10, p0, Lh/a;->i:F

    new-array v8, v8, [F

    aput v9, v8, v7

    aput v9, v8, v6

    aput v10, v8, v5

    aput v10, v8, v4

    aput v10, v8, v3

    aput v10, v8, v2

    aput v9, v8, v1

    aput v9, v8, v0

    invoke-direct {p1, v8, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v0, v8, [F

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lh/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lh/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lh/a;->i(I)Li/a;

    move-result-object p1

    iget v0, p0, Lh/a;->e:I

    iget v1, p0, Lh/a;->f:I

    invoke-virtual {p0, p1, v0, v1}, Lh/a;->p(Li/a;II)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lh/a;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Context;F)F
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p2, p1

    return p2
.end method

.method public getActiveBgColor()I
    .locals 1

    iget v0, p0, Lh/a;->c:I

    return v0
.end method

.method public getActiveTextColor()I
    .locals 1

    iget v0, p0, Lh/a;->d:I

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget v0, p0, Lh/a;->i:F

    return v0
.end method

.method public getInactiveBgColor()I
    .locals 1

    iget v0, p0, Lh/a;->e:I

    return v0
.end method

.method public getInactiveTextColor()I
    .locals 1

    iget v0, p0, Lh/a;->f:I

    return v0
.end method

.method public getNumButtons()I
    .locals 1

    invoke-virtual {p0}, Lh/a;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSeparatorColor()I
    .locals 1

    iget v0, p0, Lh/a;->g:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lh/a;->h:I

    return v0
.end method

.method public getToggleSwitchesContainer()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getToggleWidth()F
    .locals 1

    iget v0, p0, Lh/a;->j:F

    return v0
.end method

.method public h(Li/a;)I
    .locals 1

    iget-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Li/a;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public i(I)Li/a;
    .locals 2

    new-instance v0, Li/a;

    iget-object v1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Li/a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public abstract j(I)Z
.end method

.method public final k(Li/a;)Z
    .locals 1

    iget-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Li/a;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(I)Z
    .locals 2

    invoke-virtual {p0}, Lh/a;->getToggleSwitchesContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final m(Li/a;)Z
    .locals 3

    iget-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Li/a;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n(I)V
    .locals 2

    iget-object v0, p0, Lh/a;->b:Lh/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lh/a;->j(I)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lh/a$b;->a(IZ)V

    :cond_0
    return-void
.end method

.method public abstract o(I)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lh/a;->o(I)V

    return-void
.end method

.method public p(Li/a;II)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Lh/a;->c(Li/a;)Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Li/a;->c()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Li/a;->b()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public q(IIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Li/a;

    iget-object v2, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Li/a;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Li/a;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActiveBgColor(I)V
    .locals 0

    iput p1, p0, Lh/a;->c:I

    return-void
.end method

.method public setActiveTextColor(I)V
    .locals 0

    iput p1, p0, Lh/a;->d:I

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lh/a;->i:F

    return-void
.end method

.method public setInactiveBgColor(I)V
    .locals 0

    iput p1, p0, Lh/a;->e:I

    return-void
.end method

.method public setInactiveTextColor(I)V
    .locals 0

    iput p1, p0, Lh/a;->f:I

    return-void
.end method

.method public setLabels(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lh/a;->m:Ljava/util/ArrayList;

    iget-object p1, p0, Lh/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lh/a;->d()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The list of labels must contains at least 2 elements"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnToggleSwitchChangeListener(Lh/a$b;)V
    .locals 0

    iput-object p1, p0, Lh/a;->b:Lh/a$b;

    return-void
.end method

.method public setSeparatorColor(I)V
    .locals 0

    iput p1, p0, Lh/a;->g:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lh/a;->h:I

    return-void
.end method

.method public setToggleWidth(F)V
    .locals 0

    iput p1, p0, Lh/a;->j:F

    return-void
.end method
