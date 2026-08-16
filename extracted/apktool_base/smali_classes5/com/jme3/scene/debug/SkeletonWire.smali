.class public Lcom/jme3/scene/debug/SkeletonWire;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private boneLengths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private numConnections:I

.field private skeleton:Lcom/jme3/animation/Skeleton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jme3/scene/debug/SkeletonWire;-><init>(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/animation/Skeleton;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Skeleton;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 4
    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 5
    invoke-direct {p0, v4}, Lcom/jme3/scene/debug/SkeletonWire;->countConnections(Lcom/jme3/animation/Bone;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 7
    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v0

    if-eqz p2, :cond_1

    .line 8
    iput-object p2, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    mul-int/lit8 v0, v0, 0x2

    .line 9
    :cond_1
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    mul-int/lit8 v3, v0, 0x3

    .line 10
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    const/4 v6, 0x3

    invoke-virtual {v1, v4, v6, v5, v3}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    .line 13
    new-instance v1, Lcom/jme3/scene/VertexBuffer;

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v1, v3}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    const/4 v3, 0x2

    if-eqz p2, :cond_2

    move v4, v0

    goto :goto_1

    .line 14
    :cond_2
    iget v4, p0, Lcom/jme3/scene/debug/SkeletonWire;->numConnections:I

    mul-int/2addr v4, v3

    :goto_1
    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 15
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1, v5, v3, v6, v4}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    if-eqz p2, :cond_3

    :goto_2
    if-ge v2, v0, :cond_4

    int-to-short p1, v2

    .line 17
    invoke-virtual {v4, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/animation/Skeleton;->getRoots()[Lcom/jme3/animation/Bone;

    move-result-object p1

    array-length p2, p1

    :goto_3
    if-ge v2, p2, :cond_4

    aget-object v0, p1, v2

    .line 19
    invoke-direct {p0, v4, v0}, Lcom/jme3/scene/debug/SkeletonWire;->writeConnections(Ljava/nio/ShortBuffer;Lcom/jme3/animation/Bone;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 21
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method private countConnections(Lcom/jme3/animation/Bone;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Bone;

    iget v1, p0, Lcom/jme3/scene/debug/SkeletonWire;->numConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/scene/debug/SkeletonWire;->numConnections:I

    invoke-direct {p0, v0}, Lcom/jme3/scene/debug/SkeletonWire;->countConnections(Lcom/jme3/animation/Bone;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeConnections(Ljava/nio/ShortBuffer;Lcom/jme3/animation/Bone;)V
    .locals 3

    invoke-virtual {p2}, Lcom/jme3/animation/Bone;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/animation/Bone;

    iget-object v2, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2, p2}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v2, v1}, Lcom/jme3/animation/Skeleton;->getBoneIndex(Lcom/jme3/animation/Bone;)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    invoke-direct {p0, p1, v1}, Lcom/jme3/scene/debug/SkeletonWire;->writeConnections(Ljava/nio/ShortBuffer;Lcom/jme3/animation/Bone;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "numConnections"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/debug/SkeletonWire;->numConnections:I

    const-string v0, "skeleton"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Skeleton;

    iput-object v0, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v0, "blKeys"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const-string v2, "blValues"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    goto :goto_1

    :cond_0
    array-length v1, v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateGeometry()V
    .locals 8

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v3}, Lcom/jme3/animation/Skeleton;->getBoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    invoke-virtual {v3, v2}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getModelSpacePosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/jme3/animation/Bone;->getModelSpaceRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    sget-object v5, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v3

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/debug/SkeletonWire;->numConnections:I

    const-string v1, "numConnections"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/debug/SkeletonWire;->skeleton:Lcom/jme3/animation/Skeleton;

    const-string v1, "skeleton"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v0, v0, [F

    iget-object v4, p0, Lcom/jme3/scene/debug/SkeletonWire;->boneLengths:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v1, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v0, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    const-string v2, "blKeys"

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    const-string v1, "blValues"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    :cond_1
    return-void
.end method
