.class public Lorg/ITsMagic/Atlas/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/XAtlas;

    invoke-direct {v0}, Lorg/ITsMagic/Atlas/XAtlas;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y()[F

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v15, v1}, Lorg/ITsMagic/Atlas/XAtlas;->addInputMesh(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Material/Material;[F)V

    :try_start_0
    new-instance v1, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {v1}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    const/16 v2, 0x400

    iput v2, v1, Lorg/ITsMagic/Atlas/BakeOptions;->a:I

    iget v3, v1, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartArea:F

    iget v4, v1, Lorg/ITsMagic/Atlas/BakeOptions;->maxBoundaryLength:F

    iget v5, v1, Lorg/ITsMagic/Atlas/BakeOptions;->normalDeviationWeight:F

    iget v6, v1, Lorg/ITsMagic/Atlas/BakeOptions;->roundnessWeight:F

    iget v7, v1, Lorg/ITsMagic/Atlas/BakeOptions;->straightnessWeight:F

    iget v8, v1, Lorg/ITsMagic/Atlas/BakeOptions;->normalSeamWeight:F

    iget v9, v1, Lorg/ITsMagic/Atlas/BakeOptions;->textureSeamWeight:F

    iget v10, v1, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartSize:I

    iget v11, v1, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    iget-boolean v13, v1, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iget-boolean v14, v1, Lorg/ITsMagic/Atlas/BakeOptions;->blockAlign:Z

    new-instance v16, Lorg/ITsMagic/Atlas/f$a;

    invoke-direct/range {v16 .. v16}, Lorg/ITsMagic/Atlas/f$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v12, 0x0

    const/16 v17, 0x1

    move-object v1, v0

    move-object/from16 v18, v15

    move/from16 v15, v17

    :try_start_1
    invoke-virtual/range {v1 .. v16}, Lorg/ITsMagic/Atlas/XAtlas;->generate(IFFFFFFFIIFZZZLorg/ITsMagic/Atlas/XAtlas$a;)V

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v18

    :cond_0
    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg/k;

    invoke-virtual {v1}, LUg/k;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v18

    :cond_1
    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/k;

    invoke-virtual {v0}, LUg/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/h;

    invoke-virtual {v0}, LUg/h;->a()LUg/g;

    move-result-object v0

    invoke-virtual {v0}, LUg/g;->i()Lvc/q;

    move-result-object v1

    invoke-virtual {v1}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    invoke-virtual {v0}, LUg/g;->g()Lvc/n;

    move-result-object v1

    invoke-virtual {v1}, Lvc/n;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroyImmediate()V

    invoke-virtual {v0}, LUg/g;->c()Lvc/q;

    move-result-object v1

    invoke-virtual {v1}, Lvc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    invoke-virtual {v0}, LUg/g;->e()Lvc/p;

    move-result-object v1

    invoke-virtual {v1}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    invoke-virtual {v0}, LUg/g;->a()Lvc/p;

    move-result-object v0

    invoke-virtual {v0}, Lvc/p;->h()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v18, v15

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v18
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method
