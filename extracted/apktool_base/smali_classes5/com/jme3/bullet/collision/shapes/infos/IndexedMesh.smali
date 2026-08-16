.class public Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final tagIndexInts:Ljava/lang/String; = "indexInts"

.field private static final tagIndexStride:Ljava/lang/String; = "indexStride"

.field private static final tagNumTriangles:Ljava/lang/String; = "numTriangles"

.field private static final tagNumVertices:Ljava/lang/String; = "numVertices"

.field private static final tagVertexStride:Ljava/lang/String; = "vertexStride"

.field private static final tagVertices:Ljava/lang/String; = "vertices"

.field private static final vpt:I = 0x3


# instance fields
.field public indexStride:I

.field public indices:Lcom/jme3/scene/mesh/IndexBuffer;

.field public numTriangles:I

.field public numVertices:I

.field public vertexPositions:Ljava/nio/FloatBuffer;

.field public vertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 68
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 69
    instance-of v0, p1, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "not a compound shape"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 70
    const-string v2, "mesh resolution"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 71
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 72
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createIntDebug(JI)J

    move-result-wide p1

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    .line 74
    sget-object v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-static {p1, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->countVertices(J)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    .line 76
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/16 v0, 0xc

    .line 77
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    .line 78
    invoke-static {p1, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->countTriangles(J)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    mul-int/lit8 v0, v0, 0x3

    .line 79
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    .line 81
    invoke-virtual {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 82
    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    .line 83
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-static {p1, p2, v1, v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->fillBuffersInt(JLjava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;IZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 3
    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 4
    const-string v2, "resolution"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    invoke-static {p1, p2}, Lcom/jme3/bullet/util/DebugShapeFactory;->getDebugTriangles(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/jme3/scene/Mesh;

    invoke-direct {p2}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 7
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    if-eqz p3, :cond_0

    .line 8
    invoke-static {p2}, Lif/p;->a(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;

    move-result-object p2

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p2, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->create(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Transform;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 11
    const-string v0, "JME mesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 12
    invoke-static {p1}, Lif/p;->t(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    const-string v1, "mode=Triangles/TriangleFan/TriangleStrip"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->create(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Transform;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Transform;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 15
    const-string v0, "JME mesh"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 16
    invoke-static {p1}, Lif/p;->t(Lcom/jme3/scene/Mesh;)Z

    move-result v0

    const-string v1, "mode=Triangles/TriangleFan/TriangleStrip"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 17
    const-string v0, "transform"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->create(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Transform;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;)V
    .locals 6

    .line 33
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 34
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 36
    rem-int/lit8 v1, v0, 0x9

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "limit a multiple of 9"

    invoke-static {v1, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 37
    new-instance v1, Ljf/a;

    invoke-direct {v1, p1, v2, v0}, Ljf/a;-><init>(Ljava/nio/FloatBuffer;II)V

    .line 38
    invoke-virtual {v1}, Ljf/a;->a()I

    move-result v3

    iput v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v3, v3, 0x3

    .line 39
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/16 v3, 0xc

    .line 40
    iput v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    .line 41
    div-int/lit8 v0, v0, 0x3

    .line 42
    div-int/lit8 v3, v0, 0x3

    iput v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    .line 43
    iget v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    invoke-static {v3, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    .line 44
    invoke-virtual {v3}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    .line 45
    iput v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    .line 46
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 47
    invoke-virtual {v1, v2}, Ljf/a;->b(I)I

    move-result v4

    .line 48
    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v5, v2, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    mul-int/lit8 v5, v2, 0x3

    .line 49
    invoke-static {p1, v5, v3}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    mul-int/lit8 v4, v4, 0x3

    .line 50
    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-static {v5, v4, v3}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V
    .locals 6

    .line 52
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 53
    const-string v0, "position buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 54
    const-string v0, "index buffer"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 56
    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "capacity a multiple of 3"

    invoke-static {v1, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 57
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 58
    rem-int/lit8 v5, v1, 0x3

    if-nez v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 59
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    .line 60
    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/16 p1, 0xc

    .line 61
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    .line 62
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    .line 63
    invoke-static {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    .line 64
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    .line 65
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    .line 66
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;[I)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 20
    const-string v0, "position array"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 21
    const-string v0, "index array"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 22
    array-length v0, p2

    .line 23
    rem-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "length a multiple of 3"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 24
    array-length v1, p1

    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    .line 25
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/16 p1, 0xc

    .line 26
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    .line 27
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    .line 28
    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    .line 30
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    .line 31
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    .line 32
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method private static native countTriangles(J)I
.end method

.method private static native countVertices(J)I
.end method

.method private create(Lcom/jme3/scene/Mesh;Lcom/jme3/math/Transform;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    :cond_0
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljf/f;->w(Lcom/jme3/math/Transform;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2, p2}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result p2

    iput p2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    if-gtz p2, :cond_3

    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    :cond_3
    iget p2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    mul-int/lit8 p2, p2, 0x3

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    invoke-static {v0, p2}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    :goto_1
    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v2, v1, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer$Format;->getComponentSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method private static native createByte(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;IIII)J
.end method

.method private static native createInt(Ljava/nio/IntBuffer;Ljava/nio/FloatBuffer;IIII)J
.end method

.method private static native createIntDebug(JI)J
.end method

.method private static native createIntPointer(JJIIII)J
.end method

.method private static native createShort(Ljava/nio/ShortBuffer;Ljava/nio/FloatBuffer;IIII)J
.end method

.method private static native fillBuffersInt(JLjava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->finalizeNative(J)V

    return-void
.end method

.method private static putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget p1, p3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p0

    iget p1, p3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p0

    iget p1, p3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private static splitTriangle(Lcom/jme3/math/Triangle;Lcom/jme3/math/Plane;[Ljava/nio/FloatBuffer;)V
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v2

    invoke-virtual {p1, v1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v3

    invoke-virtual {p1, p0}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    cmpl-float v8, v3, v4

    if-nez v8, :cond_0

    cmpl-float v8, p1, v4

    if-nez v8, :cond_0

    aget-object p1, p2, v7

    invoke-static {p1, v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p1, p2, v6

    invoke-static {p1, v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_0
    cmpg-float v8, v2, v4

    if-gtz v8, :cond_1

    cmpg-float v9, v3, v4

    if-gtz v9, :cond_1

    cmpg-float v9, p1, v4

    if-gtz v9, :cond_1

    aget-object p1, p2, v7

    invoke-static {p1, v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_1
    if-ltz v5, :cond_2

    cmpl-float v9, v3, v4

    if-ltz v9, :cond_2

    cmpl-float v9, p1, v4

    if-ltz v9, :cond_2

    aget-object p1, p2, v6

    invoke-static {p1, v0, v1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    if-ltz v5, :cond_3

    cmpg-float v10, v3, v4

    if-gtz v10, :cond_3

    cmpg-float v10, p1, v4

    if-gtz v10, :cond_3

    sub-float v3, v2, v3

    div-float v3, v2, v3

    invoke-static {v3, v0, v1, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    sub-float p1, v2, p1

    div-float/2addr v2, p1

    invoke-static {v2, v0, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v2, p2, v7

    invoke-static {v2, v1, p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v7

    invoke-static {p0, v1, p1, v3}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v6

    invoke-static {p0, v0, v3, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_3
    if-gtz v8, :cond_4

    cmpl-float v10, v3, v4

    if-ltz v10, :cond_4

    cmpl-float v10, p1, v4

    if-ltz v10, :cond_4

    neg-float v4, v2

    sub-float/2addr v3, v2

    div-float v3, v4, v3

    invoke-static {v3, v0, v1, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    sub-float/2addr p1, v2

    div-float/2addr v4, p1

    invoke-static {v4, v0, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v2, p2, v6

    invoke-static {v2, v1, p0, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v6

    invoke-static {p0, v1, p1, v3}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v7

    invoke-static {p0, v0, v3, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto/16 :goto_0

    :cond_4
    if-gtz v8, :cond_5

    cmpl-float v10, v3, v4

    if-ltz v10, :cond_5

    cmpg-float v10, p1, v4

    if-gtz v10, :cond_5

    neg-float v4, v2

    sub-float v2, v3, v2

    div-float/2addr v4, v2

    invoke-static {v4, v0, v1, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    sub-float p1, v3, p1

    div-float/2addr v3, p1

    invoke-static {v3, v1, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v3, p2, v7

    invoke-static {v3, v0, p1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v7

    invoke-static {p0, v0, v2, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v6

    invoke-static {p0, v1, p1, v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_5
    if-ltz v5, :cond_6

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_6

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_6

    sub-float v4, v2, v3

    div-float/2addr v2, v4

    invoke-static {v2, v0, v1, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    neg-float v4, v3

    sub-float/2addr p1, v3

    div-float/2addr v4, p1

    invoke-static {v4, v1, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v3, p2, v6

    invoke-static {v3, v0, p1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v6

    invoke-static {p0, v0, v2, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p0, p2, v7

    invoke-static {p0, v1, p1, v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_6
    if-gtz v8, :cond_7

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_7

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_7

    neg-float v4, v2

    sub-float v2, p1, v2

    div-float/2addr v4, v2

    invoke-static {v4, v0, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    neg-float v4, v3

    sub-float/2addr p1, v3

    div-float/2addr v4, p1

    invoke-static {v4, v1, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v3, p2, v7

    invoke-static {v3, v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object v1, p2, v7

    invoke-static {v1, v0, p1, v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p2, p2, v6

    invoke-static {p2, v2, p1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_7
    sub-float v4, v2, p1

    div-float/2addr v2, v4

    invoke-static {v2, v0, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    sub-float p1, v3, p1

    div-float/2addr v3, p1

    invoke-static {v3, v1, p0, v9}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    aget-object v3, p2, v6

    invoke-static {v3, v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object v1, p2, v6

    invoke-static {v1, v0, p1, v2}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    aget-object p2, p2, v7

    invoke-static {p2, v2, p1, p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->putTriangle(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    invoke-static {v1, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p2, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v2, v0, v1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method public copyIndices()Ljava/nio/IntBuffer;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->size()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public copyTriangle(ILcom/jme3/math/Triangle;)V
    .locals 5

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "triangle index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "destination"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x3

    mul-int/2addr p1, v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_0

    add-int v3, p1, v2

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v4, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    mul-int/2addr v3, v0

    invoke-static {v4, v3, v1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {p2, v2, v1}, Lcom/jme3/math/Triangle;->set(ILcom/jme3/math/Vector3f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copyTriangles()Ljava/nio/FloatBuffer;
    .locals 7

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public copyVertexPositions()Ljava/nio/FloatBuffer;
    .locals 4

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public countTriangles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    return v0
.end method

.method public countVertices()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    return v0
.end method

.method public createMesh()V
    .locals 7

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    iget v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    iget v6, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createInt(Ljava/nio/IntBuffer;Ljava/nio/FloatBuffer;IIII)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexStride = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    iget v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    iget v6, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createShort(Ljava/nio/ShortBuffer;Ljava/nio/FloatBuffer;IIII)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v0}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    iget v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    iget v6, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createByte(Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;IIII)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public createMeshFromIntPointers(JJ)V
    .locals 8

    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    iget v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    iget v6, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    iget v7, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createIntPointer(JJIIII)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p1, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p3, "Created {0}"

    invoke-virtual {p1, p2, p3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public distinctVertices()Ljf/o;
    .locals 3

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljf/d;->c(Ljava/nio/FloatBuffer;II)Ljf/o;

    move-result-object v0

    return-object v0
.end method

.method public footprint(Lcom/jme3/math/Transform;)[Lcom/jme3/math/Vector3f;
    .locals 8

    const-string v0, "mesh-to-world transform"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->distinctVertices()Ljf/o;

    move-result-object v0

    invoke-interface {v0}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljf/d;->x(Ljava/nio/FloatBuffer;IILcom/jme3/math/Transform;)V

    div-int/lit8 p1, v1, 0x3

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    move v4, v2

    :goto_0
    if-ge v4, p1, :cond_1

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_0

    move v3, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_2

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljf/m;

    invoke-direct {p1, v0, v2, v1}, Ljf/m;-><init>(Ljava/nio/FloatBuffer;II)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljf/m;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljf/m;->h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    new-instance v4, Lcom/jme3/math/Vector3f;

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v4, v3, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v5, v3, v6, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v6, v3, v1, v7}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v7, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v7, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    filled-new-array {v4, v5, v6, v1}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    :goto_2
    const/4 v1, 0x4

    if-ge v2, v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {p1, v1, v1}, Ljf/m;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->jmeClone()Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    move-result-object v0

    return-object v0
.end method

.method public maxDistance(Lcom/jme3/math/Transform;)F
    .locals 7

    const-string v0, "meshToWorld"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x3

    invoke-static {v4, v5, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-static {p1, v0, v0}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Ljf/h;->F(Lcom/jme3/math/Vector3f;)D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-wide v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public maxMin(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    const-string v0, "store maxima"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "store minima"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1, p2}, Ljf/d;->m(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "indexStride"

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    const-string v0, "numTriangles"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    const-string v0, "numVertices"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    const-string v0, "vertexStride"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    const-string v0, "indexInts"

    new-array v3, v2, [I

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    array-length v3, v0

    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    if-ne v4, v1, :cond_0

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indexStride = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/scene/mesh/IndexBuffer;->wrapIndexBuffer(Ljava/nio/Buffer;)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    :goto_0
    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget v4, v0, v1

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v5, v1, v4}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "vertices"

    new-array v1, v2, [F

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMesh()V

    return-void
.end method

.method public split(Lcom/jme3/math/Plane;)[Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 6

    const-string v0, "splitting plane"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    mul-int/lit8 v0, v0, 0x12

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/nio/FloatBuffer;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Triangle;

    invoke-direct {v1}, Lcom/jme3/math/Triangle;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangle(ILcom/jme3/math/Triangle;)V

    invoke-static {v1, p1, v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->splitTriangle(Lcom/jme3/math/Triangle;Lcom/jme3/math/Plane;[Ljava/nio/FloatBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array v1, p1, [Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    if-eqz v3, :cond_2

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v3, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>(Ljava/nio/FloatBuffer;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v3, :cond_3

    aput-object p0, v1, v2

    goto :goto_3

    :cond_3
    if-lez v5, :cond_4

    aput-object p0, v1, v4

    :cond_4
    :goto_3
    return-object v1
.end method

.method public surfaceArea()F
    .locals 6

    new-instance v0, Lcom/jme3/math/Triangle;

    invoke-direct {v0}, Lcom/jme3/math/Triangle;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangle(ILcom/jme3/math/Triangle;)V

    invoke-static {v0}, Ljf/f;->b(Lcom/jme3/math/Triangle;)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    double-to-float v0, v1

    return v0
.end method

.method public volumeConvex()F
    .locals 8

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    new-instance v3, Lcom/jme3/math/Triangle;

    invoke-direct {v3}, Lcom/jme3/math/Triangle;-><init>()V

    :goto_0
    iget v5, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4, v3}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->copyTriangle(ILcom/jme3/math/Triangle;)V

    invoke-virtual {v3}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v3}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Ljf/i;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    double-to-float v0, v1

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    invoke-virtual {v4, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "indexInts"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    const-string v1, "indexStride"

    const/16 v4, 0xc

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    const-string v1, "numTriangles"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    const-string v1, "numVertices"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    const-string v1, "vertexStride"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    new-array v1, v0, [F

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "vertices"

    invoke-interface {p1, v1, v0, v3}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    return-void
.end method
