.class Lcom/jme3/bullet/debug/SoftBodyDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tmpCenter:Lcom/jme3/math/Vector3f;

.field private static tmpLocations:Ljava/nio/FloatBuffer;

.field private static final tmpVector:Lcom/jme3/math/Vector3f;

.field private static tmpVelocities:Ljava/nio/FloatBuffer;


# instance fields
.field private final body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

.field private clustersGeometry:Lcom/jme3/scene/Geometry;

.field private facesGeometry:Lcom/jme3/scene/Geometry;

.field private linksGeometry:Lcom/jme3/scene/Geometry;

.field private pinsGeometry:Lcom/jme3/scene/Geometry;

.field private velocityGeometries:[Lcom/jme3/scene/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    const/4 v0, 0x0

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVector:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->pinsGeometry:Lcom/jme3/scene/Geometry;

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    iput-object p2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-void
.end method

.method private areVelocitiesSized()Z
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVelocitiesToVisualize()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private countClustersToVisualize()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getClusterFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-interface {v0, v1}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static countElements(Lcom/jme3/scene/Geometry;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private countVelocitiesToVisualize()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getVelocityVectorFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-interface {v0, v1}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countClustersToVisualize()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static countVertices(Lcom/jme3/scene/Geometry;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createClustersGeometry()Lcom/jme3/scene/Geometry;
    .locals 4

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countClustersToVisualize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createPointsMesh(I)Lcom/jme3/scene/Mesh;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " clusters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getClusterMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private createFacesGeometry()Lcom/jme3/scene/Geometry;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createFacesMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " faces"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDebugMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getFaceMaterial(I)Lcom/jme3/material/Material;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private createFacesMesh()Lcom/jme3/scene/Mesh;
    .locals 7

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshInitListener()Lcom/jme3/bullet/debug/DebugMeshInitListener;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals()Lif/j;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v5, v4, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v3, Lif/j;->None:Lif/j;

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v4, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v5, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v4, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v5, Lif/j;->None:Lif/j;

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_1
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-interface {v1, v0}, Lcom/jme3/bullet/debug/DebugMeshInitListener;->debugMeshInit(Lcom/jme3/scene/Mesh;)V

    :cond_2
    :goto_0
    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setStreamed()V

    return-object v0
.end method

.method private createLinksGeometry()Lcom/jme3/scene/Geometry;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createLinksMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " links"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getLinkMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private createLinksMesh()Lcom/jme3/scene/Mesh;
    .locals 4

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLinks(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v1

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v3, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setStreamed()V

    return-object v0
.end method

.method private createPinsGeometry()Lcom/jme3/scene/Geometry;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countPinnedNodes()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createPointsMesh(I)Lcom/jme3/scene/Mesh;

    move-result-object v0

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getPinMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static createPointsMesh(I)Lcom/jme3/scene/Mesh;
    .locals 3

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v1, 0x3

    mul-int/2addr p0, v1

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v1, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object p0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setStreamed()V

    return-object v0
.end method

.method private createVelocityGeometries()[Lcom/jme3/scene/Geometry;
    .locals 6

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVelocitiesToVisualize()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/jme3/scene/Geometry;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    new-instance v3, Lcom/jme3/scene/debug/Arrow;

    sget-object v4, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVector:Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v4}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iget-object v4, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "velocity of %s[%d]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/jme3/scene/Geometry;

    invoke-direct {v5, v4, v3}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    aput-object v5, v1, v2

    iget-object v3, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v3}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getVelocityVectorMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v5, v3}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private isClustersGeometrySized()Z
    .locals 2

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countClustersToVisualize()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v1}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVertices(Lcom/jme3/scene/Geometry;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFacesGeometrySized()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v3}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countElements(Lcom/jme3/scene/Geometry;)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVertices(Lcom/jme3/scene/Geometry;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isLinksGeometrySized()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v0

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v3}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countElements(Lcom/jme3/scene/Geometry;)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVertices(Lcom/jme3/scene/Geometry;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isPinsGeometrySized()Z
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countPinnedNodes()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->pinsGeometry:Lcom/jme3/scene/Geometry;

    invoke-static {v1}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countVertices(Lcom/jme3/scene/Geometry;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 10

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->isClustersGeometrySized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createClustersGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->isFacesGeometrySized()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_2
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createFacesGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_3
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->isLinksGeometrySized()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_4
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createLinksGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_5
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->isPinsGeometrySized()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->pinsGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_6
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createPinsGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->pinsGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_7
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->areVelocitiesSized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_8

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->createVelocityGeometries()[Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_9

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-static {v2, p1, v0}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateClusterMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Lcom/jme3/scene/Mesh;Z)V

    :cond_a
    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals()Lif/j;

    move-result-object p1

    sget-object v2, Lif/j;->None:Lif/j;

    if-eq p1, v2, :cond_b

    const/4 p1, 0x1

    goto :goto_2

    :cond_b
    move p1, v1

    :goto_2
    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-object v3, v8

    move v5, v0

    move v6, p1

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/nio/IntBuffer;Lcom/jme3/scene/Mesh;ZZLcom/jme3/math/Transform;)V

    :cond_c
    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-object v3, v8

    move v5, v0

    move v6, p1

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/nio/IntBuffer;Lcom/jme3/scene/Mesh;ZZLcom/jme3/math/Transform;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getDebugMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugNumSides()I

    move-result p1

    iget-object v2, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v2, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v2, p1}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getFaceMaterial(I)Lcom/jme3/material/Material;

    move-result-object p1

    :cond_d
    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    :cond_e
    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->pinsGeometry:Lcom/jme3/scene/Geometry;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-static {v2, p1, v0}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updatePinMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Lcom/jme3/scene/Mesh;Z)V

    :cond_f
    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    sget-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    if-eqz p1, :cond_15

    array-length p1, p1

    mul-int/lit8 v0, p1, 0x3

    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_11

    :cond_10
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sput-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    :cond_11
    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-le v0, v2, :cond_13

    :cond_12
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    :cond_13
    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->countClustersToVisualize()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyClusterCenters(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyClusterVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_14
    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsSoftBody;

    sget-object v2, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    :goto_3
    if-ge v1, p1, :cond_15

    mul-int/lit8 v0, v1, 0x3

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->velocityGeometries:[Lcom/jme3/scene/Geometry;

    aget-object v2, v2, v1

    sget-object v3, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpLocations:Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVector:Lcom/jme3/math/Vector3f;

    invoke-static {v3, v0, v4}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    sget-object v3, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/debug/Arrow;

    sget-object v3, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpVelocities:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v4}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    sget-object p1, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->tmpCenter:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->rotateIdentity:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->clustersGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_3
    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->facesGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_4
    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftBodyDebugControl;->linksGeometry:Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
