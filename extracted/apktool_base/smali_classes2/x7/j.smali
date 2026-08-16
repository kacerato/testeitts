.class public Lx7/j;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx7/j$a;
    }
.end annotation


# static fields
.field public static final j:J = 0x12cL


# instance fields
.field public final b:Lx7/c;

.field public final c:Lx7/j$a;

.field public d:F

.field public e:F

.field public f:Z

.field public g:Z

.field public final h:Landroid/os/Handler;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx7/c;Landroid/view/View;Lx7/j$a;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "node",
            "content",
            "listener"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx7/j;->f:Z

    iput-boolean v0, p0, Lx7/j;->g:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lx7/j;->h:Landroid/os/Handler;

    iput-boolean v0, p0, Lx7/j;->i:Z

    iput-object p2, p0, Lx7/j;->b:Lx7/c;

    iput-object p4, p0, Lx7/j;->c:Lx7/j$a;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01d2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    new-instance p1, Lx7/h;

    invoke-direct {p1, p0}, Lx7/h;-><init>(Lx7/j;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lx7/i;

    invoke-direct {p1, p0, p4}, Lx7/i;-><init>(Lx7/j;Lx7/j$a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lx7/j;Lx7/j$a;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lx7/j;->h(Lx7/j$a;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lx7/j;Lx7/j$a;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx7/j;->g(Lx7/j$a;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic c(Lx7/j;)V
    .locals 0

    invoke-virtual {p0}, Lx7/j;->d()V

    return-void
.end method

.method private getParentAsViewGroup()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getParentScaleSafe()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lx7/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lx7/f;

    invoke-virtual {v0}, Lx7/f;->getScale()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method public final d()V
    .locals 5

    invoke-direct {p0}, Lx7/j;->getParentScaleSafe()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lx7/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lx7/f;

    invoke-virtual {v1}, Lx7/f;->getPanX()F

    move-result v3

    invoke-virtual {v1}, Lx7/f;->getPanY()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_0
    iget-object v4, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {v4}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {v4}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setX(F)V

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final e(Landroid/view/View;FF)Lx7/j;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "px",
            "py"
        }
    .end annotation

    instance-of v0, p1, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lx7/j;

    if-eqz v3, :cond_1

    check-cast v2, Lx7/j;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final f(Landroid/view/ViewGroup;FF)Lx7/j;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "px",
            "py"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lx7/j;

    if-eqz v2, :cond_0

    check-cast v1, Lx7/j;

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic g(Lx7/j$a;Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lx7/j;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx7/j;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx7/j;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lx7/j;->getCenterXInParent()F

    move-result v0

    invoke-virtual {p0}, Lx7/j;->getCenterYInParent()F

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lx7/j$a;->a(Lx7/j;FF)V

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr v1, p2

    invoke-interface {p1, v0, v1}, Lx7/j$a;->e(FF)V

    :cond_0
    return-void
.end method

.method public getCenterXInParent()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterYInParent()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getNode()Lx7/c;
    .locals 1

    iget-object v0, p0, Lx7/j;->b:Lx7/c;

    return-object v0
.end method

.method public final synthetic h(Lx7/j$a;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_d

    if-eq p2, v2, :cond_8

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_8

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v1, p0, Lx7/j;->d:F

    sub-float/2addr p2, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lx7/j;->e:F

    sub-float/2addr v1, v3

    iget-boolean v3, p0, Lx7/j;->g:Z

    if-nez v3, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, LNc/b;->m0(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v4}, LNc/b;->m0(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    :cond_4
    iput-boolean v0, p0, Lx7/j;->i:Z

    iget-boolean v0, p0, Lx7/j;->f:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lx7/j;->d:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lx7/j;->e:F

    iget-boolean v0, p0, Lx7/j;->f:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2, v1}, Lx7/j;->i(FF)V

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lx7/j$a;->c(Lx7/j;)V

    goto :goto_0

    :cond_6
    iget-boolean p2, p0, Lx7/j;->g:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    add-float/2addr v0, p3

    invoke-interface {p1, p2, v0}, Lx7/j$a;->e(FF)V

    :cond_7
    :goto_0
    return v2

    :cond_8
    iget-object p2, p0, Lx7/j;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lx7/j;->i:Z

    iget-boolean p2, p0, Lx7/j;->g:Z

    if-eqz p2, :cond_b

    invoke-direct {p0}, Lx7/j;->getParentAsViewGroup()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    add-float/2addr v3, p3

    invoke-virtual {p0, p2, v1, v3}, Lx7/j;->f(Landroid/view/ViewGroup;FF)Lx7/j;

    move-result-object v1

    :cond_9
    if-eqz p1, :cond_b

    if-eqz v1, :cond_a

    if-eq v1, p0, :cond_a

    invoke-interface {p1, v1}, Lx7/j$a;->d(Lx7/j;)V

    goto :goto_1

    :cond_a
    invoke-interface {p1}, Lx7/j$a;->b()V

    :cond_b
    :goto_1
    iput-boolean v0, p0, Lx7/j;->f:Z

    iput-boolean v0, p0, Lx7/j;->g:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    return v2

    :cond_d
    iput-boolean v2, p0, Lx7/j;->f:Z

    iput-boolean v2, p0, Lx7/j;->i:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lx7/j;->d:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lx7/j;->e:F

    iget-object p2, p0, Lx7/j;->h:Landroid/os/Handler;

    new-instance v0, Lx7/g;

    invoke-direct {v0, p0, p1, p3}, Lx7/g;-><init>(Lx7/j;Lx7/j$a;Landroid/view/MotionEvent;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method public final i(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    iget-object v0, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {v0}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    add-float/2addr v0, p1

    iget-object p1, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {p1}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    add-float/2addr p1, p2

    iget-object p2, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {p2}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p2, p0, Lx7/j;->b:Lx7/c;

    invoke-virtual {p2}, Lx7/c;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    invoke-virtual {p0}, Lx7/j;->j()V

    return-void
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lx7/j;->d()V

    return-void
.end method
