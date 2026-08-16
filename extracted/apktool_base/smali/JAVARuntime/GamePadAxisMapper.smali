.class public LJAVARuntime/GamePadAxisMapper;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation

.annotation runtime LJAVARuntime/JRDoc_EN;
    value = "Maps a gamepad axis to an output axis."
.end annotation

.annotation runtime LJAVARuntime/JRDoc_PT;
    value = "Mapeia um eixo do gamepad para um axis de sa\u00edda."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GamePadAxisMapper$Axis;,
        LJAVARuntime/GamePadAxisMapper$AxisType;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/GamePadAxisMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;)V
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
    iput-object p1, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)LJAVARuntime/GamePadAxisMapper$Axis;
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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/GamePadAxisMapper$Axis;->valueOf(Ljava/lang/String;)LJAVARuntime/GamePadAxisMapper$Axis;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;)LJAVARuntime/GamePadAxisMapper$AxisType;
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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/GamePadAxisMapper$AxisType;->valueOf(Ljava/lang/String;)LJAVARuntime/GamePadAxisMapper$AxisType;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/GamePadAxisMapper$Axis;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;
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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/GamePadAxisMapper$AxisType;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;
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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

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

    const-class v0, LJAVARuntime/GamePadAxisMapper;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAxisType()LJAVARuntime/GamePadAxisMapper$AxisType;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the axis type."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tipo do axis."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->getAxisType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/GamePadAxisMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;)LJAVARuntime/GamePadAxisMapper$AxisType;

    move-result-object v0

    return-object v0
.end method

.method public getGamepadAxis()LJAVARuntime/GamePadAxisMapper$Axis;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the selected gamepad axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o eixo do gamepad selecionado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->getGamepadAxis()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/GamePadAxisMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)LJAVARuntime/GamePadAxisMapper$Axis;

    move-result-object v0

    return-object v0
.end method

.method public getOutputAxis()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the output axis name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do axis de sa\u00edda."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->getOutputAxis()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAxisType(LJAVARuntime/GamePadAxisMapper$AxisType;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the axis type."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o tipo do axis."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "axisType"
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

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-static {p1}, LJAVARuntime/GamePadAxisMapper;->ENUMCONVERT(LJAVARuntime/GamePadAxisMapper$AxisType;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->setAxisType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$f;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGamepadAxis(LJAVARuntime/GamePadAxisMapper$Axis;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the selected gamepad axis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o eixo do gamepad selecionado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gamepadAxis"
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

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-static {p1}, LJAVARuntime/GamePadAxisMapper;->ENUMCONVERT(LJAVARuntime/GamePadAxisMapper$Axis;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->setGamepadAxis(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputAxis(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the output axis name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o nome do axis de sa\u00edda."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputAxis"
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

    iget-object v0, p0, LJAVARuntime/GamePadAxisMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->setOutputAxis(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
