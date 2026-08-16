.class public Lcom/ardor3d/scenegraph/Mesh;
.super Lcom/ardor3d/scenegraph/Spatial;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/Renderable;
.implements Lcom/ardor3d/intersection/Pickable;


# static fields
.field public static RENDER_VERTEX_ONLY:Z = false


# instance fields
.field protected _defaultColor:Lcom/ardor3d/math/ColorRGBA;

.field protected _isVisible:Z

.field protected transient _lightState:Lcom/ardor3d/renderer/state/LightState;

.field protected _meshData:Lcom/ardor3d/scenegraph/MeshData;

.field protected _modelBound:Lcom/ardor3d/bounding/BoundingVolume;

.field protected final _states:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Spatial;-><init>()V

    .line 2
    new-instance v0, Lcom/ardor3d/scenegraph/MeshData;

    invoke-direct {v0}, Lcom/ardor3d/scenegraph/MeshData;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    .line 3
    new-instance v0, Lcom/ardor3d/bounding/BoundingSphere;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    sget-object v3, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/bounding/BoundingSphere;-><init>(DLcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    .line 4
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    .line 5
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/ardor3d/scenegraph/MeshData;

    invoke-direct {p1}, Lcom/ardor3d/scenegraph/MeshData;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    .line 9
    new-instance p1, Lcom/ardor3d/bounding/BoundingSphere;

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {p1, v0, v1, v2}, Lcom/ardor3d/bounding/BoundingSphere;-><init>(DLcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    .line 10
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    .line 11
    new-instance p1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v0, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {p1, v0}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    return-void
.end method


# virtual methods
.method public applyWorldRenderStates(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/RenderState;

    invoke-virtual {v0, p2, p0}, Lcom/ardor3d/renderer/state/RenderState;->extract(Ljava/util/Stack;Lcom/ardor3d/scenegraph/Spatial;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object p2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {p2}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->isProcessingQueue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lcom/ardor3d/renderer/Renderer;->checkAndAdd(Lcom/ardor3d/scenegraph/Spatial;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getCurrentRenderDelegate()Lcom/ardor3d/util/scenegraph/RenderDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lcom/ardor3d/renderer/Renderer;->draw(Lcom/ardor3d/scenegraph/Renderable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/ardor3d/util/scenegraph/RenderDelegate;->render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;)V

    :goto_0
    return-void
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getLightState()Lcom/ardor3d/renderer/state/LightState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_lightState:Lcom/ardor3d/renderer/state/LightState;

    return-object v0
.end method

.method public getMeshData()Lcom/ardor3d/scenegraph/MeshData;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    return-object v0
.end method

.method public getModelBound()Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    return-object v0
.end method

.method public getModelBound(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    return-object p1
.end method

.method public getWorldNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-static {v1, v0, v3}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Transform;->applyForwardVector(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v1, p1, v3}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1
.end method

.method public getWorldRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;)Lcom/ardor3d/renderer/state/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/state/RenderState;

    return-object p1
.end method

.method public getWorldVectors(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-static {v1, v0, v3}, Lcom/ardor3d/util/geom/BufferUtils;->populateFromBuffer(Lcom/ardor3d/math/Vector3;Ljava/nio/FloatBuffer;I)V

    iget-object v4, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v4, v1}, Lcom/ardor3d/math/Transform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {v1, p1, v3}, Lcom/ardor3d/util/geom/BufferUtils;->setInBuffer(Lcom/ardor3d/math/type/ReadOnlyVector3;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-object p1
.end method

.method public intersectsPrimitivesWhere(Lcom/ardor3d/math/Ray3;)Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 12

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ardor3d/bounding/CollisionTreeManager;->getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ardor3d/bounding/CollisionTree;->getBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ardor3d/bounding/CollisionTree;->getWorldBounds()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v1, p1, v0}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/math/Ray3;Ljava/util/List;)Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/intersection/PrimitiveKey;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ardor3d/intersection/PrimitiveKey;->getPrimitiveIndex()I

    move-result v8

    invoke-virtual {v6}, Lcom/ardor3d/intersection/PrimitiveKey;->getSection()I

    move-result v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ardor3d/intersection/PrimitiveKey;->getSection()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/renderer/IndexMode;->getVertexCount()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v2, v7

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v8

    aget-object v9, v2, v7

    invoke-interface {v8, v9}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Lcom/ardor3d/math/Ray3;->getDistanceToPrimitive([Lcom/ardor3d/math/Vector3;)D

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    :cond_5
    if-nez v2, :cond_7

    const/4 v2, 0x1

    move v5, v4

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_5

    aget-wide v6, v3, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v9, v3, v8

    cmpl-double v11, v6, v9

    if-lez v11, :cond_6

    aput-wide v6, v3, v8

    aput-wide v9, v3, v5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/intersection/PrimitiveKey;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    :cond_6
    move v5, v8

    goto :goto_2

    :cond_7
    new-array v2, v1, [Lcom/ardor3d/math/Vector3;

    move v5, v4

    :goto_3
    if-ge v5, v1, :cond_8

    invoke-virtual {p1}, Lcom/ardor3d/math/Line3Base;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v6

    aget-wide v7, v3, v4

    new-instance v9, Lcom/ardor3d/math/Vector3;

    invoke-direct {v9}, Lcom/ardor3d/math/Vector3;-><init>()V

    invoke-interface {v6, v7, v8, v9}, Lcom/ardor3d/math/type/ReadOnlyVector3;->multiply(DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ardor3d/math/Line3Base;->getOrigin()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/ardor3d/intersection/IntersectionRecord;

    invoke-direct {p1, v3, v2, v0}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;Ljava/util/List;)V

    return-object p1
.end method

.method public intersectsWorldBound(Lcom/ardor3d/math/Ray3;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z

    move-result p1

    return p1
.end method

.method public intersectsWorldBoundsWhere(Lcom/ardor3d/math/Ray3;)Lcom/ardor3d/intersection/IntersectionRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldBound()Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsWhere(Lcom/ardor3d/math/type/ReadOnlyRay3;)Lcom/ardor3d/intersection/IntersectionRecord;

    move-result-object p1

    return-object p1
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    return v0
.end method

.method public makeCopy(Z)Lcom/ardor3d/scenegraph/Mesh;
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setMeshData(Lcom/ardor3d/scenegraph/MeshData;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->makeCopy()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setMeshData(Lcom/ardor3d/scenegraph/MeshData;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V

    .line 6
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 7
    iget-boolean p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setVisible(Z)V

    return-object v0
.end method

.method public bridge synthetic makeCopy(Z)Lcom/ardor3d/scenegraph/Spatial;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->makeCopy(Z)Lcom/ardor3d/scenegraph/Mesh;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "meshData"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/MeshData;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const-string v0, "modelBound"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/bounding/BoundingVolume;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v1, "defaultColor"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/ColorRGBA;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    return-void
.end method

.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/scenegraph/Mesh;->render(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/scenegraph/MeshData;)V

    :cond_0
    return-void
.end method

.method public render(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/scenegraph/MeshData;)V
    .locals 9

    .line 3
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/renderer/Renderer;->getProperRenderState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)Lcom/ardor3d/renderer/state/RenderState;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->getShaderDataLogic()Lcom/ardor3d/renderer/state/GLSLShaderDataLogic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;->setMesh(Lcom/ardor3d/scenegraph/Mesh;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    .line 7
    :cond_0
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->values:[Lcom/ardor3d/renderer/state/RenderState$StateType;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 8
    sget-object v6, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/ardor3d/renderer/state/RenderState$StateType;->VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    if-eq v5, v6, :cond_1

    .line 9
    iget-object v6, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {p1, v5, v6}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->doTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z

    move-result v6

    .line 11
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->GLSLShader:Lcom/ardor3d/renderer/state/RenderState$StateType;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    .line 12
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->FragmentProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    .line 13
    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->VertexProgram:Lcom/ardor3d/renderer/state/RenderState$StateType;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Mesh;->_states:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/RenderState;

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/renderer/Renderer;->applyState(Lcom/ardor3d/renderer/state/RenderState$StateType;Lcom/ardor3d/renderer/state/RenderState;)V

    .line 14
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/ardor3d/renderer/RenderContext;->getCapabilities()Lcom/ardor3d/renderer/ContextCapabilities;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/DataMode;->VBO:Lcom/ardor3d/scenegraph/hint/DataMode;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;

    move-result-object v2

    sget-object v4, Lcom/ardor3d/scenegraph/hint/DataMode;->VBOInterleaved:Lcom/ardor3d/scenegraph/hint/DataMode;

    if-ne v2, v4, :cond_b

    :cond_3
    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->isVBOSupported()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 17
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getDataMode()Lcom/ardor3d/scenegraph/hint/DataMode;

    move-result-object v0

    sget-object v2, Lcom/ardor3d/scenegraph/hint/DataMode;->VBOInterleaved:Lcom/ardor3d/scenegraph/hint/DataMode;

    if-ne v0, v2, :cond_6

    .line 18
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/renderer/Renderer;->applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 21
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getInterleavedData()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-nez v0, :cond_5

    .line 22
    new-instance v0, Lcom/ardor3d/scenegraph/FloatBufferData;

    invoke-static {v3}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ardor3d/scenegraph/FloatBufferData;-><init>(Ljava/nio/FloatBuffer;I)V

    .line 23
    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/MeshData;->setInterleavedData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 24
    :cond_5
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getInterleavedData()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords()Ljava/util/List;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/renderer/Renderer;->setupInterleavedDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Lcom/ardor3d/scenegraph/FloatBufferData;Ljava/util/List;)V

    goto :goto_4

    .line 25
    :cond_6
    sget-boolean v0, Lcom/ardor3d/scenegraph/Mesh;->RENDER_VERTEX_ONLY:Z

    if-eqz v0, :cond_7

    .line 26
    sget-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/renderer/Renderer;->applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 27
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupNormalDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 28
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 29
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupColorDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 30
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupTextureDataVBO(Ljava/util/List;)V

    goto :goto_3

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/renderer/Renderer;->applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 32
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    if-eq v0, v1, :cond_8

    .line 33
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupNormalDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    goto :goto_1

    .line 34
    :cond_8
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupNormalDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 35
    :goto_1
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupColorDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 38
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupColorDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 39
    :goto_2
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupTextureDataVBO(Ljava/util/List;)V

    .line 40
    :goto_3
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupVertexDataVBO(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 41
    :goto_4
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/renderer/Renderer;->drawElementsVBO(Lcom/ardor3d/scenegraph/IndexBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V

    goto :goto_5

    .line 43
    :cond_a
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/renderer/Renderer;->drawArrays(Lcom/ardor3d/scenegraph/FloatBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V

    .line 44
    :goto_5
    sget-boolean v0, Lcom/ardor3d/util/Constants;->stats:Z

    if-eqz v0, :cond_11

    .line 45
    sget-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_VERTEX_COUNT:Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    .line 46
    sget-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_MESH_COUNT:Lcom/ardor3d/util/stat/StatType;

    invoke-static {v0, v7, v8}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    goto/16 :goto_a

    .line 47
    :cond_b
    invoke-virtual {v0}, Lcom/ardor3d/renderer/ContextCapabilities;->isVBOSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    invoke-interface {p1}, Lcom/ardor3d/renderer/Renderer;->unbindVBO()V

    .line 49
    :cond_c
    sget-boolean v0, Lcom/ardor3d/scenegraph/Mesh;->RENDER_VERTEX_ONLY:Z

    if-eqz v0, :cond_d

    .line 50
    sget-object v0, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    invoke-interface {p1, v0, v5}, Lcom/ardor3d/renderer/Renderer;->applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 51
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupNormalData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 52
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 53
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupColorData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 54
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupTextureData(Ljava/util/List;)V

    goto :goto_8

    .line 55
    :cond_d
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/renderer/Renderer;->applyNormalsMode(Lcom/ardor3d/scenegraph/hint/NormalsMode;Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    .line 56
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->getNormalsMode()Lcom/ardor3d/scenegraph/hint/NormalsMode;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/scenegraph/hint/NormalsMode;->Off:Lcom/ardor3d/scenegraph/hint/NormalsMode;

    if-eq v0, v1, :cond_e

    .line 57
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupNormalData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    goto :goto_6

    .line 58
    :cond_e
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupNormalData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 59
    :goto_6
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 60
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupColorData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    goto :goto_7

    .line 61
    :cond_f
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->applyDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 62
    invoke-interface {p1, v5}, Lcom/ardor3d/renderer/Renderer;->setupColorData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 63
    :goto_7
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupTextureData(Ljava/util/List;)V

    .line 64
    :goto_8
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->setupVertexData(Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 65
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexBuffer()Ljava/nio/Buffer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 66
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/renderer/Renderer;->drawElements(Lcom/ardor3d/scenegraph/IndexBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V

    goto :goto_9

    .line 67
    :cond_10
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexLengths()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getIndexModes()[Lcom/ardor3d/renderer/IndexMode;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/renderer/Renderer;->drawArrays(Lcom/ardor3d/scenegraph/FloatBufferData;[I[Lcom/ardor3d/renderer/IndexMode;)V

    .line 68
    :goto_9
    sget-boolean v0, Lcom/ardor3d/util/Constants;->stats:Z

    if-eqz v0, :cond_11

    .line 69
    sget-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_VERTEX_COUNT:Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    .line 70
    sget-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_MESH_COUNT:Lcom/ardor3d/util/stat/StatType;

    invoke-static {v0, v7, v8}, Lcom/ardor3d/util/stat/StatCollector;->addStat(Lcom/ardor3d/util/stat/StatType;D)V

    :cond_11
    :goto_a
    if-eqz v6, :cond_12

    .line 71
    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-interface {p1, v0}, Lcom/ardor3d/renderer/Renderer;->undoTransforms(Lcom/ardor3d/math/type/ReadOnlyTransform;)V

    :cond_12
    return-void
.end method

.method public setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setLightState(Lcom/ardor3d/renderer/state/LightState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_lightState:Lcom/ardor3d/renderer/state/LightState;

    return-void
.end method

.method public setMeshData(Lcom/ardor3d/scenegraph/MeshData;)V
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/CollisionTreeManager;->INSTANCE:Lcom/ardor3d/bounding/CollisionTreeManager;

    invoke-virtual {v0, p0}, Lcom/ardor3d/bounding/CollisionTreeManager;->removeCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    return-void
.end method

.method public setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p1, v0}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    return-void
.end method

.method public setRandomColors()V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    return-void
.end method

.method public sortLights()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_lightState:Lcom/ardor3d/renderer/state/LightState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/LightState;->getLightList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_lightState:Lcom/ardor3d/renderer/state/LightState;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/state/LightState;->getLightList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ardor3d/renderer/state/LightUtil;->sort(Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateModelBound()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/BoundingVolume;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    sget-object v0, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->markDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    :cond_0
    return-void
.end method

.method public updateWorldBound(Z)V
    .locals 2

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p1, v0, v1}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldBound:Lcom/ardor3d/bounding/BoundingVolume;

    :goto_0
    sget-object p1, Lcom/ardor3d/scenegraph/event/DirtyType;->Bounding:Lcom/ardor3d/scenegraph/event/DirtyType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->clearDirty(Lcom/ardor3d/scenegraph/event/DirtyType;)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Spatial;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const-string v1, "meshData"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_modelBound:Lcom/ardor3d/bounding/BoundingVolume;

    const-string v1, "modelBound"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_defaultColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->WHITE:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v2, "defaultColor"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_isVisible:Z

    const-string v1, "visible"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
