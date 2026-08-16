.class public Lorg/ITsMagic/Atlas/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/g$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v7, p0

    :try_start_0
    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v8, v0, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v10, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartArea:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v11, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxBoundaryLength:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v12, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalDeviationWeight:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v13, v0, Lorg/ITsMagic/Atlas/BakeOptions;->roundnessWeight:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v14, v0, Lorg/ITsMagic/Atlas/BakeOptions;->straightnessWeight:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v15, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalSeamWeight:F

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->textureSeamWeight:F

    iget-object v1, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v1

    iget v1, v1, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartSize:I

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v2

    iget v2, v2, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    iget-object v3, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v3, v3, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v3}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v3

    iget v3, v3, Lorg/ITsMagic/Atlas/BakeOptions;->texelsPerUnit:F

    iget-object v4, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v4, v4, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v4}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v4

    iget-boolean v4, v4, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iget-object v5, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v5, v5, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v5}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v5

    iget-boolean v5, v5, Lorg/ITsMagic/Atlas/BakeOptions;->blockAlign:Z

    new-instance v6, Lorg/ITsMagic/Atlas/g$a$a$a;

    invoke-direct {v6, v7}, Lorg/ITsMagic/Atlas/g$a$a$a;-><init>(Lorg/ITsMagic/Atlas/g$a$a;)V

    const/4 v9, -0x1

    const/16 v22, 0x1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v23, v6

    invoke-virtual/range {v8 .. v23}, Lorg/ITsMagic/Atlas/XAtlas;->generate(IFFFFFFFIIFZZZLorg/ITsMagic/Atlas/XAtlas$a;)V

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/ITsMagic/Atlas/g;->e(Lorg/ITsMagic/Atlas/g;Ljava/util/List;)Ljava/util/List;

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->f(Lorg/ITsMagic/Atlas/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->a(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->a(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    invoke-interface {v0}, Lorg/ITsMagic/Atlas/g$b;->d()V

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->i(Lorg/ITsMagic/Atlas/g;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/ITsMagic/Atlas/g;->h(Lorg/ITsMagic/Atlas/g;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LUg/k;

    invoke-virtual {v4}, LUg/k;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->j(Lorg/ITsMagic/Atlas/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v2, "Starting atlas generation"

    invoke-interface {v1, v2}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    iget-object v1, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v1, :cond_3

    iget-object v1, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v1, v1, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v2, "Creating atlas texture"

    invoke-interface {v1, v2}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    new-instance v1, Lub/n;

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v2}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v2

    iget-object v3, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v3, v3, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v3}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lub/n;-><init>(II)V

    invoke-virtual {v1}, Lub/n;->apply()V

    new-instance v9, Lorg/ITsMagic/Atlas/c;

    invoke-direct {v9}, Lorg/ITsMagic/Atlas/c;-><init>()V

    invoke-virtual {v4}, LUg/k;->c()Ljava/util/List;

    move-result-object v12

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v2

    iget v2, v2, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    div-int/lit8 v13, v2, 0x2

    const-string v14, "albedo"

    const-string v15, "albedoTilling"

    const-string v16, "albedoOffset"

    new-instance v2, Lorg/ITsMagic/Atlas/g$a$a$b;

    invoke-direct {v2, v7, v4}, Lorg/ITsMagic/Atlas/g$a$a$b;-><init>(Lorg/ITsMagic/Atlas/g$a$a;LUg/k;)V

    const/16 v17, 0x1

    move-object v10, v1

    move-object v11, v0

    move-object/from16 v18, v2

    invoke-virtual/range {v9 .. v18}, Lorg/ITsMagic/Atlas/c;->e(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/ITsMagic/Atlas/c$b;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v3, "Exporting atlas vertex"

    invoke-interface {v2, v3}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "/Bake/"

    const-string v5, ""

    const-string v6, "/"

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v2, v2, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v2}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "iatlas_bake_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v10, v10, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v10}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".mesh"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v9, v2

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->G()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_4
    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v2, "Exporting atlas texture"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->c(Lorg/ITsMagic/Atlas/g;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->k(Lorg/ITsMagic/Atlas/g;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iatlas_atlas_albedo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v3, v3, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v3}, Lorg/ITsMagic/Atlas/g;->d(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_5
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->L()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->D()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/16 v5, 0x10

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;->c(Lub/p;Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move-object v3, v2

    goto :goto_8

    :cond_8
    move-object v3, v5

    :goto_8
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v10, Lorg/ITsMagic/Atlas/g$a$a$c;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/ITsMagic/Atlas/g$a$a$c;-><init>(Lorg/ITsMagic/Atlas/g$a$a;Ljava/lang/String;LUg/k;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v10}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->l(Lorg/ITsMagic/Atlas/g;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :goto_9
    new-instance v1, Lorg/ITsMagic/Atlas/g$a$a$d;

    invoke-direct {v1, v7, v0}, Lorg/ITsMagic/Atlas/g$a$a$d;-><init>(Lorg/ITsMagic/Atlas/g$a$a;Ljava/lang/Exception;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v7, Lorg/ITsMagic/Atlas/g$a$a;->b:Lorg/ITsMagic/Atlas/g$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/g;->l(Lorg/ITsMagic/Atlas/g;)V

    :goto_a
    return-void
.end method
