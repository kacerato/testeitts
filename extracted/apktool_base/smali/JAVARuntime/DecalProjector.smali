.class public LJAVARuntime/DecalProjector;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "VFX",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a Decal Projector component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um componente Decal Projector."
    .end annotation

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/DecalProjector;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;)V
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
    iput-object p1, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/DecalProjector;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAngleLimit()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal angle limit. 1 means no limit and 0 keeps only surfaces facing the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o limite de angulo do decal. 1 significa sem limite e 0 mantem apenas superficies apontadas para o projetor."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getAngleLimit()F

    move-result v0

    return v0
.end method

.method public getBackfaceLimit()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the backface limit used for pixels whose surface normal faces the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o limite de backface usado para pixels cuja normal aponta para o projetor."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getBackfaceLimit()F

    move-result v0

    return v0
.end method

.method public getDecalIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for the projected color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada na cor projetada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getDecalIndex()I

    move-result v0

    return v0
.end method

.method public getEmissiveIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for projected emissive color."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada na cor emissive projetada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getEmissiveIndex()I

    move-result v0

    return v0
.end method

.method public getGlobalIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the global intensity applied to the whole projected decal."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a intensidade global aplicada ao decal projetado inteiro."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getGlobalIntensity()F

    move-result v0

    return v0
.end method

.method public getHeightIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for projected height parallax."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada no parallax de altura projetado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getHeightIndex()I

    move-result v0

    return v0
.end method

.method public getHeightIntensity()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the intensity used by projected height parallax."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a intensidade usada pelo parallax de altura projetado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getHeightIntensity()F

    move-result v0

    return v0
.end method

.method public getHeightQuality()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the projected height parallax quality from 0 to 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a qualidade do parallax de altura projetado de 0 a 1."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getHeightQuality()F

    move-result v0

    return v0
.end method

.method public getMetallicIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for projected metallic."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada no metallic projetado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getMetallicIndex()I

    move-result v0

    return v0
.end method

.method public getNormalIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for projected normal distortion."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada na distorcao de normal projetada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getNormalIndex()I

    move-result v0

    return v0
.end method

.method public getOpacityIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used as projected opacity mask."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada como mascara de opacidade projetada."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getOpacityIndex()I

    move-result v0

    return v0
.end method

.method public getProjectionWidth()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the width of the decal projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a largura do volume de projecao do decal."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getProjectionWidth()F

    move-result v0

    return v0
.end method

.method public getReach()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the depth reach of the decal projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o alcance em profundidade do volume de projecao do decal."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getReach()F

    move-result v0

    return v0
.end method

.method public getRoughnessIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the decal texture index used for projected roughness."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o indice da textura de decal usada no roughness projetado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getRoughnessIndex()I

    move-result v0

    return v0
.end method

.method public setAngleLimit(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal angle limit. 1 means no limit and 0 keeps only surfaces facing the projector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o limite de angulo do decal. 1 significa sem limite e 0 mantem apenas superficies apontadas para o projetor."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angleLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleLimit"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setAngleLimit(F)V

    return-void
.end method

.method public setBackfaceLimit(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the backface limit used for pixels whose surface normal faces the projector. 0 culls them and 1 allows them."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o limite de backface usado para pixels cuja normal aponta para o projetor. 0 remove e 1 permite."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "backfaceLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backfaceLimit"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setBackfaceLimit(F)V

    return-void
.end method

.method public setDecalIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for the projected color. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada na cor projetada. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "decalIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decalIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setDecalIndex(I)V

    return-void
.end method

.method public setEmissiveIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for projected emissive color. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada na cor emissive projetada. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "emissiveIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissiveIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setEmissiveIndex(I)V

    return-void
.end method

.method public setGlobalIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the global intensity applied to the whole projected decal. The value is clamped between 0 and 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a intensidade global aplicada ao decal projetado inteiro. O valor e limitado entre 0 e 1."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "globalIntensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalIntensity"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setGlobalIntensity(F)V

    return-void
.end method

.method public setHeightIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for projected height parallax. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada no parallax de altura projetado. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "heightIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setHeightIndex(I)V

    return-void
.end method

.method public setHeightIntensity(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the intensity used by projected height parallax."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a intensidade usada pelo parallax de altura projetado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "heightIntensity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightIntensity"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setHeightIntensity(F)V

    return-void
.end method

.method public setHeightQuality(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the projected height parallax quality from 0 to 1."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a qualidade do parallax de altura projetado de 0 a 1."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "heightQuality"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightQuality"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setHeightQuality(F)V

    return-void
.end method

.method public setMetallicIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for projected metallic. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada no metallic projetado. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "metallicIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallicIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setMetallicIndex(I)V

    return-void
.end method

.method public setNormalIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for projected normal distortion. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada na distorcao de normal projetada. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "normalIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setNormalIndex(I)V

    return-void
.end method

.method public setOpacityIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used as projected opacity mask. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada como mascara de opacidade projetada. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "opacityIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opacityIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setOpacityIndex(I)V

    return-void
.end method

.method public setProjectionWidth(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the width of the decal projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a largura do volume de projecao do decal."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "projectionWidth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectionWidth"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setProjectionWidth(F)V

    return-void
.end method

.method public setReach(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the depth reach of the decal projection volume."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o alcance em profundidade do volume de projecao do decal."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "reach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reach"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setReach(F)V

    return-void
.end method

.method public setRoughnessIndex(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the decal texture index used for projected roughness. Use -1 to disable it."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o indice da textura de decal usada no roughness projetado. Use -1 para desativar."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "roughnessIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughnessIndex"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/DecalProjector;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->setRoughnessIndex(I)V

    return-void
.end method
