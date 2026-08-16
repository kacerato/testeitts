.class public final LJAVARuntime/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Time"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static deltaTime()F
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/DeprecatedInfo;
        info = {
            "use virtual attribute [float t = Time.deltaTime;] or getDeltaTime() [float t = Time.getDeltaTime();] instead"
        }
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    return v0
.end method

.method public static frameTime()F
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    return v0
.end method

.method public static getDeltaTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual."
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    return v0
.end method

.method public static getFrameTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual."
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result v0

    return v0
.end method

.method public static getTimeScale()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current time scale."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a escala de tempo atual."
    .end annotation

    invoke-static {}, LK8/d;->c()F

    move-result v0

    return v0
.end method

.method public static getTimeSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current time speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a velocidade atual da escala de tempo."
    .end annotation

    invoke-static {}, LK8/d;->c()F

    move-result v0

    return v0
.end method

.method public static getUnscaledDeltaTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one without time scale (real time)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual sem escala de tempo (tempo real)."
    .end annotation

    invoke-static {}, LK8/d;->e()F

    move-result v0

    return v0
.end method

.method public static getUnscaledFrameTime()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one without time scale (real time)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual sem escala de tempo (tempo real)."
    .end annotation

    invoke-static {}, LK8/d;->e()F

    move-result v0

    return v0
.end method

.method public static setTimeScale(F)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current time scale."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a escala de tempo atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
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

    invoke-static {p0}, LK8/d;->h(F)V

    return-void
.end method

.method public static setTimeSpeed(F)V
    .locals 0
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the current time speed."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a velocidade atual da escala de tempo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
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

    invoke-static {p0}, LK8/d;->h(F)V

    return-void
.end method

.method public static unscaledDeltaTime()F
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the time (in seconds) between the last frame and the current one without time scale (real time)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo (em segundos) que passou entre o \u00faltimo frame e o atual sem escala de tempo (tempo real)."
    .end annotation

    invoke-static {}, LK8/d;->e()F

    move-result v0

    return v0
.end method
