.class public LYg/q;
.super LYg/v;
.source "SourceFile"


# instance fields
.field public final D2:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F2:Landroid/graphics/Path;
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

.field public final M2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final R2:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public V2:Z

.field public i3:I

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

    invoke-direct/range {v1 .. v6}, LYg/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, LYg/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    iput-object p3, p0, LYg/q;->v2:Landroid/graphics/Path;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/q;->D2:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/q;->F2:Landroid/graphics/Path;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/q;->H2:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/q;->L2:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/q;->M2:Landroid/graphics/Paint;

    .line 10
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/q;->R2:Landroid/graphics/Paint;

    .line 11
    iput-boolean v0, p0, LYg/q;->V2:Z

    const/4 p3, 0x5

    .line 12
    iput p3, p0, LYg/q;->i3:I

    .line 13
    invoke-direct {p0}, LYg/q;->B()V

    .line 14
    invoke-direct {p0, p1, p2}, LYg/q;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LYg/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 4

    iget-object v0, p0, LYg/q;->H2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/q;->H2:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p0, v2}, LYg/j;->x(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, LYg/j;->x(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/q;->R2:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {p0, v1}, LYg/j;->x(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/q;->R2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LYg/q;->M2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-boolean v0, p0, LYg/q;->V2:Z

    invoke-virtual {p0, v0}, LYg/q;->setWithEffects(Z)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->Rz:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, LYg/q;->i3:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget-object v0, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget-object v1, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/q;->M2:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x4

    iget-boolean v1, p0, LYg/q;->V2:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, LYg/q;->V2:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, LYg/q;->V2:Z

    invoke-virtual {p0, p1}, LYg/q;->setWithEffects(Z)V

    if-gt v2, p2, :cond_1

    const/16 p1, 0x15

    if-ge p2, p1, :cond_1

    iput p2, p0, LYg/q;->i3:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final G0()Z
    .locals 1

    iget-boolean v0, p0, LYg/q;->V2:Z

    return v0
.end method

.method public final H0()V
    .locals 4

    iget-object v0, p0, LYg/q;->v2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, LYg/q;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, LYg/q;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public d0()V
    .locals 9

    invoke-virtual {p0}, LYg/v;->v()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p0}, LYg/q;->H0()V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x404ccccd    # 3.2f

    div-float/2addr v4, v5

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x400ccccd    # 2.2f

    div-float/2addr v2, v4

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const v6, 0x40066666    # 2.1f

    div-float/2addr v2, v6

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x40733333    # 3.8f

    div-float/2addr v4, v6

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/q;->F2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3fe66666    # 1.8f

    div-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSizePa()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x42680000    # 58.0f

    invoke-virtual {v0, v3, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, LYg/q;->D2:Landroid/graphics/Path;

    iget-object v3, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, LYg/q;->F2:Landroid/graphics/Path;

    iget-object v3, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0, v0}, LYg/v;->s0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/v;->getTickNumber()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, LYg/v;->u0(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, LYg/v;->p0(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public final getDegreeBetweenMark()I
    .locals 1

    iget v0, p0, LYg/q;->i3:I

    return v0
.end method

.method public final getRayColor()I
    .locals 1

    iget-object v0, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getRayMarkWidth()F
    .locals 1

    iget-object v0, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public final getSpeedBackgroundColor()I
    .locals 1

    iget-object v0, p0, LYg/q;->M2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public o0()V
    .locals 1

    const v0, -0xdededf

    invoke-super {p0, v0}, LYg/v;->setBackgroundCircleColor(I)V

    const/high16 v0, -0x1000000

    invoke-super {p0, v0}, LYg/v;->setMarkColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/v;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, LYg/v;->getDegree()F

    move-result v1

    int-to-float v4, v0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_0

    iget-object v1, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getMarkColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, LYg/q;->v2:Landroid/graphics/Path;

    iget-object v3, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, LYg/q;->i3:I

    int-to-float v1, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v1, p0, LYg/q;->i3:I

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LYg/j;->getCurrentSection()LZg/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/j;->getCurrentSection()LZg/a;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v4}, LZg/a;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, LYg/q;->L2:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v1, p0, LYg/q;->v2:Landroid/graphics/Path;

    iget-object v4, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, LYg/q;->i3:I

    int-to-float v1, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v1, p0, LYg/q;->i3:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, LYg/j;->getSpeedUnitTextBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, LYg/q;->M2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, LYg/j;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->q0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->t0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LYg/v;->onSizeChanged(IIII)V

    invoke-virtual {p0}, LYg/q;->H0()V

    invoke-virtual {p0}, LYg/q;->d0()V

    return-void
.end method

.method public final setDegreeBetweenMark(I)V
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, LYg/q;->i3:I

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
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

    iget-boolean v0, p0, LYg/q;->V2:Z

    invoke-virtual {p1, v0}, Lah/b;->t(Z)V

    return-void
.end method

.method public final setRayColor(I)V
    .locals 1

    iget-object v0, p0, LYg/q;->R2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setRayMarkWidth(F)V
    .locals 1

    iget-object v0, p0, LYg/q;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setSpeedBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, LYg/q;->M2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setWithEffects(Z)V
    .locals 3

    iput-boolean p1, p0, LYg/q;->V2:Z

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lah/b;->t(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, LYg/q;->R2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/q;->L2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/q;->M2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, LYg/q;->R2:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/q;->L2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object p1, p0, LYg/q;->M2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, -0x1

    invoke-super {p0, v0}, LYg/j;->setTextColor(I)V

    return-void
.end method
