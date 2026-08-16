.class public final LJAVARuntime/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Platform"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static availableProcessors()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of available processors on the device."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de processadores dispon\u00edveis no dispositivo."
    .end annotation

    invoke-static {}, LIc/i;->a()I

    move-result v0

    return v0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    invoke-static {}, LIc/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioSampleRate()I
    .locals 1

    const/16 v0, 0x55f0

    return v0
.end method

.method public static getBatteryPercentage()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the device\'s battery percentage."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a porcentagem de bateria do dispositivo."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LIc/i;->d()I

    move-result v0

    return v0
.end method

.method public static getClipboard()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the text in the device\'s clipboard."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o texto da \u00e1rea de transfer\u00eancia do dispositivo."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LIc/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openLink(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Opens the specified link in the default web browser."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Abre o link especificada no navegador padr\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    invoke-static {p0}, LIc/i;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Opens the specified URL in the default web browser."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Abre a URL especificada no navegador padr\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    invoke-static {p0}, LIc/i;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static setClipboard(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Copies the given text to the device\'s clipboard."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Copia o texto fornecido para a \u00e1rea de transfer\u00eancia do dispositivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "text"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, LIc/i;->r(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setMouseVisible(Z)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the visibility of the mouse cursor on the device."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a visibilidade do cursor do mouse no dispositivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "visible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {}, LN7/c;->o0()V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->L()V

    :goto_0
    return-void
.end method

.method public static stopVibrate()V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Stops any ongoing vibration on the device."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Para qualquer vibra\u00e7\u00e3o em andamento no dispositivo."
    .end annotation

    invoke-static {}, LIc/i;->u()V

    return-void
.end method

.method public static vibrateOneShot(J)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Vibrates the device for the specified duration (in milliseconds)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz o dispositivo vibrar pela dura\u00e7\u00e3o especificada (em milissegundos)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "pattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    invoke-static {p0, p1}, LIc/i;->w(J)V

    return-void
.end method

.method public static vibratePattern([JI)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Makes the device vibrate following the time durations (in milliseconds) defined in the array, alternating between vibration and pause (starting with a pause). After completing the array, the repetition begins at the specified index (-1 to not repeat)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Faz o dispositivo vibrar seguindo as dura\u00e7\u00f5es de tempo (em milissegundos) definidas no array, alternando entre vibra\u00e7\u00e3o e pausa (iniciando com pausa). Ap\u00f3s percorrer todo o array, a repeti\u00e7\u00e3o come\u00e7a no \u00edndice especificado (-1 para n\u00e3o repetir)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "timings, repeat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "timings",
            "repeat"
        }
    .end annotation

    invoke-static {p0, p1}, LIc/i;->x([JI)V

    return-void
.end method
