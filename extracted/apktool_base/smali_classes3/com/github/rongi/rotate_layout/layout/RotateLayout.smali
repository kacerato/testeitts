.class public Lcom/github/rongi/rotate_layout/layout/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private angle:I

.field private angleChanged:Z

.field private final childTouchPoint:[F

.field private final rotateMatrix:Landroid/graphics/Matrix;

.field private final tempRectF1:Landroid/graphics/RectF;

.field private final tempRectF2:Landroid/graphics/RectF;

.field private final viewRectRotated:Landroid/graphics/Rect;

.field private final viewTouchPoint:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->tempRectF1:Landroid/graphics/RectF;

    .line 7
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->tempRectF2:Landroid/graphics/RectF;

    const/4 p3, 0x2

    .line 8
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewTouchPoint:[F

    .line 9
    new-array p3, p3, [F

    iput-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->childTouchPoint:[F

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angleChanged:Z

    .line 11
    sget-object p3, Lcom/github/rongi/rotate_layout/R$styleable;->RotateLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/github/rongi/rotate_layout/R$styleable;->RotateLayout_angle:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private angle_c()Ljava/lang/Double;
    .locals 4

    iget v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    int-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->childTouchPoint:[F

    iget-object v4, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewTouchPoint:[F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->childTouchPoint:[F

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewTouchPoint:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v0
.end method

.method public getAngle()I
    .locals 1

    iget v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-boolean p2, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angleChanged:Z

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->tempRectF1:Landroid/graphics/RectF;

    int-to-float p2, p4

    int-to-float p3, p5

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->tempRectF2:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object p3, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->viewRectRotated:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angleChanged:Z

    :cond_1
    invoke-virtual {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p5, p2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, p2, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-direct {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle_c()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-double v3, v3

    invoke-direct {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle_c()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle_c()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-double v4, v0

    invoke-direct {p0}, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle_c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setAngle(I)V
    .locals 1

    iget v0, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angle:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/rongi/rotate_layout/layout/RotateLayout;->angleChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
