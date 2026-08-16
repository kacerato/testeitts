.class public final LJAVARuntime/GameController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Platform"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GameController$GraphicsMode;,
        LJAVARuntime/GameController$State;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)LJAVARuntime/GameController$GraphicsMode;
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

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/GameController$GraphicsMode;->valueOf(Ljava/lang/String;)LJAVARuntime/GameController$GraphicsMode;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/GameController$GraphicsMode;)Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;
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

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    move-result-object p0

    return-object p0
.end method

.method public static getGraphicsMode()LJAVARuntime/GameController$GraphicsMode;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->a()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/GameController;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)LJAVARuntime/GameController$GraphicsMode;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitFrames()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the maximum number of frames per second allowed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero m\u00e1ximo de frames por segundo permitido."
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->c()I

    move-result v0

    return v0
.end method

.method public static getState()LJAVARuntime/GameController$State;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current state of the game (Stopped, Paused, or Running)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o estado atual do jogo (Parado, Pausado ou Rodando)."
    .end annotation

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LJAVARuntime/GameController$State;->Running:LJAVARuntime/GameController$State;

    return-object v0

    :cond_0
    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LJAVARuntime/GameController$State;->Paused:LJAVARuntime/GameController$State;

    return-object v0

    :cond_1
    sget-object v0, LJAVARuntime/GameController$State;->Stopped:LJAVARuntime/GameController$State;

    return-object v0
.end method

.method public static isEnableFrameLimit()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if frame limit is enabled."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o limite de frames est\u00e1 ativado."
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->e()Z

    move-result v0

    return v0
.end method

.method public static quit()V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Quits the game and closes the application (Only in APK)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encerra o jogo e fecha a aplica\u00e7\u00e3o (Somente no APK)."
    .end annotation

    new-instance v0, LJAVARuntime/a;

    invoke-direct {v0}, LJAVARuntime/a;-><init>()V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setEnableFrameLimit(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Enables or disables the frame limit."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Ativa ou desativa o limite de frames."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableFrameLimit"
        }
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->f(Z)V

    return-void
.end method

.method public static setGraphicsMode(LJAVARuntime/GameController$GraphicsMode;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "graphicsMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphicsMode"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-static {p0}, LJAVARuntime/GameController;->ENUMCONVERT(LJAVARuntime/GameController$GraphicsMode;)Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->g(Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings$e;)V

    return-void
.end method

.method public static setLimitFrames(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the maximum number of frames per second."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o n\u00famero m\u00e1ximo de frames por segundo."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limitFrames"
        }
    .end annotation

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->d()Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->h(I)V

    return-void
.end method
