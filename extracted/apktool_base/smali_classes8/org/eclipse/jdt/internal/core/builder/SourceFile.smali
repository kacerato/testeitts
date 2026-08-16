.class public Lorg/eclipse/jdt/internal/core/builder/SourceFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# instance fields
.field initialTypeName:Ljava/lang/String;

.field public resource:Lorg/eclipse/core/resources/IFile;

.field sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

.field updateClassFile:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->extractTypeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->updateClassFile:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;)V

    .line 7
    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->updateClassFile:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public extractTypeName()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IContainer;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v2

    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v2

    :goto_0
    if-lt v4, v1, :cond_1

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/util/Util;->indexOfJavaLikeExtension(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    new-array v7, v3, [C

    const/4 v8, 0x0

    move v3, v8

    :goto_1
    if-lt v2, v1, :cond_0

    invoke-virtual {v5, v8, v6, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    invoke-interface {v0, v2}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v3, v9

    add-int/lit8 v4, v3, 0x1

    const/16 v9, 0x2f

    aput-char v9, v7, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->segment(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getContents()[C
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsCharArray(Lorg/eclipse/core/resources/IFile;)[C

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v2}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/builder/MissingSourceFileException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->module()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackageName()[[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->initialTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->sourceLocation:Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->ignoreOptionalProblems:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceFile["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeLocator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/builder/SourceFile;->resource:Lorg/eclipse/core/resources/IFile;

    invoke-interface {v0}, Lorg/eclipse/core/resources/IFile;->getProjectRelativePath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
