.class final Lcom/threed/jpct/VisList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field anzpoly:I

.field private bucket:[I

.field lastCycle:J

.field private maxStages:I

.field private msgCnt:I

.field private pivotindex:I

.field size:I

.field stageCnt:[I

.field private toFill:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/Object3D;",
            ">;"
        }
    .end annotation
.end field

.field vertexIndex:[I

.field vnum:[I

.field vorg:[Lcom/threed/jpct/Object3D;

.field zValue:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/threed/jpct/VisList;->lastCycle:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    iput v0, p0, Lcom/threed/jpct/VisList;->maxStages:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->bucket:[I

    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/threed/jpct/VisList;->vnum:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    iput p1, p0, Lcom/threed/jpct/VisList;->size:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    return-void
.end method

.method private findpivot(II)V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    iget-object v1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v1, v1, p1

    move v2, p1

    :goto_0
    iget v3, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    if-ne v3, v0, :cond_3

    if-le v2, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v3, v3, v2

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    iput v2, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    goto :goto_0

    :cond_1
    cmpg-float v3, v3, v1

    if-gez v3, :cond_2

    iput p1, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private flip(II)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v1, v0, p2

    aget-object v2, v0, p1

    aput-object v2, v0, p2

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    return-void
.end method

.method private fsort(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/threed/jpct/VisList;->zValue:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v4, v1, 0x14

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_0

    move v4, v5

    :cond_0
    iget-object v5, v0, Lcom/threed/jpct/VisList;->bucket:[I

    array-length v5, v5

    if-le v4, v5, :cond_1

    new-array v5, v4, [I

    iput-object v5, v0, Lcom/threed/jpct/VisList;->bucket:[I

    :cond_1
    iget-object v5, v0, Lcom/threed/jpct/VisList;->bucket:[I

    array-length v6, v5

    move v7, v3

    :goto_0
    if-lt v7, v6, :cond_b

    const/4 v8, 0x1

    move v7, v3

    move v6, v8

    :goto_1
    if-lt v6, v1, :cond_8

    iget-object v6, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v6, v6, v7

    cmpl-float v9, v2, v6

    if-nez v9, :cond_2

    return-void

    :cond_2
    int-to-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    sub-float/2addr v6, v2

    div-float/2addr v9, v6

    move v6, v3

    :goto_2
    if-lt v6, v1, :cond_7

    move v6, v8

    :goto_3
    if-lt v6, v4, :cond_6

    invoke-direct {v0, v7, v3}, Lcom/threed/jpct/VisList;->flip(II)V

    sub-int/2addr v4, v8

    move v10, v3

    :goto_4
    add-int/lit8 v6, v1, -0x1

    if-lt v10, v6, :cond_3

    return-void

    :cond_3
    :goto_5
    aget v6, v5, v4

    sub-int/2addr v6, v8

    if-gt v3, v6, :cond_5

    iget-object v6, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v6, v6, v3

    iget-object v7, v0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v7, v7, v3

    iget-object v11, v0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v11, v11, v3

    iget-object v12, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v12, v12, v3

    iget-object v13, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v13, v13, v3

    :goto_6
    aget v14, v5, v4

    if-ne v3, v14, :cond_4

    goto :goto_4

    :cond_4
    sub-float v4, v6, v2

    mul-float/2addr v4, v9

    float-to-int v4, v4

    aget v14, v5, v4

    sub-int/2addr v14, v8

    iget-object v15, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v16, v15, v14

    aput v6, v15, v14

    iget-object v6, v0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v15, v6, v14

    aput v7, v6, v14

    iget-object v6, v0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v7, v6, v14

    aput v11, v6, v14

    iget-object v6, v0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v11, v6, v14

    aput v12, v6, v14

    iget-object v6, v0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v12, v6, v14

    aput-object v13, v6, v14

    aget v6, v5, v4

    sub-int/2addr v6, v8

    aput v6, v5, v4

    add-int/lit8 v10, v10, 0x1

    move-object v13, v12

    move/from16 v6, v16

    move v12, v11

    move v11, v7

    move v7, v15

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-object v4, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v4, v4, v3

    sub-float/2addr v4, v2

    mul-float/2addr v4, v9

    float-to-int v4, v4

    goto :goto_5

    :cond_6
    aget v10, v5, v6

    add-int/lit8 v11, v6, -0x1

    aget v11, v5, v11

    add-int/2addr v10, v11

    aput v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-object v10, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v10, v10, v6

    sub-float/2addr v10, v2

    mul-float/2addr v10, v9

    float-to-int v10, v10

    aget v11, v5, v10

    add-int/2addr v11, v8

    aput v11, v5, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v9, v0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v10, v9, v6

    cmpg-float v11, v10, v2

    if-gez v11, :cond_9

    move v2, v10

    :cond_9
    aget v9, v9, v7

    cmpl-float v9, v10, v9

    if-lez v9, :cond_a

    move v7, v6

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_b
    aput v3, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method private insertionSort(II)V
    .locals 10

    add-int/lit8 p2, p2, -0x3

    :goto_0
    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/VisList;->zValue:[F

    add-int/lit8 v1, p2, 0x1

    aget v1, v0, v1

    aget v0, v0, p2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v3, v3, p2

    iget-object v4, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v4, v4, p2

    move v5, p2

    :goto_1
    iget-object v6, p0, Lcom/threed/jpct/VisList;->zValue:[F

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v7

    cmpg-float v9, v8, v0

    if-ltz v9, :cond_1

    aput v0, v6, v5

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aput v2, v0, v5

    iget-object v0, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aput v3, v0, v5

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aput v4, v0, v5

    goto :goto_2

    :cond_1
    aput v8, v6, v5

    iget-object v6, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v8, v6, v7

    aput-object v8, v6, v5

    iget-object v6, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v8, v6, v7

    aput v8, v6, v5

    iget-object v6, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v8, v6, v7

    aput v8, v6, v5

    iget-object v6, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v8, v6, v7

    aput v8, v6, v5

    move v5, v7

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private partition(IIF)I
    .locals 4

    :goto_0
    if-le p1, p2, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v1, v0, p1

    cmpg-float v2, v1, p3

    if-gez v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    aget v2, v0, p2

    cmpl-float v3, v2, p3

    if-ltz v3, :cond_2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    aput v1, v0, p2

    aput v2, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aget-object v1, v0, p2

    aget-object v2, v0, p1

    aput-object v2, v0, p2

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aget v1, v0, p2

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private qsort(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->findpivot(II)V

    iget v0, p0, Lcom/threed/jpct/VisList;->pivotindex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aget v0, v1, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/VisList;->partition(IIF)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/threed/jpct/VisList;->qsort(II)V

    invoke-direct {p0, v0, p2}, Lcom/threed/jpct/VisList;->qsort(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addToFill(Lcom/threed/jpct/Object3D;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V
    .locals 3

    iget v0, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    iget v1, p0, Lcom/threed/jpct/VisList;->size:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p4}, Lcom/threed/jpct/CompiledInstance;->getPolyIndex()I

    move-result v0

    invoke-virtual {p4}, Lcom/threed/jpct/CompiledInstance;->getStageCount()I

    move-result p4

    sub-int/2addr p4, v2

    iget v1, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    iget v2, p0, Lcom/threed/jpct/VisList;->maxStages:I

    if-le p4, v2, :cond_0

    iput p4, p0, Lcom/threed/jpct/VisList;->maxStages:I

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/VisList;->stageCnt:[I

    aput p4, v2, v1

    iget-object p4, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    aput-object p1, p4, v1

    iget-object p4, p0, Lcom/threed/jpct/VisList;->vnum:[I

    aput v0, p4, v1

    iget p4, p1, Lcom/threed/jpct/Object3D;->sortOffset:F

    add-float/2addr p2, p4

    iget-boolean p1, p1, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    const p4, 0x49742400    # 1000000.0f

    sub-float/2addr p4, p2

    aput p4, p1, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/VisList;->zValue:[F

    aput p2, p1, v1

    :goto_0
    iget-object p1, p0, Lcom/threed/jpct/VisList;->vertexIndex:[I

    aput p3, p1, v1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    if-nez p1, :cond_3

    const-string p1, "You\'ve exceeded the configured instance limit for the visibility list. Consider adjusting Config.maxPolysVisible!"

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    iget p1, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/threed/jpct/VisList;->msgCnt:I

    :goto_1
    return-void
.end method

.method public clearList()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/VisList;->anzpoly:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/VisList;->maxStages:I

    return-void
.end method

.method public deepClear()V
    .locals 3

    invoke-virtual {p0}, Lcom/threed/jpct/VisList;->clearList()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/VisList;->size:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/VisList;->vorg:[Lcom/threed/jpct/Object3D;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized fillInstances()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/threed/jpct/VisList;->toFill:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/Object3D;

    iget-boolean v4, v3, Lcom/threed/jpct/Object3D;->modified:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_1

    iput-boolean v1, v3, Lcom/threed/jpct/Object3D;->modified:Z

    goto :goto_2

    :cond_1
    iget-object v6, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/threed/jpct/CompiledInstance;

    invoke-virtual {v6}, Lcom/threed/jpct/CompiledInstance;->fill()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/VisList;->size:I

    return v0
.end method

.method public sort(II)V
    .locals 2

    sub-int v0, p2, p1

    sget v1, Lcom/threed/jpct/Config;->flashSortThreshold:I

    if-lt v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->fsort(II)V

    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->insertionSort(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/VisList;->qsort(II)V

    :goto_0
    return-void
.end method
