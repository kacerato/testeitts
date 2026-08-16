.class public final Lk2/l$h;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final M:I = 0x2d000000

.field public static final N:I = -0x777778

.field public static final O:F = 0.3f

.field public static final P:F = 1.5f


# instance fields
.field public final A:Lk2/l$f;

.field public final B:Lk2/a;

.field public final C:Lk2/f;

.field public final D:Z

.field public final E:Landroid/graphics/Paint;

.field public final F:Landroid/graphics/Path;

.field public G:Lk2/c;

.field public H:Lk2/h;

.field public I:Landroid/graphics/RectF;

.field public J:F

.field public K:F

.field public L:F

.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/RectF;

.field public final c:La2/o;

.field public final d:F

.field public final e:Landroid/view/View;

.field public final f:Landroid/graphics/RectF;

.field public final g:La2/o;

.field public final h:F

.field public final i:Landroid/graphics/Paint;

.field public final j:Landroid/graphics/Paint;

.field public final k:Landroid/graphics/Paint;

.field public final l:Landroid/graphics/Paint;

.field public final m:Landroid/graphics/Paint;

.field public final n:Lk2/j;

.field public final o:Landroid/graphics/PathMeasure;

.field public final p:F

.field public final q:[F

.field public final r:Z

.field public final s:F

.field public final t:F

.field public final u:Z

.field public final v:La2/j;

.field public final w:Landroid/graphics/RectF;

.field public final x:Landroid/graphics/RectF;

.field public final y:Landroid/graphics/RectF;

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;La2/o;FLandroid/view/View;Landroid/graphics/RectF;La2/o;FIIIIZZLk2/a;Lk2/f;Lk2/l$f;Z)V
    .locals 13
    .param p10    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p11    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lk2/l$h;->i:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lk2/l$h;->j:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lk2/l$h;->k:Landroid/graphics/Paint;

    .line 6
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lk2/l$h;->l:Landroid/graphics/Paint;

    .line 7
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Lk2/l$h;->m:Landroid/graphics/Paint;

    .line 8
    new-instance v6, Lk2/j;

    invoke-direct {v6}, Lk2/j;-><init>()V

    iput-object v6, v0, Lk2/l$h;->n:Lk2/j;

    const/4 v6, 0x2

    .line 9
    new-array v7, v6, [F

    iput-object v7, v0, Lk2/l$h;->q:[F

    .line 10
    new-instance v8, La2/j;

    invoke-direct {v8}, La2/j;-><init>()V

    iput-object v8, v0, Lk2/l$h;->v:La2/j;

    .line 11
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v0, Lk2/l$h;->E:Landroid/graphics/Paint;

    .line 12
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v0, Lk2/l$h;->F:Landroid/graphics/Path;

    move-object v10, p2

    .line 13
    iput-object v10, v0, Lk2/l$h;->a:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lk2/l$h;->b:Landroid/graphics/RectF;

    move-object/from16 v11, p4

    .line 15
    iput-object v11, v0, Lk2/l$h;->c:La2/o;

    move/from16 v11, p5

    .line 16
    iput v11, v0, Lk2/l$h;->d:F

    move-object/from16 v11, p6

    .line 17
    iput-object v11, v0, Lk2/l$h;->e:Landroid/view/View;

    move-object/from16 v11, p7

    .line 18
    iput-object v11, v0, Lk2/l$h;->f:Landroid/graphics/RectF;

    move-object/from16 v12, p8

    .line 19
    iput-object v12, v0, Lk2/l$h;->g:La2/o;

    move/from16 v12, p9

    .line 20
    iput v12, v0, Lk2/l$h;->h:F

    move/from16 v12, p14

    .line 21
    iput-boolean v12, v0, Lk2/l$h;->r:Z

    move/from16 v12, p15

    .line 22
    iput-boolean v12, v0, Lk2/l$h;->u:Z

    move-object/from16 v12, p16

    .line 23
    iput-object v12, v0, Lk2/l$h;->B:Lk2/a;

    move-object/from16 v12, p17

    .line 24
    iput-object v12, v0, Lk2/l$h;->C:Lk2/f;

    move-object/from16 v12, p18

    .line 25
    iput-object v12, v0, Lk2/l$h;->A:Lk2/l$f;

    move/from16 v12, p19

    .line 26
    iput-boolean v12, v0, Lk2/l$h;->D:Z

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v12, "window"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 28
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 30
    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iput v10, v0, Lk2/l$h;->s:F

    .line 31
    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iput v10, v0, Lk2/l$h;->t:F

    move/from16 v10, p10

    .line 32
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p11

    .line 33
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v2, p12

    .line 34
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 35
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v8, v3}, La2/j;->n0(Landroid/content/res/ColorStateList;)V

    .line 36
    invoke-virtual {v8, v6}, La2/j;->w0(I)V

    .line 37
    invoke-virtual {v8, v2}, La2/j;->t0(Z)V

    const v3, -0x777778

    .line 38
    invoke-virtual {v8, v3}, La2/j;->u0(I)V

    .line 39
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lk2/l$h;->w:Landroid/graphics/RectF;

    .line 40
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lk2/l$h;->x:Landroid/graphics/RectF;

    .line 41
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v0, Lk2/l$h;->y:Landroid/graphics/RectF;

    .line 42
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, v0, Lk2/l$h;->z:Landroid/graphics/RectF;

    .line 43
    invoke-static/range {p3 .. p3}, Lk2/l$h;->m(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 44
    invoke-static/range {p7 .. p7}, Lk2/l$h;->m(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 45
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object v10, p1

    invoke-virtual {p1, v6, v3, v8, v4}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 46
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v4, v0, Lk2/l$h;->o:Landroid/graphics/PathMeasure;

    .line 47
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iput v3, v0, Lk2/l$h;->p:F

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v7, v2

    const/4 v2, 0x1

    .line 49
    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v7, v2

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-static/range {p13 .. p13}, Lk2/u;->c(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 53
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lk2/l$h;->p(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;La2/o;FLandroid/view/View;Landroid/graphics/RectF;La2/o;FIIIIZZLk2/a;Lk2/f;Lk2/l$f;ZLk2/l$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Lk2/l$h;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;La2/o;FLandroid/view/View;Landroid/graphics/RectF;La2/o;FIIIIZZLk2/a;Lk2/f;Lk2/l$f;Z)V

    return-void
.end method

.method public static synthetic a(Lk2/l$h;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lk2/l$h;->o(F)V

    return-void
.end method

.method public static synthetic b(Lk2/l$h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lk2/l$h;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic c(Lk2/l$h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lk2/l$h;->e:Landroid/view/View;

    return-object p0
.end method

.method public static d(Landroid/graphics/RectF;F)F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    return p0
.end method

.method public static e(Landroid/graphics/RectF;F)F
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    div-float/2addr p0, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float/2addr p0, p1

    return p0
.end method

.method public static m(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lk2/l$h;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lk2/l$h;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lk2/l$h;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-boolean v1, p0, Lk2/l$h;->u:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lk2/l$h;->J:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0, p1}, Lk2/l$h;->h(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v1, p0, Lk2/l$h;->n:Lk2/j;

    invoke-virtual {v1, p1}, Lk2/j;->a(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lk2/l$h;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1}, Lk2/l$h;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lk2/l$h;->G:Lk2/c;

    iget-boolean v1, v1, Lk2/c;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lk2/l$h;->l(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lk2/l$h;->k(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lk2/l$h;->k(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lk2/l$h;->l(Landroid/graphics/Canvas;)V

    :goto_1
    iget-boolean v1, p0, Lk2/l$h;->D:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->F:Landroid/graphics/Path;

    const v2, -0xff01

    invoke-virtual {p0, p1, v0, v1, v2}, Lk2/l$h;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    iget-object v0, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    const/16 v1, -0x100

    invoke-virtual {p0, p1, v0, v1}, Lk2/l$h;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    const v1, -0xff0100

    invoke-virtual {p0, p1, v0, v1}, Lk2/l$h;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    const v1, -0xff0001

    invoke-virtual {p0, p1, v0, v1}, Lk2/l$h;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    iget-object v0, p0, Lk2/l$h;->y:Landroid/graphics/RectF;

    const v1, -0xffff01

    invoke-virtual {p0, p1, v0, v1}, Lk2/l$h;->g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    :cond_4
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .locals 2
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p2}, Lk2/l$h;->m(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p2

    iget v0, p0, Lk2/l$h;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lk2/l$h;->E:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lk2/l$h;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lk2/l$h;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lk2/l$h;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lk2/l$h;->n:Lk2/j;

    invoke-virtual {v0}, Lk2/j;->d()Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lk2/l$h;->j(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lk2/l$h;->i(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lk2/l$h;->v:La2/j;

    iget-object v1, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lk2/l$h;->v:La2/j;

    iget v1, p0, Lk2/l$h;->J:F

    invoke-virtual {v0, v1}, La2/j;->m0(F)V

    iget-object v0, p0, Lk2/l$h;->v:La2/j;

    iget v1, p0, Lk2/l$h;->K:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, La2/j;->A0(I)V

    iget-object v0, p0, Lk2/l$h;->v:La2/j;

    iget-object v1, p0, Lk2/l$h;->n:Lk2/j;

    invoke-virtual {v1}, Lk2/j;->c()La2/o;

    move-result-object v1

    invoke-virtual {v0, v1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    iget-object v0, p0, Lk2/l$h;->v:La2/j;

    invoke-virtual {v0, p1}, La2/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lk2/l$h;->n:Lk2/j;

    invoke-virtual {v0}, Lk2/j;->c()La2/o;

    move-result-object v0

    iget-object v1, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, La2/o;->u(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, La2/o;->r()La2/d;

    move-result-object v0

    iget-object v1, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, La2/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lk2/l$h;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk2/l$h;->n:Lk2/j;

    invoke-virtual {v0}, Lk2/j;->d()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lk2/l$h;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lk2/l$h;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lk2/l$h;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lk2/l$h;->y:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lk2/l$h;->H:Lk2/h;

    iget v5, v0, Lk2/h;->b:F

    iget-object v0, p0, Lk2/l$h;->G:Lk2/c;

    iget v6, v0, Lk2/c;->b:I

    new-instance v7, Lk2/l$h$b;

    invoke-direct {v7, p0}, Lk2/l$h$b;-><init>(Lk2/l$h;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lk2/u;->w(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILk2/u$c;)V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lk2/l$h;->j:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lk2/l$h;->n(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lk2/l$h;->H:Lk2/h;

    iget v5, v0, Lk2/h;->a:F

    iget-object v0, p0, Lk2/l$h;->G:Lk2/c;

    iget v6, v0, Lk2/c;->a:I

    new-instance v7, Lk2/l$h$a;

    invoke-direct {v7, p0}, Lk2/l$h$a;-><init>(Lk2/l$h;)V

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lk2/u;->w(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILk2/u$c;)V

    return-void
.end method

.method public final n(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final o(F)V
    .locals 1

    iget v0, p0, Lk2/l$h;->L:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk2/l$h;->p(F)V

    :cond_0
    return-void
.end method

.method public final p(F)V
    .locals 12

    iput p1, p0, Lk2/l$h;->L:F

    iget-object v0, p0, Lk2/l$h;->m:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lk2/l$h;->r:Z

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-static {v8, v2, p1}, Lk2/u;->k(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, v8, p1}, Lk2/u;->k(FFF)F

    move-result v1

    :goto_0
    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lk2/l$h;->o:Landroid/graphics/PathMeasure;

    iget v1, p0, Lk2/l$h;->p:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lk2/l$h;->q:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lk2/l$h;->q:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v4, 0x1

    aget v5, v0, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v9

    if-gtz v6, :cond_2

    cmpg-float v7, p1, v8

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v10, v2

    move v11, v5

    goto :goto_4

    :cond_2
    :goto_2
    if-lez v6, :cond_3

    sub-float v6, p1, v9

    const v7, 0x3c23d700    # 0.00999999f

    div-float/2addr v6, v7

    const v7, 0x3f7d70a4    # 0.99f

    goto :goto_3

    :cond_3
    const v7, 0x3c23d70a    # 0.01f

    div-float v6, p1, v7

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v6, v10

    :goto_3
    iget-object v10, p0, Lk2/l$h;->o:Landroid/graphics/PathMeasure;

    iget v11, p0, Lk2/l$h;->p:F

    mul-float/2addr v11, v7

    invoke-virtual {v10, v11, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lk2/l$h;->q:[F

    aget v1, v0, v1

    aget v0, v0, v4

    sub-float v1, v2, v1

    mul-float/2addr v1, v6

    add-float/2addr v2, v1

    sub-float v0, v5, v0

    mul-float/2addr v0, v6

    add-float/2addr v5, v0

    goto :goto_1

    :goto_4
    iget-object v0, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v0}, Lk2/l$f;->b(Lk2/l$f;)Lk2/l$e;

    move-result-object v0

    invoke-static {v0}, Lk2/l$e;->a(Lk2/l$e;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v0}, Lk2/l$f;->b(Lk2/l$f;)Lk2/l$e;

    move-result-object v0

    invoke-static {v0}, Lk2/l$e;->b(Lk2/l$e;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v0, p0, Lk2/l$h;->C:Lk2/f;

    iget-object v1, p0, Lk2/l$h;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v1, p0, Lk2/l$h;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v1, p0, Lk2/l$h;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v1, p0, Lk2/l$h;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lk2/f;->a(FFFFFFF)Lk2/h;

    move-result-object v0

    iput-object v0, p0, Lk2/l$h;->H:Lk2/h;

    iget-object v1, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    iget v2, v0, Lk2/h;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    sub-float v4, v10, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v10

    iget v0, v0, Lk2/h;->d:F

    add-float/2addr v0, v11

    invoke-virtual {v1, v4, v11, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lk2/l$h;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->H:Lk2/h;

    iget v2, v1, Lk2/h;->e:F

    div-float v4, v2, v3

    sub-float v4, v10, v4

    div-float/2addr v2, v3

    add-float/2addr v10, v2

    iget v1, v1, Lk2/h;->f:F

    add-float/2addr v1, v11

    invoke-virtual {v0, v4, v11, v10, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v0}, Lk2/l$f;->c(Lk2/l$f;)Lk2/l$e;

    move-result-object v0

    invoke-static {v0}, Lk2/l$e;->a(Lk2/l$e;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v1}, Lk2/l$f;->c(Lk2/l$f;)Lk2/l$e;

    move-result-object v1

    invoke-static {v1}, Lk2/l$e;->b(Lk2/l$e;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lk2/l$h;->C:Lk2/f;

    iget-object v3, p0, Lk2/l$h;->H:Lk2/h;

    invoke-interface {v2, v3}, Lk2/f;->b(Lk2/h;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    :goto_5
    invoke-static {v8, v9, v0, v1, p1}, Lk2/u;->l(FFFFF)F

    move-result v0

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    sub-float v0, v9, v0

    :goto_6
    iget-object v1, p0, Lk2/l$h;->C:Lk2/f;

    iget-object v2, p0, Lk2/l$h;->H:Lk2/h;

    invoke-interface {v1, v3, v0, v2}, Lk2/f;->c(Landroid/graphics/RectF;FLk2/h;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    iget-object v0, p0, Lk2/l$h;->n:Lk2/j;

    iget-object v2, p0, Lk2/l$h;->c:La2/o;

    iget-object v3, p0, Lk2/l$h;->g:La2/o;

    iget-object v4, p0, Lk2/l$h;->w:Landroid/graphics/RectF;

    iget-object v5, p0, Lk2/l$h;->x:Landroid/graphics/RectF;

    iget-object v6, p0, Lk2/l$h;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v1}, Lk2/l$f;->d(Lk2/l$f;)Lk2/l$e;

    move-result-object v7

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lk2/j;->b(FLa2/o;La2/o;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lk2/l$e;)V

    iget v0, p0, Lk2/l$h;->d:F

    iget v1, p0, Lk2/l$h;->h:F

    invoke-static {v0, v1, p1}, Lk2/u;->k(FFF)F

    move-result v0

    iput v0, p0, Lk2/l$h;->J:F

    iget-object v0, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    iget v1, p0, Lk2/l$h;->s:F

    invoke-static {v0, v1}, Lk2/l$h;->d(Landroid/graphics/RectF;F)F

    move-result v0

    iget-object v1, p0, Lk2/l$h;->I:Landroid/graphics/RectF;

    iget v2, p0, Lk2/l$h;->t:F

    invoke-static {v1, v2}, Lk2/l$h;->e(Landroid/graphics/RectF;F)F

    move-result v1

    iget v2, p0, Lk2/l$h;->J:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lk2/l$h;->K:F

    iget-object v3, p0, Lk2/l$h;->l:Landroid/graphics/Paint;

    const/high16 v4, 0x2d000000

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v0}, Lk2/l$f;->a(Lk2/l$f;)Lk2/l$e;

    move-result-object v0

    invoke-static {v0}, Lk2/l$e;->a(Lk2/l$e;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lk2/l$h;->A:Lk2/l$f;

    invoke-static {v1}, Lk2/l$f;->a(Lk2/l$f;)Lk2/l$e;

    move-result-object v1

    invoke-static {v1}, Lk2/l$e;->b(Lk2/l$e;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lk2/l$h;->B:Lk2/a;

    const v3, 0x3eb33333    # 0.35f

    invoke-interface {v2, p1, v0, v1, v3}, Lk2/a;->a(FFFF)Lk2/c;

    move-result-object v0

    iput-object v0, p0, Lk2/l$h;->G:Lk2/c;

    iget-object v0, p0, Lk2/l$h;->j:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lk2/l$h;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lk2/l$h;->G:Lk2/c;

    iget v1, v1, Lk2/c;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    iget-object v0, p0, Lk2/l$h;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lk2/l$h;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lk2/l$h;->G:Lk2/c;

    iget v1, v1, Lk2/c;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting alpha on is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Setting a color filter is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
