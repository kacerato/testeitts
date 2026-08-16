.class public Lzd/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzd/e$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2

.field public static final C:I = -0x1

.field public static final D:I = 0x0

.field public static final E:B = 0x26t

.field public static final F:I = 0x2

.field public static final G:B = 0x26t

.field public static final H:I = 0x8

.field public static final I:I = -0xcc4a1b

.field public static final J:F = 0.0f

.field public static final K:I = 0x1

.field public static final L:B = 0x20t

.field public static final M:F = 0.5f

.field public static final N:Z = false

.field public static final O:Z = false

.field public static final P:Z = false

.field public static final Q:I = 0x0

.field public static final R:Z = false

.field public static final z:I


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/RectF;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:Landroid/graphics/Paint;

.field public final p:I

.field public final q:Landroid/graphics/Paint;

.field public final r:F

.field public final s:Lzd/e$b;

.field public final t:Z

.field public u:I

.field public v:I

.field public w:F

.field public x:Lzd/c;

.field public y:Lzd/d$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lzd/e;->g:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010030

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v3, Landroid/util/TypedValue;->data:I

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/4 v5, 0x0

    mul-float/2addr v5, v2

    const/16 v7, 0x26

    invoke-static {v3, v7}, Lzd/e;->j(IB)I

    move-result v8

    float-to-int v9, v5

    invoke-static {v3, v7}, Lzd/e;->j(IB)I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v2

    float-to-int v10, v10

    const/16 v11, 0x20

    invoke-static {v3, v11}, Lzd/e;->j(IB)I

    move-result v3

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    sget-object v11, Lzd/b$j;->a0:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v12, v13, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    sget v12, Lzd/b$j;->p0:I

    invoke-virtual {v11, v12, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    sget v13, Lzd/b$j;->y0:I

    invoke-virtual {v11, v13, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    sget v14, Lzd/b$j;->u0:I

    invoke-virtual {v11, v14, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    sget v15, Lzd/b$j;->v0:I

    invoke-virtual {v11, v15, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    sget v6, Lzd/b$j;->t0:I

    invoke-virtual {v11, v6, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v1, Lzd/b$j;->q0:I

    move/from16 p1, v15

    const v15, -0xcc4a1b

    invoke-virtual {v11, v1, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget v15, Lzd/b$j;->r0:I

    move/from16 p2, v6

    const/4 v6, -0x1

    invoke-virtual {v11, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    sget v6, Lzd/b$j;->w0:I

    invoke-virtual {v11, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    sget v6, Lzd/b$j;->x0:I

    move/from16 v16, v4

    const/4 v4, -0x1

    invoke-virtual {v11, v6, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    sget v4, Lzd/b$j;->s0:I

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v5, Lzd/b$j;->z0:I

    invoke-virtual {v11, v5, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    sget v8, Lzd/b$j;->A0:I

    invoke-virtual {v11, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    sget v9, Lzd/b$j;->C0:I

    invoke-virtual {v11, v9, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    sget v9, Lzd/b$j;->D0:I

    invoke-virtual {v11, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v10, Lzd/b$j;->l0:I

    invoke-virtual {v11, v10, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v10, Lzd/b$j;->m0:I

    move/from16 v17, v4

    const/4 v4, -0x1

    invoke-virtual {v11, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget v4, Lzd/b$j;->n0:I

    invoke-virtual {v11, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v4, Lzd/b$j;->o0:I

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, -0x1

    if-ne v15, v11, :cond_0

    const/4 v11, 0x1

    new-array v15, v11, [I

    aput v1, v15, v2

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    goto :goto_0

    :goto_1
    if-ne v10, v1, :cond_1

    new-array v1, v11, [I

    aput v3, v1, v2

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    :goto_2
    new-instance v2, Lzd/e$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lzd/e$b;-><init>(Lzd/e$a;)V

    iput-object v2, v0, Lzd/e;->s:Lzd/e$b;

    invoke-virtual {v2, v15}, Lzd/e$b;->d([I)V

    invoke-virtual {v2, v1}, Lzd/e$b;->c([I)V

    iput v8, v0, Lzd/e;->b:I

    iput v5, v0, Lzd/e;->c:I

    iput v9, v0, Lzd/e;->d:I

    iput v7, v0, Lzd/e;->e:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lzd/e;->f:Landroid/graphics/Paint;

    iput-boolean v12, v0, Lzd/e;->i:Z

    iput-boolean v13, v0, Lzd/e;->h:Z

    iput-boolean v14, v0, Lzd/e;->j:Z

    move/from16 v1, v16

    iput v1, v0, Lzd/e;->k:I

    iput v6, v0, Lzd/e;->l:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lzd/e;->o:Landroid/graphics/Paint;

    move/from16 v1, v17

    iput v1, v0, Lzd/e;->n:F

    move/from16 v1, p2

    iput v1, v0, Lzd/e;->m:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lzd/e;->r:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lzd/e;->q:Landroid/graphics/Paint;

    move/from16 v2, v18

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v2, v0, Lzd/e;->p:I

    iput-boolean v4, v0, Lzd/e;->t:Z

    invoke-static/range {p1 .. p1}, Lzd/c;->d(I)Lzd/c;

    move-result-object v1

    iput-object v1, v0, Lzd/e;->x:Lzd/c;

    return-void
.end method

.method public static a(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static j(IB)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lzd/e;->g()Lzd/d$g;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lzd/f;->n(Landroid/view/View;)Z

    move-result v1

    iget-boolean v2, v7, Lzd/e;->j:Z

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v7, v8, v12, v10}, Lzd/e;->d(Landroid/graphics/Canvas;II)V

    invoke-virtual {v7, v8, v12, v10, v9}, Lzd/e;->f(Landroid/graphics/Canvas;III)V

    :cond_0
    if-lez v11, :cond_5

    iget v2, v7, Lzd/e;->v:I

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, v7, Lzd/e;->h:Z

    invoke-static {v2, v3}, Lzd/f;->k(Landroid/view/View;Z)I

    move-result v3

    iget-boolean v4, v7, Lzd/e;->h:Z

    invoke-static {v2, v4}, Lzd/f;->b(Landroid/view/View;Z)I

    move-result v2

    if-eqz v1, :cond_1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :cond_1
    iget v4, v7, Lzd/e;->v:I

    invoke-interface {v0, v4}, Lzd/d$g;->a(I)I

    move-result v4

    iget v5, v7, Lzd/e;->k:I

    int-to-float v5, v5

    iget v6, v7, Lzd/e;->w:F

    const/4 v13, 0x0

    cmpl-float v6, v6, v13

    if-lez v6, :cond_4

    iget v6, v7, Lzd/e;->v:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_4

    iget v6, v7, Lzd/e;->v:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v0, v6}, Lzd/d$g;->a(I)I

    move-result v0

    if-eq v4, v0, :cond_2

    iget v6, v7, Lzd/e;->w:F

    invoke-static {v0, v4, v6}, Lzd/e;->a(IIF)I

    move-result v4

    :cond_2
    iget-object v0, v7, Lzd/e;->x:Lzd/c;

    iget v6, v7, Lzd/e;->w:F

    invoke-virtual {v0, v6}, Lzd/c;->a(F)F

    move-result v0

    iget-object v6, v7, Lzd/e;->x:Lzd/c;

    iget v13, v7, Lzd/e;->w:F

    invoke-virtual {v6, v13}, Lzd/c;->b(F)F

    move-result v6

    iget-object v13, v7, Lzd/e;->x:Lzd/c;

    iget v14, v7, Lzd/e;->w:F

    invoke-virtual {v13, v14}, Lzd/c;->c(F)F

    move-result v13

    iget v14, v7, Lzd/e;->v:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    iget-boolean v15, v7, Lzd/e;->h:Z

    invoke-static {v14, v15}, Lzd/f;->k(Landroid/view/View;Z)I

    move-result v15

    iget-boolean v12, v7, Lzd/e;->h:Z

    invoke-static {v14, v12}, Lzd/f;->b(Landroid/view/View;Z)I

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    int-to-float v1, v12

    mul-float/2addr v1, v6

    sub-float v6, v14, v6

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v3, v15

    mul-float/2addr v3, v0

    sub-float/2addr v14, v0

    int-to-float v0, v2

    mul-float/2addr v14, v0

    add-float/2addr v3, v14

    float-to-int v0, v3

    goto :goto_0

    :cond_3
    int-to-float v1, v15

    mul-float/2addr v1, v0

    sub-float v0, v14, v0

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v0, v12

    mul-float/2addr v0, v6

    sub-float/2addr v14, v6

    int-to-float v2, v2

    mul-float/2addr v14, v2

    add-float/2addr v0, v14

    float-to-int v0, v0

    :goto_0
    mul-float/2addr v5, v13

    move v3, v0

    move v2, v1

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v4

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v0 .. v6}, Lzd/e;->c(Landroid/graphics/Canvas;IIIFI)V

    :cond_5
    iget-boolean v0, v7, Lzd/e;->j:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0, v10}, Lzd/e;->d(Landroid/graphics/Canvas;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v7, v8, v0, v1, v9}, Lzd/e;->f(Landroid/graphics/Canvas;III)V

    :cond_6
    invoke-virtual {v7, v8, v9, v11}, Lzd/e;->e(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;IIIFI)V
    .locals 4

    iget v0, p0, Lzd/e;->k:I

    if-lez v0, :cond_5

    iget v1, p0, Lzd/e;->l:I

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget v1, p0, Lzd/e;->m:I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    int-to-float p4, p4

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p4, v0

    :goto_0
    div-float/2addr p5, v3

    sub-float v0, p4, p5

    add-float/2addr p4, p5

    goto :goto_2

    :cond_1
    int-to-float p4, p4

    :goto_1
    div-float/2addr p4, v3

    goto :goto_0

    :cond_2
    int-to-float p4, v0

    goto :goto_1

    :goto_2
    iget-object p5, p0, Lzd/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget p5, p0, Lzd/e;->l:I

    const/4 p6, -0x1

    if-ne p5, p6, :cond_3

    iget-object p5, p0, Lzd/e;->g:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p5, p2, v0, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_3
    sub-int p5, p2, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    iget p6, p0, Lzd/e;->l:I

    sub-int/2addr p5, p6

    int-to-float p5, p5

    div-float/2addr p5, v3

    iget-object p6, p0, Lzd/e;->g:Landroid/graphics/RectF;

    int-to-float p2, p2

    add-float/2addr p2, p5

    int-to-float p3, p3

    sub-float/2addr p3, p5

    invoke-virtual {p6, p2, v0, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    iget p2, p0, Lzd/e;->n:F

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_4

    iget-object p3, p0, Lzd/e;->g:Landroid/graphics/RectF;

    iget-object p4, p0, Lzd/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lzd/e;->g:Landroid/graphics/RectF;

    iget-object p3, p0, Lzd/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;II)V
    .locals 8

    iget v0, p0, Lzd/e;->b:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzd/e;->f:Landroid/graphics/Paint;

    iget v1, p0, Lzd/e;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p2

    int-to-float v5, p3

    iget p2, p0, Lzd/e;->b:I

    int-to-float v6, p2

    iget-object v7, p0, Lzd/e;->f:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lzd/e;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lzd/e;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;II)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    iget v2, v0, Lzd/e;->p:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iget v3, v0, Lzd/e;->r:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lzd/e;->g()Lzd/d$g;

    move-result-object v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    invoke-static {p0}, Lzd/f;->n(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, p3, -0x1

    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lzd/f;->a(Landroid/view/View;)I

    move-result v7

    invoke-static {v6}, Lzd/f;->c(Landroid/view/View;)I

    move-result v6

    if-eqz v4, :cond_1

    sub-int/2addr v7, v6

    goto :goto_1

    :cond_1
    add-int/2addr v7, v6

    :goto_1
    iget-object v6, v0, Lzd/e;->q:Landroid/graphics/Paint;

    invoke-interface {v3, v5}, Lzd/d$g;->b(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v7

    int-to-float v11, v1

    int-to-float v13, v2

    iget-object v14, v0, Lzd/e;->q:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v12

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;III)V
    .locals 8

    iget v0, p0, Lzd/e;->d:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzd/e;->f:Landroid/graphics/Paint;

    iget v1, p0, Lzd/e;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p2

    iget p2, p0, Lzd/e;->d:I

    sub-int p2, p4, p2

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p4

    iget-object v7, p0, Lzd/e;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public g()Lzd/d$g;
    .locals 1

    iget-object v0, p0, Lzd/e;->y:Lzd/d$g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzd/e;->s:Lzd/e$b;

    :goto_0
    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lzd/e;->i:Z

    return v0
.end method

.method public i(IF)V
    .locals 1

    iput p1, p0, Lzd/e;->v:I

    iput p2, p0, Lzd/e;->w:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Lzd/e;->u:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lzd/e;->u:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public k(Lzd/d$g;)V
    .locals 0

    iput-object p1, p0, Lzd/e;->y:Lzd/d$g;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs l([I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzd/e;->y:Lzd/d$g;

    iget-object v0, p0, Lzd/e;->s:Lzd/e$b;

    invoke-virtual {v0, p1}, Lzd/e$b;->c([I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public m(Lzd/c;)V
    .locals 0

    iput-object p1, p0, Lzd/e;->x:Lzd/c;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public varargs n([I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzd/e;->y:Lzd/d$g;

    iget-object v0, p0, Lzd/e;->s:Lzd/e$b;

    invoke-virtual {v0, p1}, Lzd/e$b;->d([I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lzd/e;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lzd/e;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
