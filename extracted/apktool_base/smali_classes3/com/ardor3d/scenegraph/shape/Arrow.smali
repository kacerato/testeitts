.class public Lcom/ardor3d/scenegraph/shape/Arrow;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# static fields
.field protected static final rotator:Lcom/ardor3d/math/Quaternion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _length:D

.field protected _width:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ardor3d/math/Quaternion;

    invoke-direct {v0}, Lcom/ardor3d/math/Quaternion;-><init>()V

    sput-object v0, Lcom/ardor3d/scenegraph/shape/Arrow;->rotator:Lcom/ardor3d/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 3
    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 6
    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 8
    iput-wide p2, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    .line 9
    iput-wide p4, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Arrow;->buildArrow()V

    return-void
.end method


# virtual methods
.method public buildArrow()V
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/ardor3d/scenegraph/shape/Cylinder;

    iget-wide v1, v0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double v5, v1, v10

    iget-wide v7, v0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    const-string v2, "base"

    const/4 v3, 0x4

    const/16 v4, 0x10

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/ardor3d/scenegraph/shape/Cylinder;-><init>(Ljava/lang/String;IIDD)V

    sget-object v1, Lcom/ardor3d/scenegraph/shape/Arrow;->rotator:Lcom/ardor3d/math/Quaternion;

    const-wide/16 v15, 0x0

    const-wide v17, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v13, 0x0

    move-object v12, v1

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/math/Quaternion;->fromEulerAngles(DDD)Lcom/ardor3d/math/Quaternion;

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->rotatePoints(Lcom/ardor3d/math/Quaternion;)V

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->rotateNormals(Lcom/ardor3d/math/Quaternion;)V

    invoke-virtual {v0, v9}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    invoke-virtual {v9}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    new-instance v1, Lcom/ardor3d/scenegraph/shape/Pyramid;

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, v2, v4

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    div-double v8, v2, v4

    const-string v4, "tip"

    move-object v3, v1

    move-wide v5, v6

    move-wide v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/ardor3d/scenegraph/shape/Pyramid;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v12

    iget-wide v2, v0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    mul-double v15, v2, v10

    const-wide/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/ardor3d/scenegraph/MeshData;->translatePoints(DDD)V

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/Mesh;->updateModelBound()V

    return-void
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    return-wide v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "length"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    const-string v0, "width"

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    return-void
.end method

.method public setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLength(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    return-void
.end method

.method public setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Node;->getNumberOfChildren()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->getChild(I)Lcom/ardor3d/scenegraph/Spatial;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v1, p1}, Lcom/ardor3d/scenegraph/Mesh;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWidth(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_length:D

    const-string v3, "length"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/Arrow;->_width:D

    const-string v9, "width"

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    return-void
.end method
