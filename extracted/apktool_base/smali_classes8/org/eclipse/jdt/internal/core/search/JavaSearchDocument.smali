.class public Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;
.super Lorg/eclipse/jdt/core/search/SearchDocument;
.source "SourceFile"


# instance fields
.field protected byteContents:[B

.field protected charContents:[C

.field private file:Lorg/eclipse/core/resources/IFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/search/SearchDocument;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/core/search/SearchDocument;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->byteContents:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;Lorg/eclipse/core/runtime/IPath;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/lang/String;[BLorg/eclipse/jdt/core/search/SearchParticipant;)V

    return-void
.end method

.method private getFile()Lorg/eclipse/core/resources/IFile;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->file:Lorg/eclipse/core/resources/IFile;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->file:Lorg/eclipse/core/resources/IFile;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->file:Lorg/eclipse/core/resources/IFile;

    return-object v0
.end method


# virtual methods
.method public getByteContents()[B
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->byteContents:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->getFile()Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharContents()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->charContents:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->getFile()Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine;->VERBOSE:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/search/processing/JobManager;->VERBOSE:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->getFile()Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchDocument for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
