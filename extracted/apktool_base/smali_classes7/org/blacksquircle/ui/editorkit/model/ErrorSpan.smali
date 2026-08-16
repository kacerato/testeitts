.class public final Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# annotations
.annotation runtime LF6/c;
.end annotation


# instance fields
.field private final color:I

.field private end:I

.field private lineNumber:I

.field private final lineWidth:F

.field private start:I

.field private final waveSize:F


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->lineNumber:I

    .line 3
    iput p2, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->start:I

    .line 4
    iput p3, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->end:I

    .line 5
    iput p4, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->color:I

    .line 6
    iput p5, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->lineWidth:F

    .line 7
    iput p6, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    return-void
.end method

.method public synthetic constructor <init>(IIIIFFILkotlin/jvm/internal/x;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/high16 p4, -0x10000

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    const/high16 p8, 0x3f000000    # 0.5f

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    int-to-float p4, p4

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p5

    add-float p5, p4, p8

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p4, 0x3

    int-to-float p4, p4

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p4, p5

    add-float p6, p4, p8

    :cond_2
    move v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 15
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    const-string v3, "canvas"

    move-object/from16 v10, p1

    invoke-static {v10, v3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "paint"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget v1, v0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->color:I

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->lineWidth:F

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v1, v4

    move/from16 v4, p3

    int-to-float v11, v4

    move v12, v11

    :goto_0
    add-float v4, v11, v2

    cmpg-float v4, v12, v4

    if-gez v4, :cond_0

    move/from16 v13, p7

    int-to-float v14, v13

    iget v4, v0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    add-float v7, v12, v4

    sub-float v8, v14, v4

    move-object/from16 v4, p1

    move v5, v12

    move v6, v14

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v4, v0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    add-float v5, v12, v4

    sub-float v6, v14, v4

    add-float/2addr v12, v1

    move-object/from16 v4, p1

    move v7, v12

    move v8, v14

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->color:I

    return v0
.end method

.method public final getEnd()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->end:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->lineNumber:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->start:I

    return v0
.end method

.method public final setEnd(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->end:I

    return-void
.end method

.method public final setLineNumber(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->lineNumber:I

    return-void
.end method

.method public final setStart(I)V
    .locals 0

    iput p1, p0, Lorg/blacksquircle/ui/editorkit/model/ErrorSpan;->start:I

    return-void
.end method
