.class public Lx7/b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx7/b$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Path;

.field public final e:Landroid/graphics/Path;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/j;",
            ">;"
        }
    .end annotation
.end field

.field public h:F

.field public i:F

.field public j:F

.field public k:Lx7/j;

.field public l:F

.field public m:F

.field public n:Z

.field public o:Lx7/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lx7/b;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lx7/b;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lx7/b;->d:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lx7/b;->e:Landroid/graphics/Path;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lx7/b;->f:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lx7/b;->g:Ljava/util/List;

    const/high16 v2, 0x42400000    # 48.0f

    iput v2, p0, Lx7/b;->h:F

    const/high16 v2, 0x42100000    # 36.0f

    iput v2, p0, Lx7/b;->i:F

    const/high16 v2, 0x41800000    # 16.0f

    iput v2, p0, Lx7/b;->j:F

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const-string v3, "#FFE0A64D"

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static b(FFFFFF)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    mul-float v2, p4, p4

    mul-float v3, p5, p5

    add-float/2addr v2, v3

    const v3, 0x358637bd    # 1.0E-6f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    float-to-double p0, v0

    float-to-double p2, v1

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    :goto_0
    double-to-float p0, p0

    return p0

    :cond_0
    mul-float/2addr v0, p4

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr p4, v0

    add-float/2addr p2, p4

    mul-float/2addr v0, p5

    add-float/2addr p3, v0

    sub-float/2addr p0, p2

    float-to-double p4, p0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx7/b;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;FFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "sx",
            "sy",
            "tx",
            "ty"
        }
    .end annotation

    sub-float v0, p4, p2

    sub-float v1, p5, p3

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    div-float/2addr v0, v2

    div-float/2addr v1, v2

    add-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p2, p4

    add-float/2addr p3, p5

    mul-float/2addr p3, p4

    iget p5, p0, Lx7/b;->h:F

    mul-float/2addr p5, p4

    iget v2, p0, Lx7/b;->i:F

    mul-float/2addr v2, p4

    mul-float p4, v0, p5

    add-float v3, p2, p4

    mul-float/2addr p5, v1

    add-float v4, p3, p5

    sub-float/2addr p2, p4

    sub-float/2addr p3, p5

    neg-float p4, v1

    mul-float/2addr p4, v2

    add-float p5, p2, p4

    mul-float/2addr v0, v2

    add-float v1, p3, v0

    sub-float/2addr p2, p4

    sub-float/2addr p3, v0

    iget-object p4, p0, Lx7/b;->e:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lx7/b;->e:Landroid/graphics/Path;

    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p4, p0, Lx7/b;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p4, p0, Lx7/b;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lx7/b;->e:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lx7/b;->e:Landroid/graphics/Path;

    iget-object p3, p0, Lx7/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "sx",
            "sy",
            "tx",
            "ty"
        }
    .end annotation

    sub-float v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    iget-object v0, p0, Lx7/b;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lx7/b;->d:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lx7/b;->d:Landroid/graphics/Path;

    invoke-virtual {p2, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lx7/b;->d:Landroid/graphics/Path;

    iget-object p3, p0, Lx7/b;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Lx7/c;)Lx7/j;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lx7/b;->g:Ljava/util/List;

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

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(FF)Lx7/a;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "px",
            "py"
        }
    .end annotation

    iget v0, p0, Lx7/b;->j:F

    iget-object v1, p0, Lx7/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lx7/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx7/a;

    invoke-virtual {v2}, Lx7/a;->a()Lx7/c;

    move-result-object v3

    invoke-virtual {p0, v3}, Lx7/b;->e(Lx7/c;)Lx7/j;

    move-result-object v3

    invoke-virtual {v2}, Lx7/a;->b()Lx7/c;

    move-result-object v4

    invoke-virtual {p0, v4}, Lx7/b;->e(Lx7/c;)Lx7/j;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lx7/j;->getCenterXInParent()F

    move-result v7

    invoke-virtual {v3}, Lx7/j;->getCenterYInParent()F

    move-result v8

    invoke-virtual {v4}, Lx7/j;->getCenterXInParent()F

    move-result v9

    invoke-virtual {v4}, Lx7/j;->getCenterYInParent()F

    move-result v10

    move v5, p1

    move v6, p2

    invoke-static/range {v5 .. v10}, Lx7/b;->b(FFFFFF)F

    move-result v3

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lengthPx",
            "widthPx"
        }
    .end annotation

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lx7/b;->h:F

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lx7/b;->i:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx7/a;",
            ">;",
            "Ljava/util/List<",
            "Lx7/j;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lx7/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lx7/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lx7/b;->g:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public i(Lx7/j;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "x",
            "y"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx7/b;->n:Z

    iput-object p1, p0, Lx7/b;->k:Lx7/j;

    iput p2, p0, Lx7/b;->l:F

    iput p3, p0, Lx7/b;->m:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lx7/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/a;

    invoke-virtual {v1}, Lx7/a;->a()Lx7/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lx7/b;->e(Lx7/c;)Lx7/j;

    move-result-object v2

    invoke-virtual {v1}, Lx7/a;->b()Lx7/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lx7/b;->e(Lx7/c;)Lx7/j;

    move-result-object v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lx7/j;->getCenterXInParent()F

    move-result v9

    invoke-virtual {v2}, Lx7/j;->getCenterYInParent()F

    move-result v2

    invoke-virtual {v1}, Lx7/j;->getCenterXInParent()F

    move-result v10

    invoke-virtual {v1}, Lx7/j;->getCenterYInParent()F

    move-result v1

    move-object v3, p0

    move-object v4, p1

    move v5, v9

    move v6, v2

    move v7, v10

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lx7/b;->d(Landroid/graphics/Canvas;FFFF)V

    invoke-virtual/range {v3 .. v8}, Lx7/b;->c(Landroid/graphics/Canvas;FFFF)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lx7/b;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lx7/b;->k:Lx7/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx7/j;->getCenterXInParent()F

    move-result v0

    iget-object v1, p0, Lx7/b;->k:Lx7/j;

    invoke-virtual {v1}, Lx7/j;->getCenterYInParent()F

    move-result v7

    iget v5, p0, Lx7/b;->l:F

    iget v6, p0, Lx7/b;->m:F

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lx7/b;->d(Landroid/graphics/Canvas;FFFF)V

    iget v5, p0, Lx7/b;->l:F

    iget v6, p0, Lx7/b;->m:F

    invoke-virtual/range {v1 .. v6}, Lx7/b;->c(Landroid/graphics/Canvas;FFFF)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lx7/b;->f(FF)Lx7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lx7/b;->o:Lx7/b$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lx7/b$a;->a(Lx7/a;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnConnectionTapListener(Lx7/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lx7/b;->o:Lx7/b$a;

    return-void
.end method
