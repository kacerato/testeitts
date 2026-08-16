.class public final LJAVARuntime/Directories;
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

.method public static getProjectFolder()Ljava/lang/String;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the current project folder. It only works in the editor. In the APK, it returns the same value as internal()."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta atual do projeto. Funciona apenas no editor. No APK, retorna o mesmo valor de internal()."
    .end annotation

    invoke-static {}, LJAVARuntime/Editor;->isEditor()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LJAVARuntime/Directories;->internal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static internal()Ljava/lang/String;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the engine internal writable folder. In the editor, this points to project/internal. In the APK, this points to the app data folder."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta interna grav\u00e1vel da engine. No editor, isso aponta para project/internal. No APK, isso aponta para a pasta de dados do aplicativo."
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LIc/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
