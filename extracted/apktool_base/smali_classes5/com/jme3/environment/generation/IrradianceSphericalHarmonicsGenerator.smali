.class public Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;
.super Lcom/jme3/environment/generation/RunnableWithProgress;
.source "SourceFile"


# instance fields
.field private final app:Lcom/jme3/app/Application;

.field private sourceMap:Lcom/jme3/texture/TextureCubeMap;

.field private store:Lcom/jme3/light/LightProbe;


# direct methods
.method public constructor <init>(Lcom/jme3/app/Application;Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/app/Application;",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/jme3/environment/generation/RunnableWithProgress;-><init>(Lcom/jme3/environment/generation/JobProgressListener;)V

    iput-object p1, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->app:Lcom/jme3/app/Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->app:Lcom/jme3/app/Application;

    new-instance v1, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;

    invoke-direct {v1, p0}, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$1;-><init>(Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;)V

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :try_start_0
    iget-object v0, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->sourceMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-static {v0}, Lcom/jme3/environment/util/EnvMapUtils;->getSphericalHarmonicsCoefficents(Lcom/jme3/texture/TextureCubeMap;)[Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/environment/util/EnvMapUtils;->prepareShCoefs([Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->store:Lcom/jme3/light/LightProbe;

    invoke-virtual {v1, v0}, Lcom/jme3/light/LightProbe;->setShCoeffs([Lcom/jme3/math/Vector3f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->app:Lcom/jme3/app/Application;

    new-instance v1, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$2;

    invoke-direct {v1, p0}, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator$2;-><init>(Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;)V

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setGenerationParam(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->sourceMap:Lcom/jme3/texture/TextureCubeMap;

    iput-object p2, p0, Lcom/jme3/environment/generation/IrradianceSphericalHarmonicsGenerator;->store:Lcom/jme3/light/LightProbe;

    invoke-virtual {p0}, Lcom/jme3/environment/generation/RunnableWithProgress;->reset()V

    return-void
.end method
