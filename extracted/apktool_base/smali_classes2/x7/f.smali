.class public Lx7/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public d:F

.field public e:F

.field public f:F

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/j;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lx7/b;

.field public j:Lx7/j;

.field public k:F

.field public l:F

.field public m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

.field public n:Lcom/itsmagic/engine/Activities/Editor/Utils/G;

.field public o:F

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lx7/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lx7/f;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lx7/f;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx7/f;->d:F

    iput v0, p0, Lx7/f;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lx7/f;->f:F

    .line 6
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lx7/f;->g:Ljava/util/List;

    .line 7
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, Lx7/f;->h:Ljava/util/List;

    .line 8
    iput v0, p0, Lx7/f;->o:F

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lx7/f;->p:Z

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 12
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, 0x22888888

    .line 14
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 16
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v1, 0x33888888

    .line 17
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    new-instance p2, Lx7/b;

    invoke-direct {p2, p1}, Lx7/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lx7/f;->i:Lx7/b;

    .line 19
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {p0, p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 23
    new-instance p1, Lx7/e;

    invoke-direct {p1, p0}, Lx7/e;-><init>(Lx7/f;)V

    invoke-virtual {p2, p1}, Lx7/b;->setOnConnectionTapListener(Lx7/b$a;)V

    return-void
.end method

.method public static synthetic a(Lx7/f;Lx7/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lx7/f;->p(Lx7/a;)V

    return-void
.end method

.method public static synthetic b(Lx7/j;Lx7/a;)Z
    .locals 0

    invoke-static {p0, p1}, Lx7/f;->q(Lx7/j;Lx7/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lx7/f;)Lx7/b;
    .locals 0

    iget-object p0, p0, Lx7/f;->i:Lx7/b;

    return-object p0
.end method

.method public static synthetic d(Lx7/f;)Lx7/j;
    .locals 0

    iget-object p0, p0, Lx7/f;->j:Lx7/j;

    return-object p0
.end method

.method public static synthetic e(Lx7/f;Lx7/j;)Lx7/j;
    .locals 0

    iput-object p1, p0, Lx7/f;->j:Lx7/j;

    return-object p1
.end method

.method public static synthetic f(Lx7/f;F)F
    .locals 0

    iput p1, p0, Lx7/f;->k:F

    return p1
.end method

.method public static synthetic g(Lx7/f;F)F
    .locals 0

    iput p1, p0, Lx7/f;->l:F

    return p1
.end method

.method public static synthetic h(Lx7/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lx7/f;->p:Z

    return p1
.end method

.method public static synthetic i(Lx7/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lx7/f;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lx7/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lx7/f;->g:Ljava/util/List;

    return-object p0
.end method

.method public static n(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    rem-float/2addr p0, p1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static o(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    rem-float/2addr p0, p1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static synthetic q(Lx7/j;Lx7/a;)Z
    .locals 2

    invoke-virtual {p1}, Lx7/a;->a()Lx7/c;

    move-result-object v0

    invoke-virtual {p0}, Lx7/j;->getNode()Lx7/c;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lx7/a;->b()Lx7/c;

    move-result-object p1

    invoke-virtual {p0}, Lx7/j;->getNode()Lx7/c;

    move-result-object p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wx"
        }
    .end annotation

    iget v0, p0, Lx7/f;->f:F

    mul-float/2addr p1, v0

    iget v0, p0, Lx7/f;->d:F

    add-float/2addr p1, v0

    return p1
.end method

.method public final B(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wy"
        }
    .end annotation

    iget v0, p0, Lx7/f;->f:F

    mul-float/2addr p1, v0

    iget v0, p0, Lx7/f;->e:F

    add-float/2addr p1, v0

    return p1
.end method

.method public getCameraCenterWorld()Landroid/graphics/PointF;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lx7/f;->getPanX()F

    move-result v2

    invoke-virtual {p0}, Lx7/f;->getPanY()F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    invoke-virtual {p0}, Lx7/f;->getScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v6

    sub-float/2addr v0, v2

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v0, v5

    sub-float/2addr v1, v3

    sub-float/2addr v1, v6

    div-float/2addr v1, v4

    add-float/2addr v1, v6

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->h:Ljava/util/List;

    return-object v0
.end method

.method public getNodeViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx7/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->g:Ljava/util/List;

    return-object v0
.end method

.method public getPanX()F
    .locals 1

    iget v0, p0, Lx7/f;->d:F

    return v0
.end method

.method public getPanY()F
    .locals 1

    iget v0, p0, Lx7/f;->e:F

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lx7/f;->f:F

    return v0
.end method

.method public k(Lx7/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-virtual {p1}, Lx7/c;->a()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx7/c;->d(Landroid/view/View;)V

    new-instance v1, Lx7/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lx7/f$a;

    invoke-direct {v3, p0}, Lx7/f$a;-><init>(Lx7/f;)V

    invoke-direct {v1, v2, p1, v0, v3}, Lx7/j;-><init>(Landroid/content/Context;Lx7/c;Landroid/view/View;Lx7/j$a;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lx7/j;->j()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public l(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    iget v0, p0, Lx7/f;->f:F

    mul-float/2addr p1, v0

    add-float/2addr v0, p1

    iput v0, p0, Lx7/f;->f:F

    const/high16 p1, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lx7/f;->f:F

    iget-object p1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx7/j;

    invoke-virtual {v0}, Lx7/j;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lx7/f;->i:Lx7/b;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final m(Landroid/graphics/Canvas;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v1, :cond_8

    if-lez v2, :cond_8

    iget v3, v0, Lx7/f;->f:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0, v4}, Lx7/f;->x(F)F

    move-result v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lx7/f;->x(F)F

    move-result v5

    invoke-virtual {v0, v4}, Lx7/f;->y(F)F

    move-result v4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lx7/f;->y(F)F

    move-result v12

    const/high16 v13, 0x41c00000    # 24.0f

    div-float/2addr v3, v13

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float/2addr v3, v13

    div-float/2addr v4, v13

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float/2addr v4, v13

    iget-object v6, v0, Lx7/f;->c:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, v0, Lx7/f;->f:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lx7/f;->b:Landroid/graphics/Paint;

    const/high16 v7, 0x3fc00000    # 1.5f

    iget v8, v0, Lx7/f;->f:F

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    cmpg-float v6, v3, v5

    const/4 v11, 0x1

    const/4 v14, 0x0

    const v15, 0x38d1b717    # 1.0E-4f

    const/high16 v10, 0x42f00000    # 120.0f

    if-gtz v6, :cond_4

    invoke-virtual {v0, v3}, Lx7/f;->A(F)F

    move-result v9

    invoke-static {v3, v10}, Lx7/f;->o(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v15

    if-ltz v6, :cond_2

    invoke-static {v3, v10}, Lx7/f;->o(FF)F

    move-result v6

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v15

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    move v11, v14

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    iget-object v6, v0, Lx7/f;->b:Landroid/graphics/Paint;

    :goto_2
    move-object v11, v6

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lx7/f;->c:Landroid/graphics/Paint;

    goto :goto_2

    :goto_3
    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v7, v9

    move v10, v2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v13

    goto :goto_0

    :cond_4
    :goto_4
    cmpg-float v2, v4, v12

    if-gtz v2, :cond_8

    invoke-virtual {v0, v4}, Lx7/f;->B(F)F

    move-result v9

    invoke-static {v4, v10}, Lx7/f;->o(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v15

    if-ltz v2, :cond_6

    invoke-static {v4, v10}, Lx7/f;->o(FF)F

    move-result v2

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v15

    if-gez v2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v14

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v11

    :goto_6
    if-eqz v2, :cond_7

    iget-object v2, v0, Lx7/f;->b:Landroid/graphics/Paint;

    goto :goto_7

    :cond_7
    iget-object v2, v0, Lx7/f;->c:Landroid/graphics/Paint;

    :goto_7
    const/4 v6, 0x0

    move-object/from16 v5, p1

    move v7, v9

    move v8, v1

    move v3, v10

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v4, v13

    move v10, v3

    goto :goto_4

    :cond_8
    :goto_8
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lx7/f;->m(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final synthetic p(Lx7/a;)V
    .locals 2

    iget-object v0, p0, Lx7/f;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lx7/f;->i:Lx7/b;

    iget-object v0, p0, Lx7/f;->h:Ljava/util/List;

    iget-object v1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lx7/b;->h(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public r(FF)V
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

    iget v0, p0, Lx7/f;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lx7/f;->d:F

    iget p1, p0, Lx7/f;->e:F

    add-float/2addr p1, p2

    iput p1, p0, Lx7/f;->e:F

    iget-object p1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx7/j;

    invoke-virtual {p2}, Lx7/j;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lx7/f;->i:Lx7/b;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lx7/f;->i:Lx7/b;

    iget-object v1, p0, Lx7/f;->h:Ljava/util/List;

    iget-object v2, p0, Lx7/f;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lx7/b;->h(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setPanX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panX"
        }
    .end annotation

    iput p1, p0, Lx7/f;->d:F

    return-void
.end method

.method public setPanY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panY"
        }
    .end annotation

    iput p1, p0, Lx7/f;->e:F

    return-void
.end method

.method public setScale(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p0, Lx7/f;->f:F

    iget-object p1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx7/j;

    invoke-virtual {v0}, Lx7/j;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lx7/f;->i:Lx7/b;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public t(Lx7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/j;

    invoke-virtual {v1}, Lx7/j;->getNode()Lx7/c;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lx7/j;->j()V

    :cond_1
    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/j;

    invoke-virtual {v1}, Lx7/j;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Lx7/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/j;

    invoke-virtual {v1}, Lx7/j;->getNode()Lx7/c;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lx7/f;->w(Lx7/j;)V

    :cond_1
    return-void
.end method

.method public final w(Lx7/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lx7/f;->h:Ljava/util/List;

    new-instance v1, Lx7/d;

    invoke-direct {v1, p1}, Lx7/d;-><init>(Lx7/j;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p1, p0, Lx7/f;->i:Lx7/b;

    iget-object v0, p0, Lx7/f;->h:Ljava/util/List;

    iget-object v1, p0, Lx7/f;->g:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lx7/b;->h(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final x(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sx"
        }
    .end annotation

    iget v0, p0, Lx7/f;->d:F

    sub-float/2addr p1, v0

    iget v0, p0, Lx7/f;->f:F

    div-float/2addr p1, v0

    return p1
.end method

.method public final y(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sy"
        }
    .end annotation

    iget v0, p0, Lx7/f;->e:F

    sub-float/2addr p1, v0

    iget v0, p0, Lx7/f;->f:F

    div-float/2addr p1, v0

    return p1
.end method

.method public z(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lx7/f;->m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/H;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iput-object v0, p0, Lx7/f;->m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    :cond_0
    iget-object v0, p0, Lx7/f;->n:Lcom/itsmagic/engine/Activities/Editor/Utils/G;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/G;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/G;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iput-object v0, p0, Lx7/f;->n:Lcom/itsmagic/engine/Activities/Editor/Utils/G;

    :cond_1
    iget-object p1, p0, Lx7/f;->n:Lcom/itsmagic/engine/Activities/Editor/Utils/G;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/G;->c()V

    iget-object p1, p0, Lx7/f;->m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->c()V

    iget-object p1, p0, Lx7/f;->m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    iget-boolean v0, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->a:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p1

    iget-object v0, p0, Lx7/f;->m:Lcom/itsmagic/engine/Activities/Editor/Utils/H;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/H;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lx7/f;->r(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lx7/f;->p:Z

    :cond_2
    iget-boolean p1, p0, Lx7/f;->p:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lx7/f;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, LJAVARuntime/Time;->getDeltaTime()F

    move-result v1

    invoke-static {p1, v0, v1}, LNc/b;->N0(FFF)F

    move-result p1

    iget v0, p0, Lx7/f;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lx7/f;->setScale(F)V

    invoke-virtual {p0}, Lx7/f;->u()V

    invoke-virtual {p0}, Lx7/f;->s()V

    :cond_3
    return-void
.end method
