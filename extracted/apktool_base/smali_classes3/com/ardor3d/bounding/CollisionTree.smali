.class public Lcom/ardor3d/bounding/CollisionTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/bounding/CollisionTree$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _bounds:Lcom/ardor3d/bounding/BoundingVolume;

.field protected final transient _comparator:Lcom/ardor3d/bounding/TreeComparator;

.field protected _end:I

.field protected _left:Lcom/ardor3d/bounding/CollisionTree;

.field protected transient _mesh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field protected _primitiveIndices:[I

.field protected _right:Lcom/ardor3d/bounding/CollisionTree;

.field protected _section:I

.field protected _start:I

.field protected _type:Lcom/ardor3d/bounding/CollisionTree$Type;

.field protected _worldBounds:Lcom/ardor3d/bounding/BoundingVolume;


# direct methods
.method public constructor <init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ardor3d/bounding/CollisionTree$Type;->AABB:Lcom/ardor3d/bounding/CollisionTree$Type;

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    new-instance v0, Lcom/ardor3d/bounding/TreeComparator;

    invoke-direct {v0}, Lcom/ardor3d/bounding/TreeComparator;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    return-void
.end method

.method private createBounds()V
    .locals 2

    sget-object v0, Lcom/ardor3d/bounding/CollisionTree$1;->$SwitchMap$com$ardor3d$bounding$CollisionTree$Type:[I

    iget-object v1, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-direct {v0}, Lcom/ardor3d/bounding/BoundingSphere;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    new-instance v0, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-direct {v0}, Lcom/ardor3d/bounding/BoundingSphere;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    new-instance v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-direct {v0}, Lcom/ardor3d/bounding/OrientedBoundingBox;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    new-instance v0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/ardor3d/bounding/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    :goto_0
    return-void
.end method

.method private getMesh()Lcom/ardor3d/scenegraph/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Mesh;

    return-object v0
.end method

.method private makeRef(Lcom/ardor3d/scenegraph/Mesh;)Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ")",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public construct(IILcom/ardor3d/scenegraph/Node;Z)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object p1

    .line 2
    instance-of p3, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz p3, :cond_1

    .line 3
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTree;->makeRef(Lcom/ardor3d/scenegraph/Mesh;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    iput-object p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    const/4 p1, 0x0

    move p3, p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 6
    aput p3, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length p3, v0

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    :cond_1
    return-void
.end method

.method public construct(Lcom/ardor3d/scenegraph/Mesh;Z)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTree;->makeRef(Lcom/ardor3d/scenegraph/Mesh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    move p1, v2

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 12
    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    array-length p1, v0

    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getSectionCount()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/ardor3d/bounding/CollisionTree;->splitMesh(Lcom/ardor3d/scenegraph/Mesh;IIZ)V

    :goto_1
    return-void
.end method

.method public createTree(IIIZ)V
    .locals 6

    iput p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    iput p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    iput p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->createBounds()V

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    iget v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    iget-object v3, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    iget v4, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    iget v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/bounding/BoundingVolume;->computeFromPrimitives(Lcom/ardor3d/scenegraph/MeshData;I[III)V

    iget p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    iget p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {}, Lcom/ardor3d/bounding/CollisionTreeManager;->getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ardor3d/bounding/CollisionTreeManager;->getMaxPrimitivesPerLeaf()I

    move-result p2

    if-gt p1, p2, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/bounding/CollisionTree;->sortPrimitives()V

    :cond_2
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    if-nez p1, :cond_3

    new-instance p1, Lcom/ardor3d/bounding/CollisionTree;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {p1, p2}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    :cond_3
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    iput-object p2, p1, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iput-object p2, p1, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iget p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    iget p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    iget v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    if-nez p1, :cond_4

    new-instance p1, Lcom/ardor3d/bounding/CollisionTree;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {p1, p2}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    :cond_4
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    iput-object p2, p1, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iput-object p2, p1, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iget p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    iget p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    iget v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    add-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    return-void
.end method

.method public getBounds()Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    return-object v0
.end method

.method public getWorldBounds()Lcom/ardor3d/bounding/BoundingVolume;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    return-object v0
.end method

.method public intersect(Lcom/ardor3d/math/Ray3;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/math/Ray3;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersects(Lcom/ardor3d/math/type/ReadOnlyRay3;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    if-eqz v0, :cond_2

    .line 48
    iget-object v1, v0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    iget-object v3, v3, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    .line 49
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/math/Ray3;Ljava/util/List;)Ljava/util/List;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    if-eqz v0, :cond_3

    .line 51
    iget-object v1, v0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    iget-object v3, v3, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    iput-object v1, v0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    .line 52
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/math/Ray3;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    if-nez v0, :cond_6

    .line 54
    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v1

    .line 56
    iget v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    iget v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    if-ge v2, v5, :cond_6

    .line 57
    iget-object v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-virtual {v0, v5, v6, v4}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v4

    const/4 v5, 0x0

    .line 58
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 59
    aget-object v6, v4, v5

    invoke-interface {v1, v6}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 60
    :cond_4
    invoke-virtual {p1, v4, v3}, Lcom/ardor3d/math/Ray3;->intersects([Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 61
    new-instance v5, Lcom/ardor3d/intersection/PrimitiveKey;

    iget-object v6, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/intersection/PrimitiveKey;-><init>(II)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object p2
.end method

.method public intersect(Lcom/ardor3d/bounding/CollisionTree;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-direct {p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v2

    iget-object v3, p1, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v1

    iput-object v1, p1, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    .line 2
    invoke-virtual {p0, v1}, Lcom/ardor3d/bounding/CollisionTree;->intersectsBounding(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p1, v1}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {p1, v1}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0

    .line 6
    :cond_4
    iget-object v1, p1, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {p0, v1}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object p1, p1, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v1

    .line 10
    invoke-direct {p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v3

    .line 11
    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v4

    .line 12
    invoke-direct {p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    .line 13
    iget v6, p0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    const/4 v7, 0x0

    move-object v8, v7

    :goto_0
    iget v9, p0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    if-ge v6, v9, :cond_c

    .line 14
    iget-object v9, p0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v9, v9, v6

    iget v10, p0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-virtual {v4, v9, v10, v7}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v7

    move v9, v0

    .line 15
    :goto_1
    array-length v10, v7

    if-ge v9, v10, :cond_8

    .line 16
    aget-object v10, v7, v9

    invoke-interface {v1, v10}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_8
    iget v9, p1, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    :goto_2
    iget v10, p1, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    if-ge v9, v10, :cond_b

    .line 18
    iget-object v10, p1, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v10, v10, v9

    iget v11, p1, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-virtual {v5, v10, v11, v8}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v8

    move v10, v0

    .line 19
    :goto_3
    array-length v11, v8

    if-ge v10, v11, :cond_9

    .line 20
    aget-object v11, v8, v10

    invoke-interface {v3, v11}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 21
    :cond_9
    invoke-static {v7, v8}, Lcom/ardor3d/intersection/Intersection;->intersection([Lcom/ardor3d/math/Vector3;[Lcom/ardor3d/math/Vector3;)Z

    move-result v10

    if-eqz v10, :cond_a

    return v2

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_c
    return v0
.end method

.method public intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/bounding/CollisionTree;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return v4

    .line 22
    :cond_0
    iget-object v5, v1, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-direct/range {p1 .. p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v6

    iget-object v7, v1, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {v5, v6, v7}, Lcom/ardor3d/bounding/BoundingVolume;->transform(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object v5

    iput-object v5, v1, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    .line 23
    invoke-virtual {v0, v5}, Lcom/ardor3d/bounding/CollisionTree;->intersectsBounding(Lcom/ardor3d/bounding/BoundingVolume;)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    .line 24
    :cond_1
    iget-object v5, v0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 25
    invoke-virtual {v1, v5, v3, v2}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 26
    iget-object v7, v0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {v1, v7, v3, v2}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v4, v6

    :cond_3
    return v4

    .line 27
    :cond_4
    iget-object v5, v1, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    if-eqz v5, :cond_7

    .line 28
    invoke-virtual {v0, v5, v2, v3}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    .line 29
    iget-object v1, v1, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ardor3d/bounding/CollisionTree;->intersect(Lcom/ardor3d/bounding/CollisionTree;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v4, v6

    :cond_6
    return v4

    .line 30
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v5

    .line 31
    invoke-direct/range {p1 .. p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTransform()Lcom/ardor3d/math/type/ReadOnlyTransform;

    move-result-object v7

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v8

    .line 33
    invoke-direct/range {p1 .. p1}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v9

    .line 34
    iget v10, v0, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    const/4 v11, 0x0

    move v13, v4

    move-object v12, v11

    :goto_0
    iget v14, v0, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    if-ge v10, v14, :cond_c

    .line 35
    iget-object v14, v0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v14, v14, v10

    iget v15, v0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-virtual {v8, v14, v15, v11}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v11

    move v14, v4

    .line 36
    :goto_1
    array-length v15, v11

    if-ge v14, v15, :cond_8

    .line 37
    aget-object v15, v11, v14

    invoke-interface {v5, v15}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 38
    :cond_8
    iget v14, v1, Lcom/ardor3d/bounding/CollisionTree;->_start:I

    :goto_2
    iget v15, v1, Lcom/ardor3d/bounding/CollisionTree;->_end:I

    if-ge v14, v15, :cond_b

    .line 39
    iget-object v15, v1, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v15, v15, v14

    iget v4, v1, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-virtual {v9, v15, v4, v12}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object v12

    const/4 v4, 0x0

    .line 40
    :goto_3
    array-length v15, v12

    if-ge v4, v15, :cond_9

    .line 41
    aget-object v15, v12, v4

    invoke-interface {v7, v15}, Lcom/ardor3d/math/type/ReadOnlyTransform;->applyForward(Lcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 42
    :cond_9
    invoke-static {v11, v12}, Lcom/ardor3d/intersection/Intersection;->intersection([Lcom/ardor3d/math/Vector3;[Lcom/ardor3d/math/Vector3;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 43
    new-instance v4, Lcom/ardor3d/intersection/PrimitiveKey;

    iget-object v13, v0, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v13, v13, v10

    iget v15, v0, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-direct {v4, v13, v15}, Lcom/ardor3d/intersection/PrimitiveKey;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v4, Lcom/ardor3d/intersection/PrimitiveKey;

    iget-object v13, v1, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    aget v13, v13, v14

    iget v15, v1, Lcom/ardor3d/bounding/CollisionTree;->_section:I

    invoke-direct {v4, v13, v15}, Lcom/ardor3d/intersection/PrimitiveKey;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_c
    return v13
.end method

.method public intersectsBounding(Lcom/ardor3d/bounding/BoundingVolume;)Z
    .locals 2

    sget-object v0, Lcom/ardor3d/bounding/CollisionTree$1;->$SwitchMap$com$ardor3d$bounding$BoundingVolume$Type:[I

    invoke-virtual {p1}, Lcom/ardor3d/bounding/BoundingVolume;->getType()Lcom/ardor3d/bounding/BoundingVolume$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast p1, Lcom/ardor3d/bounding/BoundingSphere;

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsSphere(Lcom/ardor3d/bounding/BoundingSphere;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast p1, Lcom/ardor3d/bounding/OrientedBoundingBox;

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsOrientedBoundingBox(Lcom/ardor3d/bounding/OrientedBoundingBox;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast p1, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v0, p1}, Lcom/ardor3d/bounding/BoundingVolume;->intersectsBoundingBox(Lcom/ardor3d/bounding/BoundingBox;)Z

    move-result p1

    return p1
.end method

.method public sortPrimitives()V
    .locals 4

    sget-object v0, Lcom/ardor3d/bounding/CollisionTree$1;->$SwitchMap$com$ardor3d$bounding$CollisionTree$Type:[I

    iget-object v1, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->X:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v0, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v2, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v0, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v2, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->X:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Z:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v0, v0, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/OrientedBoundingBox;

    iget-object v2, v2, Lcom/ardor3d/bounding/OrientedBoundingBox;->_extent:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Y:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Z:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v2}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getXExtent()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v2}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->X:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Z:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v0, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/ardor3d/bounding/BoundingBox;->getYExtent()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    check-cast v2, Lcom/ardor3d/bounding/BoundingBox;

    invoke-virtual {v2}, Lcom/ardor3d/bounding/BoundingBox;->getZExtent()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Y:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    sget-object v1, Lcom/ardor3d/bounding/TreeComparator$Axis;->Z:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_comparator:Lcom/ardor3d/bounding/TreeComparator;

    invoke-direct {p0}, Lcom/ardor3d/bounding/CollisionTree;->getMesh()Lcom/ardor3d/scenegraph/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/bounding/TreeComparator;->setMesh(Lcom/ardor3d/scenegraph/Mesh;)V

    return-void
.end method

.method public splitMesh(Lcom/ardor3d/scenegraph/Mesh;IIZ)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTree;->makeRef(Lcom/ardor3d/scenegraph/Mesh;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    sub-int v0, p3, p2

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v4, Lcom/ardor3d/bounding/CollisionTree;

    iget-object v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {v4, v5}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object v4, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    iget-object v6, v5, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    array-length v7, v6

    if-ge v4, v7, :cond_0

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iput-object v4, v5, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    array-length v4, v6

    invoke-virtual {v5, p2, v2, v4, p4}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/ardor3d/bounding/CollisionTree;

    iget-object v5, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {v4, v5}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object v4, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    add-int v5, p2, v1

    invoke-virtual {v4, p1, p2, v5, p4}, Lcom/ardor3d/bounding/CollisionTree;->splitMesh(Lcom/ardor3d/scenegraph/Mesh;IIZ)V

    :goto_1
    sub-int/2addr v0, v1

    if-ne v0, v3, :cond_3

    add-int/2addr p2, v3

    new-instance p3, Lcom/ardor3d/bounding/CollisionTree;

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {p3, v0}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitiveCount(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p3, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    move p1, v2

    :goto_2
    iget-object p3, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    iget-object v0, p3, Lcom/ardor3d/bounding/CollisionTree;->_primitiveIndices:[I

    array-length v1, v0

    if-ge p1, v1, :cond_2

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    iput-object p1, p3, Lcom/ardor3d/bounding/CollisionTree;->_mesh:Ljava/lang/ref/WeakReference;

    array-length p1, v0

    invoke-virtual {p3, p2, v2, p1, p4}, Lcom/ardor3d/bounding/CollisionTree;->createTree(IIIZ)V

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/ardor3d/bounding/CollisionTree;

    iget-object v2, p0, Lcom/ardor3d/bounding/CollisionTree;->_type:Lcom/ardor3d/bounding/CollisionTree$Type;

    invoke-direct {v0, v2}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    iput-object v0, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/bounding/CollisionTree;->splitMesh(Lcom/ardor3d/scenegraph/Mesh;IIZ)V

    :goto_3
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_left:Lcom/ardor3d/bounding/CollisionTree;

    iget-object p1, p1, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p1, p2}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_right:Lcom/ardor3d/bounding/CollisionTree;

    iget-object p2, p2, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p1, p2}, Lcom/ardor3d/bounding/BoundingVolume;->mergeLocal(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_bounds:Lcom/ardor3d/bounding/BoundingVolume;

    iget-object p2, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    invoke-virtual {p1, p2}, Lcom/ardor3d/bounding/BoundingVolume;->clone(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/bounding/BoundingVolume;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTree;->_worldBounds:Lcom/ardor3d/bounding/BoundingVolume;

    return-void
.end method
