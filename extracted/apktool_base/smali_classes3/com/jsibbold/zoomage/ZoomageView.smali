.class public Lcom/jsibbold/zoomage/ZoomageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jsibbold/zoomage/ZoomageView$e;
    }
.end annotation


# static fields
.field public static final G:F = 0.6f

.field public static final H:F = 8.0f


# instance fields
.field public A:Landroid/view/ScaleGestureDetector;

.field public B:Landroid/animation/ValueAnimator;

.field public C:Landroid/view/GestureDetector;

.field public D:Z

.field public E:Z

.field public final F:Landroid/view/GestureDetector$OnGestureListener;

.field public final b:I

.field public c:Landroid/widget/ImageView$ScaleType;

.field public d:Landroid/graphics/Matrix;

.field public e:Landroid/graphics/Matrix;

.field public f:[F

.field public g:[F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public final l:Landroid/graphics/RectF;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:F

.field public t:I

.field public u:Landroid/graphics/PointF;

.field public v:F

.field public w:F

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xc8

    .line 2
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->b:I

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    const v1, 0x3f19999a    # 0.6f

    .line 7
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    const/high16 v2, 0x41000000    # 8.0f

    .line 8
    iput v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    .line 9
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->j:F

    .line 10
    iput v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->k:F

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    .line 12
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->v:F

    .line 14
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    .line 15
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->y:I

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    .line 18
    iput-boolean v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    .line 19
    iput-boolean v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    .line 20
    new-instance v1, Lcom/jsibbold/zoomage/ZoomageView$d;

    invoke-direct {v1, p0}, Lcom/jsibbold/zoomage/ZoomageView$d;-><init>(Lcom/jsibbold/zoomage/ZoomageView;)V

    iput-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->F:Landroid/view/GestureDetector$OnGestureListener;

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xc8

    .line 23
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->b:I

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 26
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    const v0, 0x3f19999a    # 0.6f

    .line 28
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    const/high16 v1, 0x41000000    # 8.0f

    .line 29
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    .line 30
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->j:F

    .line 31
    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->k:F

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->v:F

    .line 35
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    .line 36
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->y:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    .line 39
    iput-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    .line 40
    iput-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    .line 41
    new-instance v0, Lcom/jsibbold/zoomage/ZoomageView$d;

    invoke-direct {v0, p0}, Lcom/jsibbold/zoomage/ZoomageView$d;-><init>(Lcom/jsibbold/zoomage/ZoomageView;)V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->F:Landroid/view/GestureDetector$OnGestureListener;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/jsibbold/zoomage/ZoomageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xc8

    .line 44
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->b:I

    .line 45
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    .line 46
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    const/16 p3, 0x9

    .line 47
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 p3, 0x0

    .line 48
    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    const p3, 0x3f19999a    # 0.6f

    .line 49
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 50
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    .line 51
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->j:F

    .line 52
    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->k:F

    .line 53
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    .line 54
    new-instance p3, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 55
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->v:F

    .line 56
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    .line 57
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    const/4 p3, 0x1

    .line 58
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->y:I

    const/4 p3, 0x0

    .line 59
    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    .line 60
    iput-boolean p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    .line 61
    iput-boolean p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    .line 62
    new-instance p3, Lcom/jsibbold/zoomage/ZoomageView$d;

    invoke-direct {p3, p0}, Lcom/jsibbold/zoomage/ZoomageView$d;-><init>(Lcom/jsibbold/zoomage/ZoomageView;)V

    iput-object p3, p0, Lcom/jsibbold/zoomage/ZoomageView;->F:Landroid/view/GestureDetector$OnGestureListener;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jsibbold/zoomage/ZoomageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/jsibbold/zoomage/ZoomageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    return p1
.end method

.method public static synthetic b(Lcom/jsibbold/zoomage/ZoomageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    return p1
.end method

.method private getCurrentDisplayedHeight()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentDisplayedWidth()F
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->B:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->m:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->n:Z

    return p1
.end method

.method public final e(IF)V
    .locals 3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget v0, v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/jsibbold/zoomage/ZoomageView$c;

    invoke-direct {v0, p0, p1}, Lcom/jsibbold/zoomage/ZoomageView$c;-><init>(Lcom/jsibbold/zoomage/ZoomageView;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f(Landroid/graphics/Matrix;I)V
    .locals 10

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v4, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget v1, v4, v1

    sub-float v6, v2, v1

    const/4 v1, 0x4

    aget v2, v0, v1

    aget v1, v4, v1

    sub-float v7, v2, v1

    const/4 v1, 0x2

    aget v2, v0, v1

    aget v5, v4, v1

    sub-float v5, v2, v5

    const/4 v2, 0x5

    aget v0, v0, v2

    aget v2, v4, v2

    sub-float/2addr v0, v2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/jsibbold/zoomage/ZoomageView;->B:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/jsibbold/zoomage/ZoomageView$a;

    move-object v1, v9

    move-object v2, p0

    move v4, v5

    move v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/jsibbold/zoomage/ZoomageView$a;-><init>(Lcom/jsibbold/zoomage/ZoomageView;Landroid/graphics/Matrix;FFFF)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->B:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/jsibbold/zoomage/ZoomageView$b;

    invoke-direct {v1, p0, p1}, Lcom/jsibbold/zoomage/ZoomageView$b;-><init>(Lcom/jsibbold/zoomage/ZoomageView;Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->B:Landroid/animation/ValueAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->B:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/jsibbold/zoomage/ZoomageView;->f(Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getAnimateOnReset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->q:Z

    return v0
.end method

.method public getAutoCenter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->r:Z

    return v0
.end method

.method public getAutoResetMode()I
    .locals 1

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->t:I

    return v0
.end method

.method public getCurrentScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    return v0
.end method

.method public getDoubleTapToZoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->o:Z

    return v0
.end method

.method public getDoubleTapToZoomScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    return v0
.end method

.method public getRestrictBounds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->p:Z

    return v0
.end method

.method public final h()V
    .locals 4

    invoke-direct {p0}, Lcom/jsibbold/zoomage/ZoomageView;->getCurrentDisplayedWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-direct {p0}, Lcom/jsibbold/zoomage/ZoomageView;->getCurrentDisplayedHeight()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->e(IF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->F:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->C:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/jsibbold/zoomage/b$m;->f8:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/jsibbold/zoomage/b$m;->p8:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->n:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->o8:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->m:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->g8:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->q:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->h8:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->r:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->n8:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->p:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->j8:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->o:Z

    sget p2, Lcom/jsibbold/zoomage/b$m;->m8:I

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    sget p2, Lcom/jsibbold/zoomage/b$m;->l8:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    sget p2, Lcom/jsibbold/zoomage/b$m;->k8:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    sget p2, Lcom/jsibbold/zoomage/b$m;->i8:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {p2}, Lcom/jsibbold/zoomage/a$a;->a(I)I

    move-result p2

    iput p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->t:I

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->y()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->h()V

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->i()V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/MotionEvent;)Z
    .locals 2

    iget p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    invoke-direct {p0}, Lcom/jsibbold/zoomage/ZoomageView;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final l(F)F
    .locals 4

    invoke-direct {p0}, Lcom/jsibbold/zoomage/ZoomageView;->getCurrentDisplayedWidth()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    add-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_2

    add-float v3, v2, p1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    neg-float p1, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method public final m(F)F
    .locals 4

    invoke-direct {p0}, Lcom/jsibbold/zoomage/ZoomageView;->getCurrentDisplayedHeight()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    add-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_2

    add-float v3, v2, p1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    neg-float p1, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method public final n(FF)F
    .locals 3

    sub-float/2addr p1, p2

    iget-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->p:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->l(F)F

    move-result p1

    :cond_0
    iget-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float v1, v0, p1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    neg-float p1, v0

    goto :goto_0

    :cond_1
    iget p2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method public final o(FF)F
    .locals 3

    sub-float/2addr p1, p2

    iget-boolean p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->p:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->m(F)F

    move-result p1

    :cond_0
    iget-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float v1, v0, p1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    neg-float p1, v0

    goto :goto_0

    :cond_1
    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    :cond_2
    :goto_0
    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->v:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    mul-float/2addr v0, p1

    iget v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->j:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    div-float/2addr v2, p1

    iput v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->k:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    div-float/2addr v2, p1

    iput v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    :cond_1
    :goto_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->v:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->m:Z

    if-eqz v0, :cond_c

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->w()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    invoke-virtual {p0, v0}, Lcom/jsibbold/zoomage/ZoomageView;->x([F)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->C:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->D:Z

    iput-boolean v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget p1, p1, v2

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    aget v0, v0, v2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->s()V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    invoke-direct {p1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iget-object v3, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/jsibbold/zoomage/ZoomageView;->f(Landroid/graphics/Matrix;I)V

    :goto_0
    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->E:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    iget v3, p0, Lcom/jsibbold/zoomage/ZoomageView;->y:I

    if-eq v0, v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iget-object v3, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->c(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0, v4}, Lcom/jsibbold/zoomage/ZoomageView;->n(FF)F

    move-result v4

    iget-object v5, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v5}, Lcom/jsibbold/zoomage/ZoomageView;->o(FF)F

    move-result v5

    iget-object v6, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_6
    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->d(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    invoke-virtual {v4, v5, v5, v0, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v4, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    aget v2, v5, v2

    div-float/2addr v4, v2

    iput v4, p0, Lcom/jsibbold/zoomage/ZoomageView;->x:F

    :cond_7
    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->u:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iget-object v3, p0, Lcom/jsibbold/zoomage/ZoomageView;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->w:F

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->u()V

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->z:I

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->y:I

    return v1

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->m:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->n:Z

    return v0
.end method

.method public s()V
    .locals 1

    iget-boolean v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->q:Z

    invoke-virtual {p0, v0}, Lcom/jsibbold/zoomage/ZoomageView;->t(Z)V

    return-void
.end method

.method public setAnimateOnReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->q:Z

    return-void
.end method

.method public setAutoCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->r:Z

    return-void
.end method

.method public setAutoResetMode(I)V
    .locals 0

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->t:I

    return-void
.end method

.method public setDoubleTapToZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->o:Z

    return-void
.end method

.method public setDoubleTapToZoomScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->y()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/jsibbold/zoomage/ZoomageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setRestrictBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->p:Z

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->c:Landroid/widget/ImageView$ScaleType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    :cond_0
    return-void
.end method

.method public setTranslatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->m:Z

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->n:Z

    return-void
.end method

.method public t(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 3

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->t:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->s()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    aget v1, v2, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->s()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->j()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->f:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    aget v1, v2, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->s()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->j()V

    :goto_0
    return-void
.end method

.method public v(FF)V
    .locals 0

    iput p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    iput p2, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    invoke-virtual {p0}, Lcom/jsibbold/zoomage/ZoomageView;->y()V

    return-void
.end method

.method public final w()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->g:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->j:F

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->k:F

    return-void
.end method

.method public final x([F)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->l:Landroid/graphics/RectF;

    const/4 v1, 0x2

    aget v2, p1, v1

    const/4 v3, 0x5

    aget v4, p1, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, p1, v6

    mul-float/2addr v5, v6

    aget v1, p1, v1

    add-float/2addr v5, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v6, 0x4

    aget v6, p1, v6

    mul-float/2addr v1, v6

    aget p1, p1, v3

    add-float/2addr v1, p1

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 4

    iget v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->h:F

    iget v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->i:F

    cmpl-float v2, v0, v1

    if-gez v2, :cond_4

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_3

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iput v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    :cond_0
    iget v1, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iput v0, p0, Lcom/jsibbold/zoomage/ZoomageView;->s:F

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "maxScale must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "minScale must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "minScale must be less than maxScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
