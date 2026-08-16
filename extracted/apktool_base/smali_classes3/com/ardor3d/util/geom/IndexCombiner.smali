.class Lcom/ardor3d/util/geom/IndexCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field sectionMap:Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S1<",
            "Lcom/ardor3d/renderer/IndexMode;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/IndexCombiner;->sectionMap:Lcom/google/common/collect/S1;

    return-void
.end method


# virtual methods
.method public addEntry(Lcom/ardor3d/scenegraph/MeshData;I)V
    .locals 11

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v6

    aget v6, v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v6

    :goto_1
    new-array v7, v6, [I

    move v8, v1

    :goto_2
    if-ge v8, v6, :cond_1

    add-int v9, v8, p2

    add-int/2addr v9, v4

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/ardor3d/util/geom/IndexCombiner;->sectionMap:Lcom/google/common/collect/S1;

    aget-object v9, v0, v5

    invoke-interface {v8, v9, v7}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/IndexBufferData;->rewind()V

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v3

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_3
    if-ge v4, v3, :cond_7

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v7

    aget v7, v7, v4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->capacity()I

    move-result v7

    :goto_4
    new-array v8, v7, [I

    move v9, v1

    :goto_5
    if-ge v9, v7, :cond_5

    add-int v10, v9, v5

    invoke-virtual {v0, v10}, Lcom/ardor3d/scenegraph/IndexBufferData;->get(I)I

    move-result v10

    add-int/2addr v10, p2

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    iget-object v9, p0, Lcom/ardor3d/util/geom/IndexCombiner;->sectionMap:Lcom/google/common/collect/S1;

    aget-object v10, v2, v6

    invoke-interface {v9, v10, v8}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/2addr v5, v7

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public saveTo(Lcom/ardor3d/scenegraph/MeshData;)V
    .locals 12

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/util/geom/IndexCombiner;->sectionMap:Lcom/google/common/collect/S1;

    invoke-interface {v2}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ardor3d/renderer/IndexMode;

    iget-object v6, p0, Lcom/ardor3d/util/geom/IndexCombiner;->sectionMap:Lcom/google/common/collect/S1;

    invoke-interface {v6, v5}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    sget-object v7, Lcom/ardor3d/util/geom/IndexCombiner$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    array-length v9, v9

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, -0x2

    add-int/2addr v4, v8

    invoke-static {v8}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBufferOnHeap(I)Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    if-eqz v9, :cond_2

    aget v11, v10, v3

    invoke-virtual {v7, v11}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    :cond_2
    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v9, v11, :cond_3

    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    invoke-virtual {v7, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    array-length v8, v7

    add-int/2addr v4, v8

    invoke-static {v8}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBufferOnHeap(I)Ljava/nio/IntBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v3

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_4

    :cond_5
    add-int/2addr v4, v8

    invoke-static {v8}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBufferOnHeap(I)Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    goto :goto_5

    :cond_6
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v4, v2}, Lcom/ardor3d/util/geom/BufferUtils;->createIndexBufferData(II)Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [I

    :goto_6
    if-ge v3, v4, :cond_9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    aput v7, v5, v3

    :goto_7
    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    goto :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v5}, Lcom/ardor3d/scenegraph/MeshData;->setIndexLengths([I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ardor3d/renderer/IndexMode;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexModes([Lcom/ardor3d/renderer/IndexMode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
