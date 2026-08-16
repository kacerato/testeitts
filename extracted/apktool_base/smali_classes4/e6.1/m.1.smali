.class public Le6/m;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public d:Landroid/graphics/CornerPathEffect;

.field public e:F

.field public f:F

.field public g:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le6/E;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le6/K;

.field public j:F

.field public k:F

.field public l:Z


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

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le6/m;->b:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le6/m;->c:Landroid/graphics/Path;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Le6/m;->e:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Le6/m;->f:F

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le6/m;->h:Ljava/util/Map;

    .line 7
    invoke-virtual {p0}, Le6/m;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Le6/m;->b:Landroid/graphics/Paint;

    .line 10
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le6/m;->c:Landroid/graphics/Path;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Le6/m;->e:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 12
    iput p1, p0, Le6/m;->f:F

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le6/m;->h:Ljava/util/Map;

    .line 14
    invoke-virtual {p0}, Le6/m;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Le6/m;->i:Le6/K;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le6/m;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;FFFF)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "sx",
            "sy",
            "tx",
            "ty"
        }
    .end annotation

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    sub-float v1, v4, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v5, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    iget v9, v0, Le6/m;->e:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v7, v6

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v9, v8

    cmpg-float v7, v7, v9

    if-gez v7, :cond_0

    iget-object v6, v0, Le6/m;->b:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, LNc/b;->k0(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    const/high16 v9, 0x430c0000    # 140.0f

    invoke-static {v9}, LNc/b;->k0(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, LNc/b;->k0(F)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v7, v11, v9}, LNc/b;->E(FFF)F

    move-result v9

    invoke-static {v10}, LNc/b;->k0(F)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v10

    cmpg-float v8, v6, v8

    if-gez v8, :cond_1

    sub-float/2addr v6, v10

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v9, v6

    if-gtz v7, :cond_2

    iget-object v6, v0, Le6/m;->b:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v6, v9

    add-float v1, v2, v6

    sub-float v6, v4, v6

    iget-object v7, v0, Le6/m;->c:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Le6/m;->c:Landroid/graphics/Path;

    invoke-virtual {v7, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Le6/m;->c:Landroid/graphics/Path;

    invoke-virtual {v2, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Le6/m;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Le6/m;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Le6/m;->b:Landroid/graphics/Paint;

    iget-object v2, v0, Le6/m;->d:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, v0, Le6/m;->c:Landroid/graphics/Path;

    iget-object v2, v0, Le6/m;->b:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Le6/m;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public final c(Le6/K;)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v2, v0, v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    aget v0, v0, v3

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr v0, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    invoke-static {}, Lga/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Le6/m;->h()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Le6/m;->b:Landroid/graphics/Paint;

    invoke-static {}, Lga/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphData",
            "nodeViewMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le6/E;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le6/m;->g:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Le6/m;->h:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public g(Le6/K;FF)V
    .locals 0
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

    iput-object p1, p0, Le6/m;->i:Le6/K;

    iput p2, p0, Le6/m;->j:F

    iput p3, p0, Le6/m;->k:F

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Le6/m;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final h()V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x38d1b717    # 1.0E-4f

    iget v2, p0, Le6/m;->e:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Le6/m;->f:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Le6/m;->d:Landroid/graphics/CornerPathEffect;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Le6/m;->f:F

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Le6/m;->f:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Le6/m;->d:Landroid/graphics/CornerPathEffect;

    return-void
.end method

.method public i()V
    .locals 1

    iget-boolean v0, p0, Le6/m;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, v6, Le6/m;->g:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->connections:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    iget-object v1, v6, Le6/m;->h:Ljava/util/Map;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    iget-object v2, v6, Le6/m;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toNodeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le6/E;

    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-virtual {v1, v3}, Le6/E;->i0(I)Le6/K;

    move-result-object v1

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->toSlot:I

    invoke-virtual {v2, v0}, Le6/E;->h0(I)Le6/K;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v1}, Le6/m;->c(Le6/K;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v6, v0}, Le6/m;->c(Le6/K;)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Le6/K;->getType()Lga/H;

    move-result-object v1

    invoke-static {v1}, Lga/e;->a(Lga/H;)I

    move-result v14

    invoke-virtual {v0}, Le6/K;->getType()Lga/H;

    move-result-object v0

    invoke-static {v0}, Lga/e;->a(Lga/H;)I

    move-result v15

    iget-object v0, v6, Le6/m;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->x:F

    iget v13, v3, Landroid/graphics/PointF;->y:F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Le6/m;->b(Landroid/graphics/Canvas;FFFF)V

    iget-object v0, v6, Le6/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0

    :cond_5
    iget-object v0, v6, Le6/m;->g:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->branchConnections:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, v6, Le6/m;->h:Ljava/util/Map;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/E;

    iget-object v2, v6, Le6/m;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toNodeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le6/E;

    if-eqz v1, :cond_6

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->fromSlot:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Le6/E;->getBranchOutputSocket()Le6/K;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v3}, Le6/E;->i0(I)Le6/K;

    move-result-object v1

    :goto_2
    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeBranchConnection;->toSlot:I

    if-ne v0, v4, :cond_a

    invoke-virtual {v2}, Le6/E;->getBranchInputSocket()Le6/K;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v0}, Le6/E;->h0(I)Le6/K;

    move-result-object v0

    :goto_3
    if-eqz v1, :cond_6

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v6, v1}, Le6/m;->c(Le6/K;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v6, v0}, Le6/m;->c(Le6/K;)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v2, :cond_6

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v1}, Le6/K;->getType()Lga/H;

    move-result-object v1

    invoke-static {v1}, Lga/e;->a(Lga/H;)I

    move-result v14

    invoke-virtual {v0}, Le6/K;->getType()Lga/H;

    move-result-object v0

    invoke-static {v0}, Lga/e;->a(Lga/H;)I

    move-result v15

    iget-object v0, v6, Le6/m;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->x:F

    iget v13, v3, Landroid/graphics/PointF;->y:F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Le6/m;->b(Landroid/graphics/Canvas;FFFF)V

    iget-object v0, v6, Le6/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1

    :cond_d
    iget-boolean v0, v6, Le6/m;->l:Z

    if-eqz v0, :cond_e

    iget-object v0, v6, Le6/m;->i:Le6/K;

    if-eqz v0, :cond_e

    invoke-virtual {v6, v0}, Le6/m;->c(Le6/K;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v6, Le6/m;->b:Landroid/graphics/Paint;

    iget-object v2, v6, Le6/m;->i:Le6/K;

    invoke-virtual {v2}, Le6/K;->getType()Lga/H;

    move-result-object v2

    invoke-static {v2}, Lga/e;->a(Lga/H;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v6, Le6/m;->j:F

    iget v5, v6, Le6/m;->k:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Le6/m;->b(Landroid/graphics/Canvas;FFFF)V

    :cond_e
    return-void
.end method

.method public setGraphScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphScale"
        }
    .end annotation

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Le6/m;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Le6/m;->e:F

    invoke-virtual {p0}, Le6/m;->h()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
