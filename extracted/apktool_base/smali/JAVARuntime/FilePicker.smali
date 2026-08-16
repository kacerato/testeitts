.class public LJAVARuntime/FilePicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Files"
    }
.end annotation

.annotation runtime LJAVARuntime/JRDoc_EN;
    value = "Opens the native file picker and returns the selected files as DFile objects. Use the Listener callbacks to handle success, cancel, and errors."
.end annotation

.annotation runtime LJAVARuntime/JRDoc_PT;
    value = "Abre o seletor nativo de arquivos e retorna os arquivos selecionados como objetos DFile. Use os callbacks do Listener para tratar sucesso, cancelamento e erros."
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/FilePicker$Listener;,
        LJAVARuntime/FilePicker$DFile;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static importFile(LJAVARuntime/FilePicker$DFile;Ljava/io/File;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Imports the selected file to the destination file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Importa o arquivo selecionado para o arquivo de destino."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "documentFile",
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "documentFile",
            "destination"
        }
    .end annotation

    iget-object p0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p0, p1}, Lw3/e;->b(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static open(LJAVARuntime/FilePicker$Listener;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Opens the file picker and reports the result through the listener."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Abre o seletor de arquivos e reporta o resultado pelo listener."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, LJAVARuntime/FilePicker$1;

    invoke-direct {v0, p0}, LJAVARuntime/FilePicker$1;-><init>(LJAVARuntime/FilePicker$Listener;)V

    invoke-static {v0}, Lw3/e;->g(Lw3/e$d;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
