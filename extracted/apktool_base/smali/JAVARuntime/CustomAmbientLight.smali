.class public LJAVARuntime/CustomAmbientLight;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/CustomAmbientLight;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/CustomAmbientLight;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/CustomAmbientLight;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAmbientLightResolutionID()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomAmbientLight;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;->getAmbientLightResolutionID()I

    move-result v0

    return v0
.end method

.method public getLux()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomAmbientLight;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;->getLux()F

    move-result v0

    return v0
.end method

.method public setAmbientLightResolutionID(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "ambientLightReso"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomAmbientLight;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;->setAmbientLightResolutionID(I)V

    return-void
.end method

.method public setLux(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "lux"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomAmbientLight;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/CustomAmbientLight;->setLux(F)V

    return-void
.end method
