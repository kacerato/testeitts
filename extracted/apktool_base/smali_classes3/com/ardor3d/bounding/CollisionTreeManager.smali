.class public final enum Lcom/ardor3d/bounding/CollisionTreeManager;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/bounding/CollisionTreeManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/bounding/CollisionTreeManager;

.field public static final DEFAULT_MAX_ELEMENTS:I = 0x19

.field public static final DEFAULT_MAX_PRIMITIVES_PER_LEAF:I = 0x10

.field public static final enum INSTANCE:Lcom/ardor3d/bounding/CollisionTreeManager;


# instance fields
.field private final _cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Lcom/ardor3d/bounding/CollisionTree;",
            ">;"
        }
    .end annotation
.end field

.field private _doSort:Z

.field private _generateTrees:Z

.field private _maxElements:I

.field private _maxPrimitivesPerLeaf:I

.field private final _protectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field private _treeRemover:Lcom/ardor3d/bounding/CollisionTreeController;

.field private _treeType:Lcom/ardor3d/bounding/CollisionTree$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/bounding/CollisionTreeManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/bounding/CollisionTreeManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/bounding/CollisionTreeManager;->INSTANCE:Lcom/ardor3d/bounding/CollisionTreeManager;

    filled-new-array {v0}, [Lcom/ardor3d/bounding/CollisionTreeManager;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/bounding/CollisionTreeManager;->$VALUES:[Lcom/ardor3d/bounding/CollisionTreeManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_generateTrees:Z

    sget-object p2, Lcom/ardor3d/bounding/CollisionTree$Type;->AABB:Lcom/ardor3d/bounding/CollisionTree$Type;

    iput-object p2, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeType:Lcom/ardor3d/bounding/CollisionTree$Type;

    const/16 p2, 0x10

    iput p2, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxPrimitivesPerLeaf:I

    const/16 p2, 0x19

    iput p2, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxElements:I

    new-instance p2, Lcom/google/common/collect/O1;

    invoke-direct {p2}, Lcom/google/common/collect/O1;-><init>()V

    invoke-virtual {p2}, Lcom/google/common/collect/O1;->l()Lcom/google/common/collect/O1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/O1;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iput-object p2, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    new-instance p1, Lcom/ardor3d/bounding/UsageTreeController;

    invoke-direct {p1}, Lcom/ardor3d/bounding/UsageTreeController;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->setCollisionTreeController(Lcom/ardor3d/bounding/CollisionTreeController;)V

    return-void
.end method

.method private cacheGet(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/bounding/CollisionTree;

    return-object p1
.end method

.method private cachePut(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/bounding/CollisionTree;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cacheRemove(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/ardor3d/bounding/CollisionTreeManager;
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/CollisionTreeManager;->INSTANCE:Lcom/ardor3d/bounding/CollisionTreeManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/bounding/CollisionTreeManager;
    .locals 1

    const-class v0, Lcom/ardor3d/bounding/CollisionTreeManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/bounding/CollisionTreeManager;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/bounding/CollisionTreeManager;
    .locals 1

    sget-object v0, Lcom/ardor3d/bounding/CollisionTreeManager;->$VALUES:[Lcom/ardor3d/bounding/CollisionTreeManager;

    invoke-virtual {v0}, [Lcom/ardor3d/bounding/CollisionTreeManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/bounding/CollisionTreeManager;

    return-object v0
.end method


# virtual methods
.method public generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree$Type;Lcom/ardor3d/scenegraph/Mesh;Z)Lcom/ardor3d/bounding/CollisionTree;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/ardor3d/bounding/CollisionTree;

    invoke-direct {v0, p1}, Lcom/ardor3d/bounding/CollisionTree;-><init>(Lcom/ardor3d/bounding/CollisionTree$Type;)V

    .line 8
    invoke-virtual {p0, v0, p2, p3}, Lcom/ardor3d/bounding/CollisionTreeManager;->generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree;Lcom/ardor3d/scenegraph/Mesh;Z)V

    return-object v0
.end method

.method public generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree$Type;Lcom/ardor3d/scenegraph/Spatial;Z)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0, p1, v0, p3}, Lcom/ardor3d/bounding/CollisionTreeManager;->generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree$Type;Lcom/ardor3d/scenegraph/Mesh;Z)Lcom/ardor3d/bounding/CollisionTree;

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lcom/ardor3d/scenegraph/Node;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Node;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Spatial;

    .line 6
    invoke-virtual {p0, p1, v0, p3}, Lcom/ardor3d/bounding/CollisionTreeManager;->generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree$Type;Lcom/ardor3d/scenegraph/Spatial;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree;Lcom/ardor3d/scenegraph/Mesh;Z)V
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_doSort:Z

    invoke-virtual {p1, p2, v0}, Lcom/ardor3d/bounding/CollisionTree;->construct(Lcom/ardor3d/scenegraph/Mesh;Z)V

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->cachePut(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/bounding/CollisionTree;)V

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lcom/ardor3d/bounding/CollisionTreeManager;->setProtected(Lcom/ardor3d/scenegraph/Mesh;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxElements:I

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeRemover:Lcom/ardor3d/bounding/CollisionTreeController;

    if-eqz p1, :cond_1

    .line 13
    iget-object p3, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_cache:Ljava/util/Map;

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    invoke-interface {p1, p3, v0, p2}, Lcom/ardor3d/bounding/CollisionTreeController;->clean(Ljava/util/Map;Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized getCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->cacheGet(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_generateTrees:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeType:Lcom/ardor3d/bounding/CollisionTree$Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/ardor3d/bounding/CollisionTreeManager;->generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree$Type;Lcom/ardor3d/scenegraph/Mesh;Z)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->cacheRemove(Lcom/ardor3d/scenegraph/Mesh;)V

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/bounding/CollisionTreeManager;->cachePut(Lcom/ardor3d/scenegraph/Mesh;Lcom/ardor3d/bounding/CollisionTree;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getMaxElements()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxElements:I

    return v0
.end method

.method public getMaxPrimitivesPerLeaf()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxPrimitivesPerLeaf:I

    return v0
.end method

.method public getProtectedMeshes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/scenegraph/Mesh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public getTreeType()Lcom/ardor3d/bounding/CollisionTree$Type;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeType:Lcom/ardor3d/bounding/CollisionTree$Type;

    return-object v0
.end method

.method public isDoSort()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_doSort:Z

    return v0
.end method

.method public isGenerateTrees()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_generateTrees:Z

    return v0
.end method

.method public removeCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->cacheRemove(Lcom/ardor3d/scenegraph/Mesh;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->removeProtected(Lcom/ardor3d/scenegraph/Mesh;)V

    return-void
.end method

.method public removeCollisionTree(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 2

    .line 3
    instance-of v0, p1, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/ardor3d/scenegraph/Node;

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/bounding/CollisionTreeManager;->removeCollisionTree(Lcom/ardor3d/scenegraph/Spatial;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->removeCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)V

    :cond_1
    return-void
.end method

.method public removeProtected(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCollisionTreeController(Lcom/ardor3d/bounding/CollisionTreeController;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeRemover:Lcom/ardor3d/bounding/CollisionTreeController;

    return-void
.end method

.method public setDoSort(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_doSort:Z

    return-void
.end method

.method public setGenerateTrees(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_generateTrees:Z

    return-void
.end method

.method public setMaxElements(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxElements:I

    return-void
.end method

.method public setMaxPrimitivesPerLeaf(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_maxPrimitivesPerLeaf:I

    return-void
.end method

.method public setProtected(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setTreeType(Lcom/ardor3d/bounding/CollisionTree$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_treeType:Lcom/ardor3d/bounding/CollisionTree$Type;

    return-void
.end method

.method public updateCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->cacheGet(Lcom/ardor3d/scenegraph/Mesh;)Lcom/ardor3d/bounding/CollisionTree;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/ardor3d/bounding/CollisionTreeManager;->_protectedList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/ardor3d/bounding/CollisionTreeManager;->generateCollisionTree(Lcom/ardor3d/bounding/CollisionTree;Lcom/ardor3d/scenegraph/Mesh;Z)V

    :cond_1
    return-void
.end method

.method public updateCollisionTree(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 2

    .line 3
    instance-of v0, p1, Lcom/ardor3d/scenegraph/Node;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/ardor3d/scenegraph/Node;

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ardor3d/bounding/CollisionTreeManager;->updateCollisionTree(Lcom/ardor3d/scenegraph/Spatial;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p0, p1}, Lcom/ardor3d/bounding/CollisionTreeManager;->updateCollisionTree(Lcom/ardor3d/scenegraph/Mesh;)V

    :cond_1
    return-void
.end method
