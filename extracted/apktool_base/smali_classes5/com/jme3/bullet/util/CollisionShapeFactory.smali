.class public final Lcom/jme3/bullet/util/CollisionShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/CollisionShapeFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/CollisionShapeFactory;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBoxShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    instance-of v1, p0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/jme3/scene/Geometry;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {p0, p0, v1}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleBoxShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p0, v0, v1, v2}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createCompoundShape(Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;ZZ)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The model root must either be a Node or a Geometry!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createCompoundShape(Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;ZZ)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    const-string v1, "JmePhysicsIgnore"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lif/s;->K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;

    move-result-object v1

    instance-of v2, v0, Lcom/jme3/terrain/Terrain;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    check-cast v0, Lcom/jme3/terrain/Terrain;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;-><init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p2, v2, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/jme3/scene/Node;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-static {p0, v0, p2, p3, p4}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createCompoundShape(Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;ZZ)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/jme3/scene/Geometry;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    invoke-static {v0, p0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleHullShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0, p0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleMeshShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v0, p0, v2}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleBoxShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    move-result-object v0

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-static {v3, v2, v2}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0, v1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static createDynamicMeshShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-static {v0, p0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleHullShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p0, v0, v1, v1}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createCompoundShape(Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;ZZ)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The model root must either be a Node or a Geometry!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createGImpactShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;
    .locals 1

    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    filled-new-array {p0}, [Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    return-object v0
.end method

.method public static createMergedBoxShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 4

    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljf/d;->m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p0, Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v1, v2, p0}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public static createMergedHullShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 1

    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    filled-new-array {p0}, [Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    return-object v0
.end method

.method public static createMergedMeshShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
    .locals 1

    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    filled-new-array {p0}, [Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    return-object v0
.end method

.method public static createMeshShape(Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    instance-of v0, p0, Lcom/jme3/terrain/Terrain;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;

    move-object v1, p0

    check-cast v1, Lcom/jme3/terrain/Terrain;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/HeightfieldCollisionShape;-><init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/math/Vector3f;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-static {v0, p0}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createSingleMeshShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p0, v0, v1, v2}, Lcom/jme3/bullet/util/CollisionShapeFactory;->createCompoundShape(Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;ZZ)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The model root must either be a Node or a Geometry!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createSingleBoxShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0, p1}, Lif/s;->K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;

    move-result-object p0

    mul-int/lit8 v2, v2, 0x3

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0, v1}, Ljf/d;->m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v1, p2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance p2, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    return-object p2
.end method

.method private static createSingleHullShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lif/s;->K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;

    move-result-object p0

    new-instance p1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    filled-new-array {v0}, [Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method private static createSingleMeshShape(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Spatial;)Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lif/p;->t(Lcom/jme3/scene/Mesh;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lif/s;->K(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Spatial;)Lcom/jme3/math/Transform;

    move-result-object p0

    new-instance p1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    filled-new-array {v0}, [Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createVhacdShape(Lcom/jme3/scene/Spatial;Lvhacd/VHACDParameters;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 6

    .line 1
    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    const-string v0, "parameters"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 3
    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 5
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 7
    new-array v2, v1, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 8
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    .line 11
    new-array v1, v0, [I

    :goto_1
    if-ge v3, v0, :cond_1

    .line 12
    invoke-virtual {p0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v2, v1, p1}, Lvhacd/VHACD;->compute([F[ILvhacd/VHACDParameters;)Ljava/util/List;

    move-result-object p0

    if-nez p2, :cond_2

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 15
    new-instance p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>(I)V

    .line 16
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvhacd/VHACDHull;

    .line 17
    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Lvhacd/VHACDHull;)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method public static createVhacdShape(Lcom/jme3/scene/Spatial;Lvhacd4/Vhacd4Parameters;Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;)Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 6

    .line 19
    const-string v0, "model root"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 20
    const-string v0, "parameters"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 21
    invoke-static {p0}, Lif/p;->y(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    .line 22
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 23
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    .line 25
    new-array v2, v1, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 26
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    .line 29
    new-array v1, v0, [I

    :goto_1
    if-ge v3, v0, :cond_1

    .line 30
    invoke-virtual {p0, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v2, v1, p1}, Lvhacd4/Vhacd4;->compute([F[ILvhacd4/Vhacd4Parameters;)Ljava/util/List;

    move-result-object p0

    if-nez p2, :cond_2

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 33
    new-instance p2, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>(I)V

    .line 34
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvhacd4/Vhacd4Hull;

    .line 35
    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Lvhacd4/Vhacd4Hull;)V

    .line 36
    invoke-virtual {p2, v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    goto :goto_2

    :cond_3
    return-object p2
.end method
