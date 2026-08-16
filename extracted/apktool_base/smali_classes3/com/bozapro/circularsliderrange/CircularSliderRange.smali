.class public Lcom/bozapro/circularsliderrange/CircularSliderRange;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bozapro/circularsliderrange/CircularSliderRange$b;,
        Lcom/bozapro/circularsliderrange/CircularSliderRange$a;
    }
.end annotation


# static fields
.field public static final C:I = -0x1


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:D

.field public u:D

.field public v:Z

.field public w:Z

.field public x:Landroid/graphics/Paint;

.field public y:Landroid/graphics/Paint;

.field public z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    .line 5
    iput-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->z:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->A:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 12
    iput-boolean p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    .line 13
    iput-boolean p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    .line 14
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    .line 15
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    .line 16
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->z:Landroid/graphics/RectF;

    .line 17
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->A:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    neg-double p1, p1

    return-wide p1
.end method

.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    move-object v0, p0

    sget-object v1, Lcom/bozapro/circularsliderrange/a$b;->a:[I

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/bozapro/circularsliderrange/a$b;->j:I

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    sget v4, Lcom/bozapro/circularsliderrange/a$b;->f:I

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v5, Lcom/bozapro/circularsliderrange/a$b;->n:I

    const/16 v6, 0x32

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v6, Lcom/bozapro/circularsliderrange/a$b;->m:I

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    sget v8, Lcom/bozapro/circularsliderrange/a$b;->i:I

    invoke-virtual {v1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v8, Lcom/bozapro/circularsliderrange/a$b;->k:I

    const v9, -0x777778

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    sget v10, Lcom/bozapro/circularsliderrange/a$b;->g:I

    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    sget v10, Lcom/bozapro/circularsliderrange/a$b;->e:I

    const/16 v11, 0x14

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    sget v11, Lcom/bozapro/circularsliderrange/a$b;->c:I

    const/16 v12, 0x3c

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    sget v12, Lcom/bozapro/circularsliderrange/a$b;->b:I

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v12, Lcom/bozapro/circularsliderrange/a$b;->d:I

    const/high16 v13, -0x10000

    invoke-virtual {v1, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    sget v13, Lcom/bozapro/circularsliderrange/a$b;->l:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    sget v14, Lcom/bozapro/circularsliderrange/a$b;->h:I

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 p1, v1

    move/from16 p2, v2

    float-to-double v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartAngle(D)V

    float-to-double v1, v4

    invoke-virtual {p0, v1, v2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndAngle(D)V

    invoke-virtual {p0, v10}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setBorderThickness(I)V

    invoke-virtual {p0, v12}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setBorderColor(I)V

    invoke-virtual {p0, v5}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setThumbSize(I)V

    invoke-virtual {p0, v6}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartThumbSize(I)V

    invoke-virtual {p0, v7}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndThumbSize(I)V

    invoke-virtual {p0, v13}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartThumbImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v14}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndThumbImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v8}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartThumbColor(I)V

    invoke-virtual {p0, v9}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndThumbColor(I)V

    move/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setArcColor(I)V

    invoke-virtual {p0, v11}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setArcDashSize(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setPadding(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    return-void
.end method

.method public final c(D)F
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-lez p1, :cond_0

    const-wide p1, 0x4076800000000000L    # 360.0

    sub-double/2addr p1, v0

    goto :goto_0

    :cond_0
    neg-double p1, v0

    :goto_0
    double-to-float p1, p1

    return p1
.end method

.method public final d(IILcom/bozapro/circularsliderrange/CircularSliderRange$b;)V
    .locals 7

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    sub-int/2addr v0, p2

    int-to-double p1, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v5, v0

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    if-gez v0, :cond_0

    neg-double p1, p1

    :cond_0
    sget-object v0, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->START:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    if-ne p3, v0, :cond_1

    iput-wide p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->t:D

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->u:D

    :goto_0
    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    if-eqz v1, :cond_3

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c(D)F

    move-result p1

    float-to-double p1, p1

    invoke-interface {v1, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->c(D)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c(D)F

    move-result p1

    float-to-double p1, p1

    invoke-interface {v1, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->b(D)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getEndThumbSize()I
    .locals 1

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->m:I

    return v0
.end method

.method public getStartThumbSize()I
    .locals 1

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->l:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    int-to-float v0, v0

    iget v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    int-to-double v3, v0

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->t:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b:I

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    int-to-double v3, v0

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->t:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c:I

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    int-to-double v3, v0

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->u:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d:I

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    int-to-double v3, v0

    iget v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    int-to-double v5, v0

    iget-wide v7, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->u:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->e:I

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    iget v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->s:I

    if-nez v3, :cond_0

    const/high16 v3, -0x10000

    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->A:Landroid/graphics/Rect;

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    sub-int v3, v1, v2

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    add-int v5, v4, v2

    add-int/2addr v1, v2

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    iget-wide v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->t:D

    invoke-virtual {p0, v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c(D)F

    move-result v4

    iget-wide v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->u:D

    invoke-virtual {p0, v0, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c(D)F

    move-result v0

    iget-object v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->z:Landroid/graphics/RectF;

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    sub-float/2addr v0, v4

    rem-float v5, v0, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->y:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->getStartThumbSize()I

    move-result v0

    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v2, v0

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c:I

    sub-int v5, v4, v0

    add-int/2addr v2, v0

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c:I

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->getEndThumbSize()I

    move-result v0

    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v2, v0

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->e:I

    sub-int v5, v4, v0

    add-int/2addr v2, v0

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->o:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->e:I

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    if-le p1, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sub-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v0

    add-int/2addr v2, v0

    div-int/lit8 v3, v1, 0x2

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->f:I

    div-int/lit8 v1, v2, 0x2

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->g:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->q:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->h:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sget-object v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->START:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d(IILcom/bozapro/circularsliderrange/CircularSliderRange$b;)V

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sget-object v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->END:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d(IILcom/bozapro/circularsliderrange/CircularSliderRange$b;)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    if-eqz v0, :cond_3

    sget-object v0, Lx/b;->THUMB_RELEASED:Lx/b;

    invoke-interface {p1, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->d(Lx/b;)V

    :cond_3
    iget-boolean p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    sget-object v0, Lx/b;->THUMB_RELEASED:Lx/b;

    invoke-interface {p1, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->a(Lx/b;)V

    :cond_4
    iput-boolean v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    iput-boolean v1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->getStartThumbSize()I

    move-result v3

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->b:I

    add-int v5, v4, v3

    if-ge v0, v5, :cond_6

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_6

    iget v4, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->c:I

    add-int v5, v4, v3

    if-ge p1, v5, :cond_6

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->getEndThumbSize()I

    move-result v4

    iget v5, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d:I

    add-int v6, v5, v4

    if-ge v0, v6, :cond_7

    sub-int/2addr v5, v4

    if-le v0, v5, :cond_7

    iget v5, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->e:I

    add-int v6, v5, v4

    if-ge p1, v6, :cond_7

    sub-int/2addr v5, v4

    if-le p1, v5, :cond_7

    move v1, v2

    :cond_7
    if-eqz v3, :cond_8

    iput-boolean v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    sget-object v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->START:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d(IILcom/bozapro/circularsliderrange/CircularSliderRange$b;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    iput-boolean v2, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    sget-object v1, Lcom/bozapro/circularsliderrange/CircularSliderRange$b;->END:Lcom/bozapro/circularsliderrange/CircularSliderRange$b;

    invoke-virtual {p0, v0, p1, v1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->d(IILcom/bozapro/circularsliderrange/CircularSliderRange$b;)V

    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->v:Z

    if-eqz v0, :cond_a

    sget-object v0, Lx/b;->THUMB_PRESSED:Lx/b;

    invoke-interface {p1, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->d(Lx/b;)V

    :cond_a
    iget-boolean p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->w:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    sget-object v0, Lx/b;->THUMB_PRESSED:Lx/b;

    invoke-interface {p1, v0}, Lcom/bozapro/circularsliderrange/CircularSliderRange$a;->a(Lx/b;)V

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public setArcColor(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->s:I

    return-void
.end method

.method public setArcDashSize(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->r:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->p:I

    return-void
.end method

.method public setBorderThickness(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->q:I

    return-void
.end method

.method public setEndAngle(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->u:D

    return-void
.end method

.method public setEndThumbColor(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->o:I

    return-void
.end method

.method public setEndThumbImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setEndThumbSize(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->m:I

    return-void
.end method

.method public setOnSliderRangeMovedListener(Lcom/bozapro/circularsliderrange/CircularSliderRange$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->B:Lcom/bozapro/circularsliderrange/CircularSliderRange$a;

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->k:I

    return-void
.end method

.method public setStartAngle(D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->t:D

    return-void
.end method

.method public setStartThumbColor(I)V
    .locals 0

    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->n:I

    return-void
.end method

.method public setStartThumbImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStartThumbSize(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bozapro/circularsliderrange/CircularSliderRange;->l:I

    return-void
.end method

.method public setThumbSize(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setStartThumbSize(I)V

    invoke-virtual {p0, p1}, Lcom/bozapro/circularsliderrange/CircularSliderRange;->setEndThumbSize(I)V

    return-void
.end method
