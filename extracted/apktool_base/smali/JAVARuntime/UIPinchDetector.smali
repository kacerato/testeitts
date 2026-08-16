.class public LJAVARuntime/UIPinchDetector;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "UI",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIPinchDetector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;)V
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
    iput-object p1, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/UIPinchDetector;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getDeadzone()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the deadzone applied to each pinch slide axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a deadzone aplicada a cada eixo do slide da pin\u00e7a."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getDeadzone()F

    move-result v0

    return v0
.end method

.method public getIntensityMultiplier()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the intensity multiplier applied to the pinch slide vector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o multiplicador de intensidade aplicado ao vetor de slide da pin\u00e7a."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getIntensityMultiplier()F

    move-result v0

    return v0
.end method

.method public getSlide()LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the combined slide vector of both fingers while the pinch gesture is active."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o vetor de slide combinado dos dois dedos enquanto o gesto de pin\u00e7a estiver ativo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getSlide()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getValue()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current pinch delta factor. Positive values mean the fingers are moving apart, negative values mean they are moving closer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o fator delta atual da pin\u00e7a. Valores positivos significam que os dedos est\u00e3o se afastando, valores negativos significam que est\u00e3o se aproximando."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->getValue()F

    move-result v0

    return v0
.end method

.method public isPinchingIn()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns true while the pinch gesture is active and the fingers are moving closer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna verdadeiro enquanto o gesto de pin\u00e7a estiver ativo e os dedos estiverem se aproximando."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->isPinchingIn()Z

    move-result v0

    return v0
.end method

.method public setDeadzone(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the deadzone applied to each pinch slide axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a deadzone aplicada a cada eixo do slide da pin\u00e7a."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "deadzone"
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

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->setDeadzone(F)V

    return-void
.end method

.method public setIntensityMultiplier(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the intensity multiplier applied to the pinch slide vector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o multiplicador de intensidade aplicado ao vetor de slide da pin\u00e7a."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "multiplier"
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

    iget-object v0, p0, LJAVARuntime/UIPinchDetector;->instance:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;->setIntensityMultiplier(F)V

    return-void
.end method
