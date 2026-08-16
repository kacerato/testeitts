.class Lcom/threed/jpct/Object3DCompiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;I)V
    .locals 2

    add-int/lit16 p2, p2, 0x3e8

    const/high16 v0, 0x10000

    if-le p2, v0, :cond_0

    shr-int/lit8 v0, p2, 0x10

    shl-int/lit8 v1, v0, 0x10

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public compile(Lcom/threed/jpct/Object3D;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v2, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    const-string v3, "/"

    const-string v4, "Object "

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    iget-object v8, v2, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v8, :cond_1

    const-string v1, "Can\'t share data with an object that shares data itself. Share data with the source object instead!"

    invoke-static {v1, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v2, v2, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v8, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/threed/jpct/CompiledInstanceFP;

    goto :goto_0

    :cond_2
    move v8, v7

    :goto_0
    if-lt v7, v2, :cond_4

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    if-lt v2, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " precompiled!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    iget-object v9, v1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v9, v9, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/threed/jpct/CompiledInstance;

    iget v9, v9, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    if-eqz v8, :cond_5

    new-instance v10, Lcom/threed/jpct/CompiledInstanceFP;

    invoke-direct {v10, v1, v9, v6}, Lcom/threed/jpct/CompiledInstanceFP;-><init>(Lcom/threed/jpct/Object3D;II)V

    invoke-virtual {v1, v10}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    goto :goto_1

    :cond_5
    new-instance v10, Lcom/threed/jpct/CompiledInstance;

    invoke-direct {v10, v1, v9, v6}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    invoke-virtual {v1, v10}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget v10, Lcom/threed/jpct/Config;->glBatchSize:I

    iget v11, v1, Lcom/threed/jpct/Object3D;->batchSize:I

    if-eq v11, v6, :cond_7

    move v10, v11

    :cond_7
    const/16 v11, 0x3e80

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v11

    iget v11, v11, Lcom/threed/jpct/Mesh;->anzTri:I

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v13

    invoke-virtual {v13}, Lcom/threed/jpct/OcTree;->getRenderingUse()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v13

    invoke-virtual {v13}, Lcom/threed/jpct/OcTree;->getFilledLeafs()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    move v15, v7

    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v7, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iget-object v5, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    move/from16 v18, v10

    iget-boolean v10, v1, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    if-eqz v10, :cond_a

    iget-boolean v10, v1, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/threed/jpct/BufferUtilFactory;->hasNativeSupport()Z

    move-result v10

    if-nez v10, :cond_a

    :cond_9
    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    move/from16 v19, v10

    move-object/from16 v20, v13

    const/4 v10, 0x0

    const/4 v13, -0x1

    :goto_4
    if-lt v10, v11, :cond_c

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v7, v6, :cond_b

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " compiled to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subobjects in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms!"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_11

    :cond_b
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/threed/jpct/CompiledInstance;

    invoke-virtual {v10}, Lcom/threed/jpct/CompiledInstance;->fill()V

    invoke-virtual {v10, v6}, Lcom/threed/jpct/CompiledInstance;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/threed/jpct/Object3D;->addCompiled(Lcom/threed/jpct/CompiledInstance;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    move-wide/from16 v21, v8

    const/4 v8, 0x0

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    aget v8, v6, v10

    invoke-direct {v0, v14, v8}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    if-eqz v7, :cond_d

    array-length v9, v7

    const/4 v8, 0x0

    :goto_6
    if-lt v8, v9, :cond_e

    :cond_d
    move-object/from16 v25, v5

    goto :goto_7

    :cond_e
    aget-object v23, v7, v8

    aget-object v24, v5, v8

    move-object/from16 v25, v5

    const/16 v5, 0x5f

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v5, v23, v10

    invoke-direct {v0, v14, v5}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    const/16 v5, 0x2f

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v5, v24, v10

    invoke-direct {v0, v14, v5}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v25

    goto :goto_6

    :goto_7
    if-eqz v15, :cond_16

    const/4 v5, -0x1

    if-eq v13, v5, :cond_11

    move-object/from16 v5, v20

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v8}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v8

    array-length v9, v8

    move-object/from16 v20, v6

    const/4 v6, 0x0

    :goto_8
    if-lt v6, v9, :cond_f

    move-object/from16 v23, v7

    goto :goto_9

    :cond_f
    move-object/from16 v23, v7

    aget v7, v8, v6

    if-ne v10, v7, :cond_10

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v6}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v6

    move v7, v6

    const/4 v6, -0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v23

    goto :goto_8

    :cond_11
    move-object/from16 v23, v7

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    :goto_9
    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_a
    if-ne v7, v6, :cond_15

    move/from16 v17, v7

    move v9, v13

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v8, v7, :cond_12

    move v13, v9

    move/from16 v7, v17

    goto :goto_e

    :cond_12
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v7}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v7

    array-length v13, v7

    const/4 v6, 0x0

    :goto_c
    if-lt v6, v13, :cond_13

    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    move/from16 v26, v9

    aget v9, v7, v6

    if-ne v10, v9, :cond_14

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/threed/jpct/OcTreeNode;

    invoke-virtual {v6}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v17, v6

    move v9, v8

    const/4 v6, 0x1

    move v8, v7

    :goto_d
    add-int/2addr v8, v6

    const/4 v6, -0x1

    goto :goto_b

    :cond_14
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v26

    goto :goto_c

    :cond_15
    :goto_e
    const-string v6, "_oc_"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v14, v7}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    goto :goto_f

    :cond_16
    move-object/from16 v23, v7

    move-object/from16 v5, v20

    move-object/from16 v20, v6

    const/4 v7, -0x1

    :goto_f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    const/4 v9, 0x1

    if-nez v8, :cond_17

    new-array v8, v9, [I

    invoke-virtual {v12, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/4 v6, 0x0

    aget v16, v8, v6

    add-int/lit8 v16, v16, 0x1

    aput v16, v8, v6

    const/16 v9, 0x5f

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v8, v8, v6

    div-int v8, v8, v18

    invoke-direct {v0, v14, v8}, Lcom/threed/jpct/Object3DCompiler;->append(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/threed/jpct/CompiledInstance;

    if-nez v8, :cond_19

    if-eqz v19, :cond_18

    new-instance v8, Lcom/threed/jpct/CompiledInstance;

    invoke-direct {v8, v1, v10, v7}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    goto :goto_10

    :cond_18
    new-instance v8, Lcom/threed/jpct/CompiledInstanceFP;

    invoke-direct {v8, v1, v10, v7}, Lcom/threed/jpct/CompiledInstanceFP;-><init>(Lcom/threed/jpct/Object3D;II)V

    :goto_10
    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v8, v10}, Lcom/threed/jpct/CompiledInstance;->add(I)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v20

    move-wide/from16 v8, v21

    move-object/from16 v7, v23

    move-object/from16 v20, v5

    move-object/from16 v5, v25

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1b

    iget-object v2, v1, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already compiled!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1b
    :goto_11
    return-void
.end method
