.class public Lcom/jme3/scene/control/CameraControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/control/CameraControl$ControlDirection;
    }
.end annotation


# static fields
.field private static final CAMERA_NAME:Ljava/lang/String; = "camera"

.field private static final CONTROL_DIR_NAME:Ljava/lang/String; = "controlDir"


# instance fields
.field private camera:Lcom/jme3/renderer/Camera;

.field private controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 4
    sget-object v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    .line 5
    iput-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/control/CameraControl$ControlDirection;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 7
    sget-object v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    .line 8
    iput-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    .line 9
    iput-object p2, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object p1

    iget-object v0, p1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->subtractLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Quaternion;->addLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/util/TempVars;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getControlDir()Lcom/jme3/scene/control/CameraControl$ControlDirection;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;

    sget-object v1, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    const-string v2, "controlDir"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/CameraControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    const-string v0, "camera"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/renderer/Camera;

    iput-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public setControlDir(Lcom/jme3/scene/control/CameraControl$ControlDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/CameraControl;->controlDir:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    const-string v1, "controlDir"

    sget-object v2, Lcom/jme3/scene/control/CameraControl$ControlDirection;->SpatialToCamera:Lcom/jme3/scene/control/CameraControl$ControlDirection;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/control/CameraControl;->camera:Lcom/jme3/renderer/Camera;

    const-string v1, "camera"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
