.class public Lcom/jme3/environment/LightProbeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/environment/LightProbeFactory$JobState;,
        Lcom/jme3/environment/LightProbeFactory$JobListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;Lcom/jme3/app/Application;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/jme3/environment/LightProbeFactory;->generatePbrMaps(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;Lcom/jme3/app/Application;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V

    return-void
.end method

.method private static generatePbrMaps(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;Lcom/jme3/app/Application;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/TextureCubeMap;",
            "Lcom/jme3/light/LightProbe;",
            "Lcom/jme3/app/Application;",
            "Lcom/jme3/environment/util/EnvMapUtils$GenerationType;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;

    new-instance v2, Lcom/jme3/environment/LightProbeFactory$JobState;

    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/jme3/environment/LightProbeFactory$JobState;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    new-instance v3, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;

    new-instance v4, Lcom/jme3/environment/LightProbeFactory$JobListener;

    invoke-direct {v4, p4, v2, p1, v0}, Lcom/jme3/environment/LightProbeFactory$JobListener;-><init>(Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/environment/LightProbeFactory$JobState;Lcom/jme3/light/LightProbe;I)V

    invoke-direct {v3, p2, v4}, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;-><init>(Lcom/jme3/app/Application;Lcom/jme3/environment/generation/JobProgressListener;)V

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v4

    invoke-static {p0}, Lcom/jme3/environment/util/EnvMapUtils;->duplicateCubeMap(Lcom/jme3/texture/TextureCubeMap;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->setGenerationParam(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;)V

    iget-object v5, v2, Lcom/jme3/environment/LightProbeFactory$JobState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v5, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;

    new-instance v6, Lcom/jme3/environment/LightProbeFactory$JobListener;

    invoke-direct {v6, p4, v2, p1, v3}, Lcom/jme3/environment/LightProbeFactory$JobListener;-><init>(Lcom/jme3/environment/generation/JobProgressListener;Lcom/jme3/environment/LightProbeFactory$JobState;Lcom/jme3/light/LightProbe;I)V

    invoke-direct {v5, p2, v3, v6}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;-><init>(Lcom/jme3/app/Application;ILcom/jme3/environment/generation/JobProgressListener;)V

    aput-object v5, v1, v3

    invoke-static {p0}, Lcom/jme3/environment/util/EnvMapUtils;->duplicateCubeMap(Lcom/jme3/texture/TextureCubeMap;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object v6

    sget-object v8, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->None:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v10

    move v7, v4

    move-object v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->setGenerationParam(Lcom/jme3/texture/TextureCubeMap;ILcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/texture/TextureCubeMap;)V

    iget-object v5, v2, Lcom/jme3/environment/LightProbeFactory$JobState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
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
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The LightProbe is not ready yet, please test isReady()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeProbe(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;)Lcom/jme3/light/LightProbe;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/jme3/environment/LightProbeFactory;->makeProbe(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;

    move-result-object p0

    return-object p0
.end method

.method public static makeProbe(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/environment/EnvironmentCamera;",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;)",
            "Lcom/jme3/light/LightProbe;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->Fast:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-static {p0, p1, v0, p2}, Lcom/jme3/environment/LightProbeFactory;->makeProbe(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;

    move-result-object p0

    return-object p0
.end method

.method public static makeProbe(Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/environment/EnvironmentCamera;",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/environment/util/EnvMapUtils$GenerationType;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;)",
            "Lcom/jme3/light/LightProbe;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/light/LightProbe;

    invoke-direct {v0}, Lcom/jme3/light/LightProbe;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentCamera;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightProbe;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/jme3/environment/EnvironmentCamera;->getSize()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/jme3/environment/EnvironmentCamera;->getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/jme3/environment/util/EnvMapUtils;->createPrefilteredEnvMap(ILcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/light/LightProbe;->setPrefilteredMap(Lcom/jme3/texture/TextureCubeMap;)V

    .line 6
    new-instance v1, Lcom/jme3/environment/LightProbeFactory$1;

    invoke-direct {v1, v0, p0, p2, p3}, Lcom/jme3/environment/LightProbeFactory$1;-><init>(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/jme3/environment/EnvironmentCamera;->snapshot(Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)V

    return-object v0
.end method

.method public static updateProbe(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/light/LightProbe;",
            "Lcom/jme3/environment/EnvironmentCamera;",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;)",
            "Lcom/jme3/light/LightProbe;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->Fast:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/jme3/environment/LightProbeFactory;->updateProbe(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;

    move-result-object p0

    return-object p0
.end method

.method public static updateProbe(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/light/LightProbe;",
            "Lcom/jme3/environment/EnvironmentCamera;",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/environment/util/EnvMapUtils$GenerationType;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Lcom/jme3/light/LightProbe;",
            ">;)",
            "Lcom/jme3/light/LightProbe;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/environment/EnvironmentCamera;->setPosition(Lcom/jme3/math/Vector3f;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/light/LightProbe;->setReady(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/jme3/environment/EnvironmentCamera;->getSize()I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/jme3/environment/EnvironmentCamera;->getImageFormat(Lcom/jme3/renderer/Renderer;)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jme3/environment/util/EnvMapUtils;->createPrefilteredEnvMap(ILcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/light/LightProbe;->setPrefilteredMap(Lcom/jme3/texture/TextureCubeMap;)V

    .line 7
    new-instance v0, Lcom/jme3/environment/LightProbeFactory$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/jme3/environment/LightProbeFactory$2;-><init>(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/jme3/environment/EnvironmentCamera;->snapshot(Lcom/jme3/scene/Spatial;Lcom/jme3/environment/generation/JobProgressListener;)V

    return-object p0
.end method
