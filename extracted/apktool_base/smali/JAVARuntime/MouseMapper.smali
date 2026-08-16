.class public LJAVARuntime/MouseMapper;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Input"
    }
.end annotation

.annotation runtime LJAVARuntime/JRDoc_EN;
    value = "Maps a mouse button to an output key."
.end annotation

.annotation runtime LJAVARuntime/JRDoc_PT;
    value = "Mapeia um bot\u00e3o do mouse para uma key de sa\u00edda."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/MouseMapper$Button;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/MouseMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)V
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
    iput-object p1, p0, LJAVARuntime/MouseMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;)LJAVARuntime/MouseMapper$Button;
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

    invoke-static {p0}, LJAVARuntime/MouseMapper$Button;->valueOf(Ljava/lang/String;)LJAVARuntime/MouseMapper$Button;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/MouseMapper$Button;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

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

    const-class v0, LJAVARuntime/MouseMapper;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getMouseButton()LJAVARuntime/MouseMapper$Button;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the mapped mouse button."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o bot\u00e3o do mouse mapeado."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MouseMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->getMouseButton()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/MouseMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;)LJAVARuntime/MouseMapper$Button;

    move-result-object v0

    return-object v0
.end method

.method public getOutputKey()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the output key name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome da key de sa\u00edda."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MouseMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->getOutputKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMouseButton(LJAVARuntime/MouseMapper$Button;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the mouse button that will trigger the mapped key."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o bot\u00e3o do mouse que vai acionar a key mapeada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "mouseButton"
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

    iget-object v0, p0, LJAVARuntime/MouseMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-static {p1}, LJAVARuntime/MouseMapper;->ENUMCONVERT(LJAVARuntime/MouseMapper$Button;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->setMouseButton(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputKey(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the output key name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o nome da key de sa\u00edda."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "outputKey"
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

    iget-object v0, p0, LJAVARuntime/MouseMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->setOutputKey(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
