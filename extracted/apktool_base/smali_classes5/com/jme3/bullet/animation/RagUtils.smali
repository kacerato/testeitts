.class public final Lcom/jme3/bullet/animation/RagUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/animation/RagUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/RagUtils;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWeights(Lcom/jme3/scene/Mesh;[F)V
    .locals 10

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    div-int/2addr v2, v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    invoke-static {v1}, Ljf/d;->r(Ljava/nio/Buffer;)I

    move-result v8

    if-ge v6, v0, :cond_1

    aget v9, p1, v8

    invoke-static {v7}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v7

    add-float/2addr v9, v7

    aput v9, p1, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static coordsMap([Lcom/jme3/scene/Mesh;[Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/scene/Mesh;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljf/o;",
            ">;"
        }
    .end annotation

    const-string v0, "manager map"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [F

    new-array v1, v1, [I

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    array-length v4, p0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, p0, v6

    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v8

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_2

    invoke-static {v7, v9, v1, v2, p1}, Lcom/jme3/bullet/animation/RagUtils;->findManager(Lcom/jme3/scene/Mesh;I[I[F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljf/o;

    if-nez v11, :cond_1

    new-instance v11, Ljf/p;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v5}, Ljf/p;-><init>(IZ)V

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v10, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v7, v10, v9, v3}, Lif/p;->Z(Lcom/jme3/scene/Mesh;Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v11, v3}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static findMainBone(Lcom/jme3/animation/Skeleton;[Lcom/jme3/scene/Mesh;)Lcom/jme3/animation/Bone;
    .locals 8

    const-string v0, "target meshes"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object p0, v0, v3

    goto :goto_1

    :cond_0
    invoke-static {p1, p0}, Lcom/jme3/bullet/animation/RagUtils;->totalWeights([Lcom/jme3/scene/Mesh;Lcom/jme3/animation/Skeleton;)[F

    move-result-object p1

    array-length v1, v0

    const/4 v2, 0x0

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v6

    aget v6, p1, v6

    cmpl-float v7, v6, v4

    if-lez v7, :cond_1

    move-object v2, v5

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_1
    return-object p0
.end method

.method public static findMainJoint(Lcom/jme3/anim/Armature;[Lcom/jme3/scene/Mesh;)Lcom/jme3/anim/Joint;
    .locals 7

    const-string v0, "target meshes"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->getRoots()[Lcom/jme3/anim/Joint;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object p0, v0, v3

    goto :goto_1

    :cond_0
    invoke-static {p1, p0}, Lcom/jme3/bullet/animation/RagUtils;->totalWeights([Lcom/jme3/scene/Mesh;Lcom/jme3/anim/Armature;)[F

    move-result-object p0

    array-length p1, v0

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    if-ge v3, p1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/jme3/anim/Joint;->getId()I

    move-result v5

    aget v5, p0, v5

    cmpl-float v6, v5, v2

    if-lez v6, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public static findManager(Lcom/jme3/scene/Mesh;I[I[F[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "mesh"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "vertex index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    const-string v0, "index array"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "weight array"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "manager map"

    invoke-static {p4, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p0, p1, p2}, Lif/p;->R(Lcom/jme3/scene/Mesh;I[I)[I

    invoke-static {p0, p1, p3}, Lif/p;->S(Lcom/jme3/scene/Mesh;I[F)[F

    invoke-static {p2, p3, p4}, Lcom/jme3/bullet/animation/RagUtils;->weightMap([I[F[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    cmpl-float v0, p4, p1

    if-ltz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object p2, p1

    move p1, p4

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static findSControl(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/AbstractControl;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-class v1, Lcom/jme3/anim/SkinningControl;

    invoke-static {p0, v1, v0}, Lif/s;->A(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/jme3/animation/SkeletonControl;

    invoke-static {p0, v2, v0}, Lif/s;->A(Lcom/jme3/scene/Spatial;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/control/AbstractControl;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/control/AbstractControl;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static ignoreCollisions(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/bullet/objects/PhysicsBody;",
            "Lcom/jme3/bullet/objects/PhysicsBody;",
            "I",
            "Ljava/util/Map<",
            "Lcom/jme3/bullet/objects/PhysicsBody;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-gtz p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsBody;->listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->findOtherBody(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eq v3, p0, :cond_2

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->addToIgnoreList(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3, p2, p3}, Lcom/jme3/bullet/animation/RagUtils;->ignoreCollisions(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;ILjava/util/Map;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static listDacMeshes(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "JmePhysicsIgnore"

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p0

    invoke-static {p0}, Lif/p;->v(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lcom/jme3/bullet/animation/RagUtils;->listDacMeshes(Lcom/jme3/scene/Spatial;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static varargs listInternalJoints([Lcom/jme3/bullet/objects/PhysicsBody;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/bullet/objects/PhysicsBody;",
            ")",
            "Ljava/util/Set<",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/jme3/bullet/objects/PhysicsBody;->listJoints()[Lcom/jme3/bullet/joints/PhysicsJoint;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Lcom/jme3/bullet/joints/PhysicsJoint;->findOtherBody(Lcom/jme3/bullet/objects/PhysicsBody;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v9

    array-length v10, p0

    move v11, v2

    :goto_2
    if-ge v11, v10, :cond_1

    aget-object v12, p0, v11

    if-ne v12, v9, :cond_0

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static makeCylinder(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const-string v2, "scale factors"

    invoke-static {p1, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p0}, Ljf/o;->m()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "multiple vectors"

    invoke-static {v2, v5}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-static {p0, p1}, Lcom/jme3/bullet/animation/RagUtils;->makeRectangularSolid(Ljf/o;Lcom/jme3/math/Vector3f;)Ljf/m;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljf/m;->c(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v5, Lcom/jme3/math/Vector3f;->z:F

    new-array v9, v1, [F

    aput v6, v9, v3

    aput v7, v9, v4

    aput v8, v9, v0

    invoke-static {v9}, Ljf/f;->B([F)F

    move-result v6

    iget v7, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v5, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v7, v8, v9}, Ljf/f;->F(FFF)F

    move-result v7

    iget v8, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v5, Lcom/jme3/math/Vector3f;->z:F

    new-array v1, v1, [F

    aput v8, v1, v3

    aput v9, v1, v4

    aput v10, v1, v0

    invoke-static {v1}, Ljf/f;->G([F)F

    move-result v0

    sub-float v1, v6, v7

    sub-float/2addr v7, v0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget v1, v5, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v1, v6, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0, v4, v7, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_2
    iget v1, v5, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v6, v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v7, v4, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v7, v7, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_2
    invoke-virtual {p1, v2}, Ljf/m;->e(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-static {p1, v0, v0}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {p0}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-interface {p0, v2}, Ljf/o;->k(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result v2

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_5

    move v7, v6

    :cond_5
    neg-float v2, v2

    invoke-static {v1, v0, v2}, Ljf/h;->c(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    invoke-static {v1}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v8

    cmpl-double v2, v8, v4

    if-lez v2, :cond_4

    move-wide v4, v8

    goto :goto_3

    :cond_6
    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v7, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    new-instance v1, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-direct {v1, p1, v7, v3}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;-><init>(FFI)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v0, p1, v2}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v3, Lcom/jme3/math/Matrix3f;

    invoke-direct {v3}, Lcom/jme3/math/Matrix3f;-><init>()V

    invoke-virtual {v3, v0, p1, v2}, Lcom/jme3/math/Matrix3f;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p1}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    invoke-virtual {p1, v1, p0, v3}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V

    return-object p1
.end method

.method public static makeRectangularSolid(Ljf/o;Lcom/jme3/math/Vector3f;)Ljf/m;
    .locals 6

    const-string v0, "scale factors"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p0}, Ljf/o;->m()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "multiple vectors"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljf/o;->e(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Eigen3f;

    invoke-direct {v2, v1}, Lcom/jme3/math/Eigen3f;-><init>(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {v2}, Lcom/jme3/math/Eigen3f;->getEigenVectors()[Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v2, v1}, Lcom/jme3/math/Quaternion;->fromAxes([Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v3, v4, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {p0}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    iput v5, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    iput v5, v4, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    iput v5, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1, v4, v4}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v2, v4}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v3, v4}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_1
    invoke-static {v3, v2, v0}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    new-instance p0, Ljf/m;

    invoke-direct {p0, v3, v2, v1}, Ljf/m;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-object p0
.end method

.method public static meshToLocal(Lcom/jme3/anim/Joint;Lcom/jme3/math/Transform;)V
    .locals 4

    .line 13
    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "non-zero parent rotation"

    .line 15
    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 16
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    .line 21
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    .line 22
    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 23
    invoke-virtual {v0, p0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 24
    invoke-static {v3, v0, v0}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 25
    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 26
    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static meshToLocal(Lcom/jme3/animation/Bone;Lcom/jme3/math/Transform;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpaceRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "non-zero parent rotation"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 3
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getModelSpaceScale()Lcom/jme3/math/Vector3f;

    move-result-object p0

    .line 8
    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 9
    invoke-virtual {v1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 10
    invoke-static {v0, v1, v1}, Ljf/g;->s(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 11
    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static readTransformArray(Lcom/jme3/export/InputCapsule;Ljava/lang/String;)[Lcom/jme3/math/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "capsule"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "field name"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p0

    new-array v0, p1, [Lcom/jme3/math/Transform;

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    aget-object v1, p0, p1

    check-cast v1, Lcom/jme3/math/Transform;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static relativeTransform(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Node;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 1

    const-string v0, "spatial"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "ancestor"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/math/Transform;->loadIdentity()V

    :goto_0
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-static {p2, v0, p2}, Ljf/f;->i(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static totalWeights([Lcom/jme3/scene/Mesh;Lcom/jme3/anim/Armature;)[F
    .locals 4

    .line 1
    const-string v0, "meshes"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    .line 3
    new-array v0, v0, [F

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 5
    invoke-static {v3, v0}, Lcom/jme3/bullet/animation/RagUtils;->addWeights(Lcom/jme3/scene/Mesh;[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lif/r;->x(Lcom/jme3/anim/Armature;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/anim/Joint;

    .line 9
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/jme3/anim/Joint;->getId()I

    move-result p1

    .line 12
    aget v2, v0, p1

    aget v1, v0, v1

    add-float/2addr v2, v1

    aput v2, v0, p1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static totalWeights([Lcom/jme3/scene/Mesh;Lcom/jme3/animation/Skeleton;)[F
    .locals 4

    .line 13
    const-string v0, "meshes"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    .line 15
    new-array v0, v0, [F

    .line 16
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 17
    invoke-static {v3, v0}, Lcom/jme3/bullet/animation/RagUtils;->addWeights(Lcom/jme3/scene/Mesh;[F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lif/r;->w(Lcom/jme3/animation/Skeleton;)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    .line 21
    invoke-virtual {p1, v1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v2

    .line 22
    invoke-virtual {v1}, Lcom/jme3/animation/Bone;->getParent()Lcom/jme3/animation/Bone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p1, v1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v1

    .line 24
    aget v3, v0, v1

    aget v2, v0, v2

    add-float/2addr v3, v2

    aput v3, v0, v1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static validate(Lcom/jme3/anim/Armature;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/Armature;->getJointCount()I

    move-result v0

    if-ltz v0, :cond_5

    .line 2
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    invoke-virtual {p0, v2}, Lcom/jme3/anim/Armature;->getJoint(I)Lcom/jme3/anim/Joint;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate joint name in skeleton: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 11
    const-string v0, "Joint %d in armature has a reserved name!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 14
    const-string v0, "Joint %d in armature has null name!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 17
    const-string v0, "Joint %d in armature is null!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Joint count is negative!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validate(Lcom/jme3/animation/Skeleton;)V
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    if-ltz v0, :cond_5

    .line 21
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 22
    invoke-virtual {p0, v2}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 24
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 26
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate bone name in skeleton: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {v3}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 31
    const-string v0, "Bone %d in skeleton has a reserved name!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 34
    const-string v0, "Bone %d in skeleton has null name!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 37
    const-string v0, "Bone %d in skeleton is null!"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    .line 39
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bone count is negative!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validate(Lcom/jme3/scene/Spatial;)V
    .locals 1

    .line 40
    const-string v0, "model"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 41
    invoke-static {p0}, Lif/s;->B(Lcom/jme3/scene/Spatial;)Ljava/util/List;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    .line 44
    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->isIgnoreTransform()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A model geometry ignores transforms."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No meshes in the model."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static weightMap([I[F[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[F[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    aget-object v3, p2, v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aget v5, p1, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
