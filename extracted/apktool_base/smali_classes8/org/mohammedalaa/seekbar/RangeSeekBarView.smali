.class public final Lorg/mohammedalaa/seekbar/RangeSeekBarView;
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
        Lorg/mohammedalaa/seekbar/RangeSeekBarView$a;,
        Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;,
        Lorg/mohammedalaa/seekbar/RangeSeekBarView$c;
    }
.end annotation


# static fields
.field public static final A:I = -0x10000

.field public static final B:I = -0xbbbbbc

.field public static final C:I = -0xff0100

.field public static final D:I = 0x0

.field public static final E:I = 0x0

.field public static final F:I = 0x64

.field public static final G:I = 0x0

.field public static final y:Lorg/mohammedalaa/seekbar/RangeSeekBarView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z:I = -0x777778


# instance fields
.field public b:F

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ldn/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Z

.field public m:J

.field public n:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Ldn/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->y:Lorg/mohammedalaa/seekbar/RangeSeekBarView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xf

    .line 2
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    .line 7
    sget-object p1, Ldn/b;->LEFT_TO_RIGHT:Ldn/b;

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    const-wide/16 v1, 0xbb8

    .line 8
    iput-wide v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m:J

    const/16 p1, 0x64

    .line 9
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    const p1, -0x777778

    .line 10
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->s:I

    const/high16 p1, -0x10000

    .line 11
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->t:I

    const p1, -0xbbbbbc

    .line 12
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->u:I

    const p1, -0xff0100

    .line 13
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->v:I

    .line 14
    iput-boolean v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->w:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xf

    .line 16
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f:I

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    .line 21
    sget-object p1, Ldn/b;->LEFT_TO_RIGHT:Ldn/b;

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    const-wide/16 v1, 0xbb8

    .line 22
    iput-wide v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m:J

    const/16 p1, 0x64

    .line 23
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    const p1, -0x777778

    .line 24
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->s:I

    const/high16 p1, -0x10000

    .line 25
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->t:I

    const p1, -0xbbbbbc

    .line 26
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->u:I

    const p1, -0xff0100

    .line 27
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->v:I

    .line 28
    iput-boolean v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->w:Z

    .line 29
    invoke-virtual {p0, p2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lorg/mohammedalaa/seekbar/RangeSeekBarView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    if-eqz v0, :cond_0

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Ldn/e;->b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final c(III)I
    .locals 0

    sub-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x64

    sub-int/2addr p3, p2

    :try_start_0
    div-int/2addr p1, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/graphics/Canvas;Ldn/b;)V
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

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c:I

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

    iget-object v8, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v7, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    float-to-int v7, v7

    iget v8, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    iget v9, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    invoke-virtual {p0, v7, v8, v9}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c(III)I

    move-result v7

    int-to-float v7, v7

    const/16 v8, 0x64

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v0, v7

    add-float/2addr v0, v5

    sget-object v7, Lorg/mohammedalaa/seekbar/RangeSeekBarView$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v7, p2

    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v5, v3, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0, v3, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    iget-object v3, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d:I

    int-to-float p2, p2

    iget-object v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr v1, p2

    iget-object p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Ldn/b;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    sub-float v5, v1, v2

    add-float/2addr v2, v1

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v7, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    float-to-int v6, v6

    iget v7, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    iget v8, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c(III)I

    move-result v6

    int-to-float v6, v6

    const/16 v7, 0x64

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v0, v6

    sget-object v6, Lorg/mohammedalaa/seekbar/RangeSeekBarView$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v6, p2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v5, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v5, v0, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    iget-object v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d:I

    int-to-float p2, p2

    iget-object v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr v0, p2

    iget-object p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final f(Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i(Landroid/util/AttributeSet;)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->s:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->t:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->u:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->v:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k()V

    return-void
.end method

.method public final g(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c:I

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    return p1
.end method

.method public final getBarHeight()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c:I

    return v0
.end method

.method public final getBaseColor()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->s:I

    return v0
.end method

.method public final getCircleFillColor()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->v:I

    return v0
.end method

.method public final getCircleRadius()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d:I

    return v0
.end method

.method public final getCircleTextColor()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->u:I

    return v0
.end method

.method public final getCircleTextSize()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->e:I

    return v0
.end method

.method public final getCurrentValue()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    return v0
.end method

.method public final getDefaultPadding()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f:I

    return v0
.end method

.method public final getFillColor()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->t:I

    return v0
.end method

.method public final getMaxValue()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    return v0
.end method

.method public final getMinValue()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    return v0
.end method

.method public final getStep()I
    .locals 1

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->p:I

    return v0
.end method

.method public final h(I)I
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

.method public final i(Landroid/util/AttributeSet;)V
    .locals 0

    iget p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final j(ZJ)V
    .locals 0

    iput-boolean p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->l:Z

    iput-wide p2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m:J

    return-void
.end method

.method public final k()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    sget-object v1, Ldn/b;->BOTTOM_TO_TOP:Ldn/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Ldn/b;->RIGHT_TO_LEFT:Ldn/b;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->l()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Value must be in range   (min <= value <= max) "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 2

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    invoke-virtual {p0, v1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMaxValue(I)V

    invoke-virtual {p0, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMinValue(I)V

    return-void
.end method

.method public final m(I)V
    .locals 2

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    invoke-static {p1}, LRf/d;->L0(F)I

    move-result p1

    int-to-double v0, p1

    double-to-int p1, v0

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->p:I

    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    sget-object v1, Lorg/mohammedalaa/seekbar/RangeSeekBarView$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Ldn/b;->RIGHT_TO_LEFT:Ldn/b;

    invoke-virtual {p0, p1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d(Landroid/graphics/Canvas;Ldn/b;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Ldn/b;->LEFT_TO_RIGHT:Ldn/b;

    invoke-virtual {p0, p1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d(Landroid/graphics/Canvas;Ldn/b;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Ldn/b;->BOTTOM_TO_TOP:Ldn/b;

    invoke-virtual {p0, p1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->e(Landroid/graphics/Canvas;Ldn/b;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Ldn/b;->TOP_TO_BOTTOM:Ldn/b;

    invoke-virtual {p0, p1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->e(Landroid/graphics/Canvas;Ldn/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h(I)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g(I)I

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

    check-cast p1, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;

    invoke-virtual {p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    int-to-float v0, v0

    iput v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

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

    new-instance v1, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    invoke-virtual {v1, v0}, Lorg/mohammedalaa/seekbar/RangeSeekBarView$b;->c(I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
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

    iget-boolean v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->w:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    sget-object v2, Lorg/mohammedalaa/seekbar/RangeSeekBarView$c;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    int-to-double v6, p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_1

    :goto_2
    const-wide/16 v8, 0x0

    cmpg-double p1, v4, v8

    if-gez p1, :cond_4

    move-wide v4, v8

    goto :goto_3

    :cond_4
    cmpl-double p1, v4, v6

    if-lez p1, :cond_5

    move-wide v4, v6

    :cond_5
    :goto_3
    if-eqz v0, :cond_8

    const/16 p1, 0x64

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_4

    :cond_6
    div-double/2addr v4, v6

    int-to-double v0, p1

    mul-double/2addr v4, v0

    double-to-int p1, v4

    invoke-virtual {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m(I)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    invoke-interface {p1, p0, v0, v3}, Ldn/e;->b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V

    goto :goto_4

    :cond_7
    div-double/2addr v4, v6

    int-to-double v0, p1

    mul-double/2addr v4, v0

    double-to-int p1, v4

    invoke-virtual {p0, p1}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m(I)V

    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    invoke-interface {p1, p0, v0}, Ldn/e;->a(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    invoke-interface {p1, p0, v0}, Ldn/e;->c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V

    :cond_9
    :goto_4
    return v3
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final setBarHeight(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setBaseColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->s:I

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->g:Landroid/graphics/Paint;

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

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->v:I

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setCircleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->u:I

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCircleTextSize(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setCurrentValue(I)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    if-le p1, v2, :cond_1

    :cond_0
    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    :cond_1
    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->p:I

    rem-int v2, p1, v2

    if-nez v2, :cond_2

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    :cond_2
    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->n:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-boolean p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->l:Z

    if-eqz p1, :cond_8

    int-to-float p1, v1

    iget v2, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->n:Landroid/animation/ValueAnimator;

    iget p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->k:Ldn/b;

    sget-object v1, Ldn/b;->BOTTOM_TO_TOP:Ldn/b;

    if-eq v0, v1, :cond_5

    sget-object v1, Ldn/b;->RIGHT_TO_LEFT:Ldn/b;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m:J

    long-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-long v0, v0

    goto :goto_2

    :cond_5
    :goto_1
    iget-wide v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->m:J

    long-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->n:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_6
    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->n:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    new-instance v0, Ldn/f;

    invoke-direct {v0, p0}, Ldn/f;-><init>(Lorg/mohammedalaa/seekbar/RangeSeekBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    iget-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->n:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_8
    iget p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->x:I

    int-to-float p1, p1

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->b:F

    iget-object v1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    if-eqz v1, :cond_9

    float-to-int p1, p1

    invoke-interface {v1, p0, p1, v0}, Ldn/e;->b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDefaultPadding(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setFillColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->t:I

    iget-object v0, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaxValue(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->q:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setMinValue(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->r:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setOnRangeSeekBarViewChangeListener(Ldn/e;)V
    .locals 1
    .param p1    # Ldn/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->o:Ldn/e;

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    iput p1, p0, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->p:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
