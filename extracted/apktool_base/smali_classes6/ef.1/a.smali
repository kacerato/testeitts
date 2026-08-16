.class public Lef/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lef/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lef/a;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/scene/Node;Lef/a$b;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lef/a;->e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V

    new-instance p0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {p0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Geometry;

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lef/a;->a:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v3

    if-nez v3, :cond_6

    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    invoke-direct {v3, v2}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v5, Lef/a$a;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v5

    :goto_2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getUsage()Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v6

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v7}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v7

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v8}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8, v5}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    sget-object v3, Lef/a;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "geom {0} misses buffer {1}. Creating"

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/VertexBuffer;

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v4, Lef/a;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "removing {0} from {1}"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method

.method public static b(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p3, v0, v0}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/2addr v2, p1

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Ljava/nio/FloatBuffer;IILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V
    .locals 6

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    mul-int/2addr p1, p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/2addr v2, p2

    if-ge v1, v2, :cond_1

    mul-int v2, v1, p2

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p4, v0, v0}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int v3, p1, v2

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p3, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x2

    iget v5, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V
    .locals 5

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iput v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p3, v0, v0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/2addr v2, p1

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p2, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lef/a;->e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Geometry;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static f([Ljava/lang/String;)V
    .locals 3

    new-instance p0, Lcom/jme3/scene/Mesh;

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x2

    const/16 v2, 0x8

    new-array v2, v2, [S

    fill-array-data v2, :array_1

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "g1"

    invoke-direct {v0, v1, p0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-static {p0, v0}, Lef/a;->j(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V

    invoke-static {v0}, Lef/a;->m(Lcom/jme3/scene/Mesh;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x0s
    .end array-data
.end method

.method public static g(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/scene/Geometry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lef/a;->h(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/scene/Geometry;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/material/Material;

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/jme3/material/Material;->contentEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/Material;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Lcom/jme3/scene/Mesh;

    invoke-direct {v4}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-static {v2, v4}, Lef/a;->j(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V

    if-eqz p1, :cond_4

    invoke-static {v2, v4}, Lef/a;->i(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V

    :cond_4
    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->updateCounts()V

    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batch["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static i(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/scene/Geometry;",
            ">;",
            "Lcom/jme3/scene/Mesh;",
            ")V"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Geometry;

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    if-eq v2, v1, :cond_c

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Geometry;

    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v2

    :cond_3
    if-nez v1, :cond_4

    new-array v1, v2, [I

    :cond_4
    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    invoke-virtual {v3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-array v0, v2, [[I

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_6

    aget v5, v1, v3

    new-array v5, v5, [I

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-array v1, v2, [Lcom/jme3/scene/VertexBuffer;

    new-array v3, v2, [I

    new-array v5, v2, [I

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/scene/Geometry;

    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v9

    move v10, v4

    :goto_3
    if-ge v10, v2, :cond_7

    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v11

    sget-object v12, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    if-ne v11, v12, :cond_8

    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ShortBuffer;

    move v12, v4

    :goto_4
    invoke-virtual {v11}, Ljava/nio/Buffer;->limit()I

    move-result v13

    if-ge v12, v13, :cond_9

    aget-object v13, v0, v10

    aget v14, v3, v10

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->get()S

    move-result v15

    const v16, 0xffff

    and-int v15, v15, v16

    aget v16, v5, v10

    add-int v15, v15, v16

    aput v15, v13, v14

    aget v13, v3, v10

    add-int/2addr v13, v8

    aput v13, v3, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/jme3/scene/Mesh;->getLodLevel(I)Lcom/jme3/scene/VertexBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/IntBuffer;

    move v12, v4

    :goto_5
    invoke-virtual {v11}, Ljava/nio/Buffer;->limit()I

    move-result v13

    if-ge v12, v13, :cond_9

    aget-object v13, v0, v10

    aget v14, v3, v10

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->get()I

    move-result v15

    aget v16, v5, v10

    add-int v15, v15, v16

    aput v15, v13, v14

    aget v13, v3, v10

    add-int/2addr v13, v8

    aput v13, v3, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    aget v11, v5, v10

    add-int/2addr v11, v9

    aput v11, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    if-ge v4, v2, :cond_b

    new-instance v3, Lcom/jme3/scene/VertexBuffer;

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-direct {v3, v5}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    aput-object v3, v1, v4

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    aget-object v7, v0, v4

    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual {v3, v5, v8, v6, v7}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Lcom/jme3/scene/Mesh;->setLodLevels([Lcom/jme3/scene/VertexBuffer;)V

    :cond_c
    :goto_7
    return-void
.end method

.method public static j(Ljava/util/Collection;Lcom/jme3/scene/Mesh;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/scene/Geometry;",
            ">;",
            "Lcom/jme3/scene/Mesh;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [I

    new-array v3, v1, [Lcom/jme3/scene/VertexBuffer$Format;

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Z

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/scene/Geometry;

    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getVertexCount()I

    move-result v13

    add-int/2addr v9, v13

    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getTriangleCount()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    sget-object v13, Lef/a$a;->a:[I

    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jme3/scene/Mesh;->getMode()Lcom/jme3/scene/Mesh$Mode;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v13, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    const/4 v14, 0x3

    goto :goto_1

    :pswitch_1
    sget-object v13, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    const/4 v14, 0x2

    goto :goto_1

    :pswitch_2
    sget-object v13, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jme3/scene/Mesh;->getBufferList()Lcom/jme3/util/SafeArrayList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/jme3/scene/VertexBuffer;

    array-length v6, v15

    move-object/from16 v16, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v17, v15, v5

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    move/from16 v19, v6

    aget v6, v2, v18

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v9

    move/from16 v20, v10

    sget-object v10, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    if-eq v9, v10, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v9

    if-ne v6, v9, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The geometry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " buffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has different number of components than the rest of the meshes (this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v9

    aput v9, v2, v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/scene/VertexBuffer;->isNormalized()Z

    move-result v9

    aput-boolean v9, v4, v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v18

    move/from16 v6, v19

    move/from16 v10, v20

    goto/16 :goto_2

    :cond_2
    move/from16 v18, v9

    move/from16 v20, v10

    invoke-virtual {v12}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getMaxNumWeights()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v8, :cond_4

    if-ne v8, v13, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot combine different primitive types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v14, v2, v5

    move-object v8, v13

    move-object/from16 v5, v16

    move/from16 v9, v18

    move/from16 v10, v20

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->setMaxNumWeights(I)V

    invoke-virtual {v0, v8}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    const/high16 v5, 0x10000

    if-lt v9, v5, :cond_6

    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v6, v3, v5

    goto :goto_5

    :cond_6
    sget-object v5, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v6, v3, v5

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_9

    aget v6, v2, v5

    if-nez v6, :cond_7

    goto :goto_8

    :cond_7
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_8

    aget-object v6, v3, v5

    aget v7, v2, v5

    invoke-static {v6, v7, v10}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v6

    goto :goto_7

    :cond_8
    aget-object v6, v3, v5

    aget v7, v2, v5

    invoke-static {v6, v7, v9}, Lcom/jme3/scene/VertexBuffer;->createBuffer(Lcom/jme3/scene/VertexBuffer$Format;II)Ljava/nio/Buffer;

    move-result-object v6

    :goto_7
    new-instance v7, Lcom/jme3/scene/VertexBuffer;

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-direct {v7, v8}, Lcom/jme3/scene/VertexBuffer;-><init>(Lcom/jme3/scene/VertexBuffer$Type;)V

    sget-object v8, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    aget v11, v2, v5

    aget-object v12, v3, v5

    invoke-virtual {v7, v8, v11, v12, v6}, Lcom/jme3/scene/VertexBuffer;->setupData(Lcom/jme3/scene/VertexBuffer$Usage;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    aget-boolean v6, v4, v5

    invoke-virtual {v7, v6}, Lcom/jme3/scene/VertexBuffer;->setNormalized(Z)V

    invoke-virtual {v0, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer;)V

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/Geometry;

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v7

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->computeWorldMatrix()V

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getWorldMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v6

    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v8

    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v1, :cond_11

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v11

    aget-object v11, v11, v10

    invoke-virtual {v7, v11}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v11

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v12

    aget-object v12, v12, v10

    invoke-virtual {v0, v12}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v12

    if-eqz v11, :cond_a

    if-nez v12, :cond_b

    :cond_a
    move/from16 v17, v1

    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_b
    sget-object v13, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    if-ne v13, v10, :cond_d

    aget v11, v2, v10

    invoke-virtual {v7}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Mesh;->getIndexBuffer()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v13

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v9, :cond_a

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v11, :cond_c

    mul-int v16, v14, v11

    add-int v0, v16, v15

    invoke-virtual {v12, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    add-int v16, v5, v14

    mul-int v16, v16, v11

    move/from16 v17, v1

    add-int v1, v16, v15

    invoke-virtual {v13, v1, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    goto :goto_d

    :cond_c
    move/from16 v17, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    goto :goto_c

    :cond_d
    move/from16 v17, v1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, v10, :cond_e

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v12}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v1, v6}, Lef/a;->d(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V

    goto :goto_b

    :cond_e
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, v10, :cond_f

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v12}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-static {v0, v4, v1, v6}, Lef/a;->b(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V

    goto :goto_b

    :cond_f
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, v10, :cond_10

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getDataReadOnly()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v12}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v11}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v11

    invoke-static {v0, v4, v11, v1, v6}, Lef/a;->c(Ljava/nio/FloatBuffer;IILjava/nio/FloatBuffer;Lcom/jme3/math/Matrix4f;)V

    goto/16 :goto_b

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v12, v4, v8}, Lcom/jme3/scene/VertexBuffer;->copyElements(ILcom/jme3/scene/VertexBuffer;II)V

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    goto/16 :goto_a

    :cond_11
    move/from16 v17, v1

    const/4 v0, 0x0

    add-int/2addr v4, v8

    add-int/2addr v5, v9

    move-object/from16 v0, p1

    goto/16 :goto_9

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Lcom/jme3/scene/Node;Z)Lcom/jme3/scene/Node;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lef/a;->e(Lcom/jme3/scene/Spatial;Ljava/util/List;)V

    invoke-static {v0, p1}, Lef/a;->h(Ljava/util/Collection;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    return-object p0
.end method

.method public static l(Lcom/jme3/scene/Node;)Lcom/jme3/scene/Spatial;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lef/a;->k(Lcom/jme3/scene/Node;Z)Lcom/jme3/scene/Node;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/jme3/scene/Mesh;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4

    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Type;->values()[Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getBufferType()Lcom/jme3/scene/VertexBuffer$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumElements()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-string v4, "["

    move v5, v0

    :goto_2
    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v2, v3, v5}, Lcom/jme3/scene/VertexBuffer;->getElementComponent(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/jme3/scene/VertexBuffer;->setElementComponent(IILjava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lcom/jme3/scene/VertexBuffer;->getElementComponent(II)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jme3/scene/VertexBuffer;->getNumComponents()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
