.class public final Lcom/jme3/bullet/util/NativeSoftBodyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final vpe:I = 0x2

.field private static final vpt:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/NativeSoftBodyUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendFromLineMesh(Lcom/jme3/scene/Mesh;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    const-string v0, "soft body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void
.end method

.method public static appendFromNativeMesh(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 8

    const-string v0, "soft body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyVertexPositions()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyIndices()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    mul-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    new-instance v7, Ljf/b;

    invoke-direct {v7, v4, v5}, Ljf/b;-><init>(II)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljf/b;

    invoke-direct {v7, v5, v6}, Ljf/b;-><init>(II)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljf/b;

    invoke-direct {v5, v4, v6}, Ljf/b;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf/b;

    invoke-virtual {v1}, Ljf/b;->c()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljf/b;->b()I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void
.end method

.method public static appendFromTriMesh(Lcom/jme3/scene/Mesh;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    const-string v0, "soft body"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendFaces(Lcom/jme3/scene/mesh/IndexBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    mul-int/lit8 v3, v1, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v7

    new-instance v8, Ljf/b;

    invoke-direct {v8, v5, v6}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljf/b;

    invoke-direct {v8, v6, v7}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljf/b;

    invoke-direct {v6, v5, v7}, Ljf/b;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf/b;

    invoke-virtual {v1}, Ljf/b;->c()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v1}, Ljf/b;->b()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendLinks(Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void
.end method

.method public static appendTetras(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    filled-new-array {v2}, [Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendNodes(Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v2

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countFaces()I

    move-result v3

    mul-int/lit8 v4, v3, 0x4

    invoke-static {v2, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    mul-int/lit8 v5, v4, 0x3

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    mul-int/lit8 v8, v4, 0x4

    invoke-virtual {v2, v8, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v6, v8, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v6, v8, 0x2

    invoke-virtual {v2, v6, v5}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v2, v8, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void
.end method

.method public static generateIndexMap(Ljava/nio/FloatBuffer;)Ljava/nio/IntBuffer;
    .locals 7

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "limit a multiple of 3"

    invoke-static {v1, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    move v4, v2

    :goto_1
    if-ge v2, v0, :cond_2

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    mul-int/lit8 v6, v2, 0x3

    invoke-static {p0, v6, v5}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {v5, v5}, Ljf/h;->U(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method

.method public static mapIndices(Ljava/nio/IntBuffer;Lcom/jme3/scene/mesh/IndexBuffer;Lcom/jme3/scene/mesh/IndexBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    if-nez p2, :cond_0

    const p2, 0x7fffffff

    invoke-static {p2, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v1

    if-lt v1, v0, :cond_2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p2

    :cond_2
    sget-object p0, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->logger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "outputSize={0}"

    invoke-virtual {p0, p1, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Reuse buffer size must be greater than or equal to %d."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static mapVertexData(Ljava/nio/IntBuffer;Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 9

    const-string v0, "index map"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "number of floats per vertex"

    invoke-static {p2, v0}, Lif/E;->F(ILjava/lang/String;)Z

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    div-int v1, v0, p2

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, p2, :cond_0

    mul-int v7, p2, v4

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    mul-int v8, p2, v5

    add-int/2addr v8, v6

    invoke-virtual {v0, v8, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    if-le v5, v3, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    mul-int/2addr p2, v3

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private static native updateClusterMesh(JLjava/nio/FloatBuffer;Z)V
.end method

.method public static updateClusterMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Lcom/jme3/scene/Mesh;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 3
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p2}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateClusterMesh(JLjava/nio/FloatBuffer;Z)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method private static native updateMesh(JLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;ZZ)V
.end method

.method private static native updateMesh(JLjava/nio/IntBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;ZZ)V
.end method

.method public static updateMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Ljava/nio/IntBuffer;Lcom/jme3/scene/Mesh;ZZLcom/jme3/math/Transform;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 3
    invoke-virtual {p2, p0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 4
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    move-object v2, p1

    move-object v3, p0

    move-object v4, v7

    move v5, p3

    move v6, p4

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(JLjava/nio/IntBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;ZZ)V

    goto :goto_2

    :cond_1
    move-object v2, p0

    move-object v3, v7

    move v4, p3

    move v5, p4

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updateMesh(JLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;ZZ)V

    :goto_2
    if-eqz p5, :cond_3

    .line 7
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 9
    :goto_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 14
    invoke-static {p5, p1, p1}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 15
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 16
    iget p3, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 17
    iget p3, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 18
    iget p3, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_2
    if-eqz v7, :cond_3

    .line 19
    invoke-virtual {p5}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p0

    .line 20
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 21
    :goto_4
    invoke-virtual {v7}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->mark()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 24
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 25
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    iput p3, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 26
    invoke-static {p0, p1, p1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 27
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->reset()Ljava/nio/Buffer;

    .line 28
    iget p3, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v7, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 29
    iget p3, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v7, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 30
    iget p3, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v7, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_4

    .line 31
    :cond_3
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    if-eqz v7, :cond_4

    .line 32
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, p0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    :cond_4
    return-void
.end method

.method private static native updatePinMesh(JLjava/nio/FloatBuffer;Z)V
.end method

.method public static updatePinMesh(Lcom/jme3/bullet/objects/PhysicsSoftBody;Lcom/jme3/scene/Mesh;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    sget-object p0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 3
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p2}, Lcom/jme3/bullet/util/NativeSoftBodyUtil;->updatePinMesh(JLjava/nio/FloatBuffer;Z)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method
