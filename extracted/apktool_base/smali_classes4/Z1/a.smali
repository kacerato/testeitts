.class public LZ1/a;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final q:D

.field public static final r:F = 1.5f

.field public static final s:F = 0.25f

.field public static final t:F = 0.5f

.field public static final u:F = 1.0f


# instance fields
.field public final a:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public d:F

.field public e:Landroid/graphics/Path;

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public n:Z

.field public o:F

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, LZ1/a;->q:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, LZ1/a;->j:Z

    iput-boolean p2, p0, LZ1/a;->n:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, LZ1/a;->p:Z

    sget v0, Lw1/a$e;->z0:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, LZ1/a;->k:I

    sget v0, Lw1/a$e;->y0:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, LZ1/a;->l:I

    sget v0, Lw1/a$e;->x0:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, LZ1/a;->m:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, LZ1/a;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, LZ1/a;->d:F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, LZ1/a;->c:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, LZ1/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p4, p5}, LZ1/a;->u(FF)V

    return-void
.end method

.method public static c(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, LZ1/a;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method public static d(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, LZ1/a;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method

.method public static v(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LZ1/a;->g:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    iget-object v2, p0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, LZ1/a;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, LZ1/a;->b()V

    return-void
.end method

.method public final b()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, LZ1/a;->d:F

    neg-float v5, v4

    neg-float v6, v4

    invoke-direct {v3, v5, v6, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v5, v0, LZ1/a;->h:F

    neg-float v6, v5

    neg-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget v6, v0, LZ1/a;->d:F

    neg-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget v6, v0, LZ1/a;->h:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v5, v4, v6, v8, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v3, v6, v8, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v5, v0, LZ1/a;->e:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    iget v5, v4, Landroid/graphics/RectF;->top:F

    neg-float v11, v5

    cmpl-float v5, v11, v7

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_1

    iget v5, v0, LZ1/a;->d:F

    div-float/2addr v5, v11

    sub-float v8, v6, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v5

    iget-object v15, v0, LZ1/a;->a:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/RadialGradient;

    iget v9, v0, LZ1/a;->k:I

    iget v10, v0, LZ1/a;->l:I

    iget v12, v0, LZ1/a;->m:I

    filled-new-array {v2, v9, v10, v12}, [I

    move-result-object v12

    const/4 v9, 0x4

    new-array v13, v9, [F

    aput v7, v13, v2

    const/4 v7, 0x1

    aput v5, v13, v7

    const/4 v5, 0x2

    aput v8, v13, v5

    aput v6, v13, v1

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v14

    move-object v6, v14

    move-object v14, v5

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget-object v5, v0, LZ1/a;->b:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget v8, v3, Landroid/graphics/RectF;->top:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    iget v3, v0, LZ1/a;->k:I

    iget v4, v0, LZ1/a;->l:I

    iget v6, v0, LZ1/a;->m:I

    filled-new-array {v3, v4, v6}, [I

    move-result-object v11

    new-array v12, v1, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, LZ1/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, LZ1/a;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZ1/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, LZ1/a;->a(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZ1/a;->j:Z

    :cond_0
    invoke-virtual {p0, p1}, LZ1/a;->f(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget v1, v0, LZ1/a;->o:F

    iget-object v2, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v9, v0, LZ1/a;->d:F

    neg-float v1, v9

    iget v2, v0, LZ1/a;->h:F

    sub-float v10, v1, v2

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v11, v9, v2

    sub-float/2addr v1, v11

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    :goto_0
    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v11

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v3

    :goto_1
    iget v1, v0, LZ1/a;->i:F

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v1

    sub-float v2, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    sub-float v3, v1, v3

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v4, v1, v14

    sub-float/2addr v1, v4

    add-float/2addr v3, v9

    div-float v15, v9, v3

    add-float/2addr v2, v9

    div-float v6, v9, v2

    add-float/2addr v1, v9

    div-float v5, v9, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v9

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget-object v2, v0, LZ1/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_2

    div-float v1, v14, v15

    invoke-virtual {v7, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v16, v1, v11

    iget v1, v0, LZ1/a;->d:F

    neg-float v3, v1

    iget-object v2, v0, LZ1/a;->b:Landroid/graphics/Paint;

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move v3, v10

    move v14, v4

    move/from16 v4, v16

    move/from16 v19, v5

    move/from16 v5, v17

    move/from16 v16, v8

    move v8, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move v14, v4

    move/from16 v19, v5

    move/from16 v16, v8

    move v8, v6

    :goto_2
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v9

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v6, v19

    invoke-virtual {v7, v15, v6}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget-object v2, v0, LZ1/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v12, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, v15

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, LZ1/a;->d:F

    neg-float v1, v1

    iget v2, v0, LZ1/a;->h:F

    add-float v5, v1, v2

    iget-object v12, v0, LZ1/a;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v10

    move/from16 v17, v8

    move v8, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move/from16 v17, v8

    move v8, v6

    :goto_3
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v9

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v15, v8}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget-object v2, v0, LZ1/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v8

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, LZ1/a;->d:F

    neg-float v5, v1

    iget-object v6, v0, LZ1/a;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v9

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v9, v17

    invoke-virtual {v7, v15, v9}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, LZ1/a;->e:Landroid/graphics/Path;

    iget-object v2, v0, LZ1/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v9

    invoke-virtual {v7, v14, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, LZ1/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v11

    iget v1, v0, LZ1/a;->d:F

    neg-float v5, v1

    iget-object v6, v0, LZ1/a;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v1, v16

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public g()F
    .locals 1

    iget v0, p0, LZ1/a;->d:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, LZ1/a;->g:F

    return v0
.end method

.method public i()F
    .locals 5

    iget v0, p0, LZ1/a;->g:F

    iget v1, p0, LZ1/a;->d:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v4

    iget v1, p0, LZ1/a;->g:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public j()F
    .locals 4

    iget v0, p0, LZ1/a;->g:F

    iget v1, p0, LZ1/a;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, LZ1/a;->g:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public l(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LZ1/a;->g:F

    iget v1, p0, LZ1/a;->d:F

    iget-boolean v2, p0, LZ1/a;->n:Z

    invoke-static {v0, v1, v2}, LZ1/a;->d(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, LZ1/a;->g:F

    iget v2, p0, LZ1/a;->d:F

    iget-boolean v3, p0, LZ1/a;->n:Z

    invoke-static {v1, v2, v3}, LZ1/a;->c(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public m()F
    .locals 1

    iget v0, p0, LZ1/a;->i:F

    return v0
.end method

.method public n(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LZ1/a;->j:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, LZ1/a;->n:Z

    invoke-virtual {p0}, LZ1/a;->invalidateSelf()V

    return-void
.end method

.method public p(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    iget-object v0, p0, LZ1/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, LZ1/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public q(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, LZ1/a;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, LZ1/a;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, LZ1/a;->j:Z

    invoke-virtual {p0}, LZ1/a;->invalidateSelf()V

    return-void
.end method

.method public r(F)V
    .locals 1

    iget v0, p0, LZ1/a;->i:F

    invoke-virtual {p0, v0, p1}, LZ1/a;->u(FF)V

    return-void
.end method

.method public final s(F)V
    .locals 1

    iget v0, p0, LZ1/a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, LZ1/a;->o:F

    invoke-virtual {p0}, LZ1/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public t(F)V
    .locals 1

    iget v0, p0, LZ1/a;->g:F

    invoke-virtual {p0, p1, v0}, LZ1/a;->u(FF)V

    return-void
.end method

.method public u(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    invoke-static {p1}, LZ1/a;->v(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, LZ1/a;->v(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-boolean p1, p0, LZ1/a;->p:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, LZ1/a;->p:Z

    :cond_0
    move p1, p2

    :cond_1
    iget v0, p0, LZ1/a;->i:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, LZ1/a;->g:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, LZ1/a;->i:F

    iput p2, p0, LZ1/a;->g:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, LZ1/a;->h:F

    iput p2, p0, LZ1/a;->f:F

    iput-boolean v1, p0, LZ1/a;->j:Z

    invoke-virtual {p0}, LZ1/a;->invalidateSelf()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid shadow size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
