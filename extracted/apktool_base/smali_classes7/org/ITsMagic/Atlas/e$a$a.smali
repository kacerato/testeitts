.class public Lorg/ITsMagic/Atlas/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/e$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v2, v0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v3, v0, Lorg/ITsMagic/Atlas/BakeOptions;->a:I

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v4, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartArea:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v5, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxBoundaryLength:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v6, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalDeviationWeight:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v7, v0, Lorg/ITsMagic/Atlas/BakeOptions;->roundnessWeight:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v8, v0, Lorg/ITsMagic/Atlas/BakeOptions;->straightnessWeight:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v9, v0, Lorg/ITsMagic/Atlas/BakeOptions;->normalSeamWeight:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v10, v0, Lorg/ITsMagic/Atlas/BakeOptions;->textureSeamWeight:F

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v11, v0, Lorg/ITsMagic/Atlas/BakeOptions;->maxChartSize:I

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v12, v0, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-boolean v14, v0, Lorg/ITsMagic/Atlas/BakeOptions;->bilinear:Z

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-boolean v15, v0, Lorg/ITsMagic/Atlas/BakeOptions;->blockAlign:Z

    new-instance v0, Lorg/ITsMagic/Atlas/e$a$a$a;

    invoke-direct {v0, v1}, Lorg/ITsMagic/Atlas/e$a$a$a;-><init>(Lorg/ITsMagic/Atlas/e$a$a;)V

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lorg/ITsMagic/Atlas/XAtlas;->generate(IFFFFFFFIIFZZZLorg/ITsMagic/Atlas/XAtlas$a;)V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    invoke-interface {v0, v2, v2}, Lorg/ITsMagic/Atlas/e$c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v3, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/k;

    invoke-virtual {v0}, LUg/k;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/ITsMagic/Atlas/e;->e(Lorg/ITsMagic/Atlas/e;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->d(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    invoke-interface {v0, v2, v2}, Lorg/ITsMagic/Atlas/e$c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V

    return-void

    :cond_1
    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v3, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v0}, Lorg/ITsMagic/Atlas/XAtlas;->getBakeDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/k;

    invoke-virtual {v0}, LUg/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/ITsMagic/Atlas/e;->g(Lorg/ITsMagic/Atlas/e;Ljava/util/List;)Ljava/util/List;

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-boolean v3, v0, Lorg/ITsMagic/Atlas/e$a;->d:Z

    if-eqz v3, :cond_2

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->f(Lorg/ITsMagic/Atlas/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUg/h;

    invoke-virtual {v3, v2}, LUg/h;->f(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->texture:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    const-string v2, "Creating atlas texture"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/e$c;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    new-instance v2, Lub/n;

    iget-object v3, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v3, v3, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v3}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v3

    iget-object v4, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v4, v4, Lorg/ITsMagic/Atlas/e$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-virtual {v4}, Lorg/ITsMagic/Atlas/XAtlas;->getEffectiveResolution()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lub/n;-><init>(II)V

    invoke-static {v0, v2}, Lorg/ITsMagic/Atlas/e;->i(Lorg/ITsMagic/Atlas/e;Lub/n;)Lub/n;

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->h(Lorg/ITsMagic/Atlas/e;)Lub/n;

    move-result-object v0

    invoke-virtual {v0}, Lub/n;->apply()V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->b:Lorg/ITsMagic/Atlas/e$c;

    const-string v2, "Starting atlas generation"

    invoke-interface {v0, v2}, Lorg/ITsMagic/Atlas/e$c;->b(Ljava/lang/String;)V

    new-instance v3, Lorg/ITsMagic/Atlas/c;

    invoke-direct {v3}, Lorg/ITsMagic/Atlas/c;-><init>()V

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->h(Lorg/ITsMagic/Atlas/e;)Lub/n;

    move-result-object v4

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->d(Lorg/ITsMagic/Atlas/e;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->f(Lorg/ITsMagic/Atlas/e;)Ljava/util/List;

    move-result-object v6

    iget-object v0, v1, Lorg/ITsMagic/Atlas/e$a$a;->b:Lorg/ITsMagic/Atlas/e$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/e$a;->e:Lorg/ITsMagic/Atlas/e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/e;->c(Lorg/ITsMagic/Atlas/e;)Lorg/ITsMagic/Atlas/BakeOptions;

    move-result-object v0

    iget v0, v0, Lorg/ITsMagic/Atlas/BakeOptions;->padding:I

    div-int/lit8 v7, v0, 0x2

    const-string v8, "albedo"

    const-string v9, "albedoTilling"

    const-string v10, "albedoOffset"

    new-instance v12, Lorg/ITsMagic/Atlas/e$a$a$b;

    invoke-direct {v12, v1}, Lorg/ITsMagic/Atlas/e$a$a$b;-><init>(Lorg/ITsMagic/Atlas/e$a$a;)V

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v12}, Lorg/ITsMagic/Atlas/c;->e(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/ITsMagic/Atlas/c$b;)V

    :cond_3
    new-instance v0, Lorg/ITsMagic/Atlas/e$a$a$c;

    invoke-direct {v0, v1}, Lorg/ITsMagic/Atlas/e$a$a$c;-><init>(Lorg/ITsMagic/Atlas/e$a$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
