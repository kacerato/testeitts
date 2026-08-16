.class public Lue/e;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lue/e$d;,
        Lue/e$e;,
        Lue/e$f;,
        Lue/e$c;
    }
.end annotation


# static fields
.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2


# instance fields
.field public final b:Lue/h;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lue/e$e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/text/TextPaint;

.field public final f:Z

.field public final g:Z

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Paint;

.field public j:I

.field public k:I

.field public l:Lue/e$f;


# direct methods
.method public constructor <init>(Lue/h;Ljava/util/List;ZZ)V
    .locals 2
    .param p1    # Lue/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lue/h;",
            "Ljava/util/List<",
            "Lue/e$e;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lue/e;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lue/e;->i:Landroid/graphics/Paint;

    iput-object p1, p0, Lue/e;->b:Lue/h;

    iput-object p2, p0, Lue/e;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lue/e;->d:Ljava/util/List;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lue/e;->e:Landroid/text/TextPaint;

    iput-boolean p3, p0, Lue/e;->f:Z

    iput-boolean p4, p0, Lue/e;->g:Z

    return-void
.end method

.method public static synthetic a(Lue/e;)Lue/e$f;
    .locals 0

    iget-object p0, p0, Lue/e;->l:Lue/e$f;

    return-object p0
.end method

