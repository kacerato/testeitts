.class public Lcom/ardor3d/renderer/queue/AbstractRenderBucket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/renderer/queue/RenderBucket;


# instance fields
.field protected _comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field protected _currentList:[Lcom/ardor3d/scenegraph/Spatial;

.field protected _currentListSize:I

.field protected _listSizeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected _listStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "[",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field protected _listStackPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "[",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field protected _tempList:[Lcom/ardor3d/scenegraph/Spatial;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStackPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listSizeStack:Ljava/util/Stack;

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/ardor3d/scenegraph/Spatial;

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    return-void
.end method


# virtual methods
.method public add(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 4

    iget v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lcom/ardor3d/scenegraph/Spatial;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    iget v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 4

    iget v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    :cond_0
    return-void
.end method

.method public distanceToCam(Lcom/ardor3d/scenegraph/Spatial;)D
    .locals 2

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getCenter()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->isValid(Lcom/ardor3d/math/type/ReadOnlyVector3;)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ardor3d/renderer/Camera;->distanceToCam(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    return-wide v0
.end method

.method public popBucket()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStackPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/Spatial;

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listSizeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    return-void
.end method

.method public pushBucket()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStackPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/ardor3d/scenegraph/Spatial;

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listStackPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/Spatial;

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_listSizeStack:Ljava/util/Stack;

    iget v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    return-void
.end method

.method public remove(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    add-int/lit8 v0, p1, -0x1

    if-ge v1, v0, :cond_2

    iget-object p1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    add-int/lit8 v0, v1, 0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    return-void
.end method

.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Spatial;->draw(Lcom/ardor3d/renderer/Renderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sort()V
    .locals 6

    iget v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    sget v2, Lcom/ardor3d/util/SortUtil;->SHELL_SORT_THRESHOLD:I

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_comparator:Ljava/util/Comparator;

    invoke-static {v2, v3, v0, v1}, Lcom/ardor3d/util/SortUtil;->shellSort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_tempList:[Lcom/ardor3d/scenegraph/Spatial;

    if-eqz v2, :cond_2

    array-length v4, v2

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/Spatial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/Spatial;

    iput-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_tempList:[Lcom/ardor3d/scenegraph/Spatial;

    :goto_1
    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_tempList:[Lcom/ardor3d/scenegraph/Spatial;

    iget-object v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentList:[Lcom/ardor3d/scenegraph/Spatial;

    iget v4, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_comparator:Ljava/util/Comparator;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ardor3d/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_tempList:[Lcom/ardor3d/scenegraph/Spatial;

    iget v2, p0, Lcom/ardor3d/renderer/queue/AbstractRenderBucket;->_currentListSize:I

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
