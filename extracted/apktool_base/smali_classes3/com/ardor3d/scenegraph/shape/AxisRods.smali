.class public Lcom/ardor3d/scenegraph/shape/AxisRods;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L

.field protected static final xAxisColor:Lcom/ardor3d/math/ColorRGBA;

.field protected static final yAxisColor:Lcom/ardor3d/math/ColorRGBA;

.field protected static final zAxisColor:Lcom/ardor3d/math/ColorRGBA;


# instance fields
.field protected length:D

.field protected rightHanded:Z

.field protected width:D

.field protected xAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

.field protected yAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

.field protected zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxisColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v1, v2, v4}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/scenegraph/shape/AxisRods;->yAxisColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxisColor:Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ardor3d/scenegraph/shape/AxisRods;-><init>(Ljava/lang/String;ZD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZD)V
    .locals 9

    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    mul-double v7, p3, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/ardor3d/scenegraph/shape/AxisRods;-><init>(Ljava/lang/String;ZDD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDD)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 5
    iput-wide p3, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    .line 6
    iput-wide p5, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    .line 7
    iput-boolean p2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->rightHanded:Z

    .line 8
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    .line 9
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    .line 10
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/AxisRods;->buildAxis()V

    return-void
.end method


# virtual methods
.method public buildAxis()V
    .locals 11

    new-instance v6, Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    iget-wide v4, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    const-string v1, "_xAxis"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/shape/Arrow;-><init>(Ljava/lang/String;DD)V

    iput-object v6, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    sget-object v0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxisColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v6, v0}, Lcom/ardor3d/scenegraph/shape/Arrow;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide/16 v4, 0x0

    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v3, v0, v9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->xAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    new-instance v0, Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v3, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    iget-wide v5, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    const-string v2, "yAxis"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/scenegraph/shape/Arrow;-><init>(Ljava/lang/String;DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->yAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    sget-object v1, Lcom/ardor3d/scenegraph/shape/AxisRods;->yAxisColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/shape/Arrow;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->yAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    mul-double v5, v0, v9

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->yAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    new-instance v0, Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v3, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    iget-wide v5, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    const-string v2, "zAxis"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ardor3d/scenegraph/shape/Arrow;-><init>(Ljava/lang/String;DD)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    sget-object v1, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxisColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/shape/Arrow;->setSolidColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->rightHanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    mul-double v7, v0, v9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    new-instance v1, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix3;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-virtual/range {v1 .. v7}, Lcom/ardor3d/math/Matrix3;->fromAngles(DDD)Lcom/ardor3d/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    iget-object v2, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    neg-double v0, v0

    mul-double v7, v0, v9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(DDD)V

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->zAxis:Lcom/ardor3d/scenegraph/shape/Arrow;

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Node;->attachChild(Lcom/ardor3d/scenegraph/Spatial;)I

    return-void
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

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

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    const-string v0, "width"

    const-wide/high16 v1, 0x3fc0000000000000L    # 0.125

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/InputCapsule;->readDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    const-string v0, "rightHanded"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->rightHanded:Z

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/AxisRods;->buildAxis()V

    return-void
.end method

.method public setLength(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    return-void
.end method

.method public setWidth(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

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

    iget-wide v1, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->length:D

    const-string v3, "length"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-wide v7, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->width:D

    const-string v9, "width"

    const-wide/high16 v10, 0x3fc0000000000000L    # 0.125

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/ardor3d/util/export/OutputCapsule;->write(DLjava/lang/String;D)V

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/shape/AxisRods;->rightHanded:Z

    const-string v1, "rightHanded"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
