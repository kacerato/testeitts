.class public Lo6/d;
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
            "Lo6/c;",
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

.field public h:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, Lo6/d;->i:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    sput-object v0, Lo6/d;->j:LAc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo6/d;->a:Ljava/util/LinkedList;

    const/16 v0, 0x3c

    iput v0, p0, Lo6/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo6/d;->c:[I

    return-void
.end method


# virtual methods
.method public a(I)Lo6/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lo6/d;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo6/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo6/c;

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

    iget v0, p0, Lo6/d;->b:I

    return v0
.end method

.method public c(Landroid/graphics/Bitmap;Lo6/c;)V
    .locals 18
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

    if-lez v8, :cond_14

    if-gtz v9, :cond_1

    goto/16 :goto_7

    :cond_1
    mul-int v0, v8, v9

    iget-object v2, v1, Lo6/d;->c:[I

    if-eqz v2, :cond_2

    array-length v2, v2

    if-eq v2, v0, :cond_3

    :cond_2
    new-array v0, v0, [I

    iput-object v0, v1, Lo6/d;->c:[I

    sget-object v0, Lo6/d;->i:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lo6/d;->d:I

    sget-object v0, Lo6/d;->j:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lo6/d;->f:I

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0500f1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, v1, Lo6/d;->g:I

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lo6/d;->e:I

    iget-object v2, v1, Lo6/d;->c:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    int-to-float v0, v8

    iget v2, v1, Lo6/d;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget v3, v1, Lo6/d;->b:I

    mul-int/2addr v3, v0

    sub-int v3, v8, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v1, Lo6/d;->a:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lo6/d;->a:Ljava/util/LinkedList;

    const/4 v6, 0x0

    new-array v7, v6, [Lo6/c;

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lo6/c;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v4, v1, Lo6/d;->b:I

    array-length v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gtz v4, :cond_5

    iget-object v3, v1, Lo6/d;->c:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void

    :cond_5
    const-wide v10, 0x3fb999999999999aL    # 0.1

    move v7, v6

    move-wide v12, v10

    :goto_0
    array-length v14, v5

    if-ge v7, v14, :cond_6

    aget-object v14, v5, v7

    invoke-virtual {v14}, Lo6/c;->e()D

    move-result-wide v14

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    iget-wide v14, v1, Lo6/d;->h:D

    cmpl-double v7, v12, v14

    if-lez v7, :cond_7

    iput-wide v12, v1, Lo6/d;->h:D

    goto :goto_1

    :cond_7
    double-to-float v7, v14

    double-to-float v12, v12

    invoke-static {}, LK8/d;->d()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    invoke-static {v7, v12, v13}, LNc/b;->z(FFF)F

    move-result v7

    float-to-double v12, v7

    iput-wide v12, v1, Lo6/d;->h:D

    :goto_1
    iget-wide v12, v1, Lo6/d;->h:D

    const-wide/16 v14, 0x0

    cmpg-double v7, v12, v14

    if-gtz v7, :cond_8

    iput-wide v10, v1, Lo6/d;->h:D

    :cond_8
    move v7, v6

    :goto_2
    if-ge v7, v4, :cond_13

    aget-object v10, v5, v7

    invoke-virtual {v10}, Lo6/c;->e()D

    move-result-wide v11

    move/from16 v16, v3

    iget-wide v2, v1, Lo6/d;->h:D

    div-double/2addr v11, v2

    cmpg-double v2, v11, v14

    if-gez v2, :cond_9

    move-wide v11, v14

    :cond_9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v11, v2

    if-lez v17, :cond_a

    move-wide v11, v2

    :cond_a
    mul-int v17, v7, v0

    add-int v6, v16, v17

    add-int v13, v6, v0

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v6, v8, :cond_b

    if-gtz v13, :cond_c

    :cond_b
    move-object/from16 v14, p2

    move/from16 v17, v0

    goto :goto_6

    :cond_c
    if-gez v6, :cond_d

    const/4 v6, 0x0

    :cond_d
    sub-double v11, v2, v11

    int-to-double v14, v9

    sub-double/2addr v14, v2

    mul-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-gez v2, :cond_e

    const/4 v2, 0x0

    :cond_e
    add-int/lit8 v3, v9, -0x1

    if-le v2, v3, :cond_f

    move v2, v3

    :cond_f
    const/4 v3, 0x1

    add-int/2addr v2, v3

    :goto_3
    if-ge v2, v9, :cond_b

    mul-int v11, v2, v8

    move v12, v6

    :goto_4
    if-ge v12, v13, :cond_12

    move-object/from16 v14, p2

    if-ne v10, v14, :cond_10

    iget-object v15, v1, Lo6/d;->c:[I

    add-int v17, v11, v12

    iget v3, v1, Lo6/d;->f:I

    aput v3, v15, v17

    move/from16 v17, v0

    goto :goto_5

    :cond_10
    invoke-virtual {v10}, Lo6/c;->g()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lo6/d;->c:[I

    add-int v15, v11, v12

    move/from16 v17, v0

    iget v0, v1, Lo6/d;->g:I

    aput v0, v3, v15

    goto :goto_5

    :cond_11
    move/from16 v17, v0

    iget-object v0, v1, Lo6/d;->c:[I

    add-int v3, v11, v12

    iget v15, v1, Lo6/d;->d:I

    aput v15, v0, v3

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    const/4 v3, 0x1

    goto :goto_4

    :cond_12
    move-object/from16 v14, p2

    move/from16 v17, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v16

    move/from16 v0, v17

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_2

    :cond_13
    iget-object v3, v1, Lo6/d;->c:[I

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

    :cond_14
    :goto_7
    return-void
.end method

.method public d(Lo6/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameHistory"
        }
    .end annotation

    iget-object v0, p0, Lo6/d;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo6/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lo6/d;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v1, p0, Lo6/d;->b:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lo6/d;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo6/c;

    invoke-virtual {p1}, Lo6/c;->h()V

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

    iput p1, p0, Lo6/d;->b:I

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lo6/d;->a:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo6/d;->a:Ljava/util/LinkedList;

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
