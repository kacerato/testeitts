.class public LK9/e;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public b:Z

.field public c:Z

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Canvas;

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LK9/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "LK9/c;",
            ">;"
        }
    .end annotation
.end field

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1
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

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, LK9/e;->b:Z

    iput-boolean p1, p0, LK9/e;->c:Z

    const/high16 v0, 0x41000000    # 8.0f

    .line 37
    iput v0, p0, LK9/e;->h:F

    .line 38
    iput-boolean p1, p0, LK9/e;->i:Z

    iput-boolean p1, p0, LK9/e;->j:Z

    const/4 p1, 0x0

    .line 39
    iput p1, p0, LK9/e;->q:F

    iput p1, p0, LK9/e;->r:F

    iput p1, p0, LK9/e;->s:F

    iput p1, p0, LK9/e;->t:F

    iput p1, p0, LK9/e;->u:F

    iput p1, p0, LK9/e;->v:F

    const p1, -0x333334

    .line 40
    iput p1, p0, LK9/e;->y:I

    const/16 p1, 0x32

    .line 41
    iput p1, p0, LK9/e;->z:I

    .line 42
    iput p1, p0, LK9/e;->A:I

    .line 43
    iput p1, p0, LK9/e;->B:I

    const/16 v0, 0x14

    .line 44
    iput v0, p0, LK9/e;->C:I

    .line 45
    iput p1, p0, LK9/e;->D:I

    const/high16 p1, -0x1000000

    .line 46
    iput p1, p0, LK9/e;->x:I

    .line 47
    iput p3, p0, LK9/e;->n:F

    .line 48
    iput p2, p0, LK9/e;->m:F

    .line 49
    iput p2, p0, LK9/e;->o:F

    .line 50
    iput p3, p0, LK9/e;->p:F

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, LK9/e;->e:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 52
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    iget-object p2, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p2, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget p2, p0, LK9/e;->h:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, LK9/e;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    iget-object p1, p0, LK9/e;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object p1, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget p2, p0, LK9/e;->h:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, LK9/e;->f:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 61
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
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
    iput-boolean v0, p0, LK9/e;->b:Z

    iput-boolean v0, p0, LK9/e;->c:Z

    const/high16 v1, 0x41000000    # 8.0f

    .line 3
    iput v1, p0, LK9/e;->h:F

    .line 4
    iput-boolean v0, p0, LK9/e;->i:Z

    iput-boolean v0, p0, LK9/e;->j:Z

    const/4 v2, 0x0

    .line 5
    iput v2, p0, LK9/e;->m:F

    iput v2, p0, LK9/e;->n:F

    iput v2, p0, LK9/e;->q:F

    iput v2, p0, LK9/e;->r:F

    iput v2, p0, LK9/e;->s:F

    iput v2, p0, LK9/e;->t:F

    iput v2, p0, LK9/e;->u:F

    iput v2, p0, LK9/e;->v:F

    const v3, -0x333334

    .line 6
    iput v3, p0, LK9/e;->y:I

    const/16 v4, 0x32

    .line 7
    iput v4, p0, LK9/e;->z:I

    .line 8
    iput v4, p0, LK9/e;->A:I

    .line 9
    iput v4, p0, LK9/e;->B:I

    const/16 v5, 0x14

    .line 10
    iput v5, p0, LK9/e;->C:I

    .line 11
    iput v4, p0, LK9/e;->D:I

    const/high16 v6, -0x1000000

    .line 12
    iput v6, p0, LK9/e;->x:I

    .line 13
    iput v2, p0, LK9/e;->o:F

    .line 14
    iput v2, p0, LK9/e;->p:F

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    const/4 v7, 0x1

    .line 16
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 17
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget v8, p0, LK9/e;->h:F

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 21
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 22
    iget-object v2, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget v8, p0, LK9/e;->h:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    new-instance v2, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v2, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, LK9/e;->f:Landroid/graphics/Paint;

    .line 24
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 25
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lt3/b$s;->Cq:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LK9/e;->i:Z

    const/4 p2, 0x6

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, LK9/e;->j:Z

    .line 29
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LK9/e;->x:I

    .line 30
    invoke-virtual {p1, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, LK9/e;->y:I

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, LK9/e;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "color"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, LK9/e;->h:F

    const/4 p2, 0x2

    .line 33
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, LK9/e;->C:I

    .line 34
    invoke-virtual {p1, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, LK9/e;->D:I

    return-void
.end method

.method private getMaxX()F
    .locals 3

    iget-object v0, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    iget v0, v0, LK9/c;->a:F

    :goto_0
    iget-object v2, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v2, v2, LK9/c;->a:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget-object v0, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    iget v0, v0, LK9/c;->a:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMaxY()F
    .locals 3

    iget-object v0, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    iget v0, v0, LK9/c;->b:F

    :goto_0
    iget-object v2, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v2, v2, LK9/c;->b:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget-object v0, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK9/c;

    iget v0, v0, LK9/c;->b:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    iget-object v0, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget v1, p0, LK9/e;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LK9/e;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, LK9/e;->g:Landroid/graphics/Canvas;

    iget v0, p0, LK9/e;->p:F

    iget v1, p0, LK9/e;->z:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v6, v0

    iget-object v7, p0, LK9/e;->e:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v8, p0, LK9/e;->g:Landroid/graphics/Canvas;

    iget v0, p0, LK9/e;->o:F

    iget v1, p0, LK9/e;->z:I

    int-to-float v1, v1

    sub-float v11, v0, v1

    const/4 v12, 0x0

    iget-object v13, p0, LK9/e;->e:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, LK9/e;->g:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, LK9/e;->a()V

    invoke-virtual {p0}, LK9/e;->d()V

    iget-object v0, p0, LK9/e;->g:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, LK9/e;->c()V

    iget-object v0, p0, LK9/e;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget v1, p0, LK9/e;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget-object v3, p0, LK9/e;->g:Landroid/graphics/Canvas;

    iget-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v4, v2, LK9/c;->a:F

    iget-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v5, v2, LK9/c;->b:F

    iget-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v6, v2, LK9/c;->a:F

    iget-object v2, p0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK9/c;

    iget v7, v2, LK9/c;->b:F

    iget-object v8, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v2, v0, LK9/e;->C:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct/range {p0 .. p0}, LK9/e;->getMaxX()F

    move-result v1

    invoke-direct/range {p0 .. p0}, LK9/e;->getMaxY()F

    move-result v2

    iget v3, v0, LK9/e;->z:I

    add-int/lit8 v4, v3, -0xa

    iput v4, v0, LK9/e;->B:I

    iput v4, v0, LK9/e;->A:I

    iget v5, v0, LK9/e;->o:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    int-to-float v6, v4

    sub-float/2addr v5, v6

    div-float v5, v1, v5

    iget v6, v0, LK9/e;->p:F

    int-to-float v3, v3

    sub-float/2addr v6, v3

    int-to-float v3, v4

    sub-float/2addr v6, v3

    div-float v3, v2, v6

    invoke-virtual {v0, v2}, LK9/e;->e(F)I

    move-result v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/4 v10, 0x1

    if-le v4, v10, :cond_0

    float-to-double v11, v2

    add-int/lit8 v2, v4, -0x1

    int-to-double v13, v2

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    cmpg-double v2, v11, v13

    if-gtz v2, :cond_0

    add-int/lit8 v4, v4, -0x2

    int-to-double v11, v4

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    :goto_0
    double-to-float v2, v11

    goto :goto_1

    :cond_0
    if-le v4, v10, :cond_1

    sub-int/2addr v4, v10

    int-to-double v11, v4

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    goto :goto_0

    :cond_1
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    goto :goto_0

    :goto_1
    div-float/2addr v2, v3

    iget v4, v0, LK9/e;->p:F

    div-float v11, v4, v2

    iget v12, v0, LK9/e;->D:I

    int-to-float v13, v12

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    div-float/2addr v4, v2

    mul-float/2addr v4, v2

    int-to-float v11, v12

    div-float/2addr v4, v11

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v0, v1}, LK9/e;->e(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v12

    const/high16 v14, 0x40000000    # 2.0f

    if-lez v13, :cond_3

    float-to-double v6, v1

    sub-float v1, v11, v12

    move/from16 v18, v13

    float-to-double v12, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    cmpg-double v1, v6, v12

    if-gtz v1, :cond_4

    sub-float/2addr v11, v14

    float-to-double v6, v11

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    :goto_3
    double-to-float v1, v6

    goto :goto_4

    :cond_3
    move/from16 v18, v13

    :cond_4
    if-lez v18, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v11, v1

    float-to-double v6, v11

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto :goto_3

    :cond_5
    const-wide/16 v6, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    goto :goto_3

    :goto_4
    div-float/2addr v1, v5

    iget v6, v0, LK9/e;->o:F

    div-float v7, v6, v1

    iget v8, v0, LK9/e;->D:I

    int-to-float v9, v8

    cmpl-float v9, v7, v9

    if-lez v9, :cond_6

    div-float/2addr v6, v1

    mul-float/2addr v6, v1

    int-to-float v7, v8

    div-float/2addr v6, v7

    int-to-float v7, v8

    goto :goto_5

    :cond_6
    move v6, v1

    :goto_5
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/4 v9, 0x0

    move v11, v9

    :goto_6
    iget-object v12, v0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    iget-object v12, v0, LK9/e;->l:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    new-instance v13, LK9/c;

    iget-object v15, v0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v15, v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LK9/c;

    iget v15, v15, LK9/c;->a:F

    div-float/2addr v15, v5

    iget-object v10, v0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v10, v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LK9/c;

    iget v10, v10, LK9/c;->b:F

    div-float/2addr v10, v3

    invoke-direct {v13, v15, v10}, LK9/c;-><init>(FF)V

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    iget v10, v0, LK9/e;->o:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v8, v9, v12, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v8, v7

    iget v7, v0, LK9/e;->o:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    move v10, v9

    :goto_7
    iget v7, v0, LK9/e;->p:F

    cmpg-float v7, v2, v7

    const/high16 v8, -0x1000000

    if-gez v7, :cond_9

    iget-object v7, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v11, v0, LK9/e;->y:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v11, v0, LK9/e;->h:F

    div-float/2addr v11, v14

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v15, v0, LK9/e;->g:Landroid/graphics/Canvas;

    neg-float v7, v2

    iget v11, v0, LK9/e;->o:F

    iget-object v12, v0, LK9/e;->e:Landroid/graphics/Paint;

    const/16 v16, 0x0

    move/from16 v17, v7

    move/from16 v18, v11

    move/from16 v19, v7

    move-object/from16 v20, v12

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v12, v0, LK9/e;->h:F

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, LK9/e;->g:Landroid/graphics/Canvas;

    const/high16 v19, 0x40a00000    # 5.0f

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    const/high16 v17, -0x3f600000    # -5.0f

    move-object/from16 v16, v8

    move/from16 v18, v7

    move/from16 v20, v7

    move-object/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v7, v3, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v7, v9, v12, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v11, v0, LK9/e;->g:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    neg-int v8, v8

    add-int/lit8 v8, v8, -0xf

    int-to-float v8, v8

    iget-object v12, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    div-float/2addr v12, v14

    add-float/2addr v12, v2

    neg-float v12, v12

    iget-object v13, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v11, v7, v8, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v2, v4

    goto :goto_7

    :cond_9
    :goto_8
    iget v2, v0, LK9/e;->o:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_b

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v3, v0, LK9/e;->C:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v3, v0, LK9/e;->y:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v3, v0, LK9/e;->h:F

    div-float/2addr v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v15, v0, LK9/e;->g:Landroid/graphics/Canvas;

    iget v2, v0, LK9/e;->p:F

    neg-float v2, v2

    iget-object v3, v0, LK9/e;->e:Landroid/graphics/Paint;

    const/16 v17, 0x0

    move/from16 v16, v1

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v3, v0, LK9/e;->h:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v15, v0, LK9/e;->g:Landroid/graphics/Canvas;

    const/high16 v19, 0x40a00000    # 5.0f

    iget-object v2, v0, LK9/e;->e:Landroid/graphics/Paint;

    const/high16 v17, -0x3f600000    # -5.0f

    move-object/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v2, v5, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v9, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v4, -0x40000000    # -2.0f

    if-eqz v10, :cond_a

    iget-object v7, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v11, v0, LK9/e;->C:I

    add-int/lit8 v11, v11, -0xa

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v2, v9, v11, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v7, v0, LK9/e;->g:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    mul-float/2addr v11, v4

    iget-object v4, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    div-float/2addr v4, v14

    add-float/2addr v11, v4

    iget-object v4, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_a
    iget-object v7, v0, LK9/e;->e:Landroid/graphics/Paint;

    iget v11, v0, LK9/e;->C:I

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, v0, LK9/e;->g:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget-object v11, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v11

    mul-float/2addr v11, v4

    iget-object v4, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    div-float/2addr v4, v14

    add-float/2addr v11, v4

    iget-object v4, v0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_9
    add-float/2addr v1, v6

    goto/16 :goto_8

    :cond_b
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

    iget-object v0, p0, LK9/e;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, LK9/e;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v2, ""

    if-nez v0, :cond_6

    iget v0, p0, LK9/e;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LK9/e;->m:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LK9/e;->n:F

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eq v5, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LK9/e;->m:F

    div-float/2addr v0, v3

    iput v0, p0, LK9/e;->m:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, LK9/e;->n:F

    div-float/2addr v0, v3

    iput v0, p0, LK9/e;->n:F

    :cond_3
    :goto_1
    iget-boolean v0, p0, LK9/e;->i:Z

    invoke-virtual {p0, v0}, LK9/e;->setScrollableX(Z)V

    iget-boolean v0, p0, LK9/e;->j:Z

    invoke-virtual {p0, v0}, LK9/e;->setScrollableY(Z)V

    iget-boolean v0, p0, LK9/e;->i:Z

    if-nez v0, :cond_4

    iget v0, p0, LK9/e;->m:F

    iput v0, p0, LK9/e;->o:F

    :cond_4
    iget-boolean v0, p0, LK9/e;->j:Z

    if-nez v0, :cond_5

    iget v0, p0, LK9/e;->n:F

    iput v0, p0, LK9/e;->p:F

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, LK9/e;->n:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vH = "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, LK9/e;->m:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vW = "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v0, p0, LK9/e;->b:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, LK9/e;->c:Z

    if-nez v0, :cond_7

    iget v0, p0, LK9/e;->o:F

    float-to-int v0, v0

    iget v3, p0, LK9/e;->p:F

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, LK9/e;->d:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, LK9/e;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, LK9/e;->g:Landroid/graphics/Canvas;

    iget v3, p0, LK9/e;->p:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, LK9/e;->getMaxY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, LK9/e;->e:Landroid/graphics/Paint;

    iget v4, p0, LK9/e;->C:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, LK9/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, LK9/e;->z:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, LK9/e;->z:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LK9/e;->g:Landroid/graphics/Canvas;

    iget v2, p0, LK9/e;->z:I

    int-to-float v3, v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, LK9/e;->b()V

    iget v0, p0, LK9/e;->n:F

    iget v2, p0, LK9/e;->p:F

    sub-float/2addr v0, v2

    iput v0, p0, LK9/e;->v:F

    const/4 v0, 0x1

    iput-boolean v0, p0, LK9/e;->c:Z

    :cond_7
    iget-object v0, p0, LK9/e;->d:Landroid/graphics/Bitmap;

    iget v2, p0, LK9/e;->q:F

    float-to-int v2, v2

    neg-int v2, v2

    iget v3, p0, LK9/e;->v:F

    float-to-int v3, v3

    neg-int v3, v3

    iget v4, p0, LK9/e;->m:F

    float-to-int v4, v4

    iget v5, p0, LK9/e;->n:F

    float-to-int v5, v5

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, LK9/e;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-float v5, v5

    iget v6, p0, LK9/e;->m:F

    add-float/2addr v5, v6

    cmpg-float v5, v0, v5

    const/4 v6, 0x1

    if-gez v5, :cond_0

    aget v3, v3, v6

    int-to-float v3, v3

    iget v5, p0, LK9/e;->n:F

    add-float/2addr v3, v5

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v4, v6

    :cond_0
    iget-boolean v3, p0, LK9/e;->i:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    iget v3, p0, LK9/e;->z:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, LK9/e;->r:F

    sub-float/2addr v3, v0

    iput v3, p0, LK9/e;->w:F

    iget v0, p0, LK9/e;->s:F

    sub-float/2addr v0, v3

    iput v0, p0, LK9/e;->q:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iput v5, p0, LK9/e;->q:F

    :cond_2
    iget v0, p0, LK9/e;->q:F

    iget v3, p0, LK9/e;->o:F

    iget v7, p0, LK9/e;->m:F

    sub-float v8, v3, v7

    neg-float v8, v8

    cmpg-float v0, v0, v8

    if-gez v0, :cond_4

    sub-float/2addr v3, v7

    neg-float v0, v3

    iput v0, p0, LK9/e;->q:F

    goto :goto_0

    :cond_3
    iput v0, p0, LK9/e;->r:F

    iget v0, p0, LK9/e;->q:F

    iput v0, p0, LK9/e;->s:F

    :cond_4
    :goto_0
    iget-boolean v0, p0, LK9/e;->j:Z

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    iget v0, p0, LK9/e;->z:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_5
    iget p1, p0, LK9/e;->t:F

    sub-float/2addr p1, v1

    iput p1, p0, LK9/e;->w:F

    iget v0, p0, LK9/e;->u:F

    sub-float/2addr v0, p1

    iput v0, p0, LK9/e;->v:F

    cmpl-float p1, v0, v5

    if-lez p1, :cond_6

    iput v5, p0, LK9/e;->v:F

    :cond_6
    iget p1, p0, LK9/e;->v:F

    iget v0, p0, LK9/e;->p:F

    iget v1, p0, LK9/e;->n:F

    sub-float v2, v0, v1

    neg-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_8

    sub-float/2addr v0, v1

    neg-float p1, v0

    iput p1, p0, LK9/e;->v:F

    goto :goto_1

    :cond_7
    iput v1, p0, LK9/e;->t:F

    iget p1, p0, LK9/e;->v:F

    iput p1, p0, LK9/e;->u:F

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v6
.end method

.method public setGraphColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iput p1, p0, LK9/e;->x:I

    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iput p1, p0, LK9/e;->y:I

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
            "size"
        }
    .end annotation

    iput p1, p0, LK9/e;->C:I

    return-void
.end method

.method public setMaxDivisions(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iput p1, p0, LK9/e;->D:I

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

    const/4 v0, 0x1

    iput-boolean v0, p0, LK9/e;->b:Z

    iput-object p1, p0, LK9/e;->k:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method

.method public setScrollableX(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    iput-boolean p1, p0, LK9/e;->i:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, LK9/e;->getMaxX()F

    move-result p1

    invoke-virtual {p0, p1}, LK9/e;->e(F)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean p1, p0, LK9/e;->i:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, LK9/e;->i:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iput p1, p0, LK9/e;->o:F

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollableY(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    iput-boolean p1, p0, LK9/e;->j:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, LK9/e;->getMaxY()F

    move-result p1

    invoke-virtual {p0, p1}, LK9/e;->e(F)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-boolean p1, p0, LK9/e;->j:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, LK9/e;->j:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iput p1, p0, LK9/e;->p:F

    :cond_1
    :goto_0
    return-void
.end method
