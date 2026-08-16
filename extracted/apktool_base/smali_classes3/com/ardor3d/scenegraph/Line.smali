.class public Lcom/ardor3d/scenegraph/Line;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _antialiased:Z

.field private _lineWidth:F

.field private _stippleFactor:I

.field private _stipplePattern:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "line"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    const/4 p1, -0x1

    .line 4
    iput-short p1, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_stippleFactor:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    .line 7
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    const/4 p1, -0x1

    .line 10
    iput-short p1, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_stippleFactor:I

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    .line 13
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ardor3d/scenegraph/Line;->setupData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 14
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object p2, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;[Lcom/ardor3d/math/type/ReadOnlyVector2;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    const/4 p1, -0x1

    .line 17
    iput-short p1, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_stippleFactor:I

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    .line 20
    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-static {p3}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-static {p4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-static {p5}, Lcom/ardor3d/scenegraph/FloatBufferDataUtil;->makeNew([Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ardor3d/scenegraph/Line;->setupData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 21
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object p2, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-void
.end method

.method private setupData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v0, p1}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {p1, p3}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lcom/ardor3d/scenegraph/MeshData;->setTextureCoords(Lcom/ardor3d/scenegraph/FloatBufferData;I)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    return-void
.end method


# virtual methods
.method public appendCircle(DDDIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move/from16 v5, p7

    mul-int/lit8 v6, v5, 0x6

    iget-object v7, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v7}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/ardor3d/util/geom/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8, v7}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/ardor3d/util/geom/BufferUtils;->ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v8, v0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v8, v6}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v5

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v5, :cond_3

    if-eqz p8, :cond_0

    neg-double v14, v10

    goto :goto_1

    :cond_0
    move-wide v14, v10

    :goto_1
    invoke-static {v14, v15}, Lcom/ardor3d/math/MathUtils;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v1

    move-wide/from16 v17, v14

    if-eqz p8, :cond_1

    neg-double v13, v10

    goto :goto_2

    :cond_1
    move-wide v13, v10

    :goto_2
    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    if-lez v12, :cond_2

    add-double v0, v17, p3

    double-to-float v0, v0

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    add-double v1, v13, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-wide/from16 v1, v17

    double-to-float v0, v1

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    double-to-float v15, v13

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_3
    move-wide/from16 v16, v8

    goto :goto_4

    :cond_2
    move-wide/from16 v1, v17

    const/4 v15, 0x0

    goto :goto_3

    :goto_4
    add-double v8, v1, p3

    double-to-float v0, v8

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    add-double v8, v13, v3

    double-to-float v8, v8

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    double-to-float v0, v1

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    double-to-float v1, v13

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-double v10, v10, v16

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v8, v16

    goto :goto_0

    :cond_3
    move-wide v0, v1

    const/4 v15, 0x0

    add-double v8, v0, p3

    double-to-float v2, v8

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    double-to-float v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    return v0
.end method

.method public getStippleFactor()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/Line;->_stippleFactor:I

    return v0
.end method

.method public getStipplePattern()S
    .locals 1

    iget-short v0, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    return v0
.end method

.method public isAntialiased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "lineWidth"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    const-string v0, "stipplePattern"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readShort(Ljava/lang/String;S)S

    move-result v0

    iput-short v0, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    const-string v0, "antialiased"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    return-void
.end method

.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Line;->getLineWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Line;->getStippleFactor()I

    move-result v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Line;->getStipplePattern()S

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Line;->isAntialiased()Z

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/ardor3d/renderer/Renderer;->setupLineParameters(FISZ)V

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->render(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public setAntialiased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    return-void
.end method

.method public setStippleFactor(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/Line;->_stippleFactor:I

    return-void
.end method

.method public setStipplePattern(S)V
    .locals 0

    iput-short p1, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/Line;->_lineWidth:F

    const-string v1, "lineWidth"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-short v0, p0, Lcom/ardor3d/scenegraph/Line;->_stipplePattern:S

    const-string v1, "stipplePattern"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(SLjava/lang/String;S)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Line;->_antialiased:Z

    const-string v1, "antialiased"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
