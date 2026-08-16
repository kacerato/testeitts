.class public Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/eclipse/jdt/core/IOrdinaryClassFile;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->readType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p0

    return-object p0
.end method

.method public static createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;
    .locals 1

    .line 20
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/core/ClassFile;

    .line 21
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    .line 22
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/internal/core/PackageFragment;Lorg/eclipse/jdt/internal/core/ClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static createDescriptor(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;
    .locals 0

    .line 23
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static createDescriptor(Lorg/eclipse/jdt/internal/core/PackageFragment;Lorg/eclipse/jdt/internal/core/ClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    .line 2
    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getLocationForElement(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-static {v4, v5, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getClassFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eq v5, v4, :cond_1

    .line 6
    invoke-virtual {v5, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v4, v5

    .line 8
    :cond_1
    new-array v5, v0, [C

    const/16 v6, 0x4c

    aput-char v6, v5, v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-array v0, v0, [C

    const/16 v6, 0x3b

    aput-char v6, v0, v1

    .line 10
    invoke-static {v5, p0, v0}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C[C)[C

    move-result-object p0

    .line 11
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    .line 12
    instance-of v1, v2, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    if-eqz v1, :cond_2

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v3, v4}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v3

    .line 15
    invoke-interface {v0, v4}, Lorg/eclipse/core/runtime/IPath;->append(Ljava/lang/String;)Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->resource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResource;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 17
    :goto_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 19
    invoke-direct {v1, v2, p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;-><init>([C[C[C[C)V

    return-object v1
.end method

.method public static rawReadType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->rawReadTypeTestForExists(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;ZZ)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

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

.method public static rawReadTypeTestForExists(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;ZZ)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->isInJarFile()Z

    move-result v1

    const/16 v2, 0x3d9

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    const-string v1, "jrt-fs.jar"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->location:[C

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf([C[CZ)I

    move-result v1

    if-ne v1, v3, :cond_2

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    new-instance v3, Lorg/eclipse/core/runtime/Path;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->workspacePath:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getZipFile(Lorg/eclipse/core/runtime/IPath;Z)Ljava/util/zip/ZipFile;

    move-result-object p2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->fieldDescriptor:[C

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object v1

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

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

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->indexPath:[C

    invoke-direct {v1, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    return-object v1

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

    goto :goto_2

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
    :goto_2
    return-object v0

    :cond_3
    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p2

    invoke-interface {p2}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p2

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    new-instance v4, Ljava/lang/String;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->workspacePath:[C

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_6
    invoke-interface {p0, p2}, Lorg/eclipse/core/resources/IFile;->getContents(Z)Ljava/io/InputStream;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {p2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_4

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-interface {p0}, Lorg/eclipse/core/resources/IFile;->getFullPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {p2, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    return-object p2

    :catchall_3
    move-exception v0

    if-eqz p2, :cond_5

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_4
    if-eqz v0, :cond_7

    if-eq v0, p0, :cond_6

    :try_start_a
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_7

    :cond_6
    :goto_5
    move-object p0, v0

    :cond_7
    throw p0
    :try_end_a
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_7
    invoke-virtual {p0}, Lorg/eclipse/core/runtime/CoreException;->getStatus()Lorg/eclipse/core/runtime/IStatus;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IStatus;->getCode()I

    move-result p1

    const/16 p2, 0x170

    if-ne p1, p2, :cond_8

    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    :cond_8
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p1
.end method

.method public static readFromIndex(Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;
        }
    .end annotation

    iget-object p2, p1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->fieldDescriptor:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->location:[C

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->location:[C

    invoke-static {v0, v3, p2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;[C[C)Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;->get()Lorg/eclipse/jdt/internal/core/nd/java/NdType;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->location:[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getResourceFile([C)Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z

    move-result p0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_3
    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/java/NdType;->getResourceFile()Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isUpToDate(Lorg/eclipse/jdt/internal/core/nd/java/NdResourceFile;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->indexPath:[C

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/TypeRef;[C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryType;->initSimpleAttributes()V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    return-object p0

    :cond_4
    :try_start_5
    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;-><init>()V

    throw p0
    :try_end_5
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    if-eqz v2, :cond_5

    :try_start_7
    invoke-interface {v2}, Lorg/eclipse/jdt/internal/core/nd/IReader;->close()V

    :cond_5
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    if-eqz v1, :cond_7

    if-eq v1, p0, :cond_6

    :try_start_8
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_4
    move-object p0, v1

    :cond_7
    throw p0
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_5
    const-string p1, "Index corruption detected. Rebuilding index."

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->getInstance()Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/Indexer;->requestRebuildIndex()V

    :cond_8
    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException;-><init>()V

    throw p0
.end method

.method public static readType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;->getIndex()Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->readFromIndex(Lorg/eclipse/jdt/internal/core/nd/java/JavaIndex;Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory$NotInIndexException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->rawReadType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method
