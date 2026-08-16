.class public LK9/f;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LK9/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public f:F

.field public g:F

.field public h:F

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Canvas;

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x28

    .line 9
    iput p1, p0, LK9/f;->k:I

    .line 10
    iput p2, p0, LK9/f;->f:F

    .line 11
    iput p3, p0, LK9/f;->g:F

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LK9/f;->f:F

    iput v0, p0, LK9/f;->g:F

    const/16 v0, 0x28

    .line 3
    iput v0, p0, LK9/f;->k:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lt3/b$s;->qx:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, LK9/f;->k:I

    .line 6
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 7
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/f;->e:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 10

    iget v0, p0, LK9/f;->g:F

    iget v1, p0, LK9/f;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iput v1, p0, LK9/f;->h:F

    goto :goto_0

    :cond_0
    div-float v2, v0, v2

    iput v2, p0, LK9/f;->h:F

    :goto_0
    float-to-int v1, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, LK9/f;->j:Landroid/graphics/Canvas;

    iget v3, p0, LK9/f;->h:F

    const/high16 v4, 0x41c80000    # 25.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, LK9/f;->b:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, LK9/f;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, LK9/f;->b:Landroid/graphics/Paint;

    iget v3, p0, LK9/f;->h:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, LK9/f;->b:Landroid/graphics/Paint;

    iget v3, p0, LK9/f;->k:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LK9/f;->b:Landroid/graphics/Paint;

    iget-object v5, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, LK9/f;->h:F

    div-float v5, v3, v4

    const/high16 v6, 0x41200000    # 10.0f

    div-float v7, v3, v6

    int-to-float v8, v2

    div-float v9, v3, v6

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    div-float/2addr v3, v4

    iget-object v9, p0, LK9/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, LK9/f;->b:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, LK9/f;->e:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK9/c;

    invoke-virtual {v5}, LK9/c;->b()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "% "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, LK9/f;->h:F

    div-float v7, v5, v6

    const/high16 v9, 0x41000000    # 8.0f

    div-float v9, v5, v9

    div-float/2addr v5, v6

    mul-float/2addr v8, v5

    add-float/2addr v9, v8

    iget-object v5, p0, LK9/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 12

    iget v0, p0, LK9/f;->g:F

    iget v1, p0, LK9/f;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iput v1, p0, LK9/f;->h:F

    goto :goto_0

    :cond_0
    div-float v2, v0, v2

    iput v2, p0, LK9/f;->h:F

    :goto_0
    float-to-int v1, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iget v1, p0, LK9/f;->h:F

    const/high16 v2, -0x3e200000    # -28.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x42960000    # 75.0f

    div-float/2addr v2, v3

    neg-float v4, v1

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float/2addr v6, v1

    div-float/2addr v6, v3

    div-float/2addr v1, v5

    invoke-virtual {v8, v2, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v1

    move v10, v2

    :goto_1
    iget-object v1, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    iget-object v1, p0, LK9/f;->b:Landroid/graphics/Paint;

    iget-object v2, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    invoke-virtual {v2}, LK9/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK9/c;

    invoke-virtual {v1}, LK9/c;->b()F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v11, v1, v2

    const/4 v5, 0x1

    iget-object v6, p0, LK9/f;->b:Landroid/graphics/Paint;

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LK9/f;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, LK9/f;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, -0x1

    if-nez v0, :cond_3

    iget v0, p0, LK9/f;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LK9/f;->f:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LK9/f;->g:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, LK9/f;->f:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TAG: width = "

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, LK9/f;->g:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TAG: height = "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LK9/f;->f:F

    div-float/2addr v0, v2

    iput v0, p0, LK9/f;->f:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, LK9/f;->g:F

    div-float/2addr v0, v2

    iput v0, p0, LK9/f;->g:F

    :cond_3
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LK9/f;->b:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, LK9/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, LK9/f;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LK9/f;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LK9/f;->b:Landroid/graphics/Paint;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LK9/f;->c:Landroid/graphics/Paint;

    iget v0, p0, LK9/f;->f:F

    float-to-int v0, v0

    iget v4, p0, LK9/f;->g:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LK9/f;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, LK9/f;->i:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LK9/f;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, LK9/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, LK9/f;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, LK9/f;->j:Landroid/graphics/Canvas;

    iget-object v5, p0, LK9/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, LK9/f;->j:Landroid/graphics/Canvas;

    iget v4, p0, LK9/f;->g:F

    div-float/2addr v4, v2

    iget-object v2, p0, LK9/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, LK9/f;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, LK9/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    iget p1, p0, LK9/f;->f:F

    float-to-int p1, p1

    iget p2, p0, LK9/f;->g:F

    float-to-int p2, p2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "LABEL_SIZE"
        }
    .end annotation

    iput p1, p0, LK9/f;->k:I

    return-void
.end method

.method public setPoints(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 9
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK9/c;

    invoke-virtual {v3}, LK9/c;->b()F

    move-result v3

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    invoke-virtual {v2}, LK9/c;->b()F

    move-result v2

    div-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LK9/f;->d:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    new-instance v5, LK9/c;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LK9/c;

    invoke-virtual {v6}, LK9/c;->c()Ljava/lang/String;

    move-result-object v6

    float-to-double v7, v2

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK9/c;

    invoke-virtual {v3}, LK9/c;->a()I

    move-result v3

    invoke-direct {v5, v6, v2, v3}, LK9/c;-><init>(Ljava/lang/String;FI)V

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LK9/f;->e:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK9/c;

    invoke-virtual {v3}, LK9/c;->b()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
