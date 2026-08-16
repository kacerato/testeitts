.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;Ljava/lang/Runnable;)V
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

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:Lz9/e;

.field public final synthetic j:LO8/a;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Ljava/lang/Runnable;

.field public final synthetic m:F

.field public final synthetic n:F

.field public final synthetic o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;FFFFFIFLz9/e;LO8/a;Ljava/util/List;Ljava/lang/Runnable;FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
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
            "val$terrainResolution",
            "val$terrainWidth",
            "val$table",
            "val$brush",
            "val$layers",
            "val$afterFinish",
            "val$terrainMaxHeight",
            "val$finalIntensity",
            "val$terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->b:F

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->c:F

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->d:F

    iput p5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->e:F

    iput p6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    iput p7, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    iput p8, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->h:F

    iput-object p9, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->i:Lz9/e;

    iput-object p10, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->j:LO8/a;

    iput-object p11, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->k:Ljava/util/List;

    iput-object p12, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->l:Ljava/lang/Runnable;

    iput p13, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->m:F

    iput p14, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->n:F

    iput-object p15, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->b:F

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->c:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->d:F

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->e:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    invoke-direct {v2, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    mul-float v7, v6, v5

    add-float/2addr v4, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    invoke-direct {v3, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->h:F

    div-float/2addr v4, v5

    iget v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iget v8, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iget v9, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v10, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-le v7, v5, :cond_1

    if-gt v8, v6, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    goto :goto_2

    :cond_1
    :goto_1
    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    add-int/lit8 v7, v5, 0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_0

    :goto_2
    iget-object v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->i:Lz9/e;

    invoke-virtual {v4}, Lz9/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->j:LO8/a;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, LO8/a;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget-object v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    iget-object v7, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->k:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;Ljava/util/List;)[J

    move-result-object v13

    if-eqz v4, :cond_9

    if-nez v13, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v10, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v11

    iget v14, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->g:I

    iget v4, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->h:F

    iget v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->m:F

    iget v7, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v9, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    move-object/from16 v31, v2

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->n:F

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[I

    move-result-object v25

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->p:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)[F

    move-result-object v26

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v19

    :goto_4
    move-wide/from16 v27, v19

    goto :goto_5

    :cond_4
    const-wide/16 v19, 0x0

    goto :goto_4

    :goto_5
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->j:LO8/a;

    if-eqz v1, :cond_5

    iget v3, v1, LO8/a;->e:I

    move/from16 v29, v3

    goto :goto_6

    :cond_5
    const/16 v29, 0x0

    :goto_6
    if-eqz v1, :cond_6

    iget v1, v1, LO8/a;->f:I

    move/from16 v30, v1

    goto :goto_7

    :cond_6
    const/16 v30, 0x0

    :goto_7
    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v10 .. v30}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->applyNative(J[JIIIIIFFFFFF[I[FJII)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-object/from16 v3, v33

    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v5, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    sub-float/2addr v4, v5

    iget v6, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v6, v5

    invoke-direct {v2, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->f:F

    add-float/2addr v5, v6

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v3, v6

    invoke-direct {v4, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    const/4 v9, 0x0

    :goto_8
    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v3

    if-ge v9, v3, :cond_8

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->o:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v3, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v3

    invoke-virtual {v3}, Lv9/d;->I()F

    move-result v5

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    invoke-virtual {v3}, Lv9/d;->J()F

    move-result v6

    iget v7, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_7

    invoke-virtual {v3}, Lv9/d;->B()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v5, v7, v5

    if-gez v5, :cond_7

    invoke-virtual {v3}, Lv9/d;->B()F

    move-result v5

    add-float/2addr v6, v5

    iget v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a$a;

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {v2}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    :goto_9
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$a;->l:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method
