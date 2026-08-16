.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->applyLevel(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lz9/e;

.field public final synthetic j:LO8/a;

.field public final synthetic k:Ljava/lang/Runnable;

.field public final synthetic l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FFFFFLz9/e;LO8/a;Ljava/lang/Runnable;)V
    .locals 0
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
            0x1010
        }
        names = {
            "this$0",
            "val$inputAutoPaint",
            "val$worldLocation",
            "val$terrainX",
            "val$terrainZ",
            "val$size",
            "val$levelHeight",
            "val$intensity",
            "val$table",
            "val$brush",
            "val$afterFinish"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->b:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->d:F

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->e:F

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->g:F

    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->h:F

    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->i:Lz9/e;

    iput-object p10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->j:LO8/a;

    iput-object p11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->k:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->b:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-object v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->d:F

    sub-float/2addr v3, v4

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v4, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->e:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v3, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v7, v3, v5

    sub-float/2addr v2, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v3, v5

    sub-float/2addr v7, v3

    invoke-direct {v4, v2, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    mul-float v8, v7, v5

    add-float/2addr v2, v8

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v7, v5

    add-float/2addr v8, v7

    invoke-direct {v3, v2, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v8

    invoke-virtual {v8}, Lv9/d;->I()F

    move-result v9

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    invoke-virtual {v8}, Lv9/d;->J()F

    move-result v10

    iget v11, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v11, v10, v11

    if-gez v11, :cond_0

    invoke-virtual {v8}, Lv9/d;->B()F

    move-result v11

    add-float/2addr v9, v11

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v9, v11, v9

    if-gez v9, :cond_0

    invoke-virtual {v8}, Lv9/d;->B()F

    move-result v9

    add-float/2addr v10, v9

    iget v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    div-float/2addr v7, v8

    iget v8, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    iget v10, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    iget v11, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v11, v7

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v12

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v12

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-le v10, v8, :cond_5

    if-gt v11, v9, :cond_2

    goto :goto_1

    :cond_2
    if-ne v10, v8, :cond_3

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    add-int/lit8 v10, v8, 0x1

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_3
    if-ne v11, v9, :cond_4

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    add-int/lit8 v11, v9, 0x1

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    move/from16 v31, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    goto :goto_2

    :cond_4
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    goto :goto_2

    :cond_5
    :goto_1
    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v10

    add-int/lit8 v11, v7, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v29, v7

    move/from16 v28, v8

    move/from16 v30, v9

    move/from16 v31, v10

    :goto_2
    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-lez v9, :cond_6

    iget v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->g:F

    div-float/2addr v9, v7

    goto :goto_3

    :cond_6
    move v9, v8

    :goto_3
    invoke-static {v9}, LNc/b;->I(F)F

    move-result v22

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    cmpl-float v9, v7, v8

    if-lez v9, :cond_7

    iget v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->h:F

    div-float/2addr v8, v7

    :cond_7
    invoke-static {v8}, LNc/b;->I(F)F

    move-result v23

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->i:Lz9/e;

    invoke-virtual {v7}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->j:LO8/a;

    invoke-virtual {v8}, LO8/a;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v32

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v11

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v13

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    iget v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v10, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    if-eqz v32, :cond_8

    invoke-virtual/range {v32 .. v32}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v14

    :goto_4
    move-wide/from16 v24, v14

    goto :goto_5

    :cond_8
    const-wide/16 v14, 0x0

    goto :goto_4

    :goto_5
    iget-object v14, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->j:LO8/a;

    iget v15, v14, LO8/a;->e:I

    move/from16 v26, v15

    iget v14, v14, LO8/a;->f:I

    move/from16 v27, v14

    move/from16 v14, v28

    move/from16 v15, v29

    move/from16 v16, v30

    move/from16 v17, v31

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v11 .. v27}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$2800(JIIIIIFFFFFFJII)V

    const/4 v7, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v21

    move v7, v5

    :goto_6
    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->useAs:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;->Grass:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    if-ne v9, v10, :cond_9

    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lw9/a;

    move-result-object v9

    invoke-virtual {v9, v8}, Lw9/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v22

    :cond_9
    iget-object v9, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->useAs:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;->Rock:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    if-ne v9, v10, :cond_a

    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lw9/a;

    move-result-object v9

    invoke-virtual {v9, v8}, Lw9/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v21

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    if-eqz v21, :cond_c

    if-nez v22, :cond_d

    :cond_c
    move v0, v5

    :cond_d
    if-eqz v0, :cond_e

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->i:Lz9/e;

    iget v15, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v14, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    iget v13, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->j:LO8/a;

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v11, v28

    move-object/from16 v20, v12

    move/from16 v12, v29

    move/from16 v18, v13

    move/from16 v13, v30

    move/from16 v16, v14

    move/from16 v14, v31

    move-object/from16 v17, v4

    move-object/from16 v19, v32

    invoke-static/range {v7 .. v20}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/e;Lx9/a;Lx9/a;IIIIFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;LO8/a;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->i:Lz9/e;

    iget v15, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v14, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    iget v13, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->j:LO8/a;

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v11, v28

    move-object/from16 v19, v12

    move/from16 v12, v29

    move/from16 v18, v13

    move/from16 v13, v30

    move/from16 v16, v14

    move/from16 v14, v31

    move-object/from16 v17, v4

    invoke-static/range {v7 .. v19}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$2400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lz9/e;Lx9/a;Lx9/a;IIIIFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLO8/a;)V

    :cond_e
    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz v0, :cond_10

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    sub-float/2addr v8, v9

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v10, v9

    invoke-direct {v0, v8, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v10, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->f:F

    add-float/2addr v9, v10

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v1, v10

    invoke-direct {v8, v9, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    :goto_7
    iget-object v1, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v1

    if-ge v5, v1, :cond_10

    iget-object v1, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v1

    invoke-virtual {v1}, Lv9/d;->I()F

    move-result v9

    iget v10, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_f

    invoke-virtual {v1}, Lv9/d;->J()F

    move-result v10

    iget v11, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v11, v10, v11

    if-gez v11, :cond_f

    invoke-virtual {v1}, Lv9/d;->B()F

    move-result v11

    add-float/2addr v9, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v9, v11, v9

    if-gez v9, :cond_f

    invoke-virtual {v1}, Lv9/d;->B()F

    move-result v9

    add-float/2addr v10, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_f

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I$a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v5, v3

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$I;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {v8}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
