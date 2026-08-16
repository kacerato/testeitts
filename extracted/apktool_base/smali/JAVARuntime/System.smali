.class public final LJAVARuntime/System;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Copies an array from the specified source to the specified destination."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Copia um array da origem especificada para o destino especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "src",
            "srcPos",
            "dest",
            "destPos",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "srcPos",
            "dest",
            "destPos",
            "length"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static currentTimeMillis()J
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current time in milliseconds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo atual em milissegundos."
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static exit()V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Quits the game by calling GameController.quit()."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encerra o jogo chamando GameController.quit()."
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/GameController;->quit()V

    return-void
.end method

.method public static exit(I)V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Quits the game by calling GameController.quit()."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Encerra o jogo chamando GameController.quit()."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2
    invoke-static {}, LJAVARuntime/GameController;->quit()V

    return-void
.end method

.method public static gc()V
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Runs the Java garbage collector."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Executa o coletor de lixo do Java."
    .end annotation

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static lineSeparator()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the line separator string for the current operating system."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o separador de linha do sistema operacional atual."
    .end annotation

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Not supported."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "N\u00e3o suportado."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Not supported."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "N\u00e3o suportado."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libname"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Not supported."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "N\u00e3o suportado."
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libname"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nanoTime()J
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current time in nanoseconds."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tempo atual em nanossegundos."
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
