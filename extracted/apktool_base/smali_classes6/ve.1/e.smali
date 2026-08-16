.class public Lve/e;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field public final b:Lre/c;

.field public final c:Lve/a;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Lre/c;Lve/a;IZ)V
    .locals 0
    .param p1    # Lre/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lve/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lve/e;->b:Lre/c;

    iput-object p2, p0, Lve/e;->c:Lve/a;

    iput p3, p0, Lve/e;->d:I

    iput-boolean p4, p0, Lve/e;->e:Z

    return-void
.end method

.method public static b(IILandroid/graphics/Paint;)F
    .locals 0
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method public a()Lve/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lve/e;->c:Lve/a;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    move-object v2, p1

    move/from16 v0, p6

    move/from16 v3, p8

    move-object/from16 v8, p9

    iget-object v4, v1, Lve/e;->c:Lve/a;

    invoke-static {p1, p2}, LAe/i;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I

    move-result v5

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lve/a;->k(IF)V

    iget-object v4, v1, Lve/e;->c:Lve/a;

    invoke-virtual {v4}, Lve/a;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    :try_start_0
    iget v7, v1, Lve/e;->d:I

    const/4 v9, 0x2

    if-ne v9, v7, :cond_0

    sub-int v0, v3, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v9

    :goto_0
    sub-int/2addr v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne v0, v7, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_0

    :cond_1
    :goto_1
    int-to-float v0, v5

    move v7, p5

    invoke-virtual {p1, p5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, p1}, Lve/a;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :goto_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_2
    move v7, p5

    invoke-static {v0, v3, v8}, Lve/e;->b(IILandroid/graphics/Paint;)F

    move-result v0

    iget-boolean v3, v1, Lve/e;->e:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lve/e;->b:Lre/c;

    invoke-virtual {v3, v8}, Lre/c;->f(Landroid/graphics/Paint;)V

    :cond_3
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, v0

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lve/e;->c:Lve/a;

    invoke-virtual {v0}, Lve/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lve/e;->c:Lve/a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p5, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const/4 p3, 0x0

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-boolean p5, p0, Lve/e;->e:Z

    if-eqz p5, :cond_2

    iget-object p5, p0, Lve/e;->b:Lre/c;

    invoke-virtual {p5, p1}, Lre/c;->f(Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    return p1
.end method
