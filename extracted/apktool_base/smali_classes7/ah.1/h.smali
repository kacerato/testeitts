.class public final Lah/h;
.super Lah/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah/b<",
        "Lah/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:F


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

    iput-object p1, p0, Lah/h;->g:Landroid/graphics/Path;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {p0, p1}, Lah/b;->a(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lah/b;->q(F)V

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

    iget-object v0, p0, Lah/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lah/h;->h:F

    return v0
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, LYg/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

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
    .locals 6

    iget-object v0, p0, Lah/h;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lah/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v4}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, LYg/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lah/h;->h:F

    iget-object v0, p0, Lah/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lah/h;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lah/h;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lah/h;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lah/h;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v3

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lah/h;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lah/h;->g:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
