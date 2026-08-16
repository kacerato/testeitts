.class public final Lah/i;
.super Lah/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah/b<",
        "Lah/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    iput-object p1, p0, Lah/i;->g:Landroid/graphics/Path;

    const/high16 p1, 0x41800000    # 16.0f

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

    iget-object v0, p0, Lah/i;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

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
    .locals 7

    iget-object v0, p0, Lah/i;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lah/i;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lah/i;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v2

    const v3, 0x3eae147b    # 0.34f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v4}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v4

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v5

    const v6, 0x3e3851ec    # 0.18f

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v6}, LYg/j;->getPadding()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lah/i;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lah/b;->k()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v3}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v3

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
