.class public Lcom/jme3/scene/Geometry;
.super Lcom/jme3/scene/Spatial;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SAVABLE_VERSION:I = 0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected transient cachedWorldMat:Lcom/jme3/math/Matrix4f;

.field private dirtyMorph:Z

.field private fallbackMorphTarget:Lcom/jme3/scene/mesh/MorphTarget;

.field protected groupNode:Lcom/jme3/scene/GeometryGroupNode;

.field protected ignoreTransform:Z

.field protected transient lodLevel:I

.field protected material:Lcom/jme3/material/Material;

.field protected mesh:Lcom/jme3/scene/Mesh;

.field private morphState:[F

.field private nbSimultaneousGPUMorph:I

.field protected startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Geometry;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    .line 4
    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    .line 5
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/jme3/scene/Geometry;->dirtyMorph:Z

    .line 8
    iput v0, p0, Lcom/jme3/scene/Geometry;->nbSimultaneousGPUMorph:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/jme3/scene/Geometry;

    if-eq v2, v0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setRequiresUpdates(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 11
    iput-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mesh cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;Lcom/jme3/material/Material;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method


# virtual methods
.method public associateWithGroupNode(Lcom/jme3/scene/GeometryGroupNode;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->unassociateFromGroupNode()V

    :cond_0
    iput-object p1, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    iput p2, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    return-void
.end method

.method public breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/SceneGraphVisitor;",
            "Ljava/util/Queue<",
            "Lcom/jme3/scene/Spatial;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/scene/Geometry;
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/scene/Geometry;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
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

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->clone()Lcom/jme3/scene/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Spatial;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->isCloned(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/GeometryGroupNode;

    iput-object p2, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    const/4 p2, -0x1

    iput p2, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix4f;

    iput-object p2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    const-class p2, Lcom/jme3/scene/Mesh;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->getCloneFunction(Ljava/lang/Class;)Lcom/jme3/util/clone/CloneFunction;

    move-result-object p2

    instance-of p2, p2, Lcom/jme3/util/clone/IdentityCloneFunction;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p2}, Lcom/jme3/scene/Mesh;->cloneForAnim()Lcom/jme3/scene/Mesh;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Mesh;

    iput-object p2, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    :goto_1
    iget-object p2, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoBoundUpdate()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/jme3/scene/Mesh;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    invoke-virtual {p2}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/jme3/collision/CollisionResults;->getCollisionDirect(I)Lcom/jme3/collision/CollisionResult;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jme3/collision/CollisionResult;->setGeometry(Lcom/jme3/scene/Geometry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public computeWorldMatrix()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->setRotationQuaternion(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    iget-object v2, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public deepClone()Lcom/jme3/scene/Spatial;
    .locals 1

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->deepClone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/jme3/scene/SceneGraphVisitor;->visit(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public getFallbackMorphTarget()Lcom/jme3/scene/mesh/MorphTarget;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->fallbackMorphTarget:Lcom/jme3/scene/mesh/MorphTarget;

    return-object v0
.end method

.method public getLodLevel()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    return v0
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getMesh()Lcom/jme3/scene/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    return-object v0
.end method

.method public getModelBound()Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    return-object v0
.end method

.method public getMorphState(Ljava/lang/String;)F
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->getMorphIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    aget p1, v0, p1

    return p1
.end method

.method public getMorphState()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    return-object v0
.end method

.method public getNbSimultaneousGPUMorph()I
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Geometry;->nbSimultaneousGPUMorph:I

    return v0
.end method

.method public getTriangleCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    return v0
.end method

.method public getWorldMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->cachedWorldMat:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public isBatched()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    return v0
.end method

.method public isDirtyMorph()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->dirtyMorph:Z

    return v0
.end method

.method public isGrouped()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIgnoreTransform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    return v0
.end method

.method public oldDeepClone()Lcom/jme3/scene/Spatial;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->deepClone()Lcom/jme3/scene/Mesh;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "mesh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Mesh;

    iput-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    iput-object v2, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "materialName"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/jme3/asset/AssetManager;->loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/jme3/scene/Geometry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Cannot locate {0} for geometry {1}"

    invoke-virtual {p1, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-nez p1, :cond_1

    const-string p1, "material"

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    :cond_1
    const-string p1, "ignoreTransform"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    const-class p1, Lcom/jme3/scene/Geometry;

    invoke-interface {v0, p1}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "JmeSharedMesh"

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Mesh;->extractVertexData(Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0, p1, v2}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public removeFromParent()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    move-result v0

    return v0
.end method

.method public setDirtyMorph(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->dirtyMorph:Z

    return-void
.end method

.method public setFallbackMorphTarget(Lcom/jme3/scene/mesh/MorphTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->fallbackMorphTarget:Lcom/jme3/scene/mesh/MorphTarget;

    return-void
.end method

.method public setIgnoreTransform(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    return-void
.end method

.method public setLodLevel(I)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/jme3/scene/Geometry;->lodLevel:I

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    invoke-virtual {p1, p0}, Lcom/jme3/scene/GeometryGroupNode;->onMeshChange(Lcom/jme3/scene/Geometry;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOD level is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "LOD levels are not set on this mesh"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/scene/Geometry;->nbSimultaneousGPUMorph:I

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    invoke-virtual {p1, p0}, Lcom/jme3/scene/GeometryGroupNode;->onMaterialChange(Lcom/jme3/scene/Geometry;)V

    :cond_0
    return-void
.end method

.method public setMesh(Lcom/jme3/scene/Mesh;)V
    .locals 0

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    invoke-virtual {p1, p0}, Lcom/jme3/scene/GeometryGroupNode;->onMeshChange(Lcom/jme3/scene/Geometry;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setModelBound(Lcom/jme3/bounding/BoundingVolume;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->setBound(Lcom/jme3/bounding/BoundingVolume;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    return-void
.end method

.method public setMorphState(Ljava/lang/String;F)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->getMorphIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    aput p2, v0, p1

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->dirtyMorph:Z

    :cond_0
    return-void
.end method

.method public setMorphState([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getMorphTargets()[Lcom/jme3/scene/mesh/MorphTarget;

    move-result-object v0

    array-length v0, v0

    .line 3
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    if-nez v1, :cond_1

    .line 4
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->morphState:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/jme3/scene/Geometry;->dirtyMorph:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setNbSimultaneousGPUMorph(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/Geometry;->nbSimultaneousGPUMorph:I

    return-void
.end method

.method public setParent(Lcom/jme3/scene/Node;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->setParent(Lcom/jme3/scene/Node;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->unassociateFromGroupNode()V

    :cond_0
    return-void
.end method

.method public unassociateFromGroupNode()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/jme3/scene/GeometryGroupNode;->onGeometryUnassociated(Lcom/jme3/scene/Geometry;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/scene/Geometry;->startIndex:I

    :cond_0
    return-void
.end method

.method public updateModelBound()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    return-void
.end method

.method public updateWorldBound()V
    .locals 3

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->clone(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geometry \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" has null mesh."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateWorldLightList()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldLightList()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightList;->sort(Z)V

    return-void
.end method

.method public updateWorldTransforms()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->groupNode:Lcom/jme3/scene/GeometryGroupNode;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/GeometryGroupNode;->onTransformChange(Lcom/jme3/scene/Geometry;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightList;->sort(Z)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Spatial;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    const-string v1, "mesh"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAssetName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "materialName"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    const-string v1, "material"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/scene/Geometry;->ignoreTransform:Z

    const-string v1, "ignoreTransform"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
