.class public LK9/a;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LK9/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/graphics/Bitmap;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Canvas;

.field public m:F

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "vW",
            "vH"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 18
    iput p1, p0, LK9/a;->b:I

    const/4 p1, 0x6

    .line 19
    iput p1, p0, LK9/a;->c:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, LK9/a;->e:Z

    iput-boolean p1, p0, LK9/a;->f:Z

    .line 21
    iput p1, p0, LK9/a;->g:I

    .line 22
    iput p1, p0, LK9/a;->h:I

    iput p1, p0, LK9/a;->i:I

    .line 23
    iput p1, p0, LK9/a;->n:I

    const/16 p1, 0x32

    .line 24
    iput p1, p0, LK9/a;->o:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, LK9/a;->p:F

    const/16 p1, 0xa

    .line 26
    iput p1, p0, LK9/a;->q:I

    .line 27
    iput p1, p0, LK9/a;->r:I

    const/16 p1, 0x14

    .line 28
    iput p1, p0, LK9/a;->s:I

    .line 29
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 30
    iput p3, p0, LK9/a;->h:I

    .line 31
    iput p2, p0, LK9/a;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, LK9/a;->b:I

    const/4 v0, 0x6

    .line 3
    iput v0, p0, LK9/a;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LK9/a;->e:Z

    iput-boolean v0, p0, LK9/a;->f:Z

    .line 5
    iput v0, p0, LK9/a;->g:I

    .line 6
    iput v0, p0, LK9/a;->h:I

    iput v0, p0, LK9/a;->i:I

    .line 7
    iput v0, p0, LK9/a;->n:I

    const/16 v1, 0x32

    .line 8
    iput v1, p0, LK9/a;->o:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, LK9/a;->p:F

    const/16 v1, 0xa

    .line 10
    iput v1, p0, LK9/a;->q:I

    .line 11
    iput v1, p0, LK9/a;->r:I

    const/16 v2, 0x14

    .line 12
    iput v2, p0, LK9/a;->s:I

    .line 13
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v3, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lt3/b$s;->x4:[I

    invoke-virtual {p1, p2, v3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, LK9/a;->s:I

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, LK9/a;->r:I

    return-void
.end method

.method private getMaxY()F
    .locals 3

    iget-object v0, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    invoke-virtual {v0}, LK9/c;->b()F

    move-result v0

    :goto_0
    iget-object v2, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    invoke-virtual {v2}, LK9/c;->b()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget-object v0, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    invoke-virtual {v0}, LK9/c;->b()F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    iget-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v1, p0, LK9/a;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, LK9/a;->l:Landroid/graphics/Canvas;

    iget v0, p0, LK9/a;->h:I

    iget v1, p0, LK9/a;->o:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v6, v0

    iget-object v7, p0, LK9/a;->k:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v8, p0, LK9/a;->l:Landroid/graphics/Canvas;

    iget v0, p0, LK9/a;->i:I

    iget v1, p0, LK9/a;->o:I

    sub-int/2addr v0, v1

    int-to-float v11, v0

    const/4 v12, 0x0

    iget-object v13, p0, LK9/a;->k:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()V
    .locals 8

    iget v0, p0, LK9/a;->m:F

    iget v1, p0, LK9/a;->h:I

    iget v2, p0, LK9/a;->o:I

    sub-int/2addr v1, v2

    iget v2, p0, LK9/a;->q:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, LK9/a;->p:F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, LK9/a;->g:I

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TAG--"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, LK9/a;->r:I

    add-int/2addr v4, v2

    iget-object v5, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->b()F

    move-result v5

    iget v6, p0, LK9/a;->p:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, LK9/a;->n:I

    add-int/2addr v6, v2

    iget v7, p0, LK9/a;->r:I

    sub-int/2addr v6, v7

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget-object v5, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, LK9/a;->l:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, LK9/a;->n:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LK9/a;->l:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, LK9/a;->i:I

    iget v1, p0, LK9/a;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LK9/a;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, LK9/a;->n:I

    iget-object v0, p0, LK9/a;->l:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, LK9/a;->b()V

    iget-object v0, p0, LK9/a;->l:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, LK9/a;->d()V

    invoke-virtual {p0}, LK9/a;->a()V

    return-void
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v1, p0, LK9/a;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, LK9/a;->n:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LK9/a;->g:I

    if-ge v2, v3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget-object v5, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v6, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LK9/c;

    invoke-virtual {v6}, LK9/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v4, p0, LK9/a;->l:Landroid/graphics/Canvas;

    iget-object v5, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v6, p0, LK9/a;->n:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, LK9/a;->n:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, LK9/a;->m:F

    invoke-virtual {p0, v0}, LK9/a;->e(F)I

    move-result v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    sub-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    :goto_1
    double-to-float v0, v2

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget v2, p0, LK9/a;->p:F

    div-float v2, v0, v2

    :goto_3
    iget v3, p0, LK9/a;->h:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    iget-object v3, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v4, p0, LK9/a;->c:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v4, p0, LK9/a;->b:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, LK9/a;->l:Landroid/graphics/Canvas;

    neg-float v9, v2

    const/high16 v8, 0x40a00000    # 5.0f

    iget-object v10, p0, LK9/a;->k:Landroid/graphics/Paint;

    const/high16 v6, -0x3f600000    # -5.0f

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, LK9/a;->p:F

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v1, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v5, p0, LK9/a;->l:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    add-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    iget-object v6, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    neg-float v6, v6

    iget-object v7, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, LK9/a;->p:F

    div-float v3, v0, v3

    add-float/2addr v2, v3

    goto :goto_3

    :cond_2
    return-void
.end method

.method public final e(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    float-to-int p1, p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LK9/a;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, LK9/a;->h:I

    const-string v1, ""

    if-nez v0, :cond_3

    iget v0, p0, LK9/a;->i:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, LK9/a;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, LK9/a;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LK9/a;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vH = "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LK9/a;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vW = "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LK9/a;->i:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LK9/a;->i:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, LK9/a;->h:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LK9/a;->h:I

    :cond_3
    :goto_1
    iget-boolean v0, p0, LK9/a;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LK9/a;->f:Z

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v4, p0, LK9/a;->b:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, LK9/a;->i:I

    iget v4, p0, LK9/a;->h:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LK9/a;->j:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, LK9/a;->j:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LK9/a;->l:Landroid/graphics/Canvas;

    iget v4, p0, LK9/a;->h:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, LK9/a;->getMaxY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, LK9/a;->k:Landroid/graphics/Paint;

    iget v5, p0, LK9/a;->s:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, LK9/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, LK9/a;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, LK9/a;->o:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LK9/a;->l:Landroid/graphics/Canvas;

    iget v1, p0, LK9/a;->o:I

    int-to-float v4, v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, LK9/a;->c()V

    iput-boolean v3, p0, LK9/a;->f:Z

    :cond_4
    iget-object v0, p0, LK9/a;->j:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iput p1, p0, LK9/a;->s:I

    return-void
.end method

.method public setPoints(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LK9/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LK9/a;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, LK9/a;->e:Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p1

    iput p1, p0, LK9/a;->g:I

    invoke-direct {p0}, LK9/a;->getMaxY()F

    move-result p1

    iput p1, p0, LK9/a;->m:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpace(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iput p1, p0, LK9/a;->r:I

    return-void
.end method
