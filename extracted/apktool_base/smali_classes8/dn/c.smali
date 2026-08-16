.class public Ldn/c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn/c$a;,
        Ldn/c$b;,
        Ldn/c$c;
    }
.end annotation


# static fields
.field public static final D:Ldn/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final E:I = -0x777778

.field public static final F:I = -0x10000

.field public static final G:I = -0xbbbbbc

.field public static final H:I = -0xff0100

.field public static final I:I = 0x0

.field public static final J:I = 0x64

.field public static final K:I = 0x1

.field public static final L:I = 0x1


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public b:Z

.field public c:Ldn/c$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ldn/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldn/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldn/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Ldn/c;->D:Ldn/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ldn/c;->b:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ldn/c;->d:I

    .line 4
    iput-boolean p1, p0, Ldn/c;->f:Z

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Ldn/c;->h:I

    const/16 v1, 0xf

    .line 6
    iput v1, p0, Ldn/c;->l:I

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->m:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->n:Landroid/graphics/Paint;

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->o:Landroid/graphics/Paint;

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->p:Landroid/graphics/Paint;

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->q:Landroid/graphics/Paint;

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->r:Landroid/graphics/Paint;

    .line 13
    iput p1, p0, Ldn/c;->t:I

    .line 14
    iput p1, p0, Ldn/c;->u:I

    .line 15
    iput v0, p0, Ldn/c;->v:I

    const p1, -0x777778

    .line 16
    iput p1, p0, Ldn/c;->x:I

    const/high16 p1, -0x10000

    .line 17
    iput p1, p0, Ldn/c;->y:I

    const p1, -0xbbbbbc

    .line 18
    iput p1, p0, Ldn/c;->z:I

    const p1, -0xff0100

    .line 19
    iput p1, p0, Ldn/c;->A:I

    .line 20
    iput v0, p0, Ldn/c;->C:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Ldn/c;->b:Z

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Ldn/c;->d:I

    .line 24
    iput-boolean p1, p0, Ldn/c;->f:Z

    const/16 v0, 0x64

    .line 25
    iput v0, p0, Ldn/c;->h:I

    const/16 v1, 0xf

    .line 26
    iput v1, p0, Ldn/c;->l:I

    .line 27
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->m:Landroid/graphics/Paint;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->n:Landroid/graphics/Paint;

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->o:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->p:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->q:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldn/c;->r:Landroid/graphics/Paint;

    .line 33
    iput p1, p0, Ldn/c;->t:I

    .line 34
    iput p1, p0, Ldn/c;->u:I

    .line 35
    iput v0, p0, Ldn/c;->v:I

    const p1, -0x777778

    .line 36
    iput p1, p0, Ldn/c;->x:I

    const/high16 p1, -0x10000

    .line 37
    iput p1, p0, Ldn/c;->y:I

    const p1, -0xbbbbbc

    .line 38
    iput p1, p0, Ldn/c;->z:I

    const p1, -0xff0100

    .line 39
    iput p1, p0, Ldn/c;->A:I

    .line 40
    iput v0, p0, Ldn/c;->C:I

    .line 41
    invoke-virtual {p0, p2}, Ldn/c;->f(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getThumbWidth()F
    .locals 2

    iget v0, p0, Ldn/c;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final b(III)I
    .locals 0

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x64

    sub-int/2addr p3, p2

    div-int/2addr p1, p3

    return p1
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Ldn/c;->i:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v3, v1, v2

    add-float v4, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v3, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Ldn/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, p0, Ldn/c;->g:I

    iget v6, p0, Ldn/c;->w:I

    iget v7, p0, Ldn/c;->v:I

    invoke-virtual {p0, v2, v6, v7}, Ldn/c;->b(III)I

    move-result v2

    int-to-float v2, v2

    const/16 v6, 0x64

    int-to-float v6, v6

    div-float/2addr v2, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    iget v7, p0, Ldn/c;->h:I

    iget v8, p0, Ldn/c;->w:I

    iget v9, p0, Ldn/c;->v:I

    invoke-virtual {p0, v7, v8, v9}, Ldn/c;->b(III)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v0, v7

    add-float/2addr v5, v0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v3, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Ldn/c;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Ldn/c;->j:I

    int-to-float v0, v0

    iget-object v3, p0, Ldn/c;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Ldn/c;->j:I

    int-to-float v0, v0

    iget-object v3, p0, Ldn/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v3, p0, Ldn/c;->g:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldn/c;->q:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v6, p0, Ldn/c;->h:I

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Ldn/c;->r:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v6, v7, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Ldn/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ldn/c;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d(F)Ldn/c$c;
    .locals 2

    iget v0, p0, Ldn/c;->B:I

    invoke-virtual {p0, v0}, Ldn/c;->k(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ldn/c;->g(FI)Z

    move-result v0

    iget v1, p0, Ldn/c;->C:I

    invoke-virtual {p0, v1}, Ldn/c;->k(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ldn/c;->g(FI)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Ldn/c$c;->MIN:Ldn/c$c;

    goto :goto_0

    :cond_0
    sget-object v0, Ldn/c$c;->MAX:Ldn/c$c;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Ldn/c$c;->MIN:Ldn/c$c;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Ldn/c$c;->MAX:Ldn/c$c;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Ldn/c;->b:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ldn/c;->e(F)Ldn/c$c;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e(F)Ldn/c$c;
    .locals 6

    iget v0, p0, Ldn/c;->B:I

    invoke-virtual {p0, v0}, Ldn/c;->k(I)I

    move-result v0

    iget v1, p0, Ldn/c;->C:I

    invoke-virtual {p0, v1}, Ldn/c;->k(I)I

    move-result v1

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object p1, Ldn/c$c;->MAX:Ldn/c$c;

    return-object p1

    :cond_0
    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    sget-object p1, Ldn/c$c;->MIN:Ldn/c$c;

    return-object p1

    :cond_1
    int-to-double v2, v0

    float-to-double v4, p1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v0, v1

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p1, v2, v0

    if-gez p1, :cond_2

    sget-object p1, Ldn/c$c;->MIN:Ldn/c$c;

    goto :goto_0

    :cond_2
    sget-object p1, Ldn/c$c;->MAX:Ldn/c$c;

    :goto_0
    return-object p1
.end method

.method public final f(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0, p1}, Ldn/c;->n(Landroid/util/AttributeSet;)V

    iget-object p1, p0, Ldn/c;->m:Landroid/graphics/Paint;

    iget v0, p0, Ldn/c;->x:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Ldn/c;->n:Landroid/graphics/Paint;

    iget v0, p0, Ldn/c;->y:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Ldn/c;->q:Landroid/graphics/Paint;

    iget v0, p0, Ldn/c;->k:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Ldn/c;->z:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Ldn/c;->r:Landroid/graphics/Paint;

    iget v1, p0, Ldn/c;->k:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Ldn/c;->z:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Ldn/c;->o:Landroid/graphics/Paint;

    iget v0, p0, Ldn/c;->A:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Ldn/c;->p:Landroid/graphics/Paint;

    iget v0, p0, Ldn/c;->A:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final g(FI)Z
    .locals 0

    invoke-virtual {p0, p2}, Ldn/c;->k(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Ldn/c;->getThumbWidth()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getBaseColor()I
    .locals 1

    iget v0, p0, Ldn/c;->x:I

    return v0
.end method

.method public final getCircleFillColor()I
    .locals 1

    iget v0, p0, Ldn/c;->A:I

    return v0
.end method

.method public final getCircleTextColor()I
    .locals 1

    iget v0, p0, Ldn/c;->z:I

    return v0
.end method

.method public final getCurrentMaxValue()I
    .locals 1

    iget v0, p0, Ldn/c;->C:I

    return v0
.end method

.method public final getCurrentMinValue()I
    .locals 1

    iget v0, p0, Ldn/c;->B:I

    return v0
.end method

.method public final getFillColor()I
    .locals 1

    iget v0, p0, Ldn/c;->y:I

    return v0
.end method

.method public final getMaxStep()I
    .locals 1

    iget v0, p0, Ldn/c;->u:I

    return v0
.end method

.method public final getMaxValue()I
    .locals 1

    iget v0, p0, Ldn/c;->v:I

    return v0
.end method

.method public final getMinStep()I
    .locals 1

    iget v0, p0, Ldn/c;->t:I

    return v0
.end method

.method public final getMinValue()I
    .locals 1

    iget v0, p0, Ldn/c;->w:I

    return v0
.end method

.method public final h(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ldn/c;->i:I

    iget v2, p0, Ldn/c;->j:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    return p1
.end method

.method public final i(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    return p1
.end method

.method public final j(F)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    double-to-float p1, v0

    :cond_1
    :goto_0
    float-to-double v2, p1

    div-double/2addr v2, v0

    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    return p1
.end method

.method public final k(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Ldn/c;->v:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr p1, v0

    invoke-static {p1}, LRf/d;->L0(F)I

    move-result p1

    return p1
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldn/c;->f:Z

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldn/c;->f:Z

    return-void
.end method

.method public final n(Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public final o(FLdn/c$c;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    double-to-float p1, v0

    :cond_1
    :goto_0
    float-to-double v2, p1

    div-double/2addr v2, v0

    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    sget-object v0, Ldn/c$c;->MIN:Ldn/c$c;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Ldn/c;->u(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Ldn/c;->t(I)V

    :goto_1
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

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Ldn/c;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1}, Ldn/c;->i(I)I

    move-result p1

    invoke-virtual {p0, p2}, Ldn/c;->h(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ldn/c$b;

    invoke-virtual {p1}, Ldn/c$b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Ldn/c;->setCurrentMinValue(I)V

    invoke-virtual {p1}, Ldn/c$b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ldn/c;->setCurrentMaxValue(I)V

    iget v0, p0, Ldn/c;->B:I

    iput v0, p0, Ldn/c;->g:I

    iget v0, p0, Ldn/c;->C:I

    iput v0, p0, Ldn/c;->h:I

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Ldn/c$b;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Ldn/c$b;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Ldn/c;->B:I

    invoke-virtual {v1, v0}, Ldn/c$b;->e(I)V

    iget v0, p0, Ldn/c;->C:I

    invoke-virtual {v1, v0}, Ldn/c$b;->d(I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Ldn/c;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ldn/c;->m()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    iget v0, p0, Ldn/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Ldn/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldn/c;->r(FF)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Ldn/c;->c:Ldn/c$c;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Ldn/c;->f:Z

    if-eqz v0, :cond_5

    iget v0, p0, Ldn/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Ldn/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldn/c;->q(FF)V

    invoke-virtual {p0, p1}, Ldn/c;->s(Landroid/view/MotionEvent;)V

    :cond_5
    iget-object p1, p0, Ldn/c;->s:Ldn/d;

    if-eqz p1, :cond_b

    iget v0, p0, Ldn/c;->B:I

    iget v1, p0, Ldn/c;->C:I

    invoke-interface {p1, p0, v0, v1, v2}, Ldn/d;->b(Ldn/c;IIZ)V

    goto/16 :goto_1

    :cond_6
    iget-boolean v0, p0, Ldn/c;->f:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Ldn/c;->s(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Ldn/c;->m()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    iget v0, p0, Ldn/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Ldn/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Ldn/c;->r(FF)V

    iget-object p1, p0, Ldn/c;->s:Ldn/d;

    if-eqz p1, :cond_8

    iget v0, p0, Ldn/c;->B:I

    iget v1, p0, Ldn/c;->C:I

    invoke-interface {p1, p0, v0, v1}, Ldn/d;->a(Ldn/c;II)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ldn/c;->l()V

    invoke-virtual {p0, p1}, Ldn/c;->s(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Ldn/c;->m()V

    :cond_8
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Ldn/c;->c:Ldn/c$c;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Ldn/c;->s:Ldn/d;

    if-eqz p1, :cond_b

    iget v0, p0, Ldn/c;->B:I

    iget v1, p0, Ldn/c;->C:I

    invoke-interface {p1, p0, v0, v1, v2}, Ldn/d;->b(Ldn/c;IIZ)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Ldn/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Ldn/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v0}, Ldn/c;->d(F)Ldn/c$c;

    move-result-object v0

    iput-object v0, p0, Ldn/c;->c:Ldn/c$c;

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_a
    iget v0, p0, Ldn/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Ldn/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Ldn/c;->p(FF)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Ldn/c;->l()V

    invoke-virtual {p0, p1}, Ldn/c;->s(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Ldn/c;->a()V

    :cond_b
    :goto_1
    return v2
.end method

.method public final p(FF)V
    .locals 0

    return-void
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final q(FF)V
    .locals 0

    return-void
.end method

.method public final r(FF)V
    .locals 0

    return-void
.end method

.method public final s(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Ldn/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    sget-object v0, Ldn/c$c;->MIN:Ldn/c$c;

    iget-object v1, p0, Ldn/c;->c:Ldn/c$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Ldn/c;->o(FLdn/c$c;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ldn/c$c;->MAX:Ldn/c$c;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Ldn/c;->o(FLdn/c$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final setBaseColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ldn/c;->x:I

    iget-object v0, p0, Ldn/c;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCircleFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ldn/c;->A:I

    iget-object v0, p0, Ldn/c;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldn/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCircleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ldn/c;->z:I

    iget-object v0, p0, Ldn/c;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Ldn/c;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurrentMaxValue(I)V
    .locals 1

    iget v0, p0, Ldn/c;->B:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ldn/c;->C:I

    iget v0, p0, Ldn/c;->w:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Ldn/c;->v:I

    :cond_1
    iget v0, p0, Ldn/c;->u:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    iput p1, p0, Ldn/c;->C:I

    :cond_2
    iget p1, p0, Ldn/c;->C:I

    iput p1, p0, Ldn/c;->h:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurrentMinValue(I)V
    .locals 1

    iget v0, p0, Ldn/c;->C:I

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ldn/c;->B:I

    iget v0, p0, Ldn/c;->w:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Ldn/c;->v:I

    :cond_1
    iget v0, p0, Ldn/c;->u:I

    rem-int v0, p1, v0

    if-nez v0, :cond_2

    iput p1, p0, Ldn/c;->B:I

    :cond_2
    iget p1, p0, Ldn/c;->B:I

    iput p1, p0, Ldn/c;->g:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Ldn/c;->y:I

    iget-object v0, p0, Ldn/c;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaxStep(I)V
    .locals 0

    iput p1, p0, Ldn/c;->u:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setMaxValue(I)V
    .locals 0

    iput p1, p0, Ldn/c;->v:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setMinStep(I)V
    .locals 0

    iput p1, p0, Ldn/c;->t:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setMinValue(I)V
    .locals 0

    iput p1, p0, Ldn/c;->w:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setOnRangeSeekBarViewChangeListener(Ldn/d;)V
    .locals 1
    .param p1    # Ldn/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldn/c;->s:Ldn/d;

    return-void
.end method

.method public final t(I)V
    .locals 2

    iget v0, p0, Ldn/c;->v:I

    iget v1, p0, Ldn/c;->w:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    invoke-static {p1}, LRf/d;->L0(F)I

    move-result p1

    int-to-double v0, p1

    double-to-int p1, v0

    iget v0, p0, Ldn/c;->w:I

    add-int/2addr p1, v0

    iget v0, p0, Ldn/c;->u:I

    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ldn/c;->setCurrentMaxValue(I)V

    return-void
.end method

.method public final u(I)V
    .locals 2

    iget v0, p0, Ldn/c;->v:I

    iget v1, p0, Ldn/c;->w:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    invoke-static {p1}, LRf/d;->L0(F)I

    move-result p1

    int-to-double v0, p1

    double-to-int p1, v0

    iget v0, p0, Ldn/c;->w:I

    add-int/2addr p1, v0

    iget v0, p0, Ldn/c;->t:I

    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ldn/c;->setCurrentMinValue(I)V

    return-void
.end method
