.class public Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagBytes:Ljava/lang/String; = "bytes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 3
    const-string v0, "mesh shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getOptimizedBvh(J)J

    move-result-wide v0

    .line 6
    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 8
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 9
    invoke-static {p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->deSerialize([B)J

    move-result-wide v0

    .line 10
    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method private static native deSerialize([B)J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->finalizeNative(J)V

    return-void
.end method

.method private static native getAabb(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native getEscapeIndex(JI)I
.end method

.method private static native getNumLeafNodes(J)I
.end method

.method private static native getNumNodes(J)I
.end method

.method private static native getNumSubtreeHeaders(J)I
.end method

.method private static native getOptimizedBvh(J)J
.end method

.method private static native getPartId(JI)I
.end method

.method private static native getQuantization(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getTraversalMode(J)I
.end method

.method private static native getTriangleIndex(JI)I
.end method

.method private static native isCompressed(J)Z
.end method

.method private static native isLeafNode(JI)Z
.end method

.method private static native serialize(J)[B
.end method

.method private static native setTraversalMode(JI)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->serialize()[B

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->deSerialize([B)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    return-void
.end method

.method public copyAabb(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v0, v1, v3, v2}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getAabb(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v3, v2}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public copyQuantization(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getQuantization(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public countLeafNodes()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumLeafNodes(J)I

    move-result v0

    return v0
.end method

.method public countNodes()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumNodes(J)I

    move-result v0

    return v0
.end method

.method public countSubtreeHeaders()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumSubtreeHeaders(J)I

    move-result v0

    return v0
.end method

.method public escapeIndex(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumNodes(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "node index"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getEscapeIndex(JI)I

    move-result p1

    return p1
.end method

.method public isCompressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->isCompressed(J)Z

    move-result v0

    return v0
.end method

.method public isLeafNode(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumNodes(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3
    const-string v3, "node index"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->isLeafNode(JI)Z

    move-result p1

    return p1
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->jmeClone()Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public partId(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumNodes(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "node index"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getPartId(JI)I

    move-result p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "bytes"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readByteArray(Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->deSerialize([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method public serialize()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->serialize(J)[B

    move-result-object v0

    return-object v0
.end method

.method public setTraversalMode(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    const-string v2, "mode"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->setTraversalMode(JI)V

    return-void
.end method

.method public traversalMode()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getTraversalMode(J)I

    move-result v0

    return v0
.end method

.method public triangleIndex(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getNumNodes(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, "node index"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->getTriangleIndex(JI)I

    move-result p1

    return p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/BoundingValueHierarchy;->serialize()[B

    move-result-object v0

    const-string v1, "bytes"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([BLjava/lang/String;[B)V

    return-void
.end method
