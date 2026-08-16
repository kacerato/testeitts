.class public LYg/o;
.super LYg/v;
.source "SourceFile"


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

.field public final L2:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public M2:I

.field public R2:I

.field public V2:Z

.field public i3:F

.field public final v2:Landroid/graphics/Paint;
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

    invoke-direct/range {v1 .. v6}, LYg/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, LYg/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/o;->v2:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/o;->D2:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/o;->F2:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/o;->H2:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, LYg/o;->L2:Landroid/graphics/RectF;

    const p3, -0x111112

    .line 9
    iput p3, p0, LYg/o;->M2:I

    const/4 p3, -0x1

    .line 10
    iput p3, p0, LYg/o;->R2:I

    .line 11
    iput-boolean v0, p0, LYg/o;->V2:Z

    const/high16 p3, 0x41400000    # 12.0f

    .line 12
    invoke-virtual {p0, p3}, LYg/j;->x(F)F

    move-result p3

    iput p3, p0, LYg/o;->i3:F

    .line 13
    invoke-direct {p0}, LYg/o;->B()V

    .line 14
    invoke-direct {p0, p1, p2}, LYg/o;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, LYg/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, LYg/o;->v2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/o;->v2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, LYg/o;->H2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, LYg/o;->z0()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->sx:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x3

    iget v0, p0, LYg/o;->M2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LYg/o;->M2:I

    const/4 p2, 0x2

    iget v0, p0, LYg/o;->R2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LYg/o;->R2:I

    iget-object p2, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    iget v0, p0, LYg/o;->i3:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, LYg/o;->setCenterCircleRadius(F)V

    const/4 p2, 0x4

    iget-boolean v0, p0, LYg/o;->V2:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LYg/o;->V2:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, LYg/o;->z0()V

    return-void
.end method

.method private final G0()V
    .locals 2

    iget-object v0, p0, LYg/o;->v2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/o;->v2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/o;->J0()Landroid/graphics/SweepGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private final z0()V
    .locals 2

    iget-object v0, p0, LYg/o;->D2:Landroid/graphics/Paint;

    iget v1, p0, LYg/o;->R2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final H0()Z
    .locals 1

    iget-boolean v0, p0, LYg/o;->V2:Z

    return v0
.end method

