.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final j:I = 0x6

.field public static final k:I = 0x4


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public i:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    .line 10
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    .line 18
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 19
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    .line 20
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    .line 28
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    .line 30
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public final b(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final c(Landroid/graphics/Canvas;FF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v7, v2, v3

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, p3

    const/high16 v2, 0x40800000    # 4.0f

    div-float v7, v1, v2

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;FF)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    aget v3, v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->a(F)F

    move-result v3

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    array-length v7, v6

    if-ne v7, v5, :cond_1

    move v7, p2

    goto :goto_1

    :cond_1
    int-to-float v7, v2

    mul-float/2addr v7, v1

    array-length v8, v6

    sub-int/2addr v8, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    :goto_1
    sub-float v3, v0, v3

    mul-float/2addr v3, p3

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {v4, v7, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_2
    array-length v8, v6

    if-ne v8, v5, :cond_3

    move v8, p2

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v2, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v1

    array-length v9, v6

    sub-int/2addr v9, v5

    int-to-float v5, v9

    div-float/2addr v8, v5

    :goto_2
    add-int/lit8 v5, v2, -0x1

    aget v5, v6, v5

    div-float/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->a(F)F

    move-result v4

    sub-float v4, v0, v4

    mul-float/2addr v4, p3

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v4, v7, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v4, v7, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    array-length v0, v3

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_5
    move p2, v1

    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->h:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    :goto_5
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05016d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    const v1, 0x1fffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    const v2, -0xc93801

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    const v2, 0x2227b8f7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    const v2, 0x7036c7ff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
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

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1, v0, v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->c(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p0, p1, v0, v7}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->d(Landroid/graphics/Canvas;FF)V

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->f:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHistory([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;->i:[F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
