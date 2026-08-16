.class public Lcom/jme3/scene/SimpleBatchNode;
.super Lcom/jme3/scene/BatchNode;
.source "SourceFile"


# instance fields
.field private cachedLocalMat:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/BatchNode;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/jme3/scene/BatchNode;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/jme3/math/Matrix4f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    return-void
.end method


# virtual methods
.method public attachChild(Lcom/jme3/scene/Spatial;)I
    .locals 1

    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "BatchNode is BatchMode.Simple only support child of type Geometry, use BatchMode.Complex to use a complex structure"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public batch()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/scene/BatchNode;->doBatch()V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/BatchNode;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix4f;

    iput-object p1, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public getTransformMatrix(Lcom/jme3/scene/Geometry;)Lcom/jme3/math/Matrix4f;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->setRotationQuaternion(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    iget-object p1, p1, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    iget-object p1, p0, Lcom/jme3/scene/SimpleBatchNode;->cachedLocalMat:Lcom/jme3/math/Matrix4f;

    return-object p1
.end method

.method public setTransformRefresh()V
    .locals 4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    iget-object v0, p0, Lcom/jme3/scene/BatchNode;->batches:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/BatchNode$Batch;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/jme3/scene/BatchNode$Batch;->geometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
