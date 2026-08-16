.class public Lcom/itsmagic/engine/Activities/Editor/Utils/x;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;
    }
.end annotation


# static fields
.field public static final o:I = -0x1


# instance fields
.field public b:I

.field public c:Landroid/view/ScaleGestureDetector;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e:F

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f:F

    const p1, 0x3dcccccd    # 0.1f

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 7
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;Lcom/itsmagic/engine/Activities/Editor/Utils/x$a;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->c:Landroid/view/ScaleGestureDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e:F

    .line 14
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f:F

    const p1, 0x3dcccccd    # 0.1f

    .line 15
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 16
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;Lcom/itsmagic/engine/Activities/Editor/Utils/x$a;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->c:Landroid/view/ScaleGestureDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e:F

    .line 23
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f:F

    const p1, 0x3dcccccd    # 0.1f

    .line 24
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 25
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;Lcom/itsmagic/engine/Activities/Editor/Utils/x$a;)V

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->c:Landroid/view/ScaleGestureDetector;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    return p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    return v0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    return p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    return p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e:F

    return p1
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->k:F

    return p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f:F

    return p1
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->l:F

    return p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    return v0
.end method

.method public getMove()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 1
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

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->k:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->l:F

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    const/4 v4, -0x1

    if-eq v1, v3, :cond_8

    const/4 v5, 0x2

    const v6, 0xff00

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    if-ne v1, v4, :cond_a

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->h:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    goto :goto_2

    :cond_2
    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    goto :goto_2

    :cond_3
    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->h:F

    sub-float v2, p1, v2

    iget v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    const/4 v2, 0x0

    cmpl-float v5, v4, v2

    if-lez v5, :cond_4

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    iput v5, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i:F

    :cond_5
    :goto_0
    cmpl-float v4, v0, v2

    if-lez v4, :cond_6

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    iput v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->j:F

    :cond_7
    :goto_1
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g:F

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->h:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_8
    iput v4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g:F

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->h:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b:I

    :cond_a
    :goto_2
    return v3
.end method

.method public setMaxZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxZoom"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->n:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minZoom"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->m:F

    return-void
.end method
