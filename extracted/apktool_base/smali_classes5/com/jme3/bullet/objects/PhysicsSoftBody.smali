.class public Lcom/jme3/bullet/objects/PhysicsSoftBody;
.super Lcom/jme3/bullet/objects/PhysicsBody;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final tagConfig:Ljava/lang/String; = "config"

.field private static final tagFaceIndices:Ljava/lang/String; = "faceIndices"

.field private static final tagIndices:Ljava/lang/String; = "indices"

.field private static final tagIsWorldInfoProtected:Ljava/lang/String; = "isWorldInfoProtected"

.field private static final tagLinkIndices:Ljava/lang/String; = "linkIndices"

.field private static final tagMaterial:Ljava/lang/String; = "material"

.field private static final tagNodeLocations:Ljava/lang/String; = "nodeLocations"

.field private static final tagNodeMasses:Ljava/lang/String; = "nodeMasses"

.field private static final tagNodeNormals:Ljava/lang/String; = "nodeNormals"

.field private static final tagNodeVelocities:Ljava/lang/String; = "nodeVelocities"

.field private static final tagNumClusters:Ljava/lang/String; = "numClusters"

.field private static final tagPhysicsLocation:Ljava/lang/String; = "physicsLocation"

.field private static final tagRestLengthScale:Ljava/lang/String; = "restLengthScale"

.field private static final tagTetraIndices:Ljava/lang/String; = "tetraIndices"

.field private static final tagWorldInfo:Ljava/lang/String; = "worldInfo"

.field private static final vpe:I = 0x2

.field private static final vpt:I = 0x3


# instance fields
.field private config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

.field private isWorldInfoProtected:Z

.field private material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

