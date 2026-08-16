.class public Lcom/ardor3d/scenegraph/Point;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/scenegraph/Point$PointType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private _antialiased:Z

.field private final _attenuationCoefficients:Ljava/nio/FloatBuffer;

.field private _maxPointSize:F

.field private _minPointSize:F

.field private _pointSize:F

.field private _pointType:Lcom/ardor3d/scenegraph/Point$PointType;

.field private _useDistanceAttenuation:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    const-string v1, "point"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/Point;-><init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/scenegraph/Point$PointType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Point;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    .line 17
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    const/high16 p1, 0x42800000    # 64.0f

    .line 18
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    .line 19
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    .line 20
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ardor3d/scenegraph/Point;->setupData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 21
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object p2, Lcom/ardor3d/renderer/IndexMode;->Points:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x368637bd    # 4.0E-6f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;[Lcom/ardor3d/math/type/ReadOnlyVector2;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    .line 8
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    const/high16 p1, 0x42800000    # 64.0f

    .line 9
    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    .line 10
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    .line 11
    invoke-static {p2}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-static {p3}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-static {p4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;

    move-result-object p3

    invoke-static {p5}, Lcom/ardor3d/scenegraph/FloatBufferDataUtil;->makeNew([Lcom/ardor3d/math/type/ReadOnlyVector2;)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ardor3d/scenegraph/Point;->setupData(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/ardor3d/scenegraph/FloatBufferData;)V

    .line 12
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    sget-object p2, Lcom/ardor3d/renderer/IndexMode;->Points:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x368637bd    # 4.0E-6f
        0x0
    .end array-data
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

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

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public enableDistanceAttenuation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    return-void
.end method

.method public getMaxPointSize()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    return v0
.end method

.method public getMinPointSize()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    return v0
.end method

.method public getPointSize()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    return v0
.end method

.method public getPointType()Lcom/ardor3d/scenegraph/Point$PointType;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    return-object v0
.end method

.method public isAntialiased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    return v0
.end method

.method public isPointSprite()Z
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    sget-object v1, Lcom/ardor3d/scenegraph/Point$PointType;->PointSprite:Lcom/ardor3d/scenegraph/Point$PointType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "pointSize"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    const-string v0, "antialiased"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    const-class v0, Lcom/ardor3d/scenegraph/Point$PointType;

    sget-object v3, Lcom/ardor3d/scenegraph/Point$PointType;->Point:Lcom/ardor3d/scenegraph/Point$PointType;

    const-string v4, "pointType"

    invoke-interface {p1, v4, v0, v3}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/scenegraph/Point$PointType;

    iput-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    const-string v0, "useDistanceAttenuation"

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    const-string v0, "attenuationCoefficients"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    :goto_0
    const-string v0, "minPointSize"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    const-string v0, "maxPointSize"

    const/high16 v1, 0x42800000    # 64.0f

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x368637bd    # 4.0E-6f
        0x0
    .end array-data
.end method

.method public render(Lcom/ardor3d/renderer/Renderer;)V
    .locals 8

    iget v1, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Point;->isAntialiased()Z

    move-result v2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Point;->isPointSprite()Z

    move-result v3

    iget-boolean v4, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    iget-object v5, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    iget v7, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/ardor3d/renderer/Renderer;->setupPointParameters(FZZZLjava/nio/FloatBuffer;FF)V

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->render(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public setAntialiased(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    return-void
.end method

.method public setDistanceAttenuationCoefficients(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setMaxPointSize(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    return-void
.end method

.method public setMinPointSize(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    return-void
.end method

.method public setPointSize(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    return-void
.end method

.method public setPointType(Lcom/ardor3d/scenegraph/Point$PointType;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointSize:F

    const-string v1, "pointSize"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_antialiased:Z

    const-string v1, "antialiased"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_pointType:Lcom/ardor3d/scenegraph/Point$PointType;

    const-string v1, "pointType"

    sget-object v4, Lcom/ardor3d/scenegraph/Point$PointType;->Point:Lcom/ardor3d/scenegraph/Point$PointType;

    invoke-interface {p1, v0, v1, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/Point;->_useDistanceAttenuation:Z

    const-string v1, "useDistanceAttenuation"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Point;->_attenuationCoefficients:Ljava/nio/FloatBuffer;

    const-string v1, "attenuationCoefficients"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/nio/FloatBuffer;Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_minPointSize:F

    const-string v1, "minPointSize"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/scenegraph/Point;->_maxPointSize:F

    const-string v1, "maxPointSize"

    const/high16 v2, 0x42800000    # 64.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
