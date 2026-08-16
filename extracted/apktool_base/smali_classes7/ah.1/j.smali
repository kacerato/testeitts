.class public final Lah/j;
.super Lah/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah/b<",
        "Lah/j;",
        ">;"
    }
.end annotation


# instance fields
.field public g:Landroid/graphics/Path;
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

    iput-object p1, p0, Lah/j;->g:Landroid/graphics/Path;

    const/high16 p1, 0x41c80000    # 25.0f

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

    iget-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lah/j;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lah/j;->h:F

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
    .locals 12

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, LYg/j;->getPadding()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, LYg/v;->getSpeedometerWidth()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v1}, Lah/b;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lah/j;->h:F

    iget-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    iget v2, p0, Lah/j;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lah/j;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lah/j;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lah/j;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v5

    iget v6, p0, Lah/j;->h:F

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v7

    iget v1, p0, Lah/j;->h:F

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v2

    add-float v8, v1, v2

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v9

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
