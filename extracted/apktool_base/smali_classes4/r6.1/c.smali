.class public Lr6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:LAc/b;

.field public static final j:LAc/b;

.field public static final k:I = 0x7f0500f1


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lr6/b;",
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

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, Lr6/c;->i:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    sput-object v0, Lr6/c;->j:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr6/c;->a:Ljava/util/LinkedList;

    const/16 v0, 0x3c

    iput v0, p0, Lr6/c;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr6/c;->c:[I

    return-void
.end method


# virtual methods
.method public a(I)Lr6/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lr6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/b;

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

    iget v0, p0, Lr6/c;->b:I

    return v0
.end method

.method public c(Landroid/graphics/Bitmap;Lr6/b;)V
    .locals 19
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

    if-lez v8, :cond_13

    if-gtz v9, :cond_1

    goto/16 :goto_7

    :cond_1
    mul-int v0, v8, v9

    iget-object v2, v1, Lr6/c;->c:[I

    if-eqz v2, :cond_2

    array-length v2, v2

    if-eq v2, v0, :cond_3

    :cond_2
    new-array v0, v0, [I

    iput-object v0, v1, Lr6/c;->c:[I

    sget-object v0, Lr6/c;->i:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lr6/c;->d:I

    sget-object v0, Lr6/c;->j:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lr6/c;->f:I

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0500f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v1, Lr6/c;->g:I

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lr6/c;->e:I

    iget-object v2, v1, Lr6/c;->c:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    int-to-float v0, v8

    iget v2, v1, Lr6/c;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    const/4 v2, 0x1

    if-gtz v0, :cond_4

    move v0, v2

    :cond_4
    iget v3, v1, Lr6/c;->b:I

    mul-int/2addr v3, v0

    sub-int v3, v8, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v1, Lr6/c;->a:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lr6/c;->a:Ljava/util/LinkedList;

    const/4 v6, 0x0

    new-array v7, v6, [Lr6/b;

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lr6/b;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, v1, Lr6/c;->b:I

    array-length v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gtz v4, :cond_5

    iget-object v3, v1, Lr6/c;->c:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :cond_5
    const-wide/16 v10, 0x0

    move v7, v6

    :goto_0
    iget-object v12, v1, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ge v7, v12, :cond_6

    iget-object v12, v1, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v12, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr6/b;

    invoke-virtual {v12}, Lr6/b;->c()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    iget-wide v12, v1, Lr6/c;->h:J

    cmp-long v7, v10, v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v7, :cond_7

    iput-wide v10, v1, Lr6/c;->h:J

    goto :goto_1

    :cond_7
    invoke-static {}, LK8/d;->d()F

    move-result v7

    mul-float/2addr v7, v14

    invoke-static {v12, v13, v10, v11, v7}, LNc/b;->A(JJF)J

    move-result-wide v10

    iput-wide v10, v1, Lr6/c;->h:J

    :goto_1
    move v7, v6

    :goto_2
    if-ge v7, v4, :cond_12

    aget-object v10, v5, v7

    invoke-virtual {v10}, Lr6/b;->c()J

    move-result-wide v11

    long-to-double v11, v11

    iget-wide v14, v1, Lr6/c;->h:J

    long-to-double v14, v14

    div-double/2addr v11, v14

    const-wide/16 v14, 0x0

    cmpg-double v16, v11, v14

    if-gez v16, :cond_8

    move-wide v11, v14

    :cond_8
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v11, v14

    if-lez v16, :cond_9

    move-wide v11, v14

    :cond_9
    mul-int v16, v7, v0

    add-int v6, v3, v16

    add-int v13, v6, v0

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v6, v8, :cond_a

    if-gtz v13, :cond_b

    :cond_a
    move-object/from16 v15, p2

    move/from16 v18, v0

    move/from16 v17, v3

    goto/16 :goto_6

    :cond_b
    if-gez v6, :cond_c

    const/4 v6, 0x0

    :cond_c
    sub-double/2addr v14, v11

    int-to-float v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    move/from16 v16, v13

    float-to-double v12, v11

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    if-gez v11, :cond_d

    const/4 v11, 0x0

    :cond_d
    add-int/lit8 v12, v9, -0x1

    if-le v11, v12, :cond_e

    move v11, v12

    :cond_e
    add-int/2addr v11, v2

    :goto_3
    if-ge v11, v9, :cond_a

    mul-int v12, v11, v8

    move v14, v6

    move/from16 v13, v16

    :goto_4
    if-ge v14, v13, :cond_11

    move-object/from16 v15, p2

    if-ne v10, v15, :cond_f

    iget-object v2, v1, Lr6/c;->c:[I

    add-int v17, v12, v14

    move/from16 v18, v0

    iget v0, v1, Lr6/c;->f:I

    aput v0, v2, v17

    move/from16 v17, v3

    goto :goto_5

    :cond_f
    move/from16 v18, v0

    invoke-virtual {v10}, Lr6/b;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lr6/c;->c:[I

    add-int v2, v12, v14

    move/from16 v17, v3

    iget v3, v1, Lr6/c;->g:I

    aput v3, v0, v2

    goto :goto_5

    :cond_10
    move/from16 v17, v3

    iget-object v0, v1, Lr6/c;->c:[I

    add-int v2, v12, v14

    iget v3, v1, Lr6/c;->d:I

    aput v3, v0, v2

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v0, v18

    const/4 v2, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v15, p2

    move/from16 v18, v0

    move/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v13

    const/4 v2, 0x1

    goto :goto_3

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v0, v18

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_12
    iget-object v3, v1, Lr6/c;->c:[I

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

    :cond_13
    :goto_7
    return-void
.end method

.method public d(Lr6/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameHistory"
        }
    .end annotation

    iget-object v0, p0, Lr6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v1, p0, Lr6/c;->b:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lr6/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/b;

    invoke-virtual {p1}, Lr6/b;->h()V

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
            "maxBars"
        }
    .end annotation

    iput p1, p0, Lr6/c;->b:I

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lr6/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr6/c;->a:Ljava/util/LinkedList;

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
