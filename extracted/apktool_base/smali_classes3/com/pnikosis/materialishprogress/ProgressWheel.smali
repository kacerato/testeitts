.class public Lcom/pnikosis/materialishprogress/ProgressWheel;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/ProgressWheel$c;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "ProgressWheel"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:D

.field public j:D

.field public k:F

.field public l:Z

.field public m:J

.field public n:I

.field public o:I

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/graphics/Paint;

.field public r:Landroid/graphics/RectF;

.field public s:F

.field public t:J

.field public u:Z

.field public v:F

.field public w:F

.field public x:Z

.field public y:Lcom/pnikosis/materialishprogress/ProgressWheel$b;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 27
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->b:I

    const/16 p1, 0x10e

    .line 28
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->c:I

    const-wide/16 v0, 0xc8

    .line 29
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->d:J

    const/16 p1, 0x1c

    .line 30
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    const/4 p1, 0x4

    .line 31
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 32
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 35
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const/high16 v3, -0x56000000

    .line 39
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    const v3, 0xffffff

    .line 40
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 41
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    .line 42
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    .line 43
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    .line 44
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 45
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 46
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 47
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 48
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 49
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->b:I

    const/16 v0, 0x10e

    .line 3
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->c:I

    const-wide/16 v0, 0xc8

    .line 4
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->d:J

    const/16 v0, 0x1c

    .line 5
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 7
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 10
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const-wide/16 v2, 0x0

    .line 13
    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const/high16 v4, -0x56000000

    .line 14
    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    const v4, 0xffffff

    .line 15
    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 16
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    .line 17
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    .line 18
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/high16 v4, 0x43660000    # 230.0f

    .line 19
    iput v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 20
    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 21
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 22
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 23
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 24
    sget-object v0, Lcom/pnikosis/materialishprogress/a$c;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->b(Landroid/content/res/TypedArray;)V

    .line 25
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->f()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    return v0
.end method

.method public final b(Landroid/content/res/TypedArray;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    sget v1, Lcom/pnikosis/materialishprogress/a$c;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->d:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->j:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->k:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->c:I

    iget-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    double-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->b:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->i:I

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    sget v0, Lcom/pnikosis/materialishprogress/a$c;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->i()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$b;

    invoke-interface {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$b;->a(F)V

    :cond_0
    return-void
.end method

.method public final e(F)V
    .locals 1

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$b;->a(F)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->z:Z

    return-void
.end method

.method public final g(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-boolean v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method public getBarColor()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final k(J)V
    .locals 4

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    iget-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    :cond_0
    iget-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    iget-boolean p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const/high16 v0, 0x437e0000    # 254.0f

    if-eqz p2, :cond_1

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, v0

    iget p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    sub-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    iget v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    mul-float/2addr v0, v8

    div-float/2addr v0, v3

    invoke-virtual {p0, v6, v7}, Lcom/pnikosis/materialishprogress/ProgressWheel;->k(J)V

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->e(F)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    add-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    move v7, v1

    :goto_0
    move v8, v3

    goto :goto_1

    :cond_2
    move v7, v0

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_3
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v3

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    mul-float/2addr v6, v3

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->d()V

    :cond_5
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iget-boolean v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    if-nez v3, :cond_6

    div-float/2addr v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    float-to-double v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v0, v6

    mul-float/2addr v0, v5

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-double v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    float-to-double v10, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v8, v6

    double-to-float v1, v8

    mul-float/2addr v1, v5

    move v12, v1

    move v1, v0

    move v0, v12

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    move v9, v5

    goto :goto_3

    :cond_7
    move v9, v0

    :goto_3
    iget-object v7, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    sub-float v8, v1, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->b:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->c:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->d:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->e:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->f:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->g:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->h:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->i:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->j:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->k:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    iget-boolean p1, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->l:Z

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;

    invoke-direct {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$c;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->b:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->c:F

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->d:Z

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->e:F

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->f:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->g:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->h:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->i:I

    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->j:I

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->k:Z

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$c;->l:Z

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->g(II)V

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->h()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->h()V

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/pnikosis/materialishprogress/ProgressWheel$b;)V
    .locals 0

    iput-object p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$b;

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->d()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move p1, v1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->d()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    move p1, v1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->h()V

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    return-void
.end method
