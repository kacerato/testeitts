.class public LYg/a;
.super LYg/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwesomeSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1924#2,3:189\n*S KotlinDebug\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n*L\n154#1:189,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nAwesomeSpeedometer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1924#2,3:189\n*S KotlinDebug\n*F\n+ 1 AwesomeSpeedometer.kt\norg/anastr/speedviewlib/AwesomeSpeedometer\n*L\n154#1:189,3\n*E\n"
    }
.end annotation


# instance fields
.field public final D2:Landroid/graphics/Path;
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

.field public R2:I

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

    invoke-direct/range {v1 .. v6}, LYg/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, LYg/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    iput-object p3, p0, LYg/a;->v2:Landroid/graphics/Path;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/a;->D2:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/a;->F2:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/a;->H2:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/a;->L2:Landroid/graphics/Paint;

    .line 9
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, LYg/a;->M2:Landroid/graphics/RectF;

    const p3, -0xff191a

    .line 10
    iput p3, p0, LYg/a;->R2:I

    .line 11
    invoke-direct {p0}, LYg/a;->B()V

    .line 12
    invoke-direct {p0, p1, p2}, LYg/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LYg/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 3

    iget-object v0, p0, LYg/a;->F2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, LYg/j;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, LYg/a;->H2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LYg/a;->L2:Landroid/graphics/Paint;

    const v1, -0xc6b655

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->e4:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, LYg/a;->R2:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LYg/a;->R2:I

    iget-object p2, p0, LYg/a;->L2:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final G0(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LYg/v;->getEndDegree()I

    move-result v0

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, LYg/v;->getTicks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lpf/H;->b0()V

    :cond_0
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v0

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-virtual {p1, v2, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, LYg/a;->D2:Landroid/graphics/Path;

    iget-object v6, p0, LYg/a;->L2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, LYg/v;->getTickNumber()I

    move-result v2

    if-eq v4, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, LYg/v;->getStartDegree()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, LYg/v;->getTicks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    :goto_1
    const/16 v5, 0xa

    if-ge v3, v5, :cond_2

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v2

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v5, 0x5

    const/high16 v6, 0x41b00000    # 22.0f

    if-ne v3, v5, :cond_1

    iget-object v5, p0, LYg/a;->F2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v8, v6

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, LYg/a;->F2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    const/high16 v6, 0x41100000    # 9.0f

    div-float/2addr v8, v6

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_2
    iget-object v5, p0, LYg/a;->v2:Landroid/graphics/Path;

    iget-object v6, p0, LYg/a;->F2:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v4

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final H0()V
    .locals 2

    iget-object v0, p0, LYg/a;->H2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/a;->getSpeedometerWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LYg/a;->F2:Landroid/graphics/Paint;

    invoke-virtual {p0}, LYg/v;->getMarkColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final I0()V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, LYg/v;->getSizePa()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, LYg/a;->getSpeedometerWidth()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, LYg/v;->getSizePa()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v1

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v4

    add-float/2addr v5, v1

    const v6, 0x3eb851ec    # 0.36f

    mul-float/2addr v6, v4

    add-float/2addr v6, v1

    const v7, 0x3f23d70a    # 0.64f

    mul-float/2addr v7, v4

    add-float/2addr v7, v1

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v4, v8

    add-float/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, LYg/v;->getBackgroundCircleColor()I

    move-result v8

    iget v9, v0, LYg/a;->R2:I

    invoke-virtual/range {p0 .. p0}, LYg/v;->getBackgroundCircleColor()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, LYg/v;->getBackgroundCircleColor()I

    move-result v11

    iget v13, v0, LYg/a;->R2:I

    move v12, v13

    filled-new-array/range {v8 .. v13}, [I

    move-result-object v18

    new-instance v8, Landroid/graphics/RadialGradient;

    invoke-virtual/range {p0 .. p0}, LYg/v;->getSize()I

    move-result v9

    int-to-float v9, v9

    mul-float v15, v9, v2

    invoke-virtual/range {p0 .. p0}, LYg/v;->getSize()I

    move-result v9

    int-to-float v9, v9

    mul-float v16, v9, v2

    invoke-virtual/range {p0 .. p0}, LYg/v;->getSizePa()I

    move-result v9

    int-to-float v9, v9

    mul-float v17, v9, v2

    const/4 v2, 0x6

    new-array v2, v2, [F

    const/4 v9, 0x0

    aput v1, v2, v9

    const/4 v1, 0x1

    aput v5, v2, v1

    const/4 v1, 0x2

    aput v6, v2, v1

    const/4 v1, 0x3

    aput v7, v2, v1

    const/4 v1, 0x4

    aput v4, v2, v1

    const/4 v1, 0x5

    aput v3, v2, v1

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v8

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, v0, LYg/a;->H2:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public d0()V
    .locals 7

    invoke-virtual {p0}, LYg/v;->v()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {p0}, LYg/a;->H0()V

    invoke-virtual {p0}, LYg/j;->getViewSizePa()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41b00000    # 22.0f

    div-float/2addr v0, v1

    iget-object v1, p0, LYg/a;->v2:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, LYg/a;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, LYg/a;->v2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/a;->F2:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, LYg/j;->getViewSizePa()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, LYg/v;->setInitTickPadding(F)V

    iget-object v0, p0, LYg/a;->D2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, LYg/a;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, LYg/j;->getViewSizePa()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, LYg/j;->getViewSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, LYg/a;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, LYg/a;->D2:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, LYg/a;->getSpeedometerWidth()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, LYg/a;->M2:Landroid/graphics/RectF;

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, LYg/a;->M2:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, LYg/a;->H2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0, v6}, LYg/a;->G0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v6}, LYg/v;->s0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v6}, LYg/v;->u0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getSpeedometerColor()I
    .locals 1

    iget v0, p0, LYg/a;->R2:I

    return v0
.end method

.method public getSpeedometerWidth()F
    .locals 1

    invoke-super {p0}, LYg/v;->getSpeedometerWidth()F

    move-result v0

    return v0
.end method

.method public final getTrianglesColor()I
    .locals 1

    iget-object v0, p0, LYg/a;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public o0()V
    .locals 3

    new-instance v0, Lah/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lah/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, LYg/v;->setIndicator(Lah/b;)V

    invoke-virtual {p0}, LYg/v;->getIndicator()Lah/b;

    move-result-object v0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Lah/b;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lah/b;->q(F)V

    const v1, -0xff191a

    invoke-virtual {v0, v1}, Lah/b;->m(I)V

    const/16 v0, 0x87

    const/16 v1, 0x1c7

    invoke-super {p0, v0, v1}, LYg/v;->E0(II)V

    const v0, -0xdededf

    invoke-super {p0, v0}, LYg/v;->setBackgroundCircleColor(I)V

    const/16 v0, 0x9

    invoke-super {p0, v0}, LYg/v;->setTickNumber(I)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, LYg/v;->setTickPadding(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LYg/v;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/j;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->q0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, LYg/v;->t0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LYg/v;->onSizeChanged(IIII)V

    invoke-virtual {p0}, LYg/a;->I0()V

    invoke-virtual {p0}, LYg/a;->d0()V

    return-void
.end method

.method public final setSpeedometerColor(I)V
    .locals 0

    iput p1, p0, LYg/a;->R2:I

    invoke-virtual {p0}, LYg/a;->I0()V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public setSpeedometerWidth(F)V
    .locals 3

    invoke-super {p0, p1}, LYg/v;->setSpeedometerWidth(F)V

    iget-object v0, p0, LYg/a;->M2:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, LYg/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, LYg/a;->I0()V

    invoke-virtual {p0}, LYg/j;->F()V

    :cond_0
    return-void
.end method

.method public final setTrianglesColor(I)V
    .locals 1

    iget-object v0, p0, LYg/a;->L2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public w()V
    .locals 2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, LYg/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, LYg/v;->setSpeedometerWidth(F)V

    const/16 v0, -0x3da0

    invoke-super {p0, v0}, LYg/j;->setTextColor(I)V

    const/4 v0, -0x1

    invoke-super {p0, v0}, LYg/j;->setSpeedTextColor(I)V

    invoke-super {p0, v0}, LYg/j;->setUnitTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, LYg/j;->setTextTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, LYg/j$a;->CENTER:LYg/j$a;

    invoke-super {p0, v0}, LYg/j;->setSpeedTextPosition(LYg/j$a;)V

    invoke-super {p0, v1}, LYg/j;->setUnitUnderSpeedText(Z)V

    return-void
.end method
