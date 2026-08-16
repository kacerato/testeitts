.class public Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDescriptor(Lorg/eclipse/jdt/internal/core/ModularClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->createDescriptor(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/internal/core/ModularClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static createDescriptor(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;Lorg/eclipse/jdt/internal/core/ModularClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;
    .locals 5

    .line 2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    .line 4
    instance-of v3, p0, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    const-string v4, "module-info.class"

    if-eqz v3, :cond_1

    .line 5
    move-object p1, p0

    check-cast p1, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getClassFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    instance-of v3, p0, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getElementName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 10
    invoke-interface {v2, v4}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    move-object p1, p0

    .line 12
    :cond_2
    :goto_0
    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 14
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;-><init>([C[C[C[C)V

    return-object p0
.end method

.method public static rawReadModule(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;Z)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->rawReadModuleTestForExists(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;ZZ)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v0, 0x3d9

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public static rawReadModuleTestForExists(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;ZZ)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->isInJarFile()Z

    move-result v1

    const/16 v2, 0x3d9

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->workspacePath:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;Z)Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "module-info.class"

    invoke-virtual {p2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->indexPath:[C

    invoke-direct {v1, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_4
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    :try_start_5
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    throw p0

    :cond_2
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    new-instance v3, Ljava/lang/String;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;->workspacePath:[C

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v3}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_6
    invoke-interface {p0, p2}, Lorg/eclipse/core/resources/IFile;->getContents(Z)Ljava/io/InputStream;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v1, -0x1

    :try_start_7
    invoke-static {p2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_3

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {p2, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception v0

    if-eqz p2, :cond_4

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    if-eqz v0, :cond_6

    if-eq v0, p0, :cond_5

    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :catch_4
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_4
    move-object p0, v0

    :cond_6
    throw p0
    :try_end_a
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_5
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result p1

    const/16 p2, 0x170

    if-ne p1, p2, :cond_7

    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    :cond_7
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p1
.end method

.method public static readModule(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->rawReadModule(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;Z)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object p0

    return-object p0
.end method
