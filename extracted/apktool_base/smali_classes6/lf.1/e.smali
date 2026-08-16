.class public Llf/e;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;

.field public static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/e;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;I)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v0, "number of segments"

    invoke-static {p3, v0}, Lif/E;->F(ILjava/lang/String;)Z

    .line 4
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    add-int/lit8 v0, p3, 0x1

    mul-int/lit8 v1, v0, 0x3

    .line 5
    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 7
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    int-to-float v5, v4

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 8
    invoke-static {v5, p1, p2, v2}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 9
    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v6, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v6, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    mul-int/lit8 p1, p3, 0x2

    .line 11
    invoke-static {v0, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    :goto_1
    if-ge v3, p3, :cond_1

    .line 15
    invoke-virtual {p1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v3, v3, 0x1

    .line 16
    invoke-virtual {p1, v3}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 18
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 19
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
