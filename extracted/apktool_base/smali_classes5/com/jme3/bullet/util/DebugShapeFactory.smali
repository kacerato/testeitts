.class public final Lcom/jme3/bullet/util/DebugShapeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/bullet/util/DebugMeshKey;",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation
.end field

.field public static final highResolution:I = 0x1

.field public static final highResolution2:I = 0x2

.field public static final logger:Ljava/util/logging/Logger;

.field public static final lowResolution:I = 0x0

.field private static maxVerticesToIndex:I = 0x0

.field private static meshCustomizer:Lcom/jme3/bullet/debug/MeshCustomizer; = null

.field private static final numAxes:I = 0x3

.field private static final planeDebugMeshSideLength:F = 1500.0f

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/util/DebugShapeFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->translateIdentity:Lcom/jme3/math/Vector3f;

    const/16 v0, 0x1770

    sput v0, Lcom/jme3/bullet/util/DebugShapeFactory;->maxVerticesToIndex:I

    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static countCachedMeshes()I
    .locals 1

    sget-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private static createCompoundTriangles(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;I)Ljava/nio/FloatBuffer;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/nio/FloatBuffer;

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    invoke-virtual {v6, v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-static {v7, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugTriangles(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v6, v3, v7, v2}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    aput-object v6, v1, v4

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    move p1, v3

    :goto_1
    if-ge p1, v0, :cond_2

    aget-object v2, v1, p1

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private static createCompoundVertices(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;I)Ljava/nio/FloatBuffer;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/nio/FloatBuffer;

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    invoke-virtual {v6, v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-static {v7, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-static {v6, v3, v7, v2}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    aput-object v6, v1, v4

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    move p1, v3

    :goto_1
    if-ge p1, v0, :cond_2

    aget-object v2, v1, p1

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private static createGeometry(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Geometry;
    .locals 3

    new-instance v0, Lcom/jme3/bullet/util/DebugMeshKey;

    invoke-direct {v0, p0, p2, p3}, Lcom/jme3/bullet/util/DebugMeshKey;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lif/j;I)V

    sget-object v1, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Mesh;

    if-nez v2, :cond_3

    instance-of v2, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-static {p0, p2}, Lcom/jme3/bullet/util/DebugShapeFactory;->createPlaneMesh(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;Lif/j;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/jme3/bullet/util/DebugShapeFactory;->createMesh(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lif/j;I)Lcom/jme3/scene/Mesh;

    move-result-object p0

    :goto_0
    sget-object p2, Lcom/jme3/bullet/util/DebugShapeFactory;->meshCustomizer:Lcom/jme3/bullet/debug/MeshCustomizer;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lcom/jme3/bullet/debug/MeshCustomizer;->customizeMesh(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;

    move-result-object p0

    :cond_1
    move-object v2, p0

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/jme3/bullet/debug/DebugMeshInitListener;->debugMeshInit(Lcom/jme3/scene/Mesh;)V

    :cond_2
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/jme3/scene/Geometry;

    const-string p1, "Physics debug"

    invoke-direct {p0, p1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static createMesh(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lif/j;I)Lcom/jme3/scene/Mesh;
    .locals 4

    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    new-instance p2, Lcom/jme3/scene/Mesh;

    invoke-direct {p2}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v1, Lcom/jme3/bullet/util/DebugShapeFactory$1;->$SwitchMap$jme3utilities$MeshNormals:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isConvex()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyVertexPositions()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyIndices()Ljava/nio/IntBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p2, v0, v3, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangles()Ljava/nio/FloatBuffer;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1, v3, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {p2}, Lif/p;->b(Lcom/jme3/scene/Mesh;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "normals = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangles()Ljava/nio/FloatBuffer;

    move-result-object p0

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1, v3, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {p2}, Lif/p;->j(Lcom/jme3/scene/Mesh;)V

    invoke-static {p2}, Lif/p;->I(Lcom/jme3/scene/Mesh;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isConvex()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyVertexPositions()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyIndices()Ljava/nio/IntBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {p2, v0, v3, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangles()Ljava/nio/FloatBuffer;

    move-result-object p0

    :goto_1
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1, v3, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangles()Ljava/nio/FloatBuffer;

    move-result-object p0

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p1, v3, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-static {p2}, Lif/p;->j(Lcom/jme3/scene/Mesh;)V

    :goto_2
    invoke-static {p2}, Lif/p;->q(Lcom/jme3/scene/Mesh;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p2}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result p0

    sget p1, Lcom/jme3/bullet/util/DebugShapeFactory;->maxVerticesToIndex:I

    if-gt p0, p1, :cond_6

    invoke-static {p2}, Lif/p;->a(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;

    move-result-object p2

    :cond_6
    invoke-virtual {p2}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p2}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-object p2
.end method

.method private static createNode(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Node;
    .locals 8

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Bullet debug"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Matrix3f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->listChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p0, v5

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    invoke-static {v7, p1, p2, p3}, Lcom/jme3/bullet/util/DebugShapeFactory;->createGeometry(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Geometry;

    move-result-object v7

    invoke-virtual {v6, v3}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v6, v2}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->copyRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    invoke-virtual {v7, v2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-object v0
.end method

.method private static createPlaneMesh(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;Lif/j;)Lcom/jme3/scene/Mesh;
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/16 v4, 0x18

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    invoke-virtual {v5, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {p0}, Lcom/jme3/bullet/util/DebugShapeFactory;->planeTransform(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;)Lcom/jme3/math/Transform;

    move-result-object v3

    invoke-static {}, Lcom/jme3/bullet/util/DebugShapeFactory;->meshSideLength()F

    move-result v7

    sget v8, Ljf/f;->c:F

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-static {v5, v6, v4, v3}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-instance v3, Lcom/jme3/scene/Mesh;

    invoke-direct {v3}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v7, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v7, v1, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, v5, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    sget-object v2, Lif/j;->None:Lif/j;

    if-eq p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->getPlane()Lcom/jme3/math/Plane;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    move v2, v6

    :goto_1
    if-ge v2, v0, :cond_1

    iget v4, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iget v5, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v6, v0, :cond_2

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v4, p0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v4, p0, Lcom/jme3/math/Vector3f;->z:F

    neg-float v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v3, p0, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_3
    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x1t
        0x0t
        0x3t
        0x2t
        0x0t
        0x5t
        0x6t
        0x7t
        0x4t
        0x5t
        0x7t
    .end array-data
.end method

.method private static createPlaneTriangles(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;F)Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {p0}, Lcom/jme3/bullet/util/DebugShapeFactory;->planeTransform(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;)Lcom/jme3/math/Transform;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p0}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createPlaneVertices(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;F)Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {p0}, Lcom/jme3/bullet/util/DebugShapeFactory;->planeTransform(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;)Lcom/jme3/math/Transform;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p0}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public static debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;
    .locals 3

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "mesh resolution"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-static {p0, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->createCompoundVertices(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-eqz v0, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    check-cast p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-static {p0, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->createPlaneVertices(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;F)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyVertexPositions()Ljava/nio/FloatBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static footprint(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;I)[Lcom/jme3/math/Vector3f;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "a non-null value, neither a compound nor a plane shape"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v1, "shape-to-world"

    invoke-static {p1, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "mesh resolution"

    const/4 v2, 0x2

    invoke-static {p2, v1, v0, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->footprint(Lcom/jme3/math/Transform;)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static getDebugMesh(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/scene/Mesh;
    .locals 3

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugTriangles(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object p0

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-object v0
.end method

.method public static getDebugShape(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/jme3/scene/Spatial;
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshInitListener()Lcom/jme3/bullet/debug/DebugMeshInitListener;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshNormals()Lif/j;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->debugMeshResolution()I

    move-result p0

    .line 8
    instance-of v3, v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v3, :cond_0

    .line 9
    check-cast v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    .line 10
    invoke-static {v0, v1, v2, p0}, Lcom/jme3/bullet/util/DebugShapeFactory;->createNode(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Node;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0, v1, v2, p0}, Lcom/jme3/bullet/util/DebugShapeFactory;->createGeometry(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Geometry;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDebugShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Lcom/jme3/scene/Spatial;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    sget-object v1, Lif/j;->None:Lif/j;

    invoke-static {p0, v0, v1, v2}, Lcom/jme3/bullet/util/DebugShapeFactory;->createNode(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Node;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lif/j;->None:Lif/j;

    invoke-static {p0, v0, v1, v2}, Lcom/jme3/bullet/util/DebugShapeFactory;->createGeometry(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/bullet/debug/DebugMeshInitListener;Lif/j;I)Lcom/jme3/scene/Geometry;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getDebugTriangles(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;
    .locals 3

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "mesh resolution"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-static {p0, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->createCompoundTriangles(Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-eqz v0, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    check-cast p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-static {p0, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->createPlaneTriangles(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;F)Ljava/nio/FloatBuffer;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangles()Ljava/nio/FloatBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static installMeshCustomizer(Lcom/jme3/bullet/debug/MeshCustomizer;)V
    .locals 0

    sput-object p0, Lcom/jme3/bullet/util/DebugShapeFactory;->meshCustomizer:Lcom/jme3/bullet/debug/MeshCustomizer;

    return-void
.end method

.method public static maxDistance(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;I)F
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "a non-null value, neither a compound nor a plane shape"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    const-string v1, "shapeToWorld"

    invoke-static {p1, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "mesh resolution"

    const/4 v2, 0x2

    invoke-static {p2, v1, v0, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->maxDistance(Lcom/jme3/math/Transform;)F

    move-result p0

    return p0
.end method

.method public static meshSideLength()F
    .locals 1

    const v0, 0x44bb8000    # 1500.0f

    return v0
.end method

.method private static planeTransform(Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;)Lcom/jme3/math/Transform;
    .locals 4

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->getPlane()Lcom/jme3/math/Plane;

    move-result-object p0

    sget-object v1, Lcom/jme3/bullet/util/DebugShapeFactory;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jme3/math/Plane;->getClosestPoint(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {p0, v1, v2}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, p0, v1, v2}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public static removeShapeFromCache(J)V
    .locals 5

    sget-object v0, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/util/DebugMeshKey;

    invoke-virtual {v2}, Lcom/jme3/bullet/util/DebugMeshKey;->shapeId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    sget-object v3, Lcom/jme3/bullet/util/DebugShapeFactory;->cache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setIndexBuffers(I)V
    .locals 3

    const/4 v0, -0x1

    const v1, 0x7fffffff

    .line 2
    const-string v2, "maxVertices"

    invoke-static {p0, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 3
    sput p0, Lcom/jme3/bullet/util/DebugShapeFactory;->maxVerticesToIndex:I

    return-void
.end method

.method public static setIndexBuffers(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1
    :goto_0
    sput p0, Lcom/jme3/bullet/util/DebugShapeFactory;->maxVerticesToIndex:I

    return-void
.end method

.method public static volumeConvex(Lcom/jme3/bullet/collision/shapes/ConvexShape;I)F
    .locals 3

    const-string v0, "shape"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "mesh resolution"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-direct {v0, p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->volumeConvex()F

    move-result p0

    return p0
.end method
