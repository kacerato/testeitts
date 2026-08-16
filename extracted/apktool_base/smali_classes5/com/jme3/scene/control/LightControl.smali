.class public Lcom/jme3/scene/control/LightControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/control/LightControl$ControlDirection;,
        Lcom/jme3/scene/control/LightControl$Axis;
    }
.end annotation


# instance fields
.field private axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

.field private controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

.field private invertAxisDirection:Z

.field private light:Lcom/jme3/light/Light;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    .line 3
    sget-object v0, Lcom/jme3/scene/control/LightControl$Axis;->Z:Lcom/jme3/scene/control/LightControl$Axis;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/light/Light;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 6
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    .line 7
    sget-object v0, Lcom/jme3/scene/control/LightControl$Axis;->Z:Lcom/jme3/scene/control/LightControl$Axis;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->validateSupportedLightType(Lcom/jme3/light/Light;)V

    .line 10
    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/light/Light;Lcom/jme3/scene/control/LightControl$ControlDirection;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 12
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    .line 13
    sget-object v0, Lcom/jme3/scene/control/LightControl$Axis;->Z:Lcom/jme3/scene/control/LightControl$Axis;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    .line 15
    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->validateSupportedLightType(Lcom/jme3/light/Light;)V

    .line 16
    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    .line 17
    iput-object p2, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-void
.end method

.method private lightToSpatial(Lcom/jme3/light/Light;)V
    .locals 8

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    instance-of v4, p1, Lcom/jme3/light/PointLight;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    check-cast p1, Lcom/jme3/light/PointLight;

    invoke-virtual {p1}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move v7, v6

    move v6, v5

    move v5, v7

    goto :goto_0

    :cond_0
    instance-of v4, p1, Lcom/jme3/light/DirectionalLight;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-boolean p1, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    instance-of v4, p1, Lcom/jme3/light/SpotLight;

    if-eqz v4, :cond_3

    check-cast p1, Lcom/jme3/light/SpotLight;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-boolean p1, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v4, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Spatial;->getLocalToWorldMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->rotateVect(Lcom/jme3/math/Vector3f;)V

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->translateVect(Lcom/jme3/math/Vector3f;)V

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Matrix4f;->rotateVect(Lcom/jme3/math/Vector3f;)V

    :cond_5
    if-eqz v5, :cond_6

    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2, p1}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v3}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_6
    if-eqz v6, :cond_7

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    :cond_7
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private spatialToLight(Lcom/jme3/light/Light;)V
    .locals 5

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-boolean v3, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    :cond_0
    instance-of v3, p1, Lcom/jme3/light/PointLight;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/jme3/light/PointLight;

    invoke-virtual {p1, v1}, Lcom/jme3/light/PointLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    instance-of v3, p1, Lcom/jme3/light/DirectionalLight;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1, v2}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/jme3/light/SpotLight;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/jme3/light/SpotLight;

    invoke-virtual {p1, v1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private validateSupportedLightType(Lcom/jme3/light/Light;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/scene/control/LightControl$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {p1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Light type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/light/Light;

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->spatialToLight(Lcom/jme3/light/Light;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->lightToSpatial(Lcom/jme3/light/Light;)V

    :goto_0
    return-void
.end method

.method public getAxisRotation()Lcom/jme3/scene/control/LightControl$Axis;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    return-object v0
.end method

.method public getControlDir()Lcom/jme3/scene/control/LightControl$ControlDirection;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-object v0
.end method

.method public getLight()Lcom/jme3/light/Light;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-object v0
.end method

.method public isInvertAxisDirection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    return v0
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

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    const-class v0, Lcom/jme3/scene/control/LightControl$ControlDirection;

    sget-object v1, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-string v2, "controlDir"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-class v0, Lcom/jme3/scene/control/LightControl$Axis;

    sget-object v1, Lcom/jme3/scene/control/LightControl$Axis;->Z:Lcom/jme3/scene/control/LightControl$Axis;

    const-string v2, "axisRotation"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/LightControl$Axis;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    const-string v0, "invertAxisDirection"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    return-void
.end method

.method public setAxisRotation(Lcom/jme3/scene/control/LightControl$Axis;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    return-void
.end method

.method public setControlDir(Lcom/jme3/scene/control/LightControl$ControlDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-void
.end method

.method public setInvertAxisDirection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    return-void
.end method

.method public setLight(Lcom/jme3/light/Light;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->validateSupportedLightType(Lcom/jme3/light/Light;)V

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[light="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", axisRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invertAxisDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", spatial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-string v1, "controlDir"

    sget-object v2, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->axisRotation:Lcom/jme3/scene/control/LightControl$Axis;

    const-string v1, "axisRotation"

    sget-object v2, Lcom/jme3/scene/control/LightControl$Axis;->Z:Lcom/jme3/scene/control/LightControl$Axis;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/jme3/scene/control/LightControl;->invertAxisDirection:Z

    const-string v1, "invertAxisDirection"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
