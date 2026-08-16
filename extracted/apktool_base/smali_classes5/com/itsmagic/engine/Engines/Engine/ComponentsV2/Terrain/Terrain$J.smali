.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->applyPaint(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LO8/a;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lx9/a;

.field public final synthetic h:LO8/a;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Ljava/lang/Runnable;

.field public final synthetic k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FFFLx9/a;LO8/a;Ljava/util/List;Ljava/lang/Runnable;)V
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
            0x1010
        }
        names = {
            "this$0",
            "val$inputIntensity",
            "val$worldLocation",
            "val$terrainX",
            "val$terrainZ",
            "val$size",
            "val$target",
            "val$brush",
            "val$others",
            "val$afterFinish"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->b:F

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->d:F

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->e:F

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->g:Lx9/a;

    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->h:LO8/a;

    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    iput-object p10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->j:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->b:F

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v14

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->d:F

    sub-float/2addr v3, v4

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->e:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    invoke-direct {v2, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    mul-float v7, v6, v5

    add-float/2addr v4, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v6, v5

    add-float/2addr v7, v6

    invoke-direct {v3, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

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

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v3, v4

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    add-int/lit8 v3, v3, 0x1

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v15, 0x0

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v7, v5, :cond_1

    if-gt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v9, v3

    move v8, v7

    move v7, v6

    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v4

    move v8, v5

    move v9, v6

    move v6, v3

    :goto_1
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->g:Lx9/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lx9/a;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->h:LO8/a;

    invoke-virtual {v4}, LO8/a;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-static {v5, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$2900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Ljava/util/List;)[J

    move-result-object v5

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v10

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v12

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v13, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    iget v15, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPointerCritical()J

    move-result-wide v17

    :goto_3
    move-wide/from16 v19, v17

    goto :goto_4

    :cond_3
    const-wide/16 v17, 0x0

    goto :goto_3

    :goto_4
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->h:LO8/a;

    move/from16 v21, v2

    iget v2, v4, LO8/a;->e:I

    move/from16 v17, v2

    iget v2, v4, LO8/a;->f:I

    move/from16 v18, v2

    move/from16 v22, v21

    move/from16 v21, v3

    move-wide v2, v10

    move-object v4, v5

    move v5, v12

    move v10, v13

    move/from16 v11, v21

    move v12, v15

    move/from16 v13, v22

    const/16 v21, 0x0

    move-wide/from16 v15, v19

    invoke-static/range {v2 .. v18}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$3000(J[JIIIIIFFFFFJII)V

    goto/16 :goto_c

    :cond_4
    move/from16 v21, v15

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :goto_5
    if-ge v6, v8, :cond_f

    move v5, v7

    :goto_6
    if-ge v5, v9, :cond_e

    if-ltz v6, :cond_d

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v10

    if-lt v6, v10, :cond_5

    goto/16 :goto_b

    :cond_5
    if-ltz v5, :cond_d

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v10

    if-lt v5, v10, :cond_6

    goto/16 :goto_b

    :cond_6
    int-to-float v10, v6

    mul-float/2addr v10, v3

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    mul-float/2addr v10, v11

    int-to-float v12, v5

    mul-float/2addr v12, v3

    mul-float/2addr v12, v11

    iget v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v10, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    div-float/2addr v10, v11

    iget v13, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    invoke-static {v10}, LNc/b;->I(F)F

    move-result v10

    invoke-static {v12}, LNc/b;->I(F)F

    move-result v11

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->h:LO8/a;

    invoke-virtual {v12, v10, v11}, LO8/a;->c(FF)F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_7

    goto/16 :goto_b

    :cond_7
    mul-float/2addr v10, v14

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->g:Lx9/a;

    invoke-virtual {v11, v6, v5}, Lx9/a;->e(II)F

    move-result v11

    add-float/2addr v11, v10

    invoke-static {v11}, LNc/b;->I(F)F

    move-result v10

    sub-float v11, v4, v10

    const/4 v12, 0x0

    move v13, v12

    move/from16 v15, v21

    :goto_7
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_8

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    invoke-virtual {v4, v6, v5}, Lx9/a;->e(II)F

    move-result v4

    add-float/2addr v13, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_8
    const v4, 0x322bcc77    # 1.0E-8f

    cmpl-float v4, v13, v4

    if-lez v4, :cond_9

    div-float/2addr v11, v13

    move/from16 v15, v21

    :goto_8
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    invoke-virtual {v4, v6, v5}, Lx9/a;->e(II)F

    move-result v12

    mul-float/2addr v12, v11

    invoke-static {v12}, LNc/b;->I(F)F

    move-result v12

    invoke-virtual {v4, v6, v5, v12}, Lx9/a;->h(IIF)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_9
    move/from16 v15, v21

    :goto_9
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_a

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    invoke-virtual {v4, v6, v5, v12}, Lx9/a;->h(IIF)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_a
    const/high16 v10, 0x3f800000    # 1.0f

    :cond_b
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->g:Lx9/a;

    invoke-virtual {v4, v6, v5, v10}, Lx9/a;->h(IIF)V

    move/from16 v15, v21

    :goto_a
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_c

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->i:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    invoke-virtual {v4, v6, v5}, Lx9/a;->e(II)F

    move-result v4

    add-float/2addr v10, v4

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x358637bd    # 1.0E-6f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_d

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->g:Lx9/a;

    invoke-virtual {v11, v6, v5}, Lx9/a;->e(II)F

    move-result v12

    add-float/2addr v12, v10

    invoke-static {v12}, LNc/b;->I(F)F

    move-result v10

    invoke-virtual {v11, v6, v5, v10}, Lx9/a;->h(IIF)V

    :cond_d
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_f
    :goto_c
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    sub-float/2addr v4, v5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->f:F

    add-float/2addr v5, v6

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v1, v6

    invoke-direct {v4, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    move/from16 v15, v21

    :goto_d
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v1

    if-ge v15, v1, :cond_11

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v1

    invoke-virtual {v1}, Lv9/d;->I()F

    move-result v5

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_10

    invoke-virtual {v1}, Lv9/d;->J()F

    move-result v6

    iget v7, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_10

    invoke-virtual {v1}, Lv9/d;->B()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v5, v7, v5

    if-gez v5, :cond_10

    invoke-virtual {v1}, Lv9/d;->B()F

    move-result v5

    add-float/2addr v6, v5

    iget v5, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_11
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J$a;

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$J;Ljava/util/List;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
