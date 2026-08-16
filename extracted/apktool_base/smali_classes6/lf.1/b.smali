.class public Llf/b;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final d:I = 0x3

.field public static final e:Ljava/util/logging/Logger;

.field public static final synthetic f:Z


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/b;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v4, "X lines"

    const/4 v5, 0x2

    const v6, 0x7fffffff

    invoke-static {v1, v4, v5, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    const-string v4, "Z lines"

    invoke-static {v2, v4, v5, v6}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    const-string v4, "line spacing"

    invoke-static {v3, v4}, Lif/E;->E(FLjava/lang/String;)Z

    .line 6
    iput v1, v0, Llf/b;->b:I

    .line 7
    iput v2, v0, Llf/b;->c:I

    mul-int v4, v1, v2

    mul-int/lit8 v6, v4, 0x3

    .line 8
    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 9
    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v2, :cond_1

    mul-int/lit8 v13, v10, 0x2

    sub-int/2addr v13, v2

    add-int/2addr v13, v12

    int-to-float v13, v13

    mul-float/2addr v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v1, :cond_0

    mul-int/lit8 v16, v15, 0x2

    sub-int v16, v16, v1

    add-int/lit8 v8, v16, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v3

    div-float/2addr v8, v14

    .line 10
    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v15, v15, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 13
    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v6, v9, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 14
    invoke-virtual {v3, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v2, v12

    mul-int/2addr v6, v2

    mul-int/2addr v6, v9

    .line 16
    invoke-static {v4, v6}, Lcom/jme3/scene/mesh/IndexBuffer;->createIndexBuffer(II)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/jme3/scene/mesh/IndexBuffer;->getFormat()Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v6

    .line 18
    invoke-virtual {v4}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v7

    .line 19
    sget-object v8, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v8, v12, v6, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILcom/jme3/scene/VertexBuffer$Format;Ljava/nio/Buffer;)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_4

    mul-int v9, v1, v8

    add-int/2addr v9, v6

    add-int/lit8 v10, v9, 0x1

    add-int v11, v9, v1

    add-int v12, v10, v1

    add-int v13, v8, v6

    .line 20
    rem-int/2addr v13, v5

    if-nez v13, :cond_3

    .line 21
    invoke-virtual {v4, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 22
    invoke-virtual {v4, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 23
    invoke-virtual {v4, v11}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 24
    invoke-virtual {v4, v12}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 25
    invoke-virtual {v4, v11}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 26
    invoke-virtual {v4, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    goto :goto_5

    .line 27
    :cond_3
    invoke-virtual {v4, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 28
    invoke-virtual {v4, v10}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 29
    invoke-virtual {v4, v12}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 30
    invoke-virtual {v4, v12}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 31
    invoke-virtual {v4, v11}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    .line 32
    invoke-virtual {v4, v9}, Lcom/jme3/scene/mesh/IndexBuffer;->put(I)Lcom/jme3/scene/mesh/IndexBuffer;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 33
    :cond_5
    invoke-virtual {v7}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setDynamic()V

    return-void
.end method


# virtual methods
.method public a(IILcom/jme3/math/Vector3f;)V
    .locals 3

    iget v0, p0, Llf/b;->c:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "x index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget v0, p0, Llf/b;->b:I

    add-int/lit8 v0, v0, -0x1

    const-string v1, "z index"

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    const-string v0, "desired location"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p0, Llf/b;->b:I

    mul-int/2addr v1, p1

    add-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x3

    invoke-static {v0, p2, p3}, Ljf/d;->p(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "xLines"

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llf/b;->b:I

    const-string v0, "zLines"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Llf/b;->c:I

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Llf/b;->b:I

    const-string v1, "xLines"

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Llf/b;->c:I

    const-string v1, "zLines"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
