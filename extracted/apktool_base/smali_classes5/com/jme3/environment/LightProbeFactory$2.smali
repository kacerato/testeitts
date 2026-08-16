.class Lcom/jme3/environment/LightProbeFactory$2;
.super Lcom/jme3/environment/generation/JobProgressAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/environment/LightProbeFactory;->updateProbe(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/scene/Spatial;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)Lcom/jme3/light/LightProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/environment/generation/JobProgressAdapter<",
        "Lcom/jme3/texture/TextureCubeMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$envCam:Lcom/jme3/environment/EnvironmentCamera;

.field final synthetic val$genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

.field final synthetic val$listener:Lcom/jme3/environment/generation/JobProgressListener;

.field final synthetic val$probe:Lcom/jme3/light/LightProbe;


# direct methods
.method public constructor <init>(Lcom/jme3/light/LightProbe;Lcom/jme3/environment/EnvironmentCamera;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$probe:Lcom/jme3/light/LightProbe;

    iput-object p2, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$envCam:Lcom/jme3/environment/EnvironmentCamera;

    iput-object p3, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    iput-object p4, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$listener:Lcom/jme3/environment/generation/JobProgressListener;

    invoke-direct {p0}, Lcom/jme3/environment/generation/JobProgressAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/jme3/texture/TextureCubeMap;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$probe:Lcom/jme3/light/LightProbe;

    iget-object v1, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$envCam:Lcom/jme3/environment/EnvironmentCamera;

    invoke-virtual {v1}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    iget-object v3, p0, Lcom/jme3/environment/LightProbeFactory$2;->val$listener:Lcom/jme3/environment/generation/JobProgressListener;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/jme3/environment/LightProbeFactory;->access$000(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/light/LightProbe;Lcom/jme3/app/Application;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/environment/generation/JobProgressListener;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0, p1}, Lcom/jme3/environment/LightProbeFactory$2;->done(Lcom/jme3/texture/TextureCubeMap;)V

    return-void
.end method
