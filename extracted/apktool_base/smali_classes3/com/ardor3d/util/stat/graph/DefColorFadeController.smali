.class public Lcom/ardor3d/util/stat/graph/DefColorFadeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/controller/SpatialController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ardor3d/scenegraph/controller/SpatialController<",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _dir:Z

.field private final _rate:D

.field private _target:Lcom/ardor3d/scenegraph/Mesh;

.field private final _targetAlpha:F


# direct methods
.method public constructor <init>(Lcom/ardor3d/scenegraph/Mesh;FD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    iput p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_targetAlpha:F

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getDefaultColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object p1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_dir:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    cmpl-double p2, p3, v0

    if-gtz p2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    cmpg-double p1, p3, v0

    if-gez p1, :cond_3

    :cond_2
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    mul-double/2addr p3, p1

    :cond_3
    iput-wide p3, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_rate:D

    return-void
.end method


# virtual methods
.method public update(DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 4

    iget-object p3, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ardor3d/math/ColorRGBA;->fetchTempInstance()Lcom/ardor3d/math/ColorRGBA;

    move-result-object p3

    iget-object v0, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getDefaultColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_rate:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    iget-boolean p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_dir:Z

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_targetAlpha:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_targetAlpha:F

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    move p1, p2

    :cond_2
    :goto_0
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p2

    sget-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p2, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    :goto_1
    invoke-virtual {p3, p1}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    iget-object p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p2, p3}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    invoke-static {p3}, Lcom/ardor3d/math/ColorRGBA;->releaseTempInstance(Lcom/ardor3d/math/ColorRGBA;)V

    iget p2, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_targetAlpha:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p1, p0}, Lcom/ardor3d/scenegraph/Spatial;->removeController(Lcom/ardor3d/scenegraph/controller/SpatialController;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/util/stat/graph/DefColorFadeController;->_target:Lcom/ardor3d/scenegraph/Mesh;

    :cond_4
    return-void
.end method
