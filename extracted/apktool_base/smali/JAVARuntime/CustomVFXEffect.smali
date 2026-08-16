.class public LJAVARuntime/CustomVFXEffect;
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
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Creates a Custom VFX Effect component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Cria um componente Custom VFX Effect."
    .end annotation

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/CustomVFXEffect;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;)V
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
    iput-object p1, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/CustomVFXEffect;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getShaderFile()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the VFX shader file used by this component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o arquivo de shader VFX usado por este componente."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->getShaderFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the internal time value used by vfxParams.time."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o valor de tempo interno usado por vfxParams.time."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->getTime()F

    move-result v0

    return v0
.end method

.method public setParam(Ljava/lang/String;F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets a float parameter declared in the VFX shader manifest."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um parametro float declarado no manifesto do shader VFX."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParam(Ljava/lang/String;F)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParam(Ljava/lang/String;LJAVARuntime/Color;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets a color parameter declared in the VFX shader manifest."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um parametro de cor declarado no manifesto do shader VFX."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 9
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 11
    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    iget-object p2, p2, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParam(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets a parameter declared in the VFX shader manifest. Supported values are float, boolean, Color, and float arrays."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um parametro declarado no manifesto do shader VFX. Valores suportados: float, boolean, Color e arrays de float."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 19
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 21
    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParam(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets a boolean parameter declared in the VFX shader manifest."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um parametro boolean declarado no manifesto do shader VFX."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParam(Ljava/lang/String;Z)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParam(Ljava/lang/String;[F)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets a vector parameter declared in the VFX shader manifest using a float array."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define um parametro de vetor declarado no manifesto do shader VFX usando um array de float."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 14
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 16
    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setParam(Ljava/lang/String;[F)V

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name can\'t be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShaderFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the VFX shader file used by this component."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o arquivo de shader VFX usado por este componente."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "shaderFile"
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setShaderFile(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the internal time value used by vfxParams.time."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o valor de tempo interno usado por vfxParams.time."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/CustomVFXEffect;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/CustomVFXEffect;->setTime(F)V

    return-void
.end method
