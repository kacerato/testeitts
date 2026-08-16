.class public Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field public static final maxSubmeshes:I = 0x400

.field public static final maxTrianglesInAnySubmesh:I = 0x1fffff

.field private static serializeBvh:Z = false

.field private static final tagBvh:Ljava/lang/String; = "bvh"

.field private static final tagDoublePrecision:Ljava/lang/String; = "doublePrecision"

.field private static final tagNativeMesh:Ljava/lang/String; = "nativeMesh"

.field private static final tagNativePlatform:Ljava/lang/String; = "nativePlatform"

.field private static final tagUseCompression:Ljava/lang/String; = "useCompression"


# instance fields
.field private bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

.field protected nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

.field protected useCompression:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->logger2:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->serializeBvh:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 46
    const-string v0, "mesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 47
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    filled-new-array {p1}, [Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>([Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 48
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "at least one triangle"

    invoke-static {p1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 49
    iput-boolean p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 50
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(ZLcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 13
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 14
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0, p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>(Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 15
    iput-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 16
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 3
    const-string v0, "meshes"

    invoke-static {p2, v0}, Lif/E;->k(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 4
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    .line 6
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 8
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const-string v0, "at least one triangle"

    .line 9
    invoke-static {p2, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 10
    iput-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 11
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V
    .locals 5

    .line 17
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 18
    const-string v0, "submeshes"

    invoke-static {p2, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 19
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 20
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 21
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v4, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 23
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p2

    if-lez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string p2, "at least one triangle"

    .line 24
    invoke-static {v1, p2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 25
    iput-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 26
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([B[Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 28
    const-string v0, "BVH data"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 29
    const-string v0, "submeshes"

    invoke-static {p2, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 30
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 31
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 32
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v4, v3}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->add(Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 34
    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p2

    const/4 v0, 0x1

    if-lez p2, :cond_1

    move v1, v0

    :cond_1
    const-string p2, "at least one triangle"

    .line 35
    invoke-static {v1, p2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 36
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 37
    new-instance p2, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-direct {p2, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;-><init>([B)V

    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    .line 38
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/scene/Mesh;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 40
    const-string v0, "JME meshes"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 41
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;-><init>([Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    .line 42
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "at least one triangle"

    invoke-static {p1, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 43
    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    .line 44
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(ZZJ)J
.end method

.method private static native hasBvh(J)Z
.end method

.method public static isSerializingBvh()Z
    .locals 1

    sget-boolean v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->serializeBvh:Z

    return v0
.end method

.method private static native recalcAabb(J)V
.end method

.method private static native setOptimizedBvh(JJLcom/jme3/math/Vector3f;)V
.end method

.method public static setSerializingBvh(Z)V
    .locals 0

    sput-boolean p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->serializeBvh:Z

    return-void
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public countMeshTriangles()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v0

    return v0
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countVertices()I

    move-result v0

    return v0
.end method

.method public countSubmeshes()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    return v0
.end method

.method public createShape()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    .line 2
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    const/16 v2, 0x400

    if-gt v0, v2, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v3, v2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->countTriangles()I

    move-result v3

    const v4, 0x1fffff

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submesh has too many triangles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many submeshes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 9
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape(ZZJ)J

    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 11
    iget-boolean v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 12
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 13
    iget v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    .line 14
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    if-nez v2, :cond_3

    .line 15
    new-instance v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;-><init>(Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 17
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setOptimizedBvh(JJLcom/jme3/math/Vector3f;)V

    :goto_1
    return-void
.end method

.method public getBvh()Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    return-object v0
.end method

.method public getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countSubmeshes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "submesh index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->getSubmesh(I)Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "doublePrecision"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "nativePlatform"

    const-class v2, Lcom/jme3/system/Platform;

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/system/Platform;

    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->isDoublePrecision()Z

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatform()Lcom/jme3/system/Platform;

    move-result-object v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bvh"

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    :goto_1
    const-string v0, "nativeMesh"

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    const-string v0, "useCompression"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->recalcAabb(J)V

    return-void
.end method

.method public serializeBvh()[B
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->serialize()[B

    move-result-object v0

    return-object v0
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->hasBvh(J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-direct {p1, p0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;-><init>(Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;)V

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    :cond_0
    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;
    .locals 6

    const-string v0, "splitting triangle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;->countTriangles()I

    move-result v4

    :goto_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    iget-boolean v4, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    aget-object v5, p1, v1

    invoke-direct {v2, v4, v5}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>(ZLcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    iget-boolean v2, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    aget-object p1, p1, v3

    invoke-direct {v1, v2, p1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>(ZLcom/jme3/bullet/collision/shapes/infos/CompoundMesh;)V

    aput-object v1, v0, v3

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    goto :goto_3

    :cond_3
    :goto_2
    if-lez v2, :cond_4

    aput-object p0, v0, v1

    goto :goto_3

    :cond_4
    if-lez v4, :cond_5

    aput-object p0, v0, v3

    :cond_5
    :goto_3
    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    sget-boolean v0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->serializeBvh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->bvh:Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    const-string v2, "bvh"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :cond_0
    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->isDoublePrecision()Z

    move-result v0

    const-string v2, "doublePrecision"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatform()Lcom/jme3/system/Platform;

    move-result-object v0

    const-string v2, "nativePlatform"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->nativeMesh:Lcom/jme3/bullet/collision/shapes/infos/CompoundMesh;

    const-string v2, "nativeMesh"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;->useCompression:Z

    const-string v1, "useCompression"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
