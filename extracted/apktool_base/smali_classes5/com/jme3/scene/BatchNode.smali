.class public Lcom/jme3/scene/BatchNode;
.super Lcom/jme3/scene/GeometryGroupNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/BatchNode$Batch;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected batches:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/BatchNode$Batch;",
            ">;"
        }
    .end annotation
.end field

.field protected batchesByGeom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/scene/Geometry;",
            "Lcom/jme3/scene/BatchNode$Batch;",
            ">;"
        }
    .end annotation
.end field

.field maxVertCount:I

.field needsFullRebatch:Z

.field private tmpFloat:[F

.field private tmpFloatN:[F

.field private tmpFloatT:[F

.field useTangents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/BatchNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/BatchNode;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/GeometryGroupNode;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/BatchNode$Batch;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    .line 5
    iput-boolean v0, p0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/jme3/scene/GeometryGroupNode;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class v0, Lcom/jme3/scene/BatchNode$Batch;

    invoke-direct {p1, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    .line 11
    iput-boolean p1, p0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    return-void
.end method

.method private doCopyBuffer(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;I)V
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    mul-int/2addr p2, p4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    div-int/2addr v3, p4

    if-ge v2, v3, :cond_0

    mul-int v3, v2, p4

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iput v4, v1, Lcom/jme3/math/Vector3f;->z:F

    add-int/2addr v3, p2

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p3, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p3, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private doTransforms(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v7

    iget-object v8, v7, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v9, v7, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v10, v7, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    sub-int v11, p8, p7

    mul-int/lit8 v12, v11, 0x3

    mul-int/lit8 v11, v11, 0x4

    mul-int/lit8 v13, p7, 0x3

    mul-int/lit8 v14, p7, 0x4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v15, v0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    const/4 v5, 0x0

    move/from16 p7, v14

    move-object/from16 v14, p1

    invoke-virtual {v14, v15, v5, v12}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v14, v0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    invoke-virtual {v1, v14, v5, v12}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v14, v0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    invoke-virtual {v2, v14, v5, v11}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    :cond_1
    move v14, v5

    move v15, v14

    :goto_0
    if-ge v14, v12, :cond_4

    add-int/lit8 v16, v14, 0x1

    add-int/lit8 v17, v14, 0x2

    iget-object v5, v0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    move/from16 v18, v11

    aget v11, v5, v14

    iput v11, v8, Lcom/jme3/math/Vector3f;->x:F

    aget v11, v5, v16

    iput v11, v8, Lcom/jme3/math/Vector3f;->y:F

    aget v5, v5, v17

    iput v5, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v6, v8, v8}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget v11, v8, Lcom/jme3/math/Vector3f;->x:F

    aput v11, v5, v14

    iget v11, v8, Lcom/jme3/math/Vector3f;->y:F

    aput v11, v5, v16

    iget v11, v8, Lcom/jme3/math/Vector3f;->z:F

    aput v11, v5, v17

    if-eqz v1, :cond_2

    iget-object v5, v0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    aget v11, v5, v14

    iput v11, v9, Lcom/jme3/math/Vector3f;->x:F

    aget v11, v5, v16

    iput v11, v9, Lcom/jme3/math/Vector3f;->y:F

    aget v5, v5, v17

    iput v5, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v6, v9, v9}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    iget v11, v9, Lcom/jme3/math/Vector3f;->x:F

    aput v11, v5, v14

    iget v11, v9, Lcom/jme3/math/Vector3f;->y:F

    aput v11, v5, v16

    iget v11, v9, Lcom/jme3/math/Vector3f;->z:F

    aput v11, v5, v17

    :cond_2
    add-int/lit8 v14, v14, 0x3

    if-eqz v2, :cond_3

    add-int/lit8 v5, v15, 0x1

    add-int/lit8 v11, v15, 0x2

    move-object/from16 v16, v8

    iget-object v8, v0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    move-object/from16 v17, v9

    aget v9, v8, v15

    iput v9, v10, Lcom/jme3/math/Vector3f;->x:F

    aget v9, v8, v5

    iput v9, v10, Lcom/jme3/math/Vector3f;->y:F

    aget v8, v8, v11

    iput v8, v10, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v6, v10, v10}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v8, v0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    iget v9, v10, Lcom/jme3/math/Vector3f;->x:F

    aput v9, v8, v15

    iget v9, v10, Lcom/jme3/math/Vector3f;->y:F

    aput v9, v8, v5

    iget v5, v10, Lcom/jme3/math/Vector3f;->z:F

    aput v5, v8, v11

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    :cond_3
    move/from16 v11, v18

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    move/from16 v18, v11

    invoke-virtual {v7}, Lcom/jme3/util/TempVars;->release()V

    invoke-virtual {v3, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, v0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v12}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_5

    invoke-virtual {v4, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    invoke-virtual {v4, v1, v6, v12}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v1, p6

    move/from16 v2, p7

    move v3, v6

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    move/from16 v11, v18

    invoke-virtual {v1, v2, v3, v11}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_6
    return-void
.end method

.method private findBatchByMaterial(Lcom/jme3/material/Material;)Lcom/jme3/scene/BatchNode$Batch;
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/BatchNode$Batch;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jme3/material/Material;->contentEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private gatherGeometries(Ljava/util/Map;Lcom/jme3/scene/Spatial;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/jme3/material/Material;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;>;",
            "Lcom/jme3/scene/Spatial;",
            "Z)V"
        }
    .end annotation

    instance-of v0, p2, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/jme3/scene/BatchNode;->isBatch(Lcom/jme3/scene/Spatial;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getBatchHint()Lcom/jme3/scene/Spatial$BatchHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    if-eq v0, v1, :cond_8

    check-cast p2, Lcom/jme3/scene/Geometry;

    iget v0, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_8

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/material/Material;->contentEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No material is set for Geometry: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " please set a material before batching"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p2, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/jme3/scene/Node;

    invoke-virtual {p2}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    instance-of v1, v0, Lcom/jme3/scene/BatchNode;

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, v0, p3}, Lcom/jme3/scene/BatchNode;->gatherGeometries(Ljava/util/Map;Lcom/jme3/scene/Spatial;Z)V

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method private getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method private initTempFloatArrays()V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    iget-boolean v1, p0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    :cond_0
    return-void
.end method

.method private mergeGeometries(Lcom/jme3/scene/Mesh;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Mesh;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    array-length v2, v2

    new-array v3, v2, [I

    new-array v4, v2, [Lcom/jme3/scene/VertexBuffer$Format;

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/scene/Geometry;

    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v16

    add-int v10, v10, v16

    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getTriangleCount()I

    move-result v16

    add-int v11, v11, v16

    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    sget-object v15, Lcom/jme3/scene/BatchNode$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :pswitch_0
    sget-object v15, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    move-object v14, v15

    const/4 v15, 0x3

    goto :goto_1

    :pswitch_1
    sget-object v14, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    const/4 v15, 0x2

    goto :goto_1

    :pswitch_2
    sget-object v14, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, [Lcom/jme3/scene/VertexBuffer;

    move-object/from16 v16, v6

    array-length v6, v7

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_2

    aget-object v17, v7, v10

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    move/from16 v20, v6

    aget v6, v3, v19

    move-object/from16 v19, v7

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v7

    move/from16 v21, v11

    sget-object v11, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v7, v11, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v7

    if-ne v6, v7, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The geometry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has different number of components than the rest of the meshes (this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v7

    aput v7, v3, v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v7

    aput-boolean v7, v5, v6

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v19

    move/from16 v6, v20

    move/from16 v11, v21

    goto/16 :goto_2

    :cond_2
    move/from16 v21, v11

    invoke-virtual {v13}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v9, :cond_4

    if-ne v9, v14, :cond_3

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot combine different primitive types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_4
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v15, v3, v6

    move-object v9, v14

    move-object/from16 v6, v16

    move/from16 v10, v18

    move/from16 v11, v21

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1, v8}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    invoke-virtual {v1, v9}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    const/high16 v6, 0x10000

    if-lt v10, v6, :cond_6

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v7, v4, v6

    goto :goto_5

    :cond_6
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v7, v4, v6

    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_9

    aget v7, v3, v6

    if-nez v7, :cond_7

    goto :goto_8

    :cond_7
    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_8

    aget-object v7, v4, v6

    aget v8, v3, v6

    invoke-static {v7, v8, v11}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v7

    goto :goto_7

    :cond_8
    aget-object v7, v4, v6

    aget v8, v3, v6

    invoke-static {v7, v8, v10}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v7

    :goto_7
    new-instance v8, Lcom/jme3/scene/VertexBuffer;

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v9, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    aget v12, v3, v6

    aget-object v13, v4, v6

    invoke-virtual {v8, v9, v12, v13, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    aget-boolean v7, v5, v6

    invoke-virtual {v8, v7}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    invoke-virtual {v1, v8}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/scene/Geometry;

    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v8

    invoke-virtual {v0, v7}, Lcom/jme3/scene/BatchNode;->isBatch(Lcom/jme3/scene/Spatial;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7, v0, v5}, Lcom/jme3/scene/Geometry;->associateWithGroupNode(Lcom/jme3/scene/GeometryGroupNode;I)V

    :cond_a
    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v9

    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v2, :cond_14

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-virtual {v8, v12}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v12

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-virtual {v1, v13}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v13

    if-nez v13, :cond_c

    :cond_b
    move/from16 v19, v2

    move-object/from16 p2, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x3

    goto/16 :goto_f

    :cond_c
    sget-object v15, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-ne v15, v11, :cond_e

    aget v12, v3, v11

    invoke-virtual {v8}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v15

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v10, :cond_b

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v12, :cond_d

    mul-int v18, v14, v12

    move/from16 v19, v2

    add-int v2, v18, v1

    invoke-virtual {v13, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v2

    add-int/2addr v2, v5

    add-int v18, v6, v14

    mul-int v18, v18, v12

    move-object/from16 p2, v4

    add-int v4, v18, v1

    invoke-virtual {v15, v4, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, p2

    move/from16 v2, v19

    goto :goto_c

    :cond_d
    move/from16 v19, v2

    move-object/from16 p2, v4

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_b

    :cond_e
    move/from16 v19, v2

    move-object/from16 p2, v4

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, v11, :cond_10

    invoke-virtual {v12}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/jme3/scene/BatchNode;->doCopyBuffer(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;I)V

    const/4 v1, 0x0

    :cond_f
    :goto_d
    const/4 v2, 0x1

    goto :goto_f

    :cond_10
    const/4 v4, 0x3

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v11, :cond_11

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v1, v11, :cond_12

    :cond_11
    const/4 v1, 0x0

    goto :goto_e

    :cond_12
    if-eqz v12, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v13, v5, v9}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    goto :goto_d

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geometry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " buffer whereas other geoms have. all geometries should have the same types of buffers.\n Try to use GeometryBatchFactory.alignBuffer() on the BatchNode before batching"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_e
    invoke-virtual {v12}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-virtual {v13}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/FloatBuffer;

    aget v13, v3, v11

    invoke-direct {v0, v2, v5, v12, v13}, Lcom/jme3/scene/BatchNode;->doCopyBuffer(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;I)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v2, v11, :cond_f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/jme3/scene/BatchNode;->useTangents:Z

    :goto_f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v2, v19

    goto/16 :goto_a

    :cond_14
    move/from16 v19, v2

    move-object/from16 p2, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x3

    add-int/2addr v5, v9

    add-int/2addr v6, v10

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v2, v19

    goto/16 :goto_9

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private unbatchSubGraph(Lcom/jme3/scene/Spatial;)V
    .locals 1

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/scene/BatchNode;->unbatchSubGraph(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->unassociateFromGroupNode()V

    :cond_1
    return-void
.end method


# virtual methods
.method public batch()V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode;->doBatch()V

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/BatchNode$Batch;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    iget-object v3, v3, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "JmePhysicsIgnore"

    invoke-virtual {v3, v5, v4}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone(Z)Lcom/jme3/scene/Node;
    .locals 5

    .line 2
    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/BatchNode;

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/BatchNode$Batch;

    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-object v3, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    iget-object v3, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3, v2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Spatial;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, p1, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v2}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    .line 9
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/BatchNode$Batch;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p1, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    .line 11
    invoke-virtual {p1}, Lcom/jme3/scene/BatchNode;->batch()V

    :cond_3
    return-object p1
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/scene/BatchNode;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object p1

    return-object p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloat:[F

    iget-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloatN:[F

    iget-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    iput-object p2, p0, Lcom/jme3/scene/BatchNode;->tmpFloatT:[F

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/BatchNode$Batch;

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/BatchNode$Batch;

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 6

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/jme3/scene/BatchNode;->isBatch(Lcom/jme3/scene/Spatial;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, p1, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public detachChildAt(I)Lcom/jme3/scene/Spatial;
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->detachChildAt(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/scene/BatchNode;->unbatchSubGraph(Lcom/jme3/scene/Spatial;)V

    :cond_0
    return-object p1
.end method

.method public doBatch()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    iget-boolean v3, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    invoke-direct {p0, v0, p0, v3}, Lcom/jme3/scene/BatchNode;->gatherGeometries(Ljava/util/Map;Lcom/jme3/scene/Spatial;Z)V

    iget-boolean v3, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/jme3/scene/BatchNode$Batch;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v6, v6, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->clear()V

    iget-object v3, p0, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lcom/jme3/scene/Mesh;

    invoke-direct {v5}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/material/Material;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-batch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v8}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    if-nez v8, :cond_3

    invoke-direct {p0, v6}, Lcom/jme3/scene/BatchNode;->findBatchByMaterial(Lcom/jme3/material/Material;)Lcom/jme3/scene/BatchNode$Batch;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v7, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-interface {v4, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v7, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v7}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v9}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/jme3/scene/BatchNode$Batch;

    invoke-direct {v8, p0}, Lcom/jme3/scene/BatchNode$Batch;-><init>(Lcom/jme3/scene/BatchNode;)V

    goto :goto_2

    :cond_3
    new-instance v8, Lcom/jme3/scene/BatchNode$Batch;

    invoke-direct {v8, p0}, Lcom/jme3/scene/BatchNode$Batch;-><init>(Lcom/jme3/scene/BatchNode;)V

    :goto_2
    invoke-direct {p0, v5, v4}, Lcom/jme3/scene/BatchNode;->mergeGeometries(Lcom/jme3/scene/Mesh;Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->setDynamic()V

    invoke-virtual {v8, v4}, Lcom/jme3/scene/BatchNode$Batch;->updateGeomList(Ljava/util/List;)V

    new-instance v4, Lcom/jme3/scene/Geometry;

    invoke-direct {v4, v7}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    iput-object v4, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4, v6}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v4, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v4, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    iget-object v4, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->updateCounts()V

    iget-object v4, v8, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    iget-object v4, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4, v8}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iput-boolean v2, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    :cond_5
    sget-object v0, Lcom/jme3/scene/BatchNode;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Batched {0} geometries in {1} batches."

    invoke-virtual {v0, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Lcom/jme3/scene/BatchNode;->maxVertCount:I

    if-eq v1, v0, :cond_7

    invoke-direct {p0}, Lcom/jme3/scene/BatchNode;->initTempFloatArrays()V

    :cond_7
    return-void
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/BatchNode$Batch;

    iget-object v0, v0, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformMatrix(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Matrix4f;
    .locals 0

    iget-object p1, p1, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    return-object p1
.end method

.method public final isBatch(Lcom/jme3/scene/Spatial;)Z
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/BatchNode$Batch;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onGeometryUnassociated(Lcom/jme3/scene/Geometry;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/BatchNode;->setNeedsFullRebatch(Z)V

    return-void
.end method

.method public onMaterialChange(Lcom/jme3/scene/Geometry;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot set the material of a batched geometry, change the material of the parent BatchNode."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onMeshChange(Lcom/jme3/scene/Geometry;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot set the mesh of a batched geometry"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTransformChange(Lcom/jme3/scene/Geometry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/BatchNode;->updateSubBatch(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for now, please set the material on the geoms before batching"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNeedsFullRebatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/BatchNode;->needsFullRebatch:Z

    return-void
.end method

.method public updateSubBatch(Lcom/jme3/scene/Geometry;)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    iget-object v1, v10, Lcom/jme3/scene/BatchNode;->batchesByGeom:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/jme3/scene/BatchNode$Batch;

    if-eqz v11, :cond_2

    iget-object v1, v11, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v12

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v13

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v14

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-direct {v10, v12}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v15

    invoke-direct {v10, v13}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-direct {v10, v14}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-direct {v10, v1}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-direct {v10, v3}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-direct {v10, v2}, Lcom/jme3/scene/BatchNode;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual/range {p0 .. p1}, Lcom/jme3/scene/BatchNode;->getTransformMatrix(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Matrix4f;

    move-result-object v16

    iget v7, v0, Lcom/jme3/scene/Geometry;->startIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v0

    add-int v17, v7, v0

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    move-object v5, v9

    move-object v6, v8

    move-object v10, v8

    move/from16 v8, v17

    move-object/from16 v17, v11

    move-object v11, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/jme3/scene/BatchNode;->doTransforms(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;IILcom/jme3/math/Matrix4f;)V

    invoke-virtual {v12, v15}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    if-eqz v13, :cond_0

    invoke-virtual {v13, v11}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_0
    if-eqz v14, :cond_1

    invoke-virtual {v14, v10}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    :cond_1
    move-object/from16 v1, v17

    iget-object v0, v1, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    :cond_2
    return-void
.end method
