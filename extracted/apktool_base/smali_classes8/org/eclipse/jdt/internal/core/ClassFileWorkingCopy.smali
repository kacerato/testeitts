.class public Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;
.super Lorg/eclipse/jdt/internal/core/CompilationUnit;
.source "SourceFile"


# instance fields
.field public classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/AbstractClassFile;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->sourceFileName(Lorg/eclipse/jdt/internal/core/AbstractClassFile;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    return-void
.end method

.method private static sourceFileName(Lorg/eclipse/jdt/internal/core/AbstractClassFile;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/internal/core/ModularClassFile;

    if-eqz v0, :cond_0

    const-string p0, "module-info.java"

    return-object p0

    :cond_0
    check-cast p0, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/BinaryType;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryType;->getSourceFileName(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public commitWorkingCopy(ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3c7

    invoke-direct {p2, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public getBuffer()Lorg/eclipse/jdt/core/IBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isWorkingCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getContents()[C
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0
.end method

.method public getPath()Lorg/eclipse/core/runtime/IPath;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    sget-object v1, Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;->PRIMARY:Lorg/eclipse/jdt/internal/core/DefaultWorkingCopyOwner;

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;-><init>(Lorg/eclipse/jdt/internal/core/AbstractClassFile;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-object p1
.end method

.method public openBuffer(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/Object;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IBuffer;->getCharacters()[C

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents([C)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    const v0, 0xffff

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/ToolFactory;->createDefaultClassFileReader(Lorg/eclipse/jdt/core/IClassFile;I)Lorg/eclipse/jdt/core/util/IClassFileReader;

    move-result-object p2

    new-instance v0, Lorg/eclipse/jdt/internal/core/util/Disassembler;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;-><init>()V

    const-string v1, ""

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, p2, v1, v2}, Lorg/eclipse/jdt/internal/core/util/Disassembler;->disassemble(Lorg/eclipse/jdt/core/util/IClassFileReader;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Openable;->getBufferManager()Lorg/eclipse/jdt/internal/core/BufferManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->addBuffer(Lorg/eclipse/jdt/core/IBuffer;)V

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/core/IBuffer;->addBufferChangedListener(Lorg/eclipse/jdt/core/IBufferChangedListener;)V

    return-object p1
.end method

.method public resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p1}, Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->resource(Lorg/eclipse/jdt/internal/core/PackageFragmentRoot;)Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    return-object p1
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileWorkingCopy;->classFile:Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
