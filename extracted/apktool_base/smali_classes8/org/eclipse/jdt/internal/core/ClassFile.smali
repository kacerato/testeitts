.class public Lorg/eclipse/jdt/internal/core/ClassFile;
.super Lorg/eclipse/jdt/internal/core/AbstractClassFile;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IOrdinaryClassFile;


# instance fields
.field protected binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

.field private externalAnnotationBase:Lorg/eclipse/core/runtime/IPath;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

    return-void
.end method

.method private getJarBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->createDescriptor(Lorg/eclipse/jdt/core/IOrdinaryClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    const-string v6, "module-info"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->readType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getClassFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getClassFileContent(Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v7, v6, v3, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    move-object v3, v7

    goto :goto_1

    :cond_3
    move-object v3, v1

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeFactory;->readType(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_5

    return-object v1

    :cond_5
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getKind()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaProject;->getClasspathEntryFor(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryTypeDescriptor;->fieldDescriptor:[C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/java/JavaNames;->fieldDescriptorToBinaryName([C)[C

    move-result-object v0

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    invoke-static {v0, v6}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->concat([C[C)[C

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    invoke-static {v2, v0, v5}, Lorg/eclipse/jdt/internal/core/ClasspathEntry;->getExternalAnnotationPath(Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/core/resources/IProject;Z)Lorg/eclipse/core/runtime/IPath;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, v6

    sub-int/2addr v2, v6

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->setupExternalAnnotationProvider(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IClasspathEntry;->getEntryKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Z)V

    move-object v3, v0

    nop

    :catch_0
    :cond_7
    :goto_2
    return-object v3
.end method

.method private getOuterMostEnclosingType()Lorg/eclipse/jdt/core/IType;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    :goto_0
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    goto :goto_0
.end method

.method private mapSource(Lorg/eclipse/jdt/internal/core/SourceMapper;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/core/IClassFile;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p3

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p3, v0}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    :cond_1
    invoke-interface {p3, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getOuterMostEnclosingType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p1, v1, v0, p2}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    return-object p3

    :cond_2
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/BufferManager;->createNullBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    return-object p1
.end method

.method private setupExternalAnnotationProvider(Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->lastSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFolder(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFolder;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, p2}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getFile(Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/core/resources/IFile;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p4, Lorg/eclipse/core/runtime/Status;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Virtual resource "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be used as annotationpath for project "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const-string v0, "org.eclipse.jdt.core"

    invoke-direct {p4, p2, v0, p1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Lorg/eclipse/core/runtime/IStatus;)V

    return-object p3

    :cond_2
    invoke-interface {v0}, Lorg/eclipse/core/resources/IResource;->getLocation()Lorg/eclipse/core/runtime/IPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/ClassFile$1;

    invoke-direct {v1, p0, p2, p4}, Lorg/eclipse/jdt/internal/core/ClassFile$1;-><init>(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/runtime/IPath;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->getAnnotationZipFile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator$ZipFileProducer;)Ljava/util/zip/ZipFile;

    move-result-object v0

    invoke-static {p1, p4, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;->externalAnnotationProvider(Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;)Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    move-result-object p1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;

    invoke-direct {v1, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationDecorator;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :cond_4
    if-nez v0, :cond_5

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->externalAnnotationBase:Lorg/eclipse/core/runtime/IPath;

    new-instance p1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {p1, p4}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, p0}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->registerClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/internal/core/ClassFile;)V

    :cond_5
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :cond_6
    return-object p3

    :goto_2
    if-eqz v0, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->closeZipFile(Ljava/util/zip/ZipFile;)V

    :cond_7
    throw p1
.end method

.method public static simpleName([C)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->unqualifiedName([C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    const/16 p0, 0x24

    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->localTypeName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static translatedName([C)[C
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    aget-char v3, p0, v2

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    goto :goto_1

    :cond_2
    aput-char v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static translatedNames([[C)[[C
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    :cond_1
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedName([C)[C

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static unqualifiedName([C)[C
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-gt v0, v3, :cond_1

    return-object p0

    :cond_1
    aget-char v3, p0, v0

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    new-array v3, v2, [C

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    return p4

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    new-array v2, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v1, v2, p4

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p1, p0, p3, v0}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->readBinaryChildren(Lorg/eclipse/jdt/internal/core/ClassFile;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    return p2
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->externalAnnotationBase:Lorg/eclipse/core/runtime/IPath;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->externalAnnotationBase:Lorg/eclipse/core/runtime/IPath;

    new-instance v2, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v2, v0}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/ExternalAnnotationTracker;->unregisterClassFile(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/core/runtime/IPath;)V

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    return-void
.end method

.method public closeAndRemoveFromJarTypeCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeFromJarTypeCache(Lorg/eclipse/jdt/internal/core/BinaryType;)V

    return-void
.end method

.method public codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    new-instance v3, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v0, v2}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/Openable;->codeComplete(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ILorg/eclipse/jdt/core/CompletionRequestor;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/ITypeRoot;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    :cond_0
    return-void
.end method

.method public codeSelect(IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/BinaryType;

    new-instance v2, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/core/BinaryType;->sourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1, p0}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-super {p0, v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/Openable;->codeSelect(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1
.end method

.method public existsUsingJarTypeCache()Z
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/core/JavaModelCache;->NON_EXISTING_JAR_TYPE_INFO:Ljava/lang/Object;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    array-length v6, v5

    move v0, v4

    :goto_0
    if-lt v0, v6, :cond_2

    return v4

    :cond_2
    aget-object v1, v5, v0

    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    check-cast v1, Lorg/eclipse/jdt/internal/core/ClassFile;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getJarBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v2
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_5

    sget-object v5, Lorg/eclipse/jdt/internal/core/JavaModelCache;->NON_EXISTING_JAR_TYPE_INFO:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->putJarTypeInfo(Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/Object;)V

    if-eqz v2, :cond_6

    return v3

    :cond_6
    return v4

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->exists()Z

    move-result v0

    return v0
.end method

.method public findPrimaryType()Lorg/eclipse/jdt/core/IType;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IJavaElement;->getAttachedJavadoc(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getJarBinaryTypeInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/JavaModelException;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/JavaModelException;

    throw v0

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/core/runtime/CoreException;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/eclipse/jdt/core/JavaModelException;

    const/16 v2, 0x3d9

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :goto_2
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/core/runtime/Plugin;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassFile()Lorg/eclipse/jdt/core/IClassFile;
    .locals 0

    return-object p0
.end method

.method public getElementAt(I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->findElement(Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getHandleFromMemento(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTopLevelTypeName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryType;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFile;->binaryType:Lorg/eclipse/jdt/internal/core/BinaryType;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->localTypeName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getWorkingCopy(Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    :cond_0
    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;-><init>(Lorg/eclipse/jdt/internal/core/AbstractClassFile;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getPerWorkingCopyInfo(Lorg/eclipse/jdt/internal/core/CompilationUnit;ZZLorg/eclipse/jdt/core/IProblemRequestor;)Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerWorkingCopyInfo;->getWorkingCopy()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;

    invoke-direct {p1, v0, v3}, Lorg/eclipse/jdt/internal/core/BecomeWorkingCopyOperation;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/core/IProblemRequestor;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-object v0
.end method

.method public isClass()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isClass()Z

    move-result v0

    return v0
.end method

.method public isInterface()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->isInterface()Z

    move-result v0

    return v0
.end method

.method public openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getOuterMostEnclosingType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/BufferManager;->getBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v1

    instance-of v2, p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    if-eqz v2, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->mapSource(Lorg/eclipse/jdt/internal/core/SourceMapper;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/core/IClassFile;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    :cond_1
    return-object v0
.end method
