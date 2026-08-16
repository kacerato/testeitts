.class public final Lah/e;
.super Lah/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah/b<",
        "Lah/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lah/b;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lah/e;->g:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lah/e;->h:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lah/e;->i:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lah/b;->a(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lah/b;->q(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lah/e;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lah/e;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lah/e;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lah/e;->j:F

    return v0
.end method

.method public r(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object p1

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41700000    # 15.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    return-void
.end method

.method public s()V
    .locals 7

    iget-object v0, p0, Lah/e;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lah/e;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lah/e;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v2}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4070400000000000L    # 260.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, LYg/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lah/e;->j:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, LYg/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lah/e;->g:Landroid/graphics/Path;

    iget v2, p0, Lah/e;->j:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v2

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v3

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v5

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lah/e;->g:Landroid/graphics/Path;

    const/high16 v2, 0x43820000    # 260.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lah/e;->h:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v2

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v3

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v5

    mul-float/2addr v4, v0

    sub-float/2addr v5, v4

    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v5, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lah/e;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lah/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
