.class public Lcom/jme3/environment/EnvironmentProbeControl;
.super Lcom/jme3/light/LightProbe;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/scene/control/Control;


# static fields
.field private static instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private bakeNeeded:Z

.field private enabled:Z

.field private envMapSize:I

.field private filter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;"
        }
    .end annotation
.end field

.field private frustumFar:F

.field private frustumNear:F

.field private requiredSavableResults:Z

.field private spatial:Lcom/jme3/scene/Spatial;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/jme3/environment/EnvironmentProbeControl;->instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/light/LightProbe;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    const/16 v1, 0x100

    .line 3
    iput v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->envMapSize:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->requiredSavableResults:Z

    const v1, 0x3a83126f    # 0.001f

    .line 5
    iput v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    .line 6
    const-string v1, "none"

    iput-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->enabled:Z

    .line 8
    new-instance v0, Lcom/jme3/environment/a;

    invoke-direct {v0, p0}, Lcom/jme3/environment/a;-><init>(Lcom/jme3/environment/EnvironmentProbeControl;)V

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->filter:Ljava/util/function/Predicate;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/environment/EnvironmentProbeControl;->instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/jme3/light/LightProbe$AreaType;->Spherical:Lcom/jme3/light/LightProbe$AreaType;

    invoke-virtual {p0, v0}, Lcom/jme3/light/LightProbe;->setAreaType(Lcom/jme3/light/LightProbe$AreaType;)V

    .line 11
    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getArea()Lcom/jme3/light/ProbeArea;

    move-result-object v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {v0, v1}, Lcom/jme3/light/ProbeArea;->setRadius(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jme3/environment/EnvironmentProbeControl;-><init>()V

    .line 13
    iput p2, p0, Lcom/jme3/environment/EnvironmentProbeControl;->envMapSize:I

    .line 14
    iput-object p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public static synthetic a(Lcom/jme3/environment/EnvironmentProbeControl;Lcom/jme3/scene/Geometry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/environment/EnvironmentProbeControl;->lambda$new$0(Lcom/jme3/scene/Geometry;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/jme3/scene/Geometry;)Z
    .locals 2

    const-string v0, "tags.env"

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tags.env.env"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static tagGlobal(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lcom/jme3/environment/EnvironmentProbeControl;->tagGlobal(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tags.env"

    invoke-virtual {p0, v1, v0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static untagGlobal(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lcom/jme3/environment/EnvironmentProbeControl;->untagGlobal(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    const-string v0, "tags.env"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/control/Control;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFrustumFar()F
    .locals 1

    iget v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    return v0
.end method

.method public getFrustumNear()F
    .locals 1

    iget v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    return v0
.end method

.method public getSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->enabled:Z

    return v0
.end method

.method public isRequiredSavableResults()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->requiredSavableResults:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/LightProbe;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->enabled:Z

    const-string v1, "spatial"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iput-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "size"

    const/16 v3, 0x100

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->envMapSize:I

    const-string v1, "requiredSavableResults"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->requiredSavableResults:Z

    const-string v1, "bakeNeeded"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string p1, "frustumFar"

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    const-string p1, "frustumNear"

    const v1, 0x3a83126f    # 0.001f

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    const-string p1, "envProbeControlUUID"

    const-string v1, "none"

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    return-void
.end method

.method public rebake()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    return-void
.end method

.method public rebakeNow(Lcom/jme3/renderer/RenderManager;)V
    .locals 8

    new-instance v7, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;

    iget-object v2, p0, Lcom/jme3/environment/EnvironmentProbeControl;->assetManager:Lcom/jme3/asset/AssetManager;

    const/4 v4, 0x0

    iget v6, p0, Lcom/jme3/environment/EnvironmentProbeControl;->envMapSize:I

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p1

    move v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;-><init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;II)V

    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentProbeControl;->isRequiredSavableResults()Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/jme3/environment/baker/GenericEnvBaker;->setTexturePulling(Z)V

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v3, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    iget v4, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    iget-object v5, p0, Lcom/jme3/environment/EnvironmentProbeControl;->filter:Ljava/util/function/Predicate;

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/environment/baker/GenericEnvBaker;->bakeEnvironment(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;FFLjava/util/function/Predicate;)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSpecularIBL()V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSphericalHarmonicsCoefficients()V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/light/LightProbe;->setPrefilteredMap(Lcom/jme3/texture/TextureCubeMap;)V

    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    array-length p1, p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/jme3/light/LightProbe;->setNbMipMaps(I)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->getSphericalHarmonicsCoefficients()[Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/light/LightProbe;->setShCoeffs([Lcom/jme3/math/Vector3f;)V

    sget-object p1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/light/LightProbe;->setPosition(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0, v0}, Lcom/jme3/light/LightProbe;->setReady(Z)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/GenericEnvBaker;->clean()V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentProbeControl;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    invoke-virtual {p0, p1}, Lcom/jme3/environment/EnvironmentProbeControl;->rebakeNow(Lcom/jme3/renderer/RenderManager;)V

    :cond_1
    return-void
.end method

.method public setAssetManager(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->enabled:Z

    return-void
.end method

.method public setFrustumFar(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    return-void
.end method

.method public setFrustumNear(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    return-void
.end method

.method public setRequiredSavableResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->requiredSavableResults:Z

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This control has already been added to a Spatial"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/jme3/scene/Spatial;->addLight(Lcom/jme3/light/Light;)V

    :cond_2
    return-void
.end method

.method public tag(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentProbeControl;->tag(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tags.env.env"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public untag(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/EnvironmentProbeControl;->untag(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tags.env.env"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/LightProbe;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->spatial:Lcom/jme3/scene/Spatial;

    const-string v1, "spatial"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->envMapSize:I

    const-string v1, "size"

    const/16 v3, 0x100

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->requiredSavableResults:Z

    const-string v1, "requiredSavableResults"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->bakeNeeded:Z

    const-string v1, "bakeNeeded"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumFar:F

    const-string v1, "frustumFar"

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->frustumNear:F

    const-string v1, "frustumNear"

    const v2, 0x3a83126f    # 0.001f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/environment/EnvironmentProbeControl;->uuid:Ljava/lang/String;

    const-string v1, "envProbeControlUUID"

    const-string v2, "none"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
