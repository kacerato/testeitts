.class public Lorg/eclipse/jdt/internal/core/ModularClassFile;
.super Lorg/eclipse/jdt/internal/core/AbstractClassFile;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IModularClassFile;


# instance fields
.field private binaryModule:Lorg/eclipse/jdt/internal/core/BinaryModule;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/PackageFragment;)V
    .locals 1

    const-string v0, "module-info"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;)V

    return-void
.end method

.method private getJarBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;,
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->createDescriptor(Lorg/eclipse/jdt/internal/core/ModularClassFile;)Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;

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

    if-eqz v3, :cond_3

    instance-of v3, v2, Lorg/eclipse/jdt/internal/core/JrtPackageFragmentRoot;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->name:Ljava/lang/String;

    const-string v4, "module-info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->readModule(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-static {v0, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->concatWith([Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;->getClassFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getClassFileContent(Lorg/eclipse/jdt/internal/core/JarPackageFragmentRoot;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getHandleIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleFactory;->readModule(Lorg/eclipse/jdt/internal/core/nd/java/model/BinaryModuleDescriptor;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private mapSource(Lorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->findSource(Lorg/eclipse/jdt/core/IModuleDescription;)[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v2, v0}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    :cond_1
    invoke-interface {v2, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/NamedMember;

    invoke-virtual {p1, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/SourceMapper;->mapSource(Lorg/eclipse/jdt/internal/core/NamedMember;[CLorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V

    return-object v2

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->createNullBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    return-object p1
.end method


# virtual methods
.method public buildStructure(Lorg/eclipse/jdt/internal/core/OpenableElementInfo;Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/util/Map;Lorg/eclipse/core/resources/IResource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p2, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    return p4

    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/core/BinaryModule;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;)V

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p3, p2, [Lorg/eclipse/jdt/core/IJavaElement;

    aput-object v1, p3, p4

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setChildren([Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/ModularClassFile;->binaryModule:Lorg/eclipse/jdt/internal/core/BinaryModule;

    instance-of p3, p1, Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    if-eqz p3, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/ClassFileInfo;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getPackageFragmentRoot()Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/PackageFragmentRootInfo;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->setModule(Lorg/eclipse/jdt/core/IModuleDescription;)V

    return p2
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

    new-instance v3, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "module-info.java"

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1, v2}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

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

    new-instance v1, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;

    const/4 v2, 0x0

    const-string v3, "module-info.java"

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-super {p0, v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/Openable;->codeSelect(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;IILorg/eclipse/jdt/core/WorkingCopyOwner;)[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElement;

    return-object p1
.end method

.method public escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public findPrimaryType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getJarBinaryModuleInfo()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

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

    const/16 v0, 0x60

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

    new-instance v0, Lorg/eclipse/jdt/internal/core/BinaryModule;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryModule;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleFromMemento(Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;Lorg/eclipse/jdt/core/WorkingCopyOwner;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/IModuleDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModularClassFile;->binaryModule:Lorg/eclipse/jdt/internal/core/BinaryModule;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->createElementInfo()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->openWhenClosed(Ljava/lang/Object;ZLorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModularClassFile;->binaryModule:Lorg/eclipse/jdt/internal/core/BinaryModule;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->newNotPresentException()Lorg/eclipse/jdt/core/JavaModelException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ModularClassFile;->binaryModule:Lorg/eclipse/jdt/internal/core/BinaryModule;

    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IClassFile#getType() cannot be used on an IModularClassFile"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ModularClassFile;->mapSource(Lorg/eclipse/jdt/internal/core/SourceMapper;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
