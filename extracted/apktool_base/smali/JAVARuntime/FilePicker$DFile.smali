.class public LJAVARuntime/FilePicker$DFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/FilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DFile"
.end annotation


# instance fields
.field file:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the selected file name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do arquivo selecionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentFile()LJAVARuntime/FilePicker$DFile;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the parent folder of the selected file, or null if it has none."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta pai do arquivo selecionado, ou null se n\u00e3o existir."
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LJAVARuntime/FilePicker$DFile;

    invoke-direct {v1, v0}, LJAVARuntime/FilePicker$DFile;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the selected file MIME type."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o tipo MIME do arquivo selecionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the URI of the selected file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a URI do arquivo selecionado."
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public importTo(Ljava/io/File;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Imports this file to the destination file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Importa este arquivo para o arquivo de destino."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FilePicker$DFile;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {v0, p1}, Lw3/e;->b(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
