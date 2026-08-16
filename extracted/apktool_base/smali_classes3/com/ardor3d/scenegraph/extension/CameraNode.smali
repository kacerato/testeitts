.class public Lcom/ardor3d/scenegraph/extension/CameraNode;
.super Lcom/ardor3d/scenegraph/Node;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _camera:Lcom/ardor3d/renderer/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ardor3d/scenegraph/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Node;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method


# virtual methods
.method public getCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "camera"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/renderer/Camera;

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method

.method public setCamera(Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    return-void
.end method

.method public updateFromCamera()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    iget-object v2, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v2}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v3}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Lcom/ardor3d/math/Matrix3;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p0, v4}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    invoke-virtual {p0, v3}, Lcom/ardor3d/scenegraph/Spatial;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    invoke-static {v4}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    return-void
.end method

.method public updateWorldTransform(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->updateWorldTransform(Z)V

    iget-object p1, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getWorldRotation()Lcom/ardor3d/math/type/ReadOnlyMatrix3;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v1, p1, v0}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    :cond_0
    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Node;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/extension/CameraNode;->_camera:Lcom/ardor3d/renderer/Camera;

    const-string v1, "camera"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    return-void
.end method
