.class public abstract Lorg/eclipse/jdt/internal/core/AbstractClassFile;
.super Lorg/eclipse/jdt/internal/core/Openable;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IClassFile;
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Openable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    return-void
.end method

.method private validateClassFile()Lorg/eclipse/core/runtime/IStatus;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v2, 0x3c7

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.compiler.source"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v0, v4, v3}, Lorg/eclipse/jdt/core/IJavaProject;->getOption(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/JavaConventions;->validateClassFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    return-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/JavaModelException;->getJavaModelStatus()Lorg/eclipse/jdt/core/IJavaModelStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public becomeWorkingCopy(Lorg/eclipse/jdt/core/IProblemRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;

    if-nez p2, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    :cond_0
    invoke-direct {v1, p0, p2}, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;-><init>(Lorg/eclipse/jdt/internal/core/AbstractClassFile;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    const/4 p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    new-instance p2, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;

    invoke-direct {p2, v1, p1}, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v1

    :cond_1
    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->workingCopy:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object p1
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public abstract codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICodeCompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/AbstractClassFile$1;

    invoke-direct {v0, p0, p2}, Lorg/eclipse/jdt/internal/core/AbstractClassFile$1;-><init>(Lorg/eclipse/jdt/internal/core/AbstractClassFile;Lorg/eclipse/jdt/core/ICodeCompletionRequestor;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/ICompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/codeassist/CompletionRequestorWrapper;-><init>(Lorg/eclipse/jdt/core/ICompletionRequestor;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Completion requestor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public codeSelect(II)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->codeSelect(IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public abstract codeSelect(IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public createElementInfo()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public findElement(Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/SourceRange;->getOffset()I

    move-result v1

    if-lt p2, v1, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/SourceRange;->getOffset()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/SourceRange;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p2, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/core/IParent;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->findElement(Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBuffer()Lorg/eclipse/jdt/core/IBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->validateClassFile()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result v1

    const/16 v2, 0x3c7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3ee

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JarPackageFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    :try_start_0
    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getClassFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getClassFileContent(Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    check-cast v0, Lorg/eclipse/core/resources/IFile;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getResourceContentsAsByteArray(Lorg/eclipse/core/resources/IFile;)[B

    move-result-object v0

    return-object v0
.end method

.method public getClassFileContent(Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfileContent(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getJar()Ljava/util/zip/ZipFile;

    move-result-object p1

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_3
    :goto_2
    return-object v2

    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p2
.end method

.method public getCorrespondingResource()Lorg/eclipse/core/resources/IResource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getUnderlyingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v0

    return-object v0
.end method

.method public getElementAtConsideringSibling(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const v7, 0x7fffffff

    move-object v9, v2

    move v8, v5

    :goto_0
    array-length v10, v0

    if-lt v8, v10, :cond_3

    if-eqz v9, :cond_2

    invoke-virtual {p0, v9, p1, v1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->findElement(Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    :cond_3
    aget-object v10, v0, v8

    instance-of v11, v10, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    if-eqz v11, :cond_6

    check-cast v10, Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_4

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    :cond_4
    if-ne v3, v12, :cond_6

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v12, v5, v11, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v11

    sget-object v12, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    if-ne v11, v12, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Lorg/eclipse/jdt/core/SourceRange;->getOffset()I

    move-result v12

    invoke-virtual {v11}, Lorg/eclipse/jdt/core/SourceRange;->getLength()I

    move-result v11

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    if-le v12, v6, :cond_6

    if-ge v11, v7, :cond_6

    if-gt v12, p1, :cond_6

    if-lt v11, p1, :cond_6

    invoke-interface {v10}, Lorg/eclipse/jdt/core/IOrdinaryClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v9

    move v7, v11

    move v6, v12

    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/core/SourceRange;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/SourceRange;-><init>(II)V

    :cond_1
    return-object v1
.end method

.method public getTypeRoot()Lorg/eclipse/jdt/core/ITypeRoot;
    .locals 0

    return-object p0
.end method

.method public getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/BufferFactoryWrapper;->create(Lorg/eclipse/jdt/core/IBufferFactory;)Lorg/eclipse/jdt/core/WorkingCopyOwner;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lorg/eclipse/jdt/core/ITypeRoot;->getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public hasBuffer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    check-cast v0, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Openable;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IContainer;

    new-instance v0, Lorg/eclipse/core/runtime/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/eclipse/core/resources/IContainer;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p1

    return-object p1
.end method

.method public validateExistence(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/core/runtime/IStatus;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->validateClassFile()Lorg/eclipse/core/runtime/IStatus;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->isOK()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of p1, p1, Lorg/eclipse/core/resources/IFolder;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->newDoesNotExistStatus()Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object p1
.end method
