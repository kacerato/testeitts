.class public Lorg/eclipse/jdt/internal/core/JarEntryFile;
.super Lorg/eclipse/jdt/internal/core/JarEntryResource;
.source "SourceFile"


# static fields
.field private static final NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJarEntryResource;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JarEntryFile;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JarEntryResource;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone(Ljava/lang/Object;)Lorg/eclipse/jdt/internal/core/JarEntryResource;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JarEntryFile;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JarEntryResource;->simpleName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JarEntryFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->setParent(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getChildren()[Lorg/eclipse/jdt/core/IJarEntryResource;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JarEntryFile;->NO_CHILDREN:[Lorg/eclipse/jdt/core/IJarEntryResource;

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IPath;->toOSString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isJrt(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x3d9

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/eclipse/jdt/internal/core/JavaModel;->getTarget(Lorg/eclipse/core/runtime/IPath;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/io/File;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getContentFromJrt(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object v3

    :goto_0
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getZipFile()Ljava/util/zip/ZipFile;

    move-result-object v3

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->ZIP_ACCESS_VERBOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") [JarEntryFile.getContents()] Creating ZipFile on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v1

    :cond_3
    :try_start_2
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance v4, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v5, 0x3d3

    invoke-direct {v4, v5, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw v0
.end method

.method public isFile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JarEntryFile["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JarEntryResource;->getEntryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
