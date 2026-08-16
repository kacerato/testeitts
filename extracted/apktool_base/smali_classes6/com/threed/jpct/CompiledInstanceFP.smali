.class Lcom/threed/jpct/CompiledInstanceFP;
.super Lcom/threed/jpct/CompiledInstance;
.source "SourceFile"


# static fields
.field protected static smallBufferOneF:[F

.field protected static smallBufferTwoF:[F


# instance fields
.field protected ncoords:[F

.field protected normals:Lcom/threed/jpct/FloatBufferWrapper;

.field protected vcoords:[F

.field protected vertices:Lcom/threed/jpct/FloatBufferWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/CompiledInstance;-><init>(Lcom/threed/jpct/Object3D;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    return-void
.end method


# virtual methods
.method public _fill()V
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    sput v1, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v2, v2, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstance;->checkStrips()V

    :cond_1
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v3

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    iget-object v7, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Lcom/threed/jpct/IntList;->size()I

    move-result v7

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    if-nez v8, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v3, Lcom/threed/jpct/FloatBufferWrapper;

    mul-int/lit8 v4, v7, 0x9

    invoke-direct {v3, v4}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    new-instance v3, Lcom/threed/jpct/FloatBufferWrapper;

    invoke-direct {v3, v4}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v3}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v3

    if-eqz v3, :cond_3

    mul-int/lit8 v3, v7, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    :cond_3
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    if-eqz v3, :cond_4

    mul-int/lit8 v3, v7, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    :cond_4
    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v3, :cond_5

    mul-int/lit8 v3, v7, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    :cond_5
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v3, :cond_8

    move v3, v1

    move v4, v2

    :goto_1
    iget-object v10, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v11, v10

    if-lt v3, v11, :cond_6

    goto :goto_2

    :cond_6
    aget-object v10, v10, v3

    iget v11, v0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v10, v10, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    move v4, v2

    :goto_2
    iput v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    sget v3, Lcom/threed/jpct/Config;->glStageCount:I

    if-le v4, v3, :cond_9

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    :cond_9
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v3, v3, [Ljava/nio/IntBuffer;

    iput-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    move v3, v1

    :goto_3
    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v4, :cond_a

    move v7, v2

    move-wide v3, v8

    goto :goto_4

    :cond_a
    iget-object v4, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    mul-int/lit8 v10, v7, 0x18

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    aput-object v10, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    move v7, v1

    :goto_4
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v9, v8, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v10, v8, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v11, v8, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v12, v8, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v13, v8, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v14, v8, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput v1, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iget-object v15, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    :cond_c
    iget-object v15, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v15}, Lcom/threed/jpct/IntList;->size()I

    move-result v15

    iget-boolean v2, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v2, :cond_d

    if-eqz v7, :cond_d

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    if-nez v2, :cond_d

    new-instance v2, Lcom/threed/jpct/IntList;

    invoke-direct {v2}, Lcom/threed/jpct/IntList;-><init>()V

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    move-wide/from16 v19, v5

    const/4 v5, 0x3

    if-eqz v1, :cond_13

    iget-boolean v6, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-eqz v6, :cond_13

    array-length v6, v1

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    if-eqz v2, :cond_11

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    iget-boolean v15, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_6
    if-lt v15, v6, :cond_e

    iput v6, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto :goto_8

    :cond_e
    aget v23, v1, v15

    aget v24, v9, v23

    aput v24, v2, v22

    add-int/lit8 v24, v22, 0x1

    aget v25, v12, v23

    aput v25, v8, v22

    aget v25, v10, v23

    aput v25, v2, v24

    add-int/lit8 v25, v22, 0x2

    aget v26, v13, v23

    aput v26, v8, v24

    aget v24, v11, v23

    aput v24, v2, v25

    add-int/lit8 v22, v22, 0x3

    aget v23, v14, v23

    aput v23, v8, v25

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_7
    if-lt v1, v6, :cond_10

    iput v6, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    :goto_8
    invoke-static {}, Lcom/threed/jpct/BufferUtilFactory;->getBufferUtil()Lcom/threed/jpct/BufferUtil;

    move-result-object v1

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-interface {v1, v2, v6}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-interface {v1, v8, v2}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    goto/16 :goto_10

    :cond_10
    aget v22, v9, v1

    aput v22, v2, v15

    add-int/lit8 v22, v15, 0x1

    aget v23, v12, v1

    aput v23, v8, v15

    aget v23, v10, v1

    aput v23, v2, v22

    add-int/lit8 v23, v15, 0x2

    aget v24, v13, v1

    aput v24, v8, v22

    aget v22, v11, v1

    aput v22, v2, v23

    add-int/2addr v15, v5

    aget v22, v14, v1

    aput v22, v8, v23

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    :goto_9
    if-lt v1, v6, :cond_12

    iput v6, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto/16 :goto_10

    :cond_12
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v2, v2, v1

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v15, v9, v2

    invoke-virtual {v8, v15}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v15, v10, v2

    invoke-virtual {v8, v15}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    aget v15, v11, v2

    invoke-virtual {v8, v15}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v15, v12, v2

    invoke-virtual {v8, v15}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v15, v13, v2

    invoke-virtual {v8, v15}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    aget v2, v14, v2

    invoke-virtual {v8, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v1, v1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v1, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v6, v8, Lcom/threed/jpct/Mesh;->points:[[I

    move-object/from16 v23, v1

    const/4 v5, 0x0

    :goto_a
    const/4 v1, 0x4

    if-lt v5, v1, :cond_5e

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v5, v5, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    const/4 v1, 0x0

    :goto_b
    if-lt v1, v15, :cond_29

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-eq v1, v5, :cond_14

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :cond_14
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/threed/jpct/IntList;->size()I

    move-result v1

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Remapping "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vertex indices!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_15
    new-array v5, v1, [I

    iput-object v5, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iget-boolean v5, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v5, v5, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v5, :cond_17

    iget-boolean v5, v5, Lcom/threed/jpct/Animation;->cacheIndices:Z

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v1, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating vertex cache ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v6, v1, 0x18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes)!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_18
    const/4 v5, 0x3

    mul-int/2addr v1, v5

    new-array v5, v1, [F

    iput-object v5, v0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    goto :goto_c

    :goto_e
    iput-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    invoke-virtual {v2}, Lcom/threed/jpct/IntList;->size()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    if-lt v5, v1, :cond_1a

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1c

    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    if-eqz v1, :cond_19

    const-string v1, "Vertex indices will be mapped!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    const-string v1, "Vertex indices will be accessed directly!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    invoke-virtual {v2, v5}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v9

    aput v9, v8, v6

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    aget v8, v8, v6

    if-eq v8, v6, :cond_1b

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1c
    :goto_10
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    :goto_11
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    :goto_12
    iget-object v6, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v6}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v6}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    const/4 v6, 0x0

    :goto_13
    iget v8, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v6, v8, :cond_28

    iget-object v6, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :cond_1f
    const-string v6, "/"

    if-eqz v7, :cond_26

    iget-boolean v7, v0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez v7, :cond_23

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput-object v8, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iget-boolean v7, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v7, :cond_23

    iget-object v7, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v7, :cond_20

    invoke-virtual {v0, v7, v2}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/IntBuffer;

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    :cond_20
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_21

    invoke-virtual {v0, v2, v5}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/IntBuffer;

    iput-object v2, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    :cond_21
    const/4 v2, 0x0

    :goto_14
    iget v5, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v2, v5, :cond_22

    goto :goto_15

    :cond_22
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v7, v5, v2

    invoke-virtual {v0, v7, v1}, Lcom/threed/jpct/CompiledInstance;->flip(Ljava/nio/Buffer;I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/IntBuffer;

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_23
    :goto_15
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subobject of object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " compiled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v2, v2, Lcom/threed/jpct/Object3D;->indexed:Z

    if-eqz v2, :cond_24

    const-string v2, "indexed"

    goto :goto_16

    :cond_24
    const-string v2, "flat"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " floating point data using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v2}, Lcom/threed/jpct/FloatBufferWrapper;->limit()I

    move-result v2

    const/4 v5, 0x3

    div-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_25

    const-string v2, "in a strip "

    goto :goto_17

    :cond_25
    const-string v2, ""

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_26
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing and uploading vertices of subobject of object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_27
    const/4 v1, 0x1

    goto/16 :goto_33

    :cond_28
    const/4 v8, 0x0

    iget-object v9, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_29
    move-wide/from16 v28, v3

    const/16 v18, 0x0

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    invoke-virtual {v3, v1}, Lcom/threed/jpct/IntList;->get(I)I

    move-result v3

    if-lez v1, :cond_2a

    iget v4, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    move-object/from16 v25, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x2

    goto :goto_18

    :cond_2a
    move-object/from16 v25, v5

    :cond_2b
    const/4 v4, 0x0

    :goto_18
    move-object/from16 v26, v18

    const/4 v5, 0x3

    :goto_19
    if-lt v4, v5, :cond_2e

    if-eqz v1, :cond_2d

    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->useStrip:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    goto :goto_1a

    :cond_2c
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    goto :goto_1b

    :cond_2d
    :goto_1a
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v25

    move-wide/from16 v3, v28

    goto/16 :goto_b

    :cond_2e
    aget-object v5, v6, v3

    aget v27, v5, v4

    iget-object v5, v8, Lcom/threed/jpct/Mesh;->coords:[I

    aget v5, v5, v27

    move/from16 v30, v3

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    const/high16 v31, 0x10000

    const/high16 v32, 0x47800000    # 65536.0f

    if-nez v3, :cond_40

    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v33, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v34, v33, 0x1

    sput v34, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v35, v9, v5

    aput v35, v3, v33

    add-int/lit8 v35, v33, 0x2

    sput v35, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v36, v10, v5

    aput v36, v3, v34

    move-object/from16 v34, v6

    const/16 v22, 0x3

    add-int/lit8 v6, v33, 0x3

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v33, v11, v5

    aput v33, v3, v35

    move-object/from16 v33, v8

    add-int/lit8 v8, v15, -0x1

    if-ne v1, v8, :cond_2f

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2f

    move/from16 v35, v4

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2f
    move/from16 v35, v4

    const/4 v8, 0x0

    :goto_1c
    sget v4, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v6, v4, :cond_30

    if-eqz v8, :cond_31

    :cond_30
    move/from16 v36, v1

    goto :goto_1d

    :cond_31
    move/from16 v36, v1

    move/from16 v37, v15

    goto :goto_1e

    :goto_1d
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move/from16 v37, v15

    const/4 v15, 0x0

    invoke-virtual {v1, v3, v15, v6}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    :goto_1e
    sget-object v1, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v6, v3, 0x1

    sput v6, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v15, v12, v5

    aput v15, v1, v3

    add-int/lit8 v15, v3, 0x2

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v38, v13, v5

    aput v38, v1, v6

    const/4 v6, 0x3

    add-int/2addr v3, v6

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v6, v14, v5

    aput v6, v1, v15

    if-eq v3, v4, :cond_33

    if-eqz v8, :cond_32

    goto :goto_1f

    :cond_32
    const/4 v15, 0x0

    goto :goto_20

    :cond_33
    :goto_1f
    iget-object v6, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v15, 0x0

    invoke-virtual {v6, v1, v15, v3}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :goto_20
    if-eqz v2, :cond_34

    invoke-virtual {v2, v5}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_34
    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_35

    sget-object v3, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    aput v31, v3, v15

    const/4 v6, 0x1

    aput v31, v3, v6

    const/4 v6, 0x2

    aput v31, v3, v6

    move-object/from16 v6, v23

    iget-object v15, v6, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v15, v15, v27

    mul-float v15, v15, v32

    float-to-int v15, v15

    const/16 v22, 0x3

    aput v15, v3, v22

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto :goto_21

    :cond_35
    move-object/from16 v6, v23

    :goto_21
    if-eqz v7, :cond_37

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_37

    aget-object v3, v25, v5

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v15, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v23, v15, 0x1

    sput v23, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v17, 0x0

    aget v31, v3, v17

    move-object/from16 v38, v2

    mul-float v2, v31, v32

    float-to-int v2, v2

    aput v2, v5, v15

    add-int/lit8 v2, v15, 0x2

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v16, 0x1

    aget v31, v3, v16

    move-object/from16 v39, v14

    mul-float v14, v31, v32

    float-to-int v14, v14

    aput v14, v5, v23

    add-int/lit8 v14, v15, 0x3

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v21, 0x2

    aget v23, v3, v21

    move-object/from16 v40, v13

    mul-float v13, v23, v32

    float-to-int v13, v13

    aput v13, v5, v2

    const/4 v2, 0x4

    add-int/2addr v15, v2

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v2, 0x3

    aget v3, v3, v2

    mul-float v3, v3, v32

    float-to-int v2, v3

    aput v2, v5, v14

    if-eq v15, v4, :cond_36

    if-eqz v8, :cond_38

    :cond_36
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    goto :goto_22

    :cond_37
    move-object/from16 v38, v2

    move-object/from16 v40, v13

    move-object/from16 v39, v14

    :cond_38
    :goto_22
    if-nez v7, :cond_39

    iget-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-nez v1, :cond_3a

    :cond_39
    const/4 v1, 0x0

    :goto_23
    iget v2, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v1, v2, :cond_3b

    :cond_3a
    move-object/from16 v1, v26

    move/from16 v4, v35

    const/4 v3, 0x4

    const/16 v21, 0x2

    move-object/from16 v35, v9

    move-object/from16 v26, v10

    const/4 v9, 0x3

    goto/16 :goto_31

    :cond_3b
    if-nez v1, :cond_3d

    iget-object v2, v6, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v3, v6, Lcom/threed/jpct/Vectors;->nvOrg:[F

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v14, v13, v5

    add-int/lit8 v15, v14, 0x1

    aput v15, v13, v5

    aget v2, v2, v27

    mul-float v2, v2, v32

    float-to-int v2, v2

    aput v2, v4, v14

    aget v2, v13, v5

    add-int/lit8 v14, v2, 0x1

    aput v14, v13, v5

    aget v3, v3, v27

    mul-float v3, v3, v32

    float-to-int v3, v3

    aput v3, v4, v2

    aget v2, v13, v5

    sget v3, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v2, v3, :cond_3c

    if-eqz v8, :cond_3f

    :cond_3c
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v5, v13, v5

    goto :goto_24

    :cond_3d
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v2, v2, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3f

    iget-object v2, v6, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v4, v6, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v3, v4, v3

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v4, v4, v1

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v13, v5, v1

    add-int/lit8 v14, v13, 0x1

    aput v14, v5, v1

    aget v2, v2, v27

    mul-float v2, v2, v32

    float-to-int v2, v2

    aput v2, v4, v13

    aget v2, v5, v1

    add-int/lit8 v13, v2, 0x1

    aput v13, v5, v1

    aget v3, v3, v27

    mul-float v3, v3, v32

    float-to-int v3, v3

    aput v3, v4, v2

    aget v2, v5, v1

    sget v3, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v2, v3, :cond_3e

    if-eqz v8, :cond_3f

    :cond_3e
    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v3, v3, v1

    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v13, v5, v1

    :cond_3f
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_23

    :cond_40
    move/from16 v36, v1

    move-object/from16 v38, v2

    move/from16 v35, v4

    move-object/from16 v34, v6

    move-object/from16 v33, v8

    move-object/from16 v40, v13

    move-object/from16 v39, v14

    move/from16 v37, v15

    move-object/from16 v6, v23

    if-nez v26, :cond_41

    new-instance v1, Lcom/threed/jpct/GenericContainer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    goto :goto_25

    :cond_41
    invoke-virtual/range {v26 .. v26}, Lcom/threed/jpct/GenericContainer;->clear()V

    move-object/from16 v1, v26

    :goto_25
    aget v2, v9, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v10, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v11, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v12, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v40, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v2, v39, v5

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    const/4 v2, 0x0

    :goto_26
    iget v3, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v2, v3, :cond_5b

    iget-object v2, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_42

    iget-object v2, v6, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v2, v2, v27

    invoke-virtual {v1, v2}, Lcom/threed/jpct/GenericContainer;->add(F)V

    :cond_42
    add-int/lit8 v15, v37, -0x1

    move/from16 v3, v36

    move/from16 v4, v35

    if-ne v3, v15, :cond_43

    const/4 v2, 0x2

    if-ne v4, v2, :cond_43

    const/4 v2, 0x1

    goto :goto_27

    :cond_43
    const/4 v2, 0x0

    :goto_27
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_55

    sget-object v8, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    sget v13, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/lit8 v14, v13, 0x1

    sput v14, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v15, v9, v5

    aput v15, v8, v13

    add-int/lit8 v15, v13, 0x2

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v23, v10, v5

    aput v23, v8, v14

    const/4 v14, 0x3

    add-int/2addr v13, v14

    sput v13, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    aget v14, v11, v5

    aput v14, v8, v15

    sget v14, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v13, v14, :cond_45

    if-eqz v2, :cond_44

    goto :goto_28

    :cond_44
    move/from16 v36, v3

    goto :goto_29

    :cond_45
    :goto_28
    iget-object v15, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    move/from16 v36, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v8, v3, v13}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    :goto_29
    sget-object v3, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    sget v8, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    add-int/lit8 v13, v8, 0x1

    sput v13, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v15, v12, v5

    aput v15, v3, v8

    add-int/lit8 v15, v8, 0x2

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v23, v40, v5

    aput v23, v3, v13

    const/4 v13, 0x3

    add-int/2addr v8, v13

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    aget v13, v39, v5

    aput v13, v3, v15

    if-eq v8, v14, :cond_47

    if-eqz v2, :cond_46

    goto :goto_2a

    :cond_46
    const/4 v15, 0x0

    goto :goto_2b

    :cond_47
    :goto_2a
    iget-object v13, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v15, 0x0

    invoke-virtual {v13, v3, v15, v8}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :goto_2b
    move-object/from16 v3, v38

    if-eqz v38, :cond_48

    invoke-virtual {v3, v5}, Lcom/threed/jpct/IntList;->add(I)V

    :cond_48
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_49

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBuffer:[I

    aput v31, v13, v15

    const/4 v15, 0x1

    aput v31, v13, v15

    const/4 v15, 0x2

    aput v31, v13, v15

    iget-object v15, v6, Lcom/threed/jpct/Vectors;->alpha:[F

    aget v15, v15, v27

    mul-float v15, v15, v32

    float-to-int v15, v15

    const/16 v22, 0x3

    aput v15, v13, v22

    invoke-virtual {v8, v13}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    :cond_49
    if-eqz v7, :cond_4b

    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v8, :cond_4b

    aget-object v5, v25, v5

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    sget v15, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    add-int/lit8 v23, v15, 0x1

    sput v23, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v17, 0x0

    aget v26, v5, v17

    move-object/from16 v38, v3

    mul-float v3, v26, v32

    float-to-int v3, v3

    aput v3, v13, v15

    add-int/lit8 v3, v15, 0x2

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v16, 0x1

    aget v26, v5, v16

    move-object/from16 v35, v9

    mul-float v9, v26, v32

    float-to-int v9, v9

    aput v9, v13, v23

    add-int/lit8 v9, v15, 0x3

    sput v9, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/16 v21, 0x2

    aget v23, v5, v21

    move-object/from16 v26, v10

    mul-float v10, v23, v32

    float-to-int v10, v10

    aput v10, v13, v3

    const/4 v3, 0x4

    add-int/2addr v15, v3

    sput v15, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    const/4 v3, 0x3

    aget v5, v5, v3

    mul-float v5, v5, v32

    float-to-int v3, v5

    aput v3, v13, v9

    if-eq v15, v14, :cond_4a

    if-eqz v2, :cond_4c

    :cond_4a
    const/4 v3, 0x0

    invoke-virtual {v8, v13, v3, v15}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v3, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    goto :goto_2c

    :cond_4b
    move-object/from16 v38, v3

    move-object/from16 v35, v9

    move-object/from16 v26, v10

    const/16 v21, 0x2

    :cond_4c
    :goto_2c
    if-nez v7, :cond_4d

    iget-boolean v3, v0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    if-nez v3, :cond_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_2d
    iget v5, v0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v3, v5, :cond_50

    :cond_4e
    iget-object v2, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v2}, Lcom/threed/jpct/FloatBufferWrapper;->position()I

    move-result v2

    sget v3, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    add-int/2addr v2, v3

    const/4 v9, 0x3

    sub-int/2addr v2, v9

    div-int/2addr v2, v9

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-object/from16 v1, v18

    :cond_4f
    const/4 v3, 0x4

    goto/16 :goto_31

    :cond_50
    const/4 v9, 0x3

    if-nez v3, :cond_52

    iget-object v5, v6, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v8, v6, Lcom/threed/jpct/Vectors;->nvOrg:[F

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    const/4 v13, 0x0

    aget-object v10, v10, v13

    sget-object v14, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v15, v14, v13

    add-int/lit8 v17, v15, 0x1

    aput v17, v14, v13

    aget v5, v5, v27

    mul-float v5, v5, v32

    float-to-int v5, v5

    aput v5, v10, v15

    aget v5, v14, v13

    add-int/lit8 v15, v5, 0x1

    aput v15, v14, v13

    aget v8, v8, v27

    mul-float v8, v8, v32

    float-to-int v8, v8

    aput v8, v10, v5

    aget v5, v14, v13

    sget v8, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v5, v8, :cond_51

    if-eqz v2, :cond_54

    :cond_51
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v3

    invoke-virtual {v8, v10, v13, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v13, v14, v13

    goto :goto_2e

    :cond_52
    iget-object v5, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v5, v5, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_54

    iget-object v5, v6, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v8, v3, -0x1

    aget-object v5, v5, v8

    iget-object v10, v6, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v8, v10, v8

    sget-object v10, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v10, v10, v3

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v14, v13, v3

    add-int/lit8 v15, v14, 0x1

    aput v15, v13, v3

    aget v5, v5, v27

    mul-float v5, v5, v32

    float-to-int v5, v5

    aput v5, v10, v14

    aget v5, v13, v3

    add-int/lit8 v14, v5, 0x1

    aput v14, v13, v3

    aget v8, v8, v27

    mul-float v8, v8, v32

    float-to-int v8, v8

    aput v8, v10, v5

    aget v5, v13, v3

    sget v8, Lcom/threed/jpct/CompiledInstance;->BUFFER_SIZE:I

    if-eq v5, v8, :cond_53

    if-eqz v2, :cond_54

    :cond_53
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v3

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v14, v13, v3

    :cond_54
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2d

    :cond_55
    move/from16 v36, v3

    move-object/from16 v35, v9

    move-object/from16 v26, v10

    const/4 v9, 0x3

    const/16 v21, 0x2

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_4f

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    if-eqz v2, :cond_56

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v5, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferOneF:[F

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v8, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    goto :goto_2f

    :cond_56
    const/4 v8, 0x0

    :goto_2f
    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    if-eqz v2, :cond_57

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    sget-object v5, Lcom/threed/jpct/CompiledInstanceFP;->smallBufferTwoF:[F

    invoke-virtual {v3, v5, v8, v2}, Lcom/threed/jpct/FloatBufferWrapper;->put([FII)V

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    :cond_57
    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    if-eqz v2, :cond_58

    iget-object v3, v0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    sget-object v5, Lcom/threed/jpct/CompiledInstance;->smallBufferThree:[I

    invoke-virtual {v3, v5, v8, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    sput v8, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    :cond_58
    const/4 v2, 0x0

    const/4 v3, 0x4

    :goto_30
    if-lt v2, v3, :cond_59

    goto :goto_31

    :cond_59
    sget-object v5, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    aget v8, v5, v2

    if-eqz v8, :cond_5a

    iget-object v10, v0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v10, v10, v2

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->smallBufferMT:[[I

    aget-object v13, v13, v2

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    aput v14, v5, v2

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :goto_31
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v23, v6

    move v5, v9

    move-object/from16 v10, v26

    move/from16 v3, v30

    move-object/from16 v8, v33

    move-object/from16 v6, v34

    move-object/from16 v9, v35

    move/from16 v15, v37

    move-object/from16 v2, v38

    move-object/from16 v14, v39

    move-object/from16 v13, v40

    move-object/from16 v26, v1

    move/from16 v1, v36

    goto/16 :goto_19

    :cond_5b
    move-object/from16 v26, v10

    move/from16 v4, v35

    const/4 v3, 0x4

    const/16 v21, 0x2

    move-object/from16 v35, v9

    const/4 v9, 0x3

    if-nez v2, :cond_5c

    iget-object v8, v6, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v10, v6, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v8, v8, v27

    invoke-virtual {v1, v8}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v8, v10, v27

    invoke-virtual {v1, v8}, Lcom/threed/jpct/GenericContainer;->add(F)V

    goto :goto_32

    :cond_5c
    iget-object v8, v0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget v8, v8, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    const/4 v10, 0x1

    if-le v8, v10, :cond_5d

    iget-object v8, v6, Lcom/threed/jpct/Vectors;->uMul:[[F

    add-int/lit8 v10, v2, -0x1

    aget-object v8, v8, v10

    iget-object v13, v6, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v10, v13, v10

    aget v8, v8, v27

    invoke-virtual {v1, v8}, Lcom/threed/jpct/GenericContainer;->add(F)V

    aget v8, v10, v27

    invoke-virtual {v1, v8}, Lcom/threed/jpct/GenericContainer;->add(F)V

    :cond_5d
    :goto_32
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v10, v26

    move-object/from16 v9, v35

    move/from16 v35, v4

    goto/16 :goto_26

    :cond_5e
    move-object/from16 v38, v2

    move-wide/from16 v28, v3

    move-object/from16 v34, v6

    move-object/from16 v33, v8

    move-object/from16 v35, v9

    move-object/from16 v26, v10

    move-object/from16 v40, v13

    move-object/from16 v39, v14

    move/from16 v37, v15

    move-object/from16 v6, v23

    const/4 v9, 0x3

    const/16 v18, 0x0

    const/16 v21, 0x2

    sget-object v1, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v2, 0x0

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v34

    move-object/from16 v9, v35

    move-object/from16 v2, v38

    goto/16 :goto_a

    :cond_5f
    move v1, v2

    :goto_33
    iput-boolean v1, v0, Lcom/threed/jpct/CompiledInstance;->filled:Z

    return-void
.end method

.method public compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V
    .locals 13

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-boolean v3, v2, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/CompiledInstance;

    iget-boolean v4, v0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    sget-boolean v2, Lcom/threed/jpct/Config;->useVBO:Z

    if-nez v2, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    const-string v2, "multiTextures"

    const-string v3, "indices"

    const-string v4, "tangents"

    const-string v5, "colors"

    const-string v6, "normals"

    const-string v7, "vertices"

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v8, p0, v9, v7}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v8}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    new-instance v0, Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v8, v8, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v8, p0, v9, v6}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v8}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v8, Ljava/nio/IntBuffer;

    invoke-virtual {v0, p0, v8, v5}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    invoke-virtual {v0, p0, v8, v4}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    const-class v9, Ljava/nio/ShortBuffer;

    invoke-virtual {v0, p0, v9, v3}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    move v0, v1

    :goto_1
    iget v9, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v0, v9, :cond_6

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v10, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p0, v8, v11}, Lcom/threed/jpct/Virtualizer;->restore(Lcom/threed/jpct/CompiledInstance;Ljava/lang/Class;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/IntBuffer;

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v0}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v0}, Lcom/threed/jpct/FloatBufferWrapper;->rewind()V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_8
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_9
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :cond_a
    move v0, v1

    :goto_3
    iget v8, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v0, v8, :cond_21

    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenRefilled:Z

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v0, :cond_b

    const v0, 0x88e8

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_b
    const v0, 0x88e4

    goto :goto_4

    :goto_5
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    const/4 v9, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-nez v0, :cond_14

    :cond_c
    new-array v10, v9, [I

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v0, v10, v1

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v0, v10, v1

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iget v11, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    if-eqz v11, :cond_e

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p2, v11}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p2, v0}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    :goto_7
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_10

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v0, v10, v1

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_8

    :cond_f
    invoke-virtual {p2, v0}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_10
    :goto_8
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_12

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v0, v10, v1

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_9

    :cond_11
    invoke-virtual {p2, v0}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_12
    :goto_9
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    move v0, v1

    :goto_a
    iget v11, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v0, v11, :cond_1f

    iget-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v0, :cond_14

    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    aget v0, v10, v1

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_b

    :cond_13
    invoke-virtual {p2, v0}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :cond_14
    :goto_b
    iput-boolean v9, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget p2, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    const v11, 0x8892

    invoke-interface {p1, v11, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {p2}, Lcom/threed/jpct/FloatBufferWrapper;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v11, p2, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget p2, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-interface {p1, v11, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {p2}, Lcom/threed/jpct/FloatBufferWrapper;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, v0, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v11, p2, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-eqz p2, :cond_15

    iget p2, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {p1, v11, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-interface {p1, v11, p2, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_15
    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-eqz p2, :cond_16

    iget p2, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-interface {p1, v11, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-interface {p1, v11, p2, v0, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    :cond_16
    move p2, v1

    :goto_c
    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt p2, v0, :cond_1e

    invoke-interface {p1, v11, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-boolean p2, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    const/4 v0, 0x2

    if-eqz p2, :cond_17

    iget p2, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    const v10, 0x8893

    invoke-interface {p1, v10, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    mul-int/2addr p2, v0

    iget-object v11, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v10, p2, v11, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {p1, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :cond_17
    iget-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result p1

    if-lt p1, v0, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "VBO created for object \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {p2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_18
    iput-boolean v1, p0, Lcom/threed/jpct/CompiledInstance;->firstCompile:Z

    :cond_19
    iget-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/threed/jpct/Virtualizer;->isFull()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1b

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :goto_d
    iget p1, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v1, p1, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    iput-boolean v9, p0, Lcom/threed/jpct/CompiledInstance;->hasBeenVirtualized:Z

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v0}, Lcom/threed/jpct/FloatBufferWrapper;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v7}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    invoke-virtual {v0}, Lcom/threed/jpct/FloatBufferWrapper;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v6}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    invoke-virtual {p1, p0, v0, v5}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {p1, p0, v0, v4}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p0, v0, v3}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    :goto_e
    iget p1, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v1, p1, :cond_1c

    :goto_f
    new-instance p1, Lcom/threed/jpct/FloatBufferWrapper;

    invoke-direct {p1, v9}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    iput-object p1, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    goto :goto_10

    :cond_1c
    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v0, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v0, v3}, Lcom/threed/jpct/Virtualizer;->store(Lcom/threed/jpct/CompiledInstance;Ljava/nio/Buffer;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    :goto_10
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v0, v0, p2

    invoke-interface {p1, v11, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v10, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v10, v10, p2

    invoke-interface {p1, v11, v0, v10, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_c

    :cond_1f
    invoke-interface {p1, v9, v10, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v11, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v12, v10, v1

    aput v12, v11, v0

    if-nez v12, :cond_20

    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstance;->bufferError()V

    goto :goto_11

    :cond_20
    invoke-virtual {p2, v12}, Lcom/threed/jpct/GLRenderer;->registerVBO(I)V

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_21
    iget-object v8, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v8, v8, v0

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public copy(Lcom/threed/jpct/CompiledInstance;)V
    .locals 5

    instance-of v0, p1, Lcom/threed/jpct/CompiledInstanceFP;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/threed/jpct/CompiledInstanceFP;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tris:Lcom/threed/jpct/IntList;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->vertex2index:Ljava/util/HashMap;

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->cnt:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->endStage:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->staticUV:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->treeID:I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->key:Ljava/lang/String;

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->needsCoordMapper:Z

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->coordMapper:[I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->vcoords:[F

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstanceFP;->ncoords:[F

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    iget-boolean v0, p1, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    iput-boolean v0, p0, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    iget v0, p1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iput v0, p0, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    iget-object v0, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    iget-object p1, p1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget v3, p1, v1

    iget-object v4, p0, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Object \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' shares VBOs ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with object \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    iget-object v0, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized fill()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/threed/jpct/CompiledInstanceFP;->_fill()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "State: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/threed/jpct/CompiledInstance;->sbPosMT:[I

    const/4 v5, 0x3

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosOne:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosTwo:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/threed/jpct/CompiledInstance;->sbPosThree:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public declared-synchronized render(ILcom/threed/jpct/GLRenderer;[F[FZLcom/threed/jpct/Camera;[[FZ)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    monitor-enter p0

    :try_start_0
    iget-object v5, v2, Lcom/threed/jpct/GLRenderer;->gl10:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v6, v2, Lcom/threed/jpct/GLRenderer;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v7, Lcom/threed/jpct/CompiledInstance;->lights4:[F

    iget-object v8, v1, Lcom/threed/jpct/CompiledInstance;->obj:Lcom/threed/jpct/Object3D;

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getShaderInternal()Lcom/threed/jpct/GLSLShader;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/threed/jpct/GLRenderer;->setShader(Lcom/threed/jpct/GLSLShader;)V

    iget-object v9, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_5

    iget-boolean v14, v8, Lcom/threed/jpct/Object3D;->sharing:Z

    if-nez v14, :cond_5

    iput-boolean v12, v8, Lcom/threed/jpct/Object3D;->sharing:Z

    iget-object v10, v10, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_0

    const-string v0, "Number of compiled instances don\'t match...can\'t share data!"

    invoke-static {v0, v13}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_32

    :cond_0
    move v10, v13

    :goto_0
    if-lt v10, v9, :cond_1

    :try_start_1
    invoke-virtual {v1, v6, v2}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v10

    if-lt v10, v11, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Object \'"

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' shares compiled data with object \'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v14}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v14, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/threed/jpct/CompiledInstance;

    iget-object v15, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v15, v15, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/threed/jpct/CompiledInstance;

    sget-boolean v16, Lcom/threed/jpct/Config;->useVBO:Z

    if-eqz v16, :cond_4

    if-eqz v6, :cond_4

    iget-boolean v12, v15, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v12, :cond_4

    iget v12, v15, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    if-eq v12, v0, :cond_3

    const v13, -0x3b9ac9ff

    if-eq v12, v13, :cond_3

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v12

    if-lt v12, v11, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "OpenGL context has changed(1)...recovering for renderer "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    :cond_3
    invoke-virtual {v15, v6, v2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v0, v15, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :cond_4
    invoke-virtual {v14, v15}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    const/4 v12, 0x1

    iput-boolean v12, v14, Lcom/threed/jpct/CompiledInstance;->filled:Z

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    :goto_1
    iget-boolean v10, v1, Lcom/threed/jpct/CompiledInstance;->filled:Z

    if-nez v10, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "render() called on an uncompiled object ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    iget-object v10, v8, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v10, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_3
    iget-object v10, v10, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    iget v10, v10, Lcom/threed/jpct/Lights;->lightCnt:I

    iget-object v12, v1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    if-nez v12, :cond_8

    iget v12, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    if-nez v12, :cond_8

    const/4 v12, 0x0

    goto :goto_2

    :cond_8
    const/4 v12, 0x1

    :goto_2
    iget-object v13, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    if-nez v13, :cond_9

    iget v13, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    if-nez v13, :cond_9

    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    :goto_3
    iget v14, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    const v15, -0x3b9ac9ff

    if-ne v14, v15, :cond_b

    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :cond_a
    move-object/from16 v19, v7

    move/from16 v18, v13

    goto/16 :goto_a

    :cond_b
    if-eq v14, v0, :cond_a

    iget-boolean v14, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_12

    :try_start_4
    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v14

    if-lt v14, v11, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "OpenGL context has changed(2)...recovering for renderer "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_c
    const/4 v14, 0x0

    goto :goto_4

    :catch_0
    move-object/from16 v19, v7

    move/from16 v18, v13

    goto/16 :goto_8

    :goto_4
    iput-boolean v14, v1, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    iget-object v14, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    iput-boolean v14, v8, Lcom/threed/jpct/Object3D;->sharing:Z

    const/4 v14, 0x0

    :goto_5
    if-lt v14, v9, :cond_e

    :cond_d
    move-object/from16 v19, v7

    move/from16 v18, v13

    goto :goto_7

    :cond_e
    iget-object v15, v8, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/threed/jpct/CompiledInstance;

    iget-object v11, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    iget-object v11, v11, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/threed/jpct/CompiledInstance;

    sget-boolean v18, Lcom/threed/jpct/Config;->useVBO:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v18, :cond_11

    if-eqz v6, :cond_11

    move/from16 v18, v13

    :try_start_5
    iget-boolean v13, v11, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-eqz v13, :cond_10

    iget v13, v11, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    if-eq v13, v0, :cond_10

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v7

    const/4 v7, 0x2

    if-lt v13, v7, :cond_f

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Uploading data for parent object "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v8, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    invoke-virtual {v13}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "!"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_f
    const/4 v7, 0x0

    iput-boolean v7, v11, Lcom/threed/jpct/CompiledInstance;->buffersCreated:Z

    invoke-virtual {v11, v6, v2}, Lcom/threed/jpct/CompiledInstance;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iput v0, v11, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    goto :goto_6

    :catch_1
    move-object/from16 v19, v7

    goto :goto_8

    :cond_10
    move-object/from16 v19, v7

    goto :goto_6

    :cond_11
    move-object/from16 v19, v7

    move/from16 v18, v13

    :goto_6
    invoke-virtual {v15, v11}, Lcom/threed/jpct/CompiledInstance;->copy(Lcom/threed/jpct/CompiledInstance;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v18

    move-object/from16 v7, v19

    const/4 v11, 0x2

    goto :goto_5

    :goto_7
    invoke-virtual {v1, v6, v2}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    iget-boolean v7, v1, Lcom/threed/jpct/CompiledInstance;->dynamic:Z

    if-eqz v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/CompiledInstanceFP;->fill()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :catch_2
    :goto_8
    :try_start_7
    const-string v7, "Unable to recover to use VBO...using normal vertex arrays instead!"

    const/4 v11, 0x1

    invoke-static {v7, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_9

    :cond_12
    move-object/from16 v19, v7

    move/from16 v18, v13

    :cond_13
    :goto_9
    iput v0, v1, Lcom/threed/jpct/CompiledInstance;->rendererID:I

    :goto_a
    iput-object v2, v1, Lcom/threed/jpct/CompiledInstance;->lastRenderer:Lcom/threed/jpct/GLRenderer;

    const/4 v7, 0x1

    if-le v9, v7, :cond_14

    const/4 v7, 0x1

    goto :goto_b

    :cond_14
    const/4 v7, 0x0

    :goto_b
    iget-object v11, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    const/16 v13, 0x10

    if-nez v11, :cond_16

    if-eqz v7, :cond_15

    new-array v11, v13, [F

    iput-object v11, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    goto :goto_c

    :cond_15
    sget-object v11, Lcom/threed/jpct/CompiledInstance;->STATIC_DUMPY:[F

    iput-object v11, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    :cond_16
    :goto_c
    if-eqz v7, :cond_17

    iget-object v11, v2, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    goto :goto_d

    :cond_17
    const/4 v11, 0x0

    :goto_d
    if-nez v11, :cond_18

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget-object v14, v8, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    invoke-virtual {v11, v14}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual/range {p6 .. p6}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v11}, Lcom/threed/jpct/Matrix;->transformToGL()V

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget v14, v4, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v14, v14

    iget v15, v4, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v15, v15

    iget v4, v4, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v4, v4

    invoke-virtual {v11, v14, v15, v4}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    sget-object v11, Lcom/threed/jpct/CompiledInstance;->mat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v4, v11}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->mo:Lcom/threed/jpct/Matrix;

    iget-object v11, v1, Lcom/threed/jpct/CompiledInstance;->dumpy:[F

    invoke-virtual {v4, v11}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object v11

    if-eqz v7, :cond_18

    iget-object v4, v2, Lcom/threed/jpct/GLRenderer;->matrixCache:Ljava/util/HashMap;

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/16 v4, 0x1700

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-boolean v7, v8, Lcom/threed/jpct/Object3D;->doCulling:Z

    if-eqz v7, :cond_19

    iget-boolean v7, v8, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    if-eqz v7, :cond_1a

    const/16 v7, 0x404

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    const/4 v7, 0x1

    goto :goto_e

    :cond_19
    const/16 v7, 0xb44

    invoke-interface {v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_1a
    const/4 v7, 0x0

    :goto_e
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    if-nez p8, :cond_30

    if-eqz v12, :cond_1b

    aput v14, v3, v13

    :cond_1b
    const/16 v14, 0xb53

    move-object/from16 v4, p3

    const/4 v15, 0x0

    invoke-interface {v5, v14, v4, v15}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    const/16 v4, 0x1600

    const/16 v14, 0x408

    invoke-interface {v5, v14, v4, v3, v15}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    aget v15, v3, v13

    aput v15, v4, v13

    const/4 v15, 0x5

    const/4 v14, 0x1

    if-le v9, v14, :cond_1e

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_f
    if-ge v9, v10, :cond_1f

    const/16 v4, 0x8

    if-lt v9, v4, :cond_1c

    goto :goto_10

    :cond_1c
    int-to-float v4, v9

    aget-object v23, p7, v9

    const/16 v16, 0x0

    aget v24, v23, v16

    const v25, -0x39e3c400    # -9999.0f

    cmpl-float v25, v24, v25

    if-eqz v25, :cond_1d

    const v25, 0x3f37d567    # 0.7181f

    add-float v25, v4, v25

    mul-float v25, v25, v24

    add-float v14, v14, v25

    const v24, 0x3f8ccccd    # 1.1f

    add-float v24, v4, v24

    const/16 v25, 0x1

    aget v26, v23, v25

    mul-float v24, v24, v26

    add-float v14, v14, v24

    const v24, 0x400f5c29    # 2.24f

    add-float v24, v4, v24

    const/16 v17, 0x2

    aget v25, v23, v17

    mul-float v24, v24, v25

    add-float v14, v14, v24

    const v24, 0x406449ba    # 3.567f

    add-float v24, v4, v24

    aget v25, v23, v13

    mul-float v24, v24, v25

    add-float v14, v14, v24

    const v24, 0x411ba29c

    add-float v4, v4, v24

    const/16 v21, 0x4

    aget v24, v23, v21

    aget v25, v23, v15

    const v26, 0x3fb33333    # 1.4f

    mul-float v25, v25, v26

    add-float v24, v24, v25

    const/16 v22, 0x6

    aget v23, v23, v22

    const v25, 0x4091eb85    # 4.56f

    mul-float v23, v23, v25

    add-float v24, v24, v23

    mul-float v4, v4, v24

    add-float/2addr v14, v4

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1e
    const/4 v14, 0x0

    :cond_1f
    :goto_10
    if-eqz v12, :cond_20

    const/16 v4, 0xb57

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_20
    sget v4, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v4, v4, v14

    if-nez v4, :cond_22

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    if-eq v4, v8, :cond_21

    goto :goto_11

    :cond_21
    move/from16 v27, v7

    move/from16 v19, v12

    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_1b

    :cond_22
    :goto_11
    iget-boolean v4, v2, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v4, :cond_23

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->ALL_ONES_3:[F

    const/16 v15, 0x1200

    const/16 v9, 0x408

    const/4 v13, 0x0

    invoke-interface {v5, v9, v15, v4, v13}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->allOnes3:[F

    const/16 v15, 0x1201

    invoke-interface {v5, v9, v15, v4, v13}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    const/16 v15, 0x1202

    invoke-interface {v5, v9, v15, v4, v13}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    :cond_23
    sget v4, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    if-ge v10, v4, :cond_24

    const/4 v4, 0x0

    :goto_12
    sget v9, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    if-lt v4, v9, :cond_25

    :cond_24
    const/4 v4, 0x0

    goto :goto_13

    :cond_25
    sget-object v9, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v9, v9, v4

    invoke-interface {v5, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :goto_13
    sput v4, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v10, :cond_26

    const/16 v9, 0x8

    if-lt v4, v9, :cond_27

    :cond_26
    move/from16 v27, v7

    move/from16 v19, v12

    const/high16 v20, 0x3f800000    # 1.0f

    goto/16 :goto_1a

    :cond_27
    aget-object v9, p7, v4

    sget-object v13, Lcom/threed/jpct/CompiledInstance;->LIGHTS:[I

    aget v13, v13, v4

    const/4 v15, 0x0

    aget v26, v9, v15

    const v15, -0x39e3c400    # -9999.0f

    cmpl-float v15, v26, v15

    if-nez v15, :cond_28

    invoke-interface {v5, v13}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    move/from16 v27, v7

    move/from16 v26, v10

    move-object/from16 v7, v19

    const/16 v0, 0x1202

    const/4 v10, 0x6

    const/4 v15, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v19, v12

    const/16 v12, 0x408

    goto/16 :goto_19

    :cond_28
    sget v15, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    const/16 v26, 0x1

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/threed/jpct/CompiledInstance;->lastLightCnt:I

    sget v15, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    cmpl-float v15, v15, v14

    if-nez v15, :cond_29

    sget-object v15, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    if-ne v15, v8, :cond_29

    const/4 v15, 0x0

    goto :goto_15

    :cond_29
    const/4 v15, 0x1

    :goto_15
    if-eqz v15, :cond_2c

    invoke-interface {v5, v13}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v26, 0x1

    aget v27, v9, v26

    const/16 v16, 0x0

    aput v27, v19, v16

    const/16 v17, 0x2

    aget v27, v9, v17

    aput v27, v19, v26

    const/16 v24, 0x3

    aget v26, v9, v24

    aput v26, v19, v17

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v19, v24

    move/from16 v26, v10

    const/16 v10, 0x1203

    move/from16 v27, v7

    move-object/from16 v7, v19

    const/4 v0, 0x0

    invoke-interface {v5, v13, v10, v7, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    const/4 v10, 0x4

    aget v16, v9, v10

    aput v16, v7, v0

    const/4 v0, 0x5

    aget v10, v9, v0

    const/4 v0, 0x1

    aput v10, v7, v0

    const/4 v0, 0x6

    aget v10, v9, v0

    const/4 v0, 0x2

    aput v10, v7, v0

    const/4 v0, 0x3

    const/4 v10, 0x0

    aput v10, v7, v0

    const/16 v0, 0x1201

    const/4 v10, 0x0

    invoke-interface {v5, v13, v0, v7, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    sget-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    move/from16 v19, v12

    const/16 v12, 0x1200

    invoke-interface {v5, v13, v12, v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    aget v0, v9, v10

    const/4 v10, 0x0

    cmpl-float v12, v0, v10

    if-ltz v12, :cond_2b

    cmpl-float v12, v0, v10

    if-nez v12, :cond_2a

    const v0, 0x3a83126f    # 0.001f

    :cond_2a
    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v10, v0

    const/16 v0, 0x1208

    invoke-interface {v5, v13, v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_16

    :cond_2b
    const/16 v0, 0x1208

    const/4 v10, 0x0

    invoke-interface {v5, v13, v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    goto :goto_16

    :cond_2c
    move/from16 v27, v7

    move/from16 v26, v10

    move-object/from16 v7, v19

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v19, v12

    :goto_16
    iget-boolean v0, v8, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    if-nez v0, :cond_2d

    sget-object v0, Lcom/threed/jpct/CompiledInstance;->ALL_ZEROS:[F

    const/4 v9, 0x0

    const/16 v10, 0x1202

    invoke-interface {v5, v13, v10, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    const/16 v0, 0x1202

    const/4 v10, 0x6

    const/16 v12, 0x408

    const/4 v15, 0x0

    goto :goto_19

    :cond_2d
    sget v0, Lcom/threed/jpct/Config;->specPow:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    const/16 v10, 0x1601

    const/16 v12, 0x408

    invoke-interface {v5, v12, v10, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    if-nez v15, :cond_2e

    const/4 v0, 0x4

    aget v10, v9, v0

    const/4 v0, 0x0

    aput v10, v7, v0

    const/4 v0, 0x5

    aget v10, v9, v0

    const/4 v15, 0x1

    aput v10, v7, v15

    const/4 v10, 0x6

    aget v9, v9, v10

    const/4 v15, 0x2

    aput v9, v7, v15

    const/4 v9, 0x3

    const/4 v15, 0x0

    aput v15, v7, v9

    :goto_17
    const/16 v0, 0x1202

    const/4 v9, 0x0

    goto :goto_18

    :cond_2e
    const/4 v10, 0x6

    const/4 v15, 0x0

    goto :goto_17

    :goto_18
    invoke-interface {v5, v13, v0, v7, v9}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    :goto_19
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    move/from16 v12, v19

    move/from16 v10, v26

    move-object/from16 v19, v7

    move/from16 v7, v27

    goto/16 :goto_14

    :goto_1a
    sput-object v8, Lcom/threed/jpct/CompiledInstance;->lastObj:Lcom/threed/jpct/Object3D;

    sput v14, Lcom/threed/jpct/CompiledInstance;->chkSum:F

    :goto_1b
    iget-boolean v0, v8, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    if-eqz v0, :cond_2f

    const/16 v0, 0x1d00

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    :cond_2f
    :goto_1c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_30
    move/from16 v27, v7

    move/from16 v19, v12

    move/from16 v20, v14

    const/16 v0, 0xb50

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_1c

    :goto_1d
    invoke-interface {v5, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    iget-object v0, v8, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    if-eqz v0, :cond_32

    if-eqz v3, :cond_31

    const/4 v4, 0x3

    aget v14, v3, v4

    goto :goto_1e

    :cond_31
    move/from16 v14, v20

    :goto_1e
    invoke-interface {v0, v14}, Lcom/threed/jpct/IRenderHook;->setTransparency(F)V

    invoke-interface {v0, v8}, Lcom/threed/jpct/IRenderHook;->setCurrentObject3D(Lcom/threed/jpct/Object3D;)V

    iget v3, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v3}, Lcom/threed/jpct/IRenderHook;->beforeRendering(I)V

    :cond_32
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->initShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v3

    if-eqz v3, :cond_33

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/threed/jpct/GLSLShader;->directMode:Z

    :cond_33
    if-eqz v0, :cond_34

    invoke-interface {v0, v3}, Lcom/threed/jpct/IRenderHook;->setCurrentShader(Lcom/threed/jpct/GLSLShader;)V

    :cond_34
    sget-boolean v4, Lcom/threed/jpct/Config;->useVBO:Z

    const/4 v9, -0x1

    const/16 v10, 0xc

    const/16 v12, 0x1406

    const/16 v13, 0x140c

    const v14, 0x8076

    if-eqz v4, :cond_35

    if-eqz v6, :cond_35

    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->vboPossible:Z

    if-nez v4, :cond_36

    :cond_35
    move/from16 v15, p1

    goto/16 :goto_27

    :cond_36
    invoke-virtual {v1, v6, v2}, Lcom/threed/jpct/CompiledInstanceFP;->compileToVBO(Ljavax/microedition/khronos/opengles/GL11;Lcom/threed/jpct/GLRenderer;)V

    sget-object v4, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v15, v1, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v15, v15, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    const v7, 0x8892

    if-eq v4, v15, :cond_3a

    sput-object v15, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    const v4, 0x8075

    invoke-interface {v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->normalsId:I

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v4, 0x0

    invoke-interface {v6, v12, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    const v15, 0x8074

    invoke-interface {v6, v15}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget v15, v1, Lcom/threed/jpct/CompiledInstance;->verticesId:I

    invoke-interface {v6, v7, v15}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v15, 0x3

    invoke-interface {v6, v15, v12, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    if-nez v19, :cond_37

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_1f

    :cond_37
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v4, 0x0

    const/16 v10, 0x10

    const/4 v12, 0x4

    invoke-interface {v6, v12, v13, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    :goto_1f
    if-nez v18, :cond_38

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_20

    :cond_38
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v2, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    :goto_20
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    const/4 v4, 0x0

    :goto_21
    iget v10, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v10, :cond_39

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_23

    :cond_39
    sget-object v10, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v10, v10, v4

    invoke-interface {v5, v10}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    const v10, 0x8078

    invoke-interface {v5, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v10, v1, Lcom/threed/jpct/CompiledInstance;->multiTexturesIds:[I

    aget v10, v10, v4

    invoke-interface {v6, v7, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/16 v14, 0x8

    invoke-interface {v6, v10, v13, v14, v12}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3a
    if-nez v19, :cond_3b

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_22

    :cond_3b
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->colorsId:I

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v4, 0x0

    const/16 v10, 0x10

    const/4 v12, 0x4

    invoke-interface {v6, v12, v13, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :goto_22
    if-nez v18, :cond_3c

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_23

    :cond_3c
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v2, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(I)V

    :goto_23
    if-nez p8, :cond_41

    iget-boolean v4, v8, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v4, :cond_41

    sget-boolean v4, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v4, :cond_3d

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_41

    :cond_3d
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    if-ne v7, v9, :cond_3e

    iget-object v7, v8, Lcom/threed/jpct/Object3D;->texture:[I

    iget v10, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v10

    invoke-virtual {v4, v7}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v7

    move/from16 v15, p1

    invoke-virtual {v7, v15}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v7

    iput v7, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    goto :goto_24

    :cond_3e
    move/from16 v15, p1

    :goto_24
    sget-boolean v7, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v7, :cond_3f

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    if-ne v7, v9, :cond_3f

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v9, 0x1

    if-le v7, v9, :cond_3f

    iget-object v7, v8, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v9, 0x0

    aget-object v7, v7, v9

    iget v9, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v7, v7, v9

    invoke-virtual {v4, v7}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    :cond_3f
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    sget-boolean v7, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v7, :cond_40

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    const/4 v12, 0x1

    goto :goto_25

    :cond_40
    const/4 v12, 0x0

    :goto_25
    invoke-virtual {v2, v12, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    const/16 v4, 0x1702

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v5, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {v5, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v4, 0x0

    invoke-interface {v5, v11, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v4, 0x1700

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_41
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v4, :cond_42

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->indicesId:I

    const v7, 0x8893

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    const/16 v9, 0x1403

    const/4 v10, 0x0

    invoke-interface {v6, v4, v7, v9, v10}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    const v4, 0x8893

    invoke-interface {v6, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_26

    :cond_42
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v9, 0x0

    invoke-interface {v5, v4, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_26
    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v4

    if-nez v4, :cond_41

    :cond_43
    if-eqz v18, :cond_44

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tangentsId:I

    invoke-virtual {v2, v4}, Lcom/threed/jpct/GLRenderer;->clearTangents(I)V

    :cond_44
    if-eqz v0, :cond_57

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v4}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    goto/16 :goto_31

    :goto_27
    sget-object v4, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v6, v1, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v6, v6, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    if-eq v4, v6, :cond_48

    sput-object v6, Lcom/threed/jpct/CompiledInstance;->lastVertexBuffer:Ljava/nio/Buffer;

    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->normals:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v4, v4, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v12, v10, v4}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    iget-object v4, v1, Lcom/threed/jpct/CompiledInstanceFP;->vertices:Lcom/threed/jpct/FloatBufferWrapper;

    iget-object v4, v4, Lcom/threed/jpct/FloatBufferWrapper;->bytes:Ljava/nio/ByteBuffer;

    const/4 v6, 0x3

    invoke-interface {v5, v6, v12, v10, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v4, 0x8075

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v4, 0x8074

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    if-nez v19, :cond_45

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_28

    :cond_45
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->colors:Ljava/nio/IntBuffer;

    const/16 v6, 0x10

    const/4 v7, 0x4

    invoke-interface {v5, v7, v13, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :goto_28
    if-nez v18, :cond_46

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_29

    :cond_46
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    :goto_29
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearStageFlag()V

    const/4 v4, 0x0

    :goto_2a
    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    if-lt v4, v6, :cond_47

    goto :goto_2c

    :cond_47
    sget-object v6, Lcom/threed/jpct/CompiledInstance;->stageMap:[I

    aget v6, v6, v4

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    const v6, 0x8078

    invoke-interface {v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget-object v6, v1, Lcom/threed/jpct/CompiledInstance;->multiTextures:[Ljava/nio/IntBuffer;

    aget-object v6, v6, v4

    const/4 v7, 0x2

    const/16 v10, 0x8

    invoke-interface {v5, v7, v13, v10, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_48
    if-nez v19, :cond_49

    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_2b

    :cond_49
    invoke-interface {v5, v14}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :goto_2b
    if-nez v18, :cond_4a

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    goto :goto_2c

    :cond_4a
    iget-object v4, v1, Lcom/threed/jpct/CompiledInstance;->tangents:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v4}, Lcom/threed/jpct/GLRenderer;->setTangents(Ljava/nio/Buffer;)V

    :goto_2c
    if-nez p8, :cond_53

    iget-boolean v4, v8, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v4, :cond_53

    sget-boolean v4, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v4, :cond_4b

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v6, 0x1

    if-le v4, v6, :cond_53

    :cond_4b
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    if-eq v6, v9, :cond_4c

    iget-object v6, v8, Lcom/threed/jpct/Object3D;->texture:[I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v6, v6, v7

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    if-eq v6, v7, :cond_4d

    :cond_4c
    iget-object v6, v8, Lcom/threed/jpct/Object3D;->texture:[I

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v6, v6, v7

    iput v6, v1, Lcom/threed/jpct/CompiledInstance;->lastTex0:I

    invoke-virtual {v4, v6}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v6

    iput v6, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    :cond_4d
    sget-boolean v6, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v6, :cond_4e

    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    if-eq v6, v9, :cond_4f

    iget-object v6, v8, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v6, v6, v7

    iget v7, v1, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    if-eq v6, v7, :cond_4e

    goto :goto_2d

    :cond_4e
    const/4 v7, 0x1

    goto :goto_2e

    :cond_4f
    :goto_2d
    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->endStage:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_50

    iget-object v6, v8, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v9, 0x0

    aget-object v6, v6, v9

    iget v9, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v6, v6, v9

    iput v6, v1, Lcom/threed/jpct/CompiledInstance;->lastTex1:I

    invoke-virtual {v4, v6}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/threed/jpct/Texture;->getOpenGLID(I)I

    move-result v4

    iput v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    :cond_50
    :goto_2e
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex0:I

    sget-boolean v6, Lcom/threed/jpct/Config;->glForceEnvMapToSecondStage:Z

    if-eqz v6, :cond_51

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->tex1:I

    move v12, v7

    goto :goto_2f

    :cond_51
    const/4 v12, 0x0

    :goto_2f
    iget-object v6, v2, Lcom/threed/jpct/GLRenderer;->lastTextures:[I

    aget v6, v6, v12

    if-eq v6, v4, :cond_52

    invoke-virtual {v2, v12, v4}, Lcom/threed/jpct/GLRenderer;->bindTexture(II)V

    :cond_52
    const/16 v4, 0x1702

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v5, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {v5, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v4, 0x0

    invoke-interface {v5, v11, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v4, 0x1700

    invoke-interface {v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_53
    iget-boolean v4, v1, Lcom/threed/jpct/CompiledInstance;->indexed:Z

    if-eqz v4, :cond_54

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->indexCount:I

    iget-object v7, v1, Lcom/threed/jpct/CompiledInstance;->indices:Ljava/nio/ShortBuffer;

    const/16 v9, 0x1403

    invoke-interface {v5, v4, v6, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_30

    :cond_54
    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->primitiveType:I

    iget v6, v1, Lcom/threed/jpct/CompiledInstance;->cnt:I

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_30
    if-eqz v0, :cond_55

    invoke-interface {v0}, Lcom/threed/jpct/IRenderHook;->repeatRendering()Z

    move-result v4

    if-nez v4, :cond_53

    :cond_55
    if-eqz v18, :cond_56

    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->clearTangents()V

    :cond_56
    if-eqz v0, :cond_57

    iget v4, v1, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    invoke-interface {v0, v4}, Lcom/threed/jpct/IRenderHook;->afterRendering(I)V

    :cond_57
    :goto_31
    if-eqz v3, :cond_58

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/threed/jpct/GLSLShader;->directMode:Z

    :cond_58
    iget-boolean v0, v8, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    if-eqz v0, :cond_59

    const/16 v0, 0x1702

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_59
    const/16 v0, 0x1700

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    if-eqz v19, :cond_5a

    const/16 v0, 0xb57

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_5a
    if-eqz v27, :cond_5b

    const/16 v0, 0x405

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    :cond_5b
    iget-boolean v0, v8, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    if-eqz v0, :cond_5c

    const/16 v0, 0x1d01

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    :cond_5c
    if-eqz p8, :cond_5d

    const/16 v0, 0xb50

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_5d
    iget-boolean v0, v8, Lcom/threed/jpct/Object3D;->doCulling:Z

    if-nez v0, :cond_5e

    const/16 v0, 0xb44

    invoke-interface {v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_5e
    invoke-virtual/range {p2 .. p2}, Lcom/threed/jpct/GLRenderer;->closeShader()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_32
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method