.field private worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsBody;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    new-instance v0, Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-direct {v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->createEmpty(J)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-super {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    invoke-static {}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getDefaultMargin()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMargin(F)V

    return-void
.end method

.method private static native addForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addForce(JLcom/jme3/math/Vector3f;I)V
.end method

.method private static native addVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native addVelocity(JLcom/jme3/math/Vector3f;I)V
.end method

.method private static native appendCluster(JILjava/nio/IntBuffer;)V
.end method

.method private static native appendFaces(JILjava/nio/ByteBuffer;)V
.end method

.method private static native appendFaces(JILjava/nio/IntBuffer;)V
.end method

.method private static native appendFaces(JILjava/nio/ShortBuffer;)V
.end method

.method private static native appendLinks(JILjava/nio/ByteBuffer;)V
.end method

.method private static native appendLinks(JILjava/nio/IntBuffer;)V
.end method

.method private static native appendLinks(JILjava/nio/ShortBuffer;)V
.end method

.method private static native appendNodes(JILjava/nio/FloatBuffer;)V
.end method

.method private static native appendTetras(JILjava/nio/ByteBuffer;)V
.end method

.method private static native appendTetras(JILjava/nio/IntBuffer;)V
.end method

.method private static native appendTetras(JILjava/nio/ShortBuffer;)V
.end method

.method private static native applyPhysicsRotation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native applyPhysicsScale(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native applyPhysicsTransform(JLcom/jme3/math/Transform;)V
.end method

.method private static native applyPhysicsTranslate(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native countNodesInCluster(JI)I
.end method

.method private static native createEmpty(J)J
.end method

.method private static native cutLink(JIIF)Z
.end method

.method private static native finishClusters(J)V
.end method

.method private static native generateBendingConstraints(JIJ)V
.end method

.method private static native generateClusters(JII)V
.end method

.method private static native getBounds(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native getClusterAngularDamping(JI)F
.end method

.method private static native getClusterCenter(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getClusterCount(J)I
.end method

.method private static native getClusterLinearDamping(JI)F
.end method

.method private static native getClusterMatching(JI)F
.end method

.method private static native getClusterMaxSelfImpulse(JI)F
.end method

.method private static native getClusterNodeDamping(JI)F
.end method

.method private static native getClusterSelfImpulse(JI)F
.end method

.method private static native getClustersLinearVelocities(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getClustersMasses(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getClustersPositions(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getFacesIndexes(JLjava/nio/IntBuffer;)V
.end method

.method private static native getLinksIndexes(JLjava/nio/IntBuffer;)V
.end method

.method private static native getMargin(J)F
.end method

.method private static native getMass(JI)F
.end method

.method private static native getMasses(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getNbFaces(J)I
.end method

.method private static native getNbLinks(J)I
.end method

.method private static native getNbNodes(J)I
.end method

.method private static native getNbPinnedNodes(J)I
.end method

.method private static native getNbTetras(J)I
.end method

.method private static native getNodeLocation(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getNodeNormal(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getNodeVelocity(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getNodesNormals(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getNodesPositions(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getNodesVelocities(JLjava/nio/FloatBuffer;)V
.end method

.method private static native getPhysicsLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getRestLengthScale(J)F
.end method

.method private static native getSoftBodyWorldInfo(J)J
.end method

.method private static native getTetrasIndexes(JLjava/nio/IntBuffer;)V
.end method

.method private static native getTotalMass(J)F
.end method

.method private static native getVolume(J)F
.end method

.method private static native getWindVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native initDefault(J)V
.end method

.method private static native isCollisionAllowed(JJ)Z
.end method

.method private static native listNodesInCluster(JILjava/nio/IntBuffer;)V
.end method

.method private static native randomizeConstraints(J)V
.end method

.method private static native releaseCluster(JI)V
.end method

.method private static native releaseClusters(J)V
.end method

.method private static native resetLinkRestLengths(J)V
.end method

.method private static native setClusterAngularDamping(JIF)V
.end method

.method private static native setClusterLinearDamping(JIF)V
.end method

.method private static native setClusterMatching(JIF)V
.end method

.method private static native setClusterMaxSelfImpulse(JIF)V
.end method

.method private static native setClusterNodeDamping(JIF)V
.end method

.method private static native setClusterSelfImpulse(JIF)V
.end method

.method private static native setMargin(JF)V
.end method

.method private static native setMass(JIF)V
.end method

.method private static native setMasses(JLjava/nio/FloatBuffer;)V
.end method

.method private static native setNodeVelocity(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native setNormals(JLjava/nio/FloatBuffer;)V
.end method

.method private static native setPhysicsLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setPose(JZZ)V
.end method

.method private static native setRestLengthScale(JF)V
.end method

.method private static native setSoftBodyWorldInfo(JJ)V
.end method

.method private static native setTotalDensity(JF)V
.end method

.method private static native setTotalMass(JFZ)V
.end method

.method private static native setVelocities(JLjava/nio/FloatBuffer;)V
.end method

.method private static native setVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setVolumeDensity(JF)V
.end method

.method private static native setVolumeMass(JF)V
.end method

.method private static native setWindVelocity(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public addVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->addVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public addVelocity(Lcom/jme3/math/Vector3f;I)V
    .locals 3

    .line 4
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6
    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->addVelocity(JLcom/jme3/math/Vector3f;I)V

    return-void
.end method

.method public appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 5
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    .line 6
    instance-of v3, p1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(JILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v3, p1, Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_1

    .line 9
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(JILjava/nio/ShortBuffer;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v3, p1, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_2

    .line 11
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(JILjava/nio/IntBuffer;)V

    :goto_0
    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number of indices must be a multiple of 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    .line 6
    instance-of v3, p1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(JILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v3, p1, Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_1

    .line 9
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(JILjava/nio/ShortBuffer;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v3, p1, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_2

    .line 11
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(JILjava/nio/IntBuffer;)V

    :goto_0
    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number of indices must be a multiple of 2."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendNodes(Ljava/nio/FloatBuffer;)V
    .locals 3

    .line 1
    const-string v0, "node locations"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    const-string v1, "direct buffer"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "limit a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 6
    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(JILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public appendTetras(Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    .line 5
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    .line 6
    instance-of v3, p1, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 7
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(JILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v3, p1, Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_1

    .line 9
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(JILjava/nio/ShortBuffer;)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v3, p1, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_2

    .line 11
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(JILjava/nio/IntBuffer;)V

    :goto_0
    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number of indices must be a multiple of 4."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->addForce(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public applyForce(Lcom/jme3/math/Vector3f;I)V
    .locals 3

    .line 4
    const-string v0, "force"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6
    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 8
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->addForce(JLcom/jme3/math/Vector3f;I)V

    return-void
.end method

.method public applyRotation(Lcom/jme3/math/Quaternion;)V
    .locals 2

    const-string v0, "rotation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->applyPhysicsRotation(JLcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public applyScale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "factors"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->applyPhysicsScale(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public applyTransform(Lcom/jme3/math/Transform;)V
    .locals 2

    const-string v0, "transform"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->applyPhysicsTransform(JLcom/jme3/math/Transform;)V

    return-void
.end method

.method public applyTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "offset"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->applyPhysicsTranslate(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public boundingBox(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getBounds(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v0, v1}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 11

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/SoftBodyWorldInfo;

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->createEmpty(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p2, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Created {0}."

    invoke-virtual {p2, v3, v4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-direct {p2, p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    iget-object p2, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    iget-object v3, v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-virtual {p2, v3}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;->copyAll(Lcom/jme3/bullet/objects/infos/SoftBodyConfig;)V

    iget-object p2, v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setNormals(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVelocities(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMasses(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLinks(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyTetras(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->listNodesInCluster(ILjava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v1, v2, v7, v6}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendCluster(JILjava/nio/IntBuffer;)V

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Cluster;->values()[Lcom/jme3/bullet/objects/infos/Cluster;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v0, v9, v5}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v10

    invoke-virtual {p0, v9, v5, v10}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->set(Lcom/jme3/bullet/objects/infos/Cluster;IF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->finishClusters(J)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/objects/PhysicsBody;->cloneJoints(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/objects/PhysicsBody;)V

    return-void
.end method

.method public clusterCenter(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterCenter(JILcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public copyClusterCenters(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClustersPositions(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyClusterMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClustersMasses(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyClusterVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClustersLinearVelocities(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getFacesIndexes(JLjava/nio/IntBuffer;)V

    :cond_1
    return-object p1
.end method

.method public copyLinks(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getLinksIndexes(JLjava/nio/IntBuffer;)V

    :cond_1
    return-object p1
.end method

.method public copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodesPositions(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getMasses(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodesNormals(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public copyTetras(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countTetras()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getTetrasIndexes(JLjava/nio/IntBuffer;)V

    :cond_1
    return-object p1
.end method

.method public copyVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0, p1}, Ljf/d;->d(ILjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodesVelocities(JLjava/nio/FloatBuffer;)V

    :cond_2
    return-object p1
.end method

.method public final countClusters()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterCount(J)I

    move-result v0

    return v0
.end method

.method public final countFaces()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNbFaces(J)I

    move-result v0

    return v0
.end method

.method public final countLinks()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNbLinks(J)I

    move-result v0

    return v0
.end method

.method public final countNodes()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNbNodes(J)I

    move-result v0

    return v0
.end method

.method public countNodesInCluster(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodesInCluster(JI)I

    move-result p1

    return p1
.end method

.method public final countPinnedNodes()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNbPinnedNodes(J)I

    move-result v0

    return v0
.end method

.method public final countTetras()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNbTetras(J)I

    move-result v0

    return v0
.end method

.method public cutLink(IIF)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    const-string v1, "node index 0"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    const-string v1, "node index 1"

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->cutLink(JIIF)Z

    move-result p1

    return p1
.end method

.method public destroySoftBody()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Destroying {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    return-void
.end method

.method public generateBendingConstraints(ILcom/jme3/bullet/objects/infos/SoftBodyMaterial;)V
    .locals 4

    const/4 v0, 0x2

    const v1, 0x7fffffff

    .line 1
    const-string v2, "number of hops"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 4
    invoke-static {v0, v1, p1, v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->generateBendingConstraints(JIJ)V

    return-void
.end method

.method public generateClusters()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v3, 0x2000

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->generateClusters(JII)V

    return-void
.end method

.method public generateClusters(II)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    .line 4
    const-string v1, "k"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    const-string v0, "maximum number of iterations"

    invoke-static {p2, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->generateClusters(JII)V

    return-void
.end method

.method public get(Lcom/jme3/bullet/objects/infos/Cluster;I)F
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/objects/PhysicsSoftBody$1;->$SwitchMap$com$jme3$bullet$objects$infos$Cluster:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterSelfImpulse(JI)F

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterNodeDamping(JI)F

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterMaxSelfImpulse(JI)F

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterMatching(JI)F

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterLinearDamping(JI)F

    move-result p1

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getClusterAngularDamping(JI)F

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getMass()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getTotalMass(J)F

    move-result v0

    return v0
.end method

.method public getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsLocation(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    return-object p1
.end method

.method public getPhysicsRotationDp(Lcom/simsilica/mathd/Quatd;)Lcom/simsilica/mathd/Quatd;
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Quatd;

    invoke-direct {p1}, Lcom/simsilica/mathd/Quatd;-><init>()V

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/simsilica/mathd/Quatd;->set(DDDD)Lcom/simsilica/mathd/Quatd;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->loadIdentity()V

    return-object p1
.end method

.method public getPhysicsRotationMatrixDp(Lcom/simsilica/mathd/Matrix3d;)Lcom/simsilica/mathd/Matrix3d;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Matrix3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Matrix3d;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/simsilica/mathd/Matrix3d;->makeIdentity()Lcom/simsilica/mathd/Matrix3d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getSoftConfig()Lcom/jme3/bullet/objects/infos/SoftBodyConfig;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    return-object v0
.end method

.method public getSoftMaterial()Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    return-object v0
.end method

.method public getWorldInfo()Lcom/jme3/bullet/SoftBodyWorldInfo;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    return-object v0
.end method

.method public initDefault()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->initDefault(J)V

    return-void
.end method

.method public isCollisionAllowed(J)Z
    .locals 2

    .line 1
    const-string v0, "collision object ID"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isCollisionAllowed(JJ)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countLinks()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countTetras()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsBody;->countJoints()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWorldInfoProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected:Z

    return v0
.end method

.method public listNodesInCluster(ILjava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodesInCluster(I)I

    move-result v0

    if-nez p2, :cond_0

    .line 4
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->listNodesInCluster(JILjava/nio/IntBuffer;)V

    return-object p2
.end method

.method public margin()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getMargin(J)F

    move-result v0

    return v0
.end method

.method public newEmptySoftBody()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->destroySoftBody()V

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->createEmpty(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    return-void
.end method

.method public nodeLocation(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodeLocation(JILcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public nodeMass(I)F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getMass(JI)F

    move-result p1

    return p1
.end method

.method public nodeNormal(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodeNormal(JILcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public nodeVelocity(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getNodeVelocity(JILcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method public randomizeConstraints()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->randomizeConstraints(J)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "worldInfo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/SoftBodyWorldInfo;

    iput-object v1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->newEmptySoftBody()V

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->readPcoProperties(Lcom/jme3/export/InputCapsule;)V

    const-string p1, "isWorldInfoProtected"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected:Z

    const-string p1, "config"

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    const-string p1, "material"

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    const-string p1, "nodeLocations"

    new-array v2, v1, [F

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    const-string p1, "nodeMasses"

    new-array v2, v1, [F

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMasses(Ljava/nio/FloatBuffer;)V

    const-string p1, "nodeNormals"

    new-array v2, v1, [F

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setNormals(Ljava/nio/FloatBuffer;)V

    const-string p1, "nodeVelocities"

    new-array v2, v1, [F

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVelocities(Ljava/nio/FloatBuffer;)V

    const-string p1, "faceIndices"

    new-array v2, v1, [I

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V

    const-string p1, "linkIndices"

    new-array v2, v1, [I

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    const-string p1, "tetraIndices"

    new-array v2, v1, [I

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    const-string p1, "numClusters"

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indices"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [I

    invoke-interface {v0, v5, v6}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v5

    array-length v6, v5

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-static {v2, v3, v6, v5}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendCluster(JILjava/nio/IntBuffer;)V

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Cluster;->values()[Lcom/jme3/bullet/objects/infos/Cluster;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/jme3/bullet/objects/infos/Cluster;->defValue()F

    move-result v10

    invoke-interface {v0, v9, v10}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v9

    invoke-virtual {p0, v8, v4, v9}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->set(Lcom/jme3/bullet/objects/infos/Cluster;IF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->finishClusters(J)V

    const-string p1, "restLengthScale"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setRestingLengthScale(F)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "physicsLocation"

    invoke-interface {v0, v1, p1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsBody;->readJoints(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public releaseAllClusters()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->releaseClusters(J)V

    return-void
.end method

.method public releaseCluster(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->releaseCluster(JI)V

    return-void
.end method

.method public resetRestingLengths()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->resetLinkRestLengths(J)V

    return-void
.end method

.method public restingLengthsScale()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getRestLengthScale(J)F

    move-result v0

    return v0
.end method

.method public set(Lcom/jme3/bullet/objects/infos/Cluster;IF)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "cluster index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/objects/PhysicsSoftBody$1;->$SwitchMap$com$jme3$bullet$objects$infos$Cluster:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterSelfImpulse(JIF)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterNodeDamping(JIF)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterMaxSelfImpulse(JIF)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterMatching(JIF)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterLinearDamping(JIF)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2, p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setClusterAngularDamping(JIF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDebugMeshNormals(Lif/j;)V
    .locals 2

    const-string v0, "new setting"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody$1;->$SwitchMap$jme3utilities$MeshNormals:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normals = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setDebugMeshNormals(Lif/j;)V

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    const-string v0, "acceleration"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-direct {v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;-><init>()V

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyAll(Lcom/jme3/bullet/SoftBodyWorldInfo;)V

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setGravity(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setWorldInfo(Lcom/jme3/bullet/SoftBodyWorldInfo;)V

    return-void
.end method

.method public final setMargin(F)V
    .locals 2

    .line 1
    const-string v0, "margin"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMargin(JF)V

    return-void
.end method

.method public setMass(F)V
    .locals 1

    .line 1
    const-string v0, "total mass"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMassByCurrent(F)V

    return-void
.end method

.method public setMassByArea(F)V
    .locals 3

    const-string v0, "total mass"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setTotalMass(JFZ)V

    return-void
.end method

.method public setMassByCurrent(F)V
    .locals 3

    const-string v0, "total mass"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setTotalMass(JFZ)V

    return-void
.end method

.method public setMassFromDensity(F)V
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setTotalDensity(JF)V

    return-void
.end method

.method public setMasses(Ljava/nio/FloatBuffer;)V
    .locals 2

    .line 1
    const-string v0, "masses"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMasses(JLjava/nio/FloatBuffer;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNodeMass(IF)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "mass"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setMass(JIF)V

    return-void
.end method

.method public setNodeVelocity(ILcom/jme3/math/Vector3f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    const-string v0, "velocity"

    invoke-static {p2, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setNodeVelocity(JILcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setNormals(Ljava/nio/FloatBuffer;)V
    .locals 2

    .line 1
    const-string v0, "normals"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setNormals(JLjava/nio/FloatBuffer;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPhysicsLocation(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public setPose(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setPose(JZZ)V

    return-void
.end method

.method public setProtectWorldInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected:Z

    return-void
.end method

.method public setRestingLengthScale(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setRestLengthScale(JF)V

    return-void
.end method

.method public setVelocities(Ljava/nio/FloatBuffer;)V
    .locals 2

    .line 1
    const-string v0, "velocities"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVelocities(JLjava/nio/FloatBuffer;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer must be direct."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setVolumeDensity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVolumeDensity(JF)V

    return-void
.end method

.method public setVolumeMass(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setVolumeMass(JF)V

    return-void
.end method

.method public setWindVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "velocity"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setWindVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setWorldInfo(Lcom/jme3/bullet/SoftBodyWorldInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->logger2:Ljava/util/logging/Logger;

    const-string v1, "The body is not in any space."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->setSoftBodyWorldInfo(JJ)V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    return-void
.end method

.method public volume()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getVolume(J)F

    move-result v0

    return v0
.end method

.method public windVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getWindVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->isWorldInfoProtected:Z

    const-string v1, "isWorldInfoProtected"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->restingLengthsScale()F

    move-result v0

    const-string v1, "restLengthScale"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v3, "physicsLocation"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLocations(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->v(Ljava/nio/FloatBuffer;II)[F

    move-result-object v1

    const-string v3, "nodeLocations"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyMasses(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->v(Ljava/nio/FloatBuffer;II)[F

    move-result-object v1

    const-string v3, "nodeMasses"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyNormals(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->v(Ljava/nio/FloatBuffer;II)[F

    move-result-object v1

    const-string v3, "nodeNormals"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyVelocities(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->v(Ljava/nio/FloatBuffer;II)[F

    move-result-object v1

    const-string v3, "nodeVelocities"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->w(Ljava/nio/IntBuffer;II)[I

    move-result-object v1

    const-string v3, "faceIndices"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyLinks(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->w(Ljava/nio/IntBuffer;II)[I

    move-result-object v1

    const-string v3, "linkIndices"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyTetras(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljf/d;->w(Ljava/nio/IntBuffer;II)[I

    move-result-object v1

    const-string v3, "tetraIndices"

    invoke-interface {p1, v1, v3, v0}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v1

    const-string v3, "numClusters"

    invoke-interface {p1, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->listNodesInCluster(ILjava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-static {v4, v2, v5}, Ljf/d;->w(Ljava/nio/IntBuffer;II)[I

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "indices"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5, v0}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Cluster;->values()[Lcom/jme3/bullet/objects/infos/Cluster;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {p0, v7, v3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->get(Lcom/jme3/bullet/objects/infos/Cluster;I)F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/jme3/bullet/objects/infos/Cluster;->defValue()F

    move-result v7

    invoke-interface {p1, v8, v9, v7}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->worldInfo:Lcom/jme3/bullet/SoftBodyWorldInfo;

    const-string v2, "worldInfo"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->config:Lcom/jme3/bullet/objects/infos/SoftBodyConfig;

    const-string v2, "config"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/PhysicsSoftBody;->material:Lcom/jme3/bullet/objects/infos/SoftBodyMaterial;

    const-string v2, "material"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsBody;->writeJoints(Lcom/jme3/export/OutputCapsule;)V

    return-void
.end method