.method public static synthetic b(Lue/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lue/e;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lue/e;IILue/e$e;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lue/e;->i(IILue/e$e;)V

    return-void
.end method

.method public static d(I)Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 17
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-static/range {p1 .. p2}, LAe/i;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I

    move-result v8

    invoke-virtual {v1, v8}, Lue/e;->k(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iput v8, v1, Lue/e;->j:I

    instance-of v8, v7, Landroid/text/TextPaint;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lue/e;->e:Landroid/text/TextPaint;

    move-object v9, v7

    check-cast v9, Landroid/text/TextPaint;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lue/e;->e:Landroid/text/TextPaint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lue/e;->j()V

    :cond_1
    iget-object v8, v1, Lue/e;->b:Lue/h;

    invoke-virtual {v8}, Lue/h;->j()I

    move-result v8

    iget-object v9, v1, Lue/e;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Lue/e;->f(I)I

    move-result v10

    iget v11, v1, Lue/e;->j:I

    div-int/2addr v11, v9

    sub-int v11, v10, v11

    iget-boolean v12, v1, Lue/e;->f:Z

    if-eqz v12, :cond_2

    iget-object v12, v1, Lue/e;->b:Lue/h;

    iget-object v13, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Lue/h;->c(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget-boolean v12, v1, Lue/e;->g:Z

    if-eqz v12, :cond_3

    iget-object v12, v1, Lue/e;->b:Lue/h;

    iget-object v13, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Lue/h;->d(Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v12, v1, Lue/e;->b:Lue/h;

    iget-object v13, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v12, v13}, Lue/h;->b(Landroid/graphics/Paint;)V

    :goto_1
    iget-object v12, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    :try_start_0
    iget-object v14, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget v15, v1, Lue/e;->j:I

    move/from16 p7, v8

    sub-int v8, v6, v5

    invoke-virtual {v14, v13, v13, v15, v8}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v8, v5

    invoke-virtual {v2, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget-object v14, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_4
    move/from16 p7, v8

    :goto_2
    iget-object v8, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v7, v1, Lue/e;->b:Lue/h;

    iget-object v8, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Lue/h;->a(Landroid/graphics/Paint;)V

    iget-object v7, v1, Lue/e;->b:Lue/h;

    iget-object v8, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Lue/h;->i(Landroid/graphics/Paint;)I

    move-result v7

    if-lez v7, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move v12, v13

    :goto_3
    sub-int v14, v6, v5

    iget v15, v1, Lue/e;->k:I

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x4

    if-eqz v12, :cond_7

    move-object v8, v0

    check-cast v8, Landroid/text/Spanned;

    const-class v13, Lue/g;

    move/from16 v16, v15

    move/from16 v15, p4

    invoke-interface {v8, v3, v15, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lue/g;

    if-eqz v8, :cond_6

    array-length v13, v8

    if-lez v13, :cond_6

    const/4 v13, 0x0

    aget-object v8, v8, v13

    invoke-static {v3, v0, v8}, LAe/f;->b(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lue/e;->h:Landroid/graphics/Rect;

    float-to-int v3, v4

    iget v8, v1, Lue/e;->j:I

    add-int v13, v5, v7

    invoke-virtual {v0, v3, v5, v8, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget-object v3, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    iget-object v0, v1, Lue/e;->h:Landroid/graphics/Rect;

    float-to-int v3, v4

    sub-int v13, v6, v7

    iget v15, v1, Lue/e;->j:I

    invoke-virtual {v0, v3, v13, v15, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget-object v3, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v13, v8

    goto :goto_5

    :cond_7
    move/from16 v16, v15

    const/4 v13, 0x0

    :goto_5
    div-int/lit8 v0, v7, 0x2

    if-eqz v13, :cond_8

    move v13, v7

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    sub-int/2addr v14, v7

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v3, v9, :cond_c

    iget-object v8, v1, Lue/e;->d:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/Layout;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    move/from16 p2, v15

    mul-int v15, v3, v10

    int-to-float v15, v15

    add-float/2addr v15, v4

    int-to-float v4, v5

    :try_start_1
    invoke-virtual {v2, v15, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v12, :cond_a

    if-nez v3, :cond_9

    iget-object v4, v1, Lue/e;->h:Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v13, v7, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move/from16 v4, p2

    goto :goto_b

    :cond_9
    const/4 v15, 0x0

    iget-object v4, v1, Lue/e;->h:Landroid/graphics/Rect;

    neg-int v15, v0

    invoke-virtual {v4, v15, v13, v0, v14}, Landroid/graphics/Rect;->set(IIII)V

    :goto_8
    iget-object v4, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget-object v15, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v9, -0x1

    if-ne v3, v4, :cond_a

    iget-object v4, v1, Lue/e;->h:Landroid/graphics/Rect;

    sub-int v15, v10, v7

    sub-int/2addr v15, v11

    move/from16 p3, v0

    sub-int v0, v10, v11

    invoke-virtual {v4, v15, v13, v0, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Lue/e;->h:Landroid/graphics/Rect;

    iget-object v4, v1, Lue/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_9
    move/from16 v0, p7

    goto :goto_a

    :cond_a
    move/from16 p3, v0

    goto :goto_9

    :goto_a
    int-to-float v4, v0

    add-int v15, v0, v16

    int-to-float v15, v15

    invoke-virtual {v2, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v8, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_b

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v4

    :cond_b
    move/from16 v4, p2

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, p5

    move/from16 p7, v0

    move/from16 v0, p3

    goto :goto_7

    :goto_b
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_c
    iget v0, v1, Lue/e;->k:I

    if-eq v0, v6, :cond_d

    iget-object v0, v1, Lue/e;->l:Lue/e$f;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lue/e$f;->a()V

    :cond_d
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lue/e;->f(I)I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 2

    iget v0, p0, Lue/e;->j:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public g(I)Landroid/text/Layout;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lue/e;->f(I)I

    move-result v1

    div-int/2addr p1, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/Layout;

    return-object p1
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
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

    iget-object p1, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    if-eqz p5, :cond_2

    iget-object p1, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/text/Layout;

    invoke-virtual {p4}, Landroid/text/Layout;->getHeight()I

    move-result p4

    if-le p4, p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_1
    iput p3, p0, Lue/e;->k:I

    iget-object p1, p0, Lue/e;->b:Lue/h;

    invoke-virtual {p1}, Lue/h;->j()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    neg-int p1, p3

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_2
    iget p1, p0, Lue/e;->j:I

    return p1
.end method

.method public h(Lue/e$f;)V
    .locals 0
    .param p1    # Lue/e$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lue/e;->l:Lue/e$f;

    return-void
.end method

.method public final i(IILue/e$e;)V
    .locals 11
    .param p3    # Lue/e$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lue/e$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lue/e$a;-><init>(Lue/e;IILue/e$e;)V

    iget-object v1, p3, Lue/e$e;->b:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p3, Lue/e$e;->b:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v5, p0, Lue/e;->e:Landroid/text/TextPaint;

    iget p3, p3, Lue/e$e;->a:I

    invoke-static {p3}, Lue/e;->d(I)Landroid/text/Layout$Alignment;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v2

    move-object v4, v1

    move v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-static {v1, v2}, Lte/m;->a(Landroid/text/Spannable;Landroid/text/Layout;)V

    invoke-virtual {p0, v1, v0}, Lue/e;->l(Landroid/text/Spannable;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {p2, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lue/e;->e:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lue/e;->f:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lue/e;->b:Lue/h;

    invoke-virtual {v1}, Lue/h;->j()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0}, Lue/e;->f(I)I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lue/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lue/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lue/e;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lue/e$e;

    invoke-virtual {p0, v2, v0, v3}, Lue/e;->i(IILue/e$e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(I)Z
    .locals 1

    iget v0, p0, Lue/e;->j:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l(Landroid/text/Spannable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Landroid/text/Spannable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lve/e;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lve/e;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v1}, Lve/e;->a()Lve/a;

    move-result-object v1

    invoke-virtual {v1}, Lve/a;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lue/e$b;

    invoke-direct {v3, p0, p2}, Lue/e$b;-><init>(Lue/e;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lve/a;->o(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
