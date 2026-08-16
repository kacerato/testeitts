.class public Lcom/jme3/terrain/geomipmap/lodcalc/util/EntropyComputeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeLodEntropy(Lcom/jme3/scene/Mesh;Ljava/nio/Buffer;)F
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Ray;

    invoke-direct {v4, v2, v3}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v3, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v3}, Lcom/jme3/collision/CollisionResults;-><init>()V

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    instance-of v8, p1, Ljava/nio/IntBuffer;

    const/4 v9, 0x3

    if-eqz v8, :cond_0

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0, v6, v9, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    goto :goto_0

    :cond_0
    instance-of v8, p1, Ljava/nio/ShortBuffer;

    if-eqz v8, :cond_1

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v6, v9, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v6, v9, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->createCollisionData()V

    const/4 p1, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v8

    div-int/2addr v8, v9

    if-ge p1, v8, :cond_3

    invoke-static {v2, v1, p1}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v10

    invoke-virtual {v2, v5, v10, v5}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3}, Lcom/jme3/collision/CollisionResults;->clear()V

    sget-object v10, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p0, v4, v10, v0, v3}, Lcom/jme3/scene/Mesh;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    invoke-virtual {v3}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v3}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jme3/collision/CollisionResult;->getContactPoint()Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget v10, v10, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p0, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    return v6
.end method