.method public final I0()V
    .locals 10

    iget v0, p0, LYg/o;->R2:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, LYg/o;->R2:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, LYg/o;->R2:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xa0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget v1, p0, LYg/o;->R2:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, LYg/o;->R2:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, LYg/o;->R2:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v9, Landroid/graphics/RadialGradient;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v2

    mul-float/2addr v2, v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {p0, v5}, LYg/j;->x(F)F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p0, v5}, LYg/j;->x(F)F

    move-result v3

    add-float v5, v2, v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x2

    new-array v7, v1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v9

    move v3, v4

    move v4, v6

    move-object v6, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, LYg/o;->F2:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final J0()Landroid/graphics/SweepGradient;
    .locals 11

    iget v0, p0, LYg/o;->M2:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, LYg/o;->M2:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, LYg/o;->M2:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x96

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    iget v0, p0, LYg/o;->M2:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, LYg/o;->M2:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, LYg/o;->M2:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xdc

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iget v0, p0, LYg/o;->M2:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, LYg/o;->M2:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, LYg/o;->M2:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0x46

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    iget v0, p0, LYg/o;->M2:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, LYg/o;->M2:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, LYg/o;->M2:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {p0}, LYg/j;->getOffsetSpeed()F

    move-result v0

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float v10, v4, v3

    iget v6, p0, LYg/o;->M2:I

    move v4, v9

    filled-new-array/range {v4 .. v9}, [I

    move-result-object v4

    mul-float v5, v0, v3

    const/4 v6, 0x6

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v5, 0x2

    aput v0, v6, v5

    const/4 v5, 0x3

    aput v0, v6, v5

    const v0, 0x3f7d70a4    # 0.99f

    const/4 v5, 0x4

    aput v0, v6, v5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, 0x5

    aput v0, v6, v5

    invoke-direct {v1, v2, v10, v4, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public d0()V
    .locals 2

    invoke-virtual {p0}, LYg/v;->v()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-direct {p0}, LYg/o;->G0()V

    invoke-virtual {p0, v0}, LYg/v;->s0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/v;->getTickNumber()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, LYg/v;->u0(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LYg/v;->p0(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final getCenterCircleColor()I
    .locals 1

    iget-object v0, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getCenterCircleRadius()F
    .locals 1

    iget v0, p0, LYg/o;->i3:F

    return v0
.end method

.method public final getPointerColor()I
    .locals 1

    iget v0, p0, LYg/o;->R2:I

    return v0
.end method

.method public final getSpeedometerColor()I
    .locals 1

    iget v0, p0, LYg/o;->M2:I

    return v0
.end method

.method public o0()V
    .locals 3

    const/16 v0, 0x8

    invoke-super {p0, v0}, LYg/v;->setMarksNumber(I)V

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, LYg/j;->x(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-super {p0, v0}, LYg/v;->setMarksPadding(F)V

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, LYg/j;->x(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-super {p0, v0}, LYg/v;->setTickPadding(F)V

    sget-object v0, LZg/b;->ROUND:LZg/b;

    invoke-super {p0, v0}, LYg/v;->setMarkStyle(LZg/b;)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/v;->setMarkHeight(F)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/v;->setMarkWidth(F)V

    new-instance v0, Lah/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lah/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, LYg/v;->setIndicator(Lah/b;)V

    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lah/b;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lah/b;->q(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lah/b;->m(I)V

    const v0, -0xb73317

    invoke-super {p0, v0}, LYg/v;->setBackgroundCircleColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/v;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, LYg/o;->G0()V

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v0

    iget-object v1, p0, LYg/o;->L2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v0, v1}, Lch/a;->b(FF)F

    move-result v0

    iget-object v2, p0, LYg/o;->L2:Landroid/graphics/RectF;

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, v0

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v1

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    sub-float v4, v1, v0

    const/4 v5, 0x0

    iget-object v6, p0, LYg/o;->v2:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, LYg/o;->V2:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {p0}, LYg/v;->getDegree()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, LYg/j;->x(F)F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0, v3}, LYg/j;->x(F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, LYg/o;->F2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0, v3}, LYg/j;->x(F)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v3

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, LYg/j;->x(F)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, LYg/o;->D2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p0, p1}, LYg/j;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->q0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, LYg/o;->getCenterCircleColor()I

    move-result v0

    iget-object v2, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, LYg/o;->i3:F

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {p0, v5}, LYg/j;->x(F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v1, p0, LYg/o;->i3:F

    iget-object v3, p0, LYg/o;->H2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, LYg/v;->t0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LYg/v;->onSizeChanged(IIII)V

    invoke-virtual {p0}, LYg/v;->getSpeedometerWidth()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p0, p2}, LYg/j;->x(F)F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, LYg/o;->L2:Landroid/graphics/RectF;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p1

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, LYg/o;->I0()V

    invoke-virtual {p0}, LYg/o;->d0()V

    return-void
.end method

.method public final setCenterCircleColor(I)V
    .locals 1

    iget-object v0, p0, LYg/o;->H2:Landroid/graphics/Paint;

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

    iput p1, p0, LYg/o;->i3:F

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPointerColor(I)V
    .locals 1

    iput p1, p0, LYg/o;->R2:I

    iget-object v0, p0, LYg/o;->D2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/o;->I0()V

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setSpeedometerColor(I)V
    .locals 0

    iput p1, p0, LYg/o;->M2:I

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setWithPointer(Z)V
    .locals 0

    iput-boolean p1, p0, LYg/o;->V2:Z

    invoke-virtual {p0}, LYg/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/v;->setSpeedometerWidth(F)V

    const/4 v0, -0x1

    invoke-super {p0, v0}, LYg/j;->setTextColor(I)V

    invoke-super {p0, v0}, LYg/j;->setSpeedTextColor(I)V

    invoke-super {p0, v0}, LYg/j;->setUnitTextColor(I)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/j;->setSpeedTextSize(F)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/j;->setUnitTextSize(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, LYg/j;->setSpeedTextTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
