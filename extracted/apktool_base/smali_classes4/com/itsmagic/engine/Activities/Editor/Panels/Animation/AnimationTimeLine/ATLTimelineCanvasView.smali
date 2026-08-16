.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:Z

.field public D:Z

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lv4/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/Rect;

.field public j:I

.field public k:I

.field public l:I

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:F

.field public final q:Landroid/view/GestureDetector;

.field public final r:Landroid/view/ScaleGestureDetector;

.field public final s:I

.field public final t:Landroid/widget/OverScroller;

.field public final u:I

.field public final v:I

.field public w:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

.field public x:I

.field public y:F

.field public z:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
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
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->b:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c:Ljava/util/HashMap;

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->d:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->e:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->f:Landroid/graphics/Paint;

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->g:Landroid/graphics/Paint;

    .line 10
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h:Landroid/graphics/Paint;

    .line 11
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->i:Landroid/graphics/Rect;

    const/16 v4, 0x1e

    .line 12
    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->k:I

    const/4 v4, 0x0

    .line 13
    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y:F

    .line 15
    invoke-virtual {p0, p3}, Landroid/view/View;->setClickable(Z)V

    .line 16
    invoke-virtual {p0, p3}, Landroid/view/View;->setLongClickable(Z)V

    const/high16 p3, 0x40800000    # 4.0f

    .line 17
    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->m:I

    const/high16 p3, 0x42800000    # 64.0f

    .line 18
    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->n:I

    const/high16 p3, 0x41000000    # 8.0f

    .line 19
    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    const/high16 p3, 0x41200000    # 10.0f

    .line 20
    invoke-static {p3, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->o:F

    const/high16 v4, 0x40400000    # 3.0f

    .line 21
    invoke-static {v4, p1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->p:F

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->s:I

    .line 24
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->u:I

    .line 25
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->v:I

    .line 26
    new-instance v4, Landroid/widget/OverScroller;

    invoke-direct {v4, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    .line 27
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 33
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->s()V

    .line 35
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->q:Landroid/view/GestureDetector;

    .line 36
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->r:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    return p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->n:I

    return p0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    return p1
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;FII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->r(FII)V

    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->B(F)V

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)Lv4/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->w(F)Lv4/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->w:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

    return-object p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->x:I

    return p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->x:I

    return p1
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    return p0
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    return p1
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y:F

    return p0
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y:F

    return p1
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;F)F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y:F

    return v0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->m:I

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public final B(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->u(F)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setSelected(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->w:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;->a(I)V

    :cond_1
    return-void
.end method

.method public final C(F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityX"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public getPinSize()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->i:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v9, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    move v11, v8

    :goto_0
    const/high16 v12, 0x3f000000    # 0.5f

    if-gt v11, v9, :cond_1

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->v(I)F

    move-result v1

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->p:F

    mul-float/2addr v2, v12

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l:I

    if-ne v11, v3, :cond_0

    sub-float v3, v1, v2

    add-float v4, v1, v2

    int-to-float v5, v10

    iget-object v6, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->d:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    sub-float v3, v1, v2

    add-float v4, v1, v2

    int-to-float v5, v10

    iget-object v6, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->e:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, LNc/b;->E(FFF)F

    move-result v1

    move v2, v8

    :goto_2
    if-gt v2, v9, :cond_3

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->v(I)F

    move-result v3

    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv4/b;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v5, v10

    mul-float/2addr v5, v12

    sub-float v6, v5, v1

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v6, v3, v1

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, v5, v1

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr v3, v1

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-gt v8, v9, :cond_5

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->v(I)F

    move-result v11

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->x(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    int-to-float v14, v3

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v4, v4

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v12

    sub-float v2, v11, v1

    add-float v4, v11, v1

    int-to-float v5, v10

    sub-float v15, v5, v14

    iget-object v6, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v1

    sub-float/2addr v14, v2

    mul-float/2addr v14, v12

    add-float/2addr v15, v14

    sub-float/2addr v15, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v11, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->y()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->r:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->B:F

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->s:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    :cond_2
    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->B:F

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->v:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->u:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C(F)V

    :cond_5
    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->D:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->performClick()Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->B:F

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->C:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    :goto_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public final r(FII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "focusX",
            "oldPinSize",
            "newPinSize"
        }
    .end annotation

    if-gtz p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    add-float/2addr v0, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    int-to-float p2, p3

    mul-float/2addr v0, p2

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->d:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_SELECTED_KEYFRAME:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_UNSELECTED_KEYFRAME:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->f:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_KEY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->g:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->h:Landroid/graphics/Paint;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setFramesPerSecond(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesPerSecond"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->k:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInteractionListener(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interactionListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->w:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;

    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/b;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c:Ljava/util/HashMap;

    iget v3, v1, Lv4/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPinSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinSize"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->m:I

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->n:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public t(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "smooth"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v0, p2

    mul-float/2addr p1, v0

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    cmpg-float v0, p1, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-gez v0, :cond_0

    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float p2, p2

    mul-float/2addr p2, v3

    sub-float/2addr p1, p2

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr p2, p1

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_1
    :goto_0
    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final u(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    add-float/2addr v1, p1

    int-to-float p1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final v(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameIndex"
        }
    .end annotation

    int-to-float p1, p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->j:I

    int-to-float v1, v0

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->A:F

    sub-float/2addr p1, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public final w(F)Lv4/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->u(F)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv4/b;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final x(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameIndex"
        }
    .end annotation

    int-to-float p1, p1

    const/4 v0, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x2

    invoke-static {p1, v0}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ":"

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->s()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
