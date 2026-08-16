.class public Le4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le4/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic h:I

.field public final synthetic i:F

.field public final synthetic j:Lz9/e;

.field public final synthetic k:Ljava/lang/Runnable;

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:I

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:J

.field public final synthetic r:Le4/a;


# direct methods
.method public constructor <init>(Le4/a;FFFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;IFLz9/e;Ljava/lang/Runnable;FFIFFJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$worldX",
            "val$terrainX",
            "val$worldY",
            "val$terrainZ",
            "val$size",
            "val$terrain",
            "val$terrainResolution",
            "val$terrainWidth",
            "val$table",
            "val$afterFinish",
            "val$terrainMaxHeight",
            "val$finalIntensity",
            "val$proceduralOption",
            "val$directionX",
            "val$directionY",
            "val$strokeSeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Le4/a$a;->r:Le4/a;

    move v1, p2

    iput v1, v0, Le4/a$a;->b:F

    move v1, p3

    iput v1, v0, Le4/a$a;->c:F

    move v1, p4

    iput v1, v0, Le4/a$a;->d:F

    move v1, p5

    iput v1, v0, Le4/a$a;->e:F

    move v1, p6

    iput v1, v0, Le4/a$a;->f:F

    move-object v1, p7

    iput-object v1, v0, Le4/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move v1, p8

    iput v1, v0, Le4/a$a;->h:I

    move v1, p9

    iput v1, v0, Le4/a$a;->i:F

    move-object v1, p10

    iput-object v1, v0, Le4/a$a;->j:Lz9/e;

    move-object v1, p11

    iput-object v1, v0, Le4/a$a;->k:Ljava/lang/Runnable;

    move v1, p12

    iput v1, v0, Le4/a$a;->l:F

    move/from16 v1, p13

    iput v1, v0, Le4/a$a;->m:F

    move/from16 v1, p14

    iput v1, v0, Le4/a$a;->n:I

    move/from16 v1, p15

    iput v1, v0, Le4/a$a;->o:F

    move/from16 v1, p16

    iput v1, v0, Le4/a$a;->p:F

    move-wide/from16 v1, p17

    iput-wide v1, v0, Le4/a$a;->q:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Le4/a$a;->b:F

    iget v3, v0, Le4/a$a;->c:F

    sub-float/2addr v2, v3

    iget v3, v0, Le4/a$a;->d:F

    iget v4, v0, Le4/a$a;->e:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v0, Le4/a$a;->f:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    invoke-direct {v2, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v0, Le4/a$a;->f:F

    mul-float v7, v6, v5

    add-float/2addr v4, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    invoke-direct {v3, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Le4/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, v0, Le4/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v7

    invoke-virtual {v7}, Lv9/d;->I()F

    move-result v8

    iget v9, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    invoke-virtual {v7}, Lv9/d;->J()F

    move-result v9

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    invoke-virtual {v7}, Lv9/d;->B()F

    move-result v10

    add-float/2addr v8, v10

    iget v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v8, v10, v8

    if-gez v8, :cond_0

    invoke-virtual {v7}, Lv9/d;->B()F

    move-result v8

    add-float/2addr v9, v8

    iget v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v6, v0, Le4/a$a;->h:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, v0, Le4/a$a;->i:F

    div-float/2addr v6, v7

    iget v7, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/lit8 v9, v9, 0x1

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v10, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    iget v11, v0, Le4/a$a;->h:I

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v11, v0, Le4/a$a;->h:I

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v11, v0, Le4/a$a;->h:I

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v11, v0, Le4/a$a;->h:I

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-le v9, v7, :cond_5

    if-gt v10, v8, :cond_2

    goto :goto_2

    :cond_2
    if-ne v9, v7, :cond_3

    iget v1, v0, Le4/a$a;->h:I

    add-int/lit8 v5, v7, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_3
    if-ne v10, v8, :cond_4

    iget v1, v0, Le4/a$a;->h:I

    add-int/lit8 v5, v8, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_4
    :goto_1
    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    goto :goto_3

    :cond_5
    :goto_2
    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v6, v0, Le4/a$a;->h:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v6, v0, Le4/a$a;->h:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v1, v0, Le4/a$a;->h:I

    add-int/lit8 v5, v7, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v1, v0, Le4/a$a;->h:I

    add-int/lit8 v5, v8, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    :goto_3
    iget-object v1, v0, Le4/a$a;->j:Lz9/e;

    invoke-virtual {v1}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v0, Le4/a$a;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void

    :cond_7
    iget-object v11, v0, Le4/a$a;->r:Le4/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v12

    iget v14, v0, Le4/a$a;->h:I

    iget v1, v0, Le4/a$a;->i:F

    move/from16 v19, v1

    iget v1, v0, Le4/a$a;->l:F

    move/from16 v20, v1

    iget v1, v0, Le4/a$a;->c:F

    move/from16 v21, v1

    iget v1, v0, Le4/a$a;->e:F

    move/from16 v22, v1

    iget v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    move/from16 v23, v1

    iget v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    move/from16 v24, v1

    iget v1, v0, Le4/a$a;->f:F

    move/from16 v25, v1

    iget v1, v0, Le4/a$a;->m:F

    move/from16 v26, v1

    iget v1, v0, Le4/a$a;->n:I

    move/from16 v27, v1

    iget v1, v0, Le4/a$a;->o:F

    move/from16 v28, v1

    iget v1, v0, Le4/a$a;->p:F

    move/from16 v29, v1

    iget-wide v5, v0, Le4/a$a;->q:J

    move-wide/from16 v30, v5

    invoke-virtual/range {v11 .. v31}, Le4/a;->applyNative(JIIIIIFFFFFFFFIFFJ)V

    new-instance v1, Le4/a$a$a;

    invoke-direct {v1, v0, v4, v2, v3}, Le4/a$a$a;-><init>(Le4/a$a;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
