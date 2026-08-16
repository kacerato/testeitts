.class public Lq6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:LAc/b;

.field public static final l:LAc/b;

.field public static final m:I = 0x7f050145

.field public static final n:LAc/b;

.field public static final o:I = 0x7f0500f1


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lq6/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, Lq6/c;->k:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    sput-object v0, Lq6/c;->l:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LAc/b;

    sput-object v0, Lq6/c;->n:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lq6/c;->a:Ljava/util/LinkedList;

    const/16 v0, 0x3c

    iput v0, p0, Lq6/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lq6/c;->c:[I

    return-void
.end method


# virtual methods
.method public a(I)Lq6/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6/b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lq6/c;->b:I

    return v0
.end method

.method public c(Landroid/graphics/Bitmap;Lq6/b;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "selected"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v8, :cond_1a

    if-gtz v9, :cond_1

    goto/16 :goto_8

    :cond_1
    mul-int v0, v8, v9

    iget-object v2, v1, Lq6/c;->c:[I

    if-eqz v2, :cond_2

    array-length v2, v2

    if-eq v2, v0, :cond_3

    :cond_2
    new-array v0, v0, [I

    iput-object v0, v1, Lq6/c;->c:[I

    sget-object v0, Lq6/c;->k:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lq6/c;->d:I

    sget-object v0, Lq6/c;->l:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lq6/c;->f:I

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050145

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v1, Lq6/c;->g:I

    sget-object v0, Lq6/c;->n:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lq6/c;->h:I

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0500f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v1, Lq6/c;->i:I

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lq6/c;->e:I

    iget-object v2, v1, Lq6/c;->c:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    int-to-float v0, v8

    iget v2, v1, Lq6/c;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget v3, v1, Lq6/c;->b:I

    mul-int/2addr v3, v0

    sub-int v3, v8, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v1, Lq6/c;->a:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lq6/c;->a:Ljava/util/LinkedList;

    const/4 v6, 0x0

    new-array v7, v6, [Lq6/b;

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lq6/b;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, v1, Lq6/c;->b:I

    array-length v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gtz v4, :cond_5

    iget-object v3, v1, Lq6/c;->c:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :cond_5
    const v7, 0x3c23d70a    # 0.01f

    move v10, v6

    :goto_0
    iget-object v11, v1, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v1, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq6/b;

    invoke-virtual {v11}, Lq6/b;->a()F

    move-result v11

    invoke-static {v11, v7}, LNc/b;->S0(FF)F

    move-result v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    iget v10, v1, Lq6/c;->j:F

    cmpl-float v11, v7, v10

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v11, :cond_7

    iput v7, v1, Lq6/c;->j:F

    goto :goto_1

    :cond_7
    invoke-static {}, LK8/d;->d()F

    move-result v11

    mul-float/2addr v11, v12

    invoke-static {v10, v7, v11}, LNc/b;->z(FFF)F

    move-result v7

    iput v7, v1, Lq6/c;->j:F

    :goto_1
    const/4 v7, 0x0

    move v11, v6

    move-object v10, v7

    :goto_2
    iget-object v13, v1, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-ge v11, v13, :cond_c

    iget-object v13, v1, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v13, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq6/b;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lq6/b;->a()F

    move-result v14

    invoke-virtual {v13}, Lq6/b;->a()F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    :cond_8
    move-object v7, v13

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lq6/b;->a()F

    move-result v14

    invoke-virtual {v13}, Lq6/b;->a()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_b

    :cond_a
    move-object v10, v13

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_c
    move v11, v6

    :goto_3
    if-ge v11, v4, :cond_19

    aget-object v13, v5, v11

    invoke-virtual {v13}, Lq6/b;->a()F

    move-result v14

    iget v15, v1, Lq6/c;->j:F

    div-float/2addr v14, v15

    const/4 v15, 0x0

    cmpg-float v16, v14, v15

    if-gez v16, :cond_d

    move v14, v15

    :cond_d
    cmpl-float v15, v14, v12

    if-lez v15, :cond_e

    move v14, v12

    :cond_e
    mul-int v15, v11, v0

    add-int/2addr v15, v3

    add-int v6, v15, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v15, v8, :cond_f

    if-gtz v6, :cond_10

    :cond_f
    move-object/from16 v13, p2

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v20, v4

    move-object/from16 v19, v5

    goto/16 :goto_7

    :cond_10
    if-gez v15, :cond_11

    const/4 v15, 0x0

    :cond_11
    sub-float v14, v12, v14

    int-to-float v2, v9

    sub-float/2addr v2, v12

    mul-float/2addr v14, v2

    move-object/from16 v17, v13

    float-to-double v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    if-gez v12, :cond_12

    const/4 v12, 0x0

    :cond_12
    add-int/lit8 v13, v9, -0x1

    if-le v12, v13, :cond_13

    move v12, v13

    :cond_13
    const/4 v13, 0x1

    add-int/2addr v12, v13

    :goto_4
    if-ge v12, v9, :cond_f

    mul-int v14, v12, v8

    move v2, v15

    :goto_5
    if-ge v2, v6, :cond_18

    move-object/from16 v13, p2

    move-object/from16 v21, v17

    move/from16 v17, v0

    move-object/from16 v0, v21

    if-ne v0, v13, :cond_14

    move/from16 v18, v3

    iget-object v3, v1, Lq6/c;->c:[I

    add-int v19, v14, v2

    move/from16 v20, v4

    iget v4, v1, Lq6/c;->f:I

    aput v4, v3, v19

    move-object/from16 v19, v5

    goto :goto_6

    :cond_14
    move/from16 v18, v3

    move/from16 v20, v4

    invoke-virtual {v0}, Lq6/b;->e()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v1, Lq6/c;->c:[I

    add-int v4, v14, v2

    move-object/from16 v19, v5

    iget v5, v1, Lq6/c;->i:I

    aput v5, v3, v4

    goto :goto_6

    :cond_15
    move-object/from16 v19, v5

    if-ne v0, v10, :cond_16

    iget-object v3, v1, Lq6/c;->c:[I

    add-int v4, v14, v2

    iget v5, v1, Lq6/c;->h:I

    aput v5, v3, v4

    goto :goto_6

    :cond_16
    if-ne v0, v7, :cond_17

    iget-object v3, v1, Lq6/c;->c:[I

    add-int v4, v14, v2

    iget v5, v1, Lq6/c;->g:I

    aput v5, v3, v4

    goto :goto_6

    :cond_17
    iget-object v3, v1, Lq6/c;->c:[I

    add-int v4, v14, v2

    iget v5, v1, Lq6/c;->d:I

    aput v5, v3, v4

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v4, v20

    const/4 v13, 0x1

    move/from16 v21, v17

    move-object/from16 v17, v0

    move/from16 v0, v21

    goto :goto_5

    :cond_18
    move-object/from16 v13, p2

    move/from16 v18, v3

    move/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v17

    move/from16 v17, v0

    move-object/from16 v0, v21

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    move/from16 v21, v17

    move-object/from16 v17, v0

    move/from16 v0, v21

    goto :goto_4

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    move/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v4, v20

    const/4 v6, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_19
    iget-object v3, v1, Lq6/c;->c:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1a
    :goto_8
    return-void
.end method

.method public d(Lq6/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameHistory"
        }
    .end annotation

    iget-object v0, p0, Lq6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v1, p0, Lq6/c;->b:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq6/b;

    invoke-virtual {p1}, Lq6/b;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    iput p1, p0, Lq6/c;->b:I

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lq6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lq6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
