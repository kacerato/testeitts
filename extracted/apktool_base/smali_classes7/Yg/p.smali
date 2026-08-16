.class public LYg/p;
.super LYg/n;
.source "SourceFile"


# instance fields
.field public final W:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q0:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v0:Landroid/graphics/Paint;
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

    invoke-direct/range {v1 .. v6}, LYg/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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

    invoke-direct/range {v1 .. v6}, LYg/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

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
    invoke-direct {p0, p1, p2, p3}, LYg/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, LYg/p;->W:Landroid/graphics/Path;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/p;->q0:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, LYg/p;->v0:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0}, LYg/p;->B()V

    .line 8
    invoke-direct {p0, p1, p2}, LYg/p;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, LYg/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lt3/b$s;->Kq:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LYg/p;->q0:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, LYg/p;->v0:Landroid/graphics/Paint;

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
.method public final B()V
    .locals 2

    iget-object v0, p0, LYg/p;->q0:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LYg/p;->v0:Landroid/graphics/Paint;

    const v1, -0x292829

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final getSpeedometerBackColor()I
    .locals 1

    iget-object v0, p0, LYg/p;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getSpeedometerColor()I
    .locals 1

    iget-object v0, p0, LYg/p;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public h0()V
    .locals 4

    invoke-virtual {p0}, LYg/p;->j0()V

    invoke-virtual {p0}, LYg/j;->v()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p0}, LYg/n;->g0()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, LYg/j;->getPadding()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, LYg/p;->W:Landroid/graphics/Path;

    iget-object v3, p0, LYg/p;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    iget-object v2, p0, LYg/p;->q0:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final i0()V
    .locals 5

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v1, v3

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public final j0()V
    .locals 2

    invoke-virtual {p0}, LYg/n;->getOrientation()LYg/n$a;

    move-result-object v0

    sget-object v1, LYg/n$a;->HORIZONTAL:LYg/n$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LYg/p;->i0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LYg/p;->k0()V

    :goto_0
    return-void
.end method

.method public final k0()V
    .locals 5

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v3

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p0}, LYg/j;->getWidthPa()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, LYg/p;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, LYg/j;->getHeightPa()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, LYg/n;->getOrientation()LYg/n$a;

    move-result-object v0

    sget-object v1, LYg/n$a;->HORIZONTAL:LYg/n$a;

    if-ne v0, v1, :cond_1

    div-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p2, 0x2

    if-le p1, v0, :cond_2

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    mul-int/lit8 p2, p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public final setSpeedometerBackColor(I)V
    .locals 1

    iget-object v0, p0, LYg/p;->v0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public final setSpeedometerColor(I)V
    .locals 1

    iget-object v0, p0, LYg/p;->q0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, LYg/j;->F()V

    return-void
.end method

.method public w()V
    .locals 1

    sget-object v0, LYg/j$a;->CENTER:LYg/j$a;

    invoke-super {p0, v0}, LYg/j;->setSpeedTextPosition(LYg/j$a;)V

    const/4 v0, 0x1

    invoke-super {p0, v0}, LYg/j;->setUnitUnderSpeedText(Z)V

    return-void
.end method
