.class public Lcom/jme3/environment/FastLightProbeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugGui(Lcom/jme3/asset/AssetManager;Lcom/jme3/light/LightProbe;)Lcom/jme3/scene/Node;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "debug gui probe"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/jme3/environment/util/EnvMapUtils;->getCubeMapCrossDebugViewWithMipMaps(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const/high16 p1, 0x44020000    # 520.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This EnvProbe is not ready yet, try to test isReady()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeProbe(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;ILcom/jme3/math/Vector3f;FFLcom/jme3/scene/Spatial;)Lcom/jme3/light/LightProbe;
    .locals 8

    new-instance v7, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;-><init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;II)V

    const/4 p0, 0x1

    invoke-virtual {v7, p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->setTexturePulling(Z)V

    const/4 v5, 0x0

    move-object v1, p6

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/environment/baker/GenericEnvBaker;->bakeEnvironment(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;FFLjava/util/function/Predicate;)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSpecularIBL()V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSphericalHarmonicsCoefficients()V

    new-instance p1, Lcom/jme3/light/LightProbe;

    invoke-direct {p1}, Lcom/jme3/light/LightProbe;-><init>()V

    invoke-virtual {p1, p3}, Lcom/jme3/light/LightProbe;->setPosition(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/light/LightProbe;->setPrefilteredMap(Lcom/jme3/texture/TextureCubeMap;)V

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object p2

    if-eqz p2, :cond_0

    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/jme3/light/LightProbe;->setNbMipMaps(I)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->getSphericalHarmonicsCoefficients()[Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/light/LightProbe;->setShCoeffs([Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, p0}, Lcom/jme3/light/LightProbe;->setReady(Z)V

    invoke-virtual {v7}, Lcom/jme3/environment/baker/GenericEnvBaker;->clean()V

    return-object p1
.end method
