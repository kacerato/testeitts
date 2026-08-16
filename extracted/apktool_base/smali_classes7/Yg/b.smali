.class public LYg/b;
.super LYg/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeluxeSpeedView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1915#2,2:208\n1915#2,2:210\n*S KotlinDebug\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n*L\n122#1:208,2\n166#1:210,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDeluxeSpeedView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,207:1\n1915#2,2:208\n1915#2,2:210\n*S KotlinDebug\n*F\n+ 1 DeluxeSpeedView.kt\norg/anastr/speedviewlib/DeluxeSpeedView\n*L\n122#1:208,2\n166#1:210,2\n*E\n"
    }
.end annotation


# instance fields
.field public final D2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final H2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final L2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final M2:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public R2:Z

.field public V2:F

.field public final v2:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LYg/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LYg/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LLf/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, LYg/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/b;->v2:Landroid/graphics/Path;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/b;->D2:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/b;->F2:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/b;->H2:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/b;->L2:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, LYg/b;->M2:Landroid/graphics/RectF;

    .line 10
    iput-boolean v0, p0, LYg/b;->R2:Z

    const/high16 p3, 0x41a00000    # 20.0f

    .line 11
    invoke-virtual {p0, p3}, LYg/j;->x(F)F

    move-result p3

    iput p3, p0, LYg/b;->V2:F

    .line 12
    invoke-direct {p0}, LYg/b;->B()V

    .line 13
    invoke-direct {p0, p1, p2}, LYg/b;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LYg/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, LYg/b;->F2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/b;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/b;->L2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LYg/b;->D2:Landroid/graphics/Paint;

    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, LYg/b;->R2:Z

    invoke-virtual {p0, v0}, LYg/b;->setWithEffects(Z)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, LYg/b;->z0()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->Ri:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LYg/b;->L2:Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x4

    iget-boolean v0, p0, LYg/b;->R2:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LYg/b;->R2:Z

    iget-object p2, p0, LYg/b;->D2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    iget v0, p0, LYg/b;->V2:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/b;->setCenterCircleRadius(F)V

    const/4 p2, 0x2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZg/a;

    invoke-static {}, LZg/b;->values()[LZg/b;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, LZg/a;->t(LZg/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, LYg/b;->R2:Z

    invoke-virtual {p0, p1}, LYg/b;->setWithEffects(Z)V

    invoke-virtual {p0}, LYg/b;->z0()V

    return-void
.end method

.method private final G0()V
    .locals 2

    iget-object v0, p0, LYg/b;->F2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/b;->H2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getMarkColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final H0()Z
    .locals 1

    iget-boolean v0, p0, LYg/b;->R2:Z

    return v0
.end method

.method public d0()V
    .locals 9

    invoke-virtual {p0}, LYg/v;->v()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-direct {p0}, LYg/b;->G0()V

    invoke-virtual {p0}, LYg/j;->getViewSizePa()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    iget-object v1, p0, LYg/b;->v2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LYg/b;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v2, v7

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/b;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, LYg/b;->H2:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZg/a;

    invoke-virtual {v0}, LZg/a;->h()F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, LZg/a;->e()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, LYg/b;->M2:Landroid/graphics/RectF;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, LYg/b;->F2:Landroid/graphics/Paint;

    invoke-virtual {v0}, LZg/a;->h()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, LYg/b;->F2:Landroid/graphics/Paint;

    invoke-virtual {v0}, LZg/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, LZg/a;->f()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0}, LZg/a;->d()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    sub-float v3, v1, v3

    invoke-virtual {v0}, LZg/a;->g()LZg/b;

    move-result-object v1

    sget-object v4, LZg/b;->ROUND:LZg/b;

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, LZg/a;->h()F

    move-result v0

    iget-object v1, p0, LYg/b;->M2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v0, v1}, Lch/a;->b(FF)F

    move-result v0

    iget-object v1, p0, LYg/b;->F2:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, LYg/b;->M2:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    sub-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, LYg/b;->F2:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, LYg/b;->F2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, LYg/b;->M2:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, LYg/b;->F2:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v6, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, LYg/b;->v2:Landroid/graphics/Path;

    iget-object v3, p0, LYg/b;->H2:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-float/2addr v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, v6}, LYg/v;->s0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/v;->getTickNumber()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v6}, LYg/v;->u0(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v6}, LYg/v;->p0(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public final getCenterCircleColor()I
    .locals 1

    iget-object v0, p0, LYg/b;->D2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getCenterCircleRadius()F
    .locals 1

    iget v0, p0, LYg/b;->V2:F

    return v0
.end method

.method public final getSpeedBackgroundColor()I
    .locals 1

    iget-object v0, p0, LYg/b;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public o0()V
    .locals 3

    new-instance v0, Lah/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lah/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, LYg/v;->setIndicator(Lah/b;)V

    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object v0

    const v1, -0xff0014

    invoke-virtual {v0, v1}, Lah/b;->m(I)V

    const v0, -0xdededf

    invoke-super {p0, v0}, LYg/v;->setBackgroundCircleColor(I)V

    const/16 v0, 0x8

    invoke-super {p0, v0}, LYg/v;->setMarksNumber(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/v;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/j;->getSpeedUnitTextBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, LYg/b;->L2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, LYg/j;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->q0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p0, LYg/b;->V2:F

    iget-object v3, p0, LYg/b;->D2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, LYg/v;->t0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LYg/v;->onSizeChanged(IIII)V

    invoke-virtual {p0}, LYg/b;->d0()V

    return-void
.end method

.method public final setCenterCircleColor(I)V
    .locals 1

    iget-object v0, p0, LYg/b;->D2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCenterCircleRadius(F)V
    .locals 0

    iput p1, p0, LYg/b;->V2:F

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicator(Lah/b$b;)V
    .locals 1
    .param p1    # Lah/b$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/v;->setIndicator(Lah/b$b;)V

    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object p1

    iget-boolean v0, p0, LYg/b;->R2:Z

    invoke-virtual {p1, v0}, Lah/b;->t(Z)V

    return-void
.end method

.method public final setSpeedBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, LYg/b;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setWithEffects(Z)V
    .locals 3

    iput-boolean p1, p0, LYg/b;->R2:Z

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lah/b;->t(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LYg/v;->getMarkPaint()Landroid/graphics/Paint;

    move-result-object p1

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/b;->L2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/b;->D2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LYg/v;->getMarkPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/b;->L2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/b;->D2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public w()V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, v0}, LYg/j;->setTextColor(I)V

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZg/a;

    const v1, -0xc878d1

    invoke-virtual {v0, v1}, LZg/a;->l(I)V

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZg/a;

    const v1, -0x5c7dcc

    invoke-virtual {v0, v1}, LZg/a;->l(I)V

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZg/a;

    const v1, -0x64dfe0

    invoke-virtual {v0, v1}, LZg/a;->l(I)V

    return-void
.end method

.method public final z0()V
    .locals 0

    return-void
.end method
