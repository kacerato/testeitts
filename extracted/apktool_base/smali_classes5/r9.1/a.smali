.class public Lr9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/jme3/bullet/objects/PhysicsSoftBody;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "softBody"
        }
    .end annotation

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

    if-eqz v3, :cond_4

    mul-int/lit8 v4, v3, 0x4

    invoke-static {v2, v4}, Lr9/a;->b(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->copyFaces(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    mul-int/lit8 v5, v3, 0x3

    if-lt v4, v5, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    mul-int/lit8 v5, v4, 0x3

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v6, v8, :cond_1

    if-gt v7, v8, :cond_1

    if-gt v5, v8, :cond_1

    if-eq v6, v7, :cond_0

    if-eq v7, v5, :cond_0

    if-eq v5, v6, :cond_0

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
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Face %d gera tetra degenerado com v\u00e9rtices repetidos: [%d, %d, %d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Face %d usa \u00edndice inv\u00e1lido: [%d, %d, %d], m\u00e1ximo permitido \u00e9 %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->appendTetras(Lcom/jme3/scene/mesh/IndexBuffer;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Buffer de faces inconsistente: esperado %d entradas, mas tem %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SoftBody n\u00e3o possui faces para gerar tetras."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(II)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexCount",
            "indexCount"
        }
    .end annotation

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p0

    new-instance p1, Lcom/jme3/scene/mesh/IndexIntBuffer;

    invoke-direct {p1, p0}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    return-object p1
.end method
