.class public Lcom/jme3/util/mikktspace/MikkTSpaceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/mikktspace/MikkTSpaceContext;


# instance fields
.field private final index:Lcom/jme3/scene/mesh/IndexBuffer;

.field mesh:Lcom/jme3/scene/Mesh;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/Mesh;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getIndicesAsList()Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->index:Lcom/jme3/scene/mesh/IndexBuffer;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method private getIndex(II)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->index:Lcom/jme3/scene/mesh/IndexBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->get(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getNormal([FII)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->getIndex(II)I

    move-result p2

    iget-object p3, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    aput v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    aput v0, p1, p2

    const/4 p2, 0x2

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    aput p3, p1, p2

    return-void
.end method

.method public getNumFaces()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v0

    return v0
.end method

.method public getNumVerticesOfFace(I)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getPosition([FII)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->getIndex(II)I

    move-result p2

    iget-object p3, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    aput v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    aput v0, p1, p2

    const/4 p2, 0x2

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    aput p3, p1, p2

    return-void
.end method

.method public getTexCoord([FII)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->getIndex(II)I

    move-result p2

    iget-object p3, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p3, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x0

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    aput v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->get()F

    move-result p3

    aput p3, p1, p2

    return-void
.end method

.method public setTSpace([F[FFFZII)V
    .locals 0

    return-void
.end method

.method public setTSpaceBasic([FFII)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->getIndex(II)I

    move-result p3

    iget-object p4, p0, Lcom/jme3/util/mikktspace/MikkTSpaceImpl;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p4, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    mul-int/lit8 p3, p3, 0x4

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p4}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method
