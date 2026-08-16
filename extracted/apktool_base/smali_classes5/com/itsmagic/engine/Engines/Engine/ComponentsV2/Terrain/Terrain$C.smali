.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->generateFromHeightMap(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Landroid/content/Context;Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$file",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->d:Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->b(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "imageHeight"
        }
    .end annotation

    mul-int/2addr p2, p3

    add-int/2addr p2, p1

    return p2
.end method

.method public run()V
    .locals 28

    move-object/from16 v7, p0

    :try_start_0
    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lw9/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->b:Landroid/content/Context;

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v4, 0x1

    if-le v6, v4, :cond_f

    if-le v5, v4, :cond_f

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()Lz9/e;

    move-result-object v3

    mul-int v0, v6, v5

    new-array v2, v0, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, v16

    move-object v9, v2

    move v11, v6

    move v14, v6

    move v15, v5

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v0

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    mul-int v9, v0, v1

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v11, v1, :cond_4

    move v14, v0

    const/4 v15, 0x0

    :goto_1
    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v0

    if-ge v15, v0, :cond_2

    int-to-float v0, v11

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v13

    div-float v17, v0, v1

    int-to-float v0, v15

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    sub-float/2addr v1, v13

    div-float v18, v0, v1

    add-int/lit8 v0, v6, -0x1

    int-to-float v0, v0

    mul-float v0, v0, v17

    float-to-int v0, v0

    add-int/lit8 v1, v5, -0x1

    int-to-float v1, v1

    mul-float v1, v1, v18

    float-to-int v1, v1

    if-ge v0, v6, :cond_1

    if-ge v1, v5, :cond_1

    :try_start_1
    new-instance v23, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, v23

    move-object/from16 v24, v2

    move-object/from16 v2, p0

    move-object v10, v3

    move v3, v6

    move/from16 v25, v4

    move v4, v5

    move/from16 v26, v5

    move-object/from16 v5, v24

    move/from16 v27, v6

    move-object v6, v8

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;II[ILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const v21, 0x3cf5c28f    # 0.03f

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/16 v22, 0x1

    invoke-static/range {v17 .. v23}, LJc/b;->a(FFFFFZLJc/a;)F

    move-result v0

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->importHeightMapHeight:F

    mul-float/2addr v0, v1

    invoke-virtual {v10, v11, v15, v0}, Lz9/e;->i(IIF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    move-object v10, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move-object/from16 v24, v2

    move-object v10, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    :goto_3
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object v3, v10

    move-object/from16 v2, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    goto/16 :goto_1

    :cond_2
    move-object/from16 v24, v2

    move-object v10, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    int-to-float v0, v14

    int-to-float v1, v9

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-eq v12, v0, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$b;

    invoke-direct {v1, v7, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;I)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    move v12, v0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object v3, v10

    move v0, v14

    move-object/from16 v2, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    goto/16 :goto_0

    :cond_4
    move-object v10, v3

    move/from16 v25, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    move-object v8, v0

    const/4 v1, 0x0

    :goto_4
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->useAs:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;->Grass:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    if-ne v3, v4, :cond_5

    iget-object v3, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lw9/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lw9/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v3

    move-object v8, v3

    :cond_5
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->useAs:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;->Rock:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer$b;

    if-ne v3, v4, :cond_6

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lw9/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lw9/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Lx9/a;

    move-result-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v4, v25

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v4, 0x0

    :goto_6
    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    if-eqz v4, :cond_e

    const/4 v15, 0x0

    :goto_7
    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    if-ge v15, v1, :cond_d

    const/4 v1, 0x0

    :goto_8
    iget-object v2, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v2

    if-ge v1, v2, :cond_c

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v15, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    add-int/lit8 v3, v15, 0x1

    invoke-direct {v6, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v5, v15, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget-object v13, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v13

    if-lt v3, v13, :cond_a

    add-int/lit8 v3, v15, -0x1

    iput v3, v6, Landroid/graphics/Point;->x:I

    :cond_a
    iget v3, v5, Landroid/graphics/Point;->y:I

    iget-object v13, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v13

    if-lt v3, v13, :cond_b

    add-int/lit8 v1, v1, -0x1

    iput v1, v5, Landroid/graphics/Point;->y:I

    :cond_b
    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget v13, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v1, v13}, Lz9/e;->f(II)F

    move-result v1

    iget-object v13, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v13, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    mul-float/2addr v1, v13

    iget v13, v2, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v9, v3, v1, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setAndReturn(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget v3, v6, Landroid/graphics/Point;->x:I

    int-to-float v13, v3

    move/from16 v17, v4

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v3, v4}, Lz9/e;->f(II)F

    move-result v3

    iget-object v4, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    mul-float/2addr v3, v4

    iget v4, v6, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v11, v13, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setAndReturn(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget v4, v5, Landroid/graphics/Point;->x:I

    int-to-float v13, v4

    move-object/from16 v18, v6

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v4, v6}, Lz9/e;->f(II)F

    move-result v4

    iget-object v6, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    mul-float/2addr v4, v6

    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v12, v13, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setAndReturn(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-static {v1, v3, v4, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->triangleNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->up()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    invoke-static {v1}, LNc/b;->k(F)F

    move-result v1

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v1, v13, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v16

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    move-object v2, v0

    move-object v3, v8

    move-object v13, v5

    move v5, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lx9/a;Lx9/a;IIF)V

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v4, v9, Landroid/graphics/Point;->x:I

    iget v5, v9, Landroid/graphics/Point;->y:I

    move-object v2, v0

    move-object v3, v8

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lx9/a;Lx9/a;IIF)V

    iget-object v1, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v4, v13, Landroid/graphics/Point;->x:I

    iget v5, v13, Landroid/graphics/Point;->y:I

    move-object v2, v0

    move-object v3, v8

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lx9/a;Lx9/a;IIF)V

    move/from16 v1, v17

    move-object/from16 v9, v20

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_8

    :cond_c
    move-object/from16 v20, v9

    add-int/lit8 v15, v15, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_9
    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunksCount()I

    move-result v0

    if-ge v10, v0, :cond_e

    iget-object v0, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->chunkAt(I)Lv9/d;

    move-result-object v0

    invoke-virtual {v0}, Lv9/d;->k()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;

    invoke-direct {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_b
    return-void
.end method
