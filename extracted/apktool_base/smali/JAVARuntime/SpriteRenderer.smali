.class public final LJAVARuntime/SpriteRenderer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Rendering",
        "Components"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/SpriteRenderer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lec/a;)LJAVARuntime/BlendingMode;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lec/a;->TRANSPARENT:Lec/a;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/BlendingMode;->valueOf(Ljava/lang/String;)LJAVARuntime/BlendingMode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/BlendingMode;)Lec/a;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, LJAVARuntime/BlendingMode;->TRANSPARENT:LJAVARuntime/BlendingMode;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lec/a;->valueOf(Ljava/lang/String;)Lec/a;

    move-result-object p0

    return-object p0
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

    const-class v0, LJAVARuntime/SpriteRenderer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getBlendingMode()LJAVARuntime/BlendingMode;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current blending mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o modo de blending atual."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getBlendingMode()Lec/a;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/SpriteRenderer;->ENUMCONVERT(Lec/a;)LJAVARuntime/BlendingMode;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the render priority."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a prioridade de renderizacao."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the animation speed used to advance the sprite index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade de animacao usada para avancar o indice do sprite."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getSpriteIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current sprite index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice atual do sprite."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getSpriteIndex()I

    move-result v0

    return v0
.end method

.method public getTextureFile()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the texture file used by this sprite renderer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arquivo de textura usado por este sprite renderer."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->getTextureFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCastShadowEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether cast shadow is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se cast shadow esta habilitado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->isCastShadow()Z

    move-result v0

    return v0
.end method

.method public isReceiveShadowEnabled()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether receive shadow is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se receive shadow esta habilitado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->isReceiveShadow()Z

    move-result v0

    return v0
.end method

.method public setBlendingMode(LJAVARuntime/BlendingMode;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current blending mode."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o modo de blending atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "blendingMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-static {p1}, LJAVARuntime/SpriteRenderer;->ENUMCONVERT(LJAVARuntime/BlendingMode;)Lec/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setBlendingMode(Lec/a;)V

    return-void
.end method

.method public setCastShadowEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables cast shadow."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita cast shadow."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "castShadow"
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

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setCastShadow(Z)V

    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the render priority."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a prioridade de renderizacao."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "priority"
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

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setPriority(I)V

    return-void
.end method

.method public setReceiveShadowEnabled(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables receive shadow."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Habilita ou desabilita receive shadow."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "receiveShadow"
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

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setReceiveShadow(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the animation speed used to advance the sprite index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade de animacao usada para avancar o indice do sprite."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setSpeed(F)V

    return-void
.end method

.method public setSpriteIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current sprite index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice atual do sprite."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "spriteIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setSpriteIndex(I)V

    return-void
.end method

.method public setTextureFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the texture file used by this sprite renderer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o arquivo de textura usado por este sprite renderer."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "textureFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/SpriteRenderer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->setTextureFile(Ljava/lang/String;)V

    return-void
.end method
