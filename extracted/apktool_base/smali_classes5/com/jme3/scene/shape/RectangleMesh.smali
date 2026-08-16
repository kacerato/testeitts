.class public Lcom/jme3/scene/shape/RectangleMesh;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private flipped:Z

.field private normal:Lcom/jme3/math/Vector3f;

.field private rectangle:Lcom/jme3/math/Rectangle;

.field private texCoords:[Lcom/jme3/math/Vector2f;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/jme3/math/Rectangle;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v4, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/math/Rectangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0, v0}, Lcom/jme3/scene/shape/RectangleMesh;-><init>(Lcom/jme3/math/Rectangle;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Rectangle;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    .line 4
    new-instance p1, Lcom/jme3/math/Vector2f;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v1, Lcom/jme3/math/Vector2f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v3, Lcom/jme3/math/Vector2f;

    invoke-direct {v3, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v4, Lcom/jme3/math/Vector2f;

    invoke-direct {v4, v0, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    filled-new-array {p1, v1, v3, v4}, [Lcom/jme3/math/Vector2f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    .line 6
    invoke-virtual {p0}, Lcom/jme3/scene/shape/RectangleMesh;->updateMesh()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/jme3/math/Rectangle;

    invoke-direct {v0, p1, p2, p3}, Lcom/jme3/math/Rectangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-direct {p0, v0}, Lcom/jme3/scene/shape/RectangleMesh;-><init>(Lcom/jme3/math/Rectangle;)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Mesh;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Rectangle;

    iput-object p2, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    iget-object p2, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/math/Vector2f;

    iput-object p2, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    iget-object p2, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public flip()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    iget-boolean v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    invoke-virtual {p0}, Lcom/jme3/scene/shape/RectangleMesh;->updateMesh()V

    return-void
.end method

.method public getNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRectangle()Lcom/jme3/math/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    return-object v0
.end method

.method public getTexCoords()[Lcom/jme3/math/Vector2f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    return-object v0
.end method

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

    new-instance v0, Lcom/jme3/math/Rectangle;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5, v4, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/math/Rectangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const-string v1, "rectangle"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Rectangle;

    iput-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v4, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, v3, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v3, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v5, Lcom/jme3/math/Vector2f;

    invoke-direct {v5, v4, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    filled-new-array {v0, v1, v2, v5}, [Lcom/jme3/math/Vector2f;

    move-result-object v0

    const-string v1, "texCoords"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    const-string v0, "normal"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    const-string v0, "flipped"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    return-void
.end method

.method public setRectangle(Lcom/jme3/math/Rectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {p0}, Lcom/jme3/scene/shape/RectangleMesh;->updateMesh()V

    return-void
.end method

.method public setTexCoords([Lcom/jme3/math/Vector2f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Lcom/jme3/scene/shape/RectangleMesh;->updateMesh()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture coordinates are 4 vertices, therefore a Vector2f array of length 4 must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateMesh()V
    .locals 15

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {v0}, Lcom/jme3/math/Rectangle;->getA()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {v1}, Lcom/jme3/math/Rectangle;->getB()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {v2}, Lcom/jme3/math/Rectangle;->getC()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    invoke-virtual {v3}, Lcom/jme3/math/Rectangle;->calculateD()Lcom/jme3/math/Vector3f;

    move-result-object v3

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    iget v11, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v12, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    const/16 v13, 0xc

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v5, v13, v14

    const/4 v5, 0x1

    aput v6, v13, v5

    const/4 v5, 0x2

    aput v0, v13, v5

    const/4 v0, 0x3

    aput v7, v13, v0

    const/4 v6, 0x4

    aput v8, v13, v6

    const/4 v6, 0x5

    aput v1, v13, v6

    const/4 v1, 0x6

    aput v9, v13, v1

    const/4 v6, 0x7

    aput v10, v13, v6

    const/16 v6, 0x8

    aput v3, v13, v6

    const/16 v3, 0x9

    aput v11, v13, v3

    const/16 v3, 0xa

    aput v12, v13, v3

    const/16 v3, 0xb

    aput v2, v13, v3

    invoke-virtual {p0, v4, v0, v13}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v3, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0, v2, v5, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget-object v2, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jme3/math/Rectangle;->calculateNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    :cond_0
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    iget-object v3, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    filled-new-array {v3, v3, v3, v3}, [Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    iget-boolean v2, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-virtual {p0, v2, v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v1, [S

    fill-array-data v1, :array_1

    invoke-virtual {p0, v2, v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    :array_0
    .array-data 2
        0x1s
        0x0s
        0x3s
        0x3s
        0x2s
        0x1s
    .end array-data

    :array_1
    .array-data 2
        0x3s
        0x0s
        0x1s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->rectangle:Lcom/jme3/math/Rectangle;

    new-instance v1, Lcom/jme3/math/Rectangle;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v5, v4, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v1, v2, v3, v6}, Lcom/jme3/math/Rectangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const-string v2, "rectangle"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->texCoords:[Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1, v5, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v2, Lcom/jme3/math/Vector2f;

    invoke-direct {v2, v4, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v3, Lcom/jme3/math/Vector2f;

    invoke-direct {v3, v4, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance v6, Lcom/jme3/math/Vector2f;

    invoke-direct {v6, v5, v4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    filled-new-array {v1, v2, v3, v6}, [Lcom/jme3/math/Vector2f;

    move-result-object v1

    const-string v2, "texCoords"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->normal:Lcom/jme3/math/Vector3f;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/scene/shape/RectangleMesh;->flipped:Z

    const-string v1, "flipped"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
