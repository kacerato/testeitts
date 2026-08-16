.class public final Lah/d;
.super Lah/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lah/b<",
        "Lah/d;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineIndicator.kt\norg/anastr/speedviewlib/components/indicators/LineIndicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLineIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineIndicator.kt\norg/anastr/speedviewlib/components/indicators/LineIndicator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
    }
.end annotation


# instance fields
.field public final g:F

.field public final h:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lah/b;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lah/d;->g:F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lah/d;->h:Landroid/graphics/Path;

    const/4 p1, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {p0, p1}, Lah/b;->a(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lah/b;->q(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length must be between [0,1]."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lah/d;->h:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public c()F
    .locals 2

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v0

    iget v1, p0, Lah/d;->g:F

    mul-float/2addr v0, v1

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
    .locals 4

    iget-object v0, p0, Lah/d;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lah/d;->h:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->i()LYg/v;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v2}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lah/d;->h:Landroid/graphics/Path;

    invoke-virtual {p0}, Lah/b;->d()F

    move-result v1

    invoke-virtual {p0}, Lah/b;->e()F

    move-result v2

    iget v3, p0, Lah/d;->g:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lah/b;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lah/b;->g()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lah/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
