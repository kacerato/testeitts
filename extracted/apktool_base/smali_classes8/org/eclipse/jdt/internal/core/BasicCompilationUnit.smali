.class public Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;


# instance fields
.field protected contents:[C

.field protected encoding:Ljava/lang/String;

.field protected fileName:[C

.field protected mainTypeName:[C

.field protected moduleName:[C

.field protected packageName:[[C


# direct methods
.method private constructor <init>([C[[CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->contents:[C

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->packageName:[[C

    return-void
.end method

.method public constructor <init>([C[[CLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;)V

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([C[[CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;-><init>([C[[CLjava/lang/String;)V

    .line 8
    invoke-direct {p0, p4}, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->initAttributes(Lorg/eclipse/jdt/core/IJavaElement;)V

    return-void
.end method

.method private initAttributes(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lorg/eclipse/jdt/core/IModularClassFile;

    if-eqz v2, :cond_4

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IModularClassFile;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IModularClassFile;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v1

    check-cast v1, Lorg/eclipse/core/resources/IFile;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/core/resources/IFile;->getCharset()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    :cond_3
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/ITypeRoot;->getModule()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IPackageFragmentRoot;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getModuleDescription()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->moduleName:[C

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getDefaultCharset()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->contents:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->encoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    return-object v0
.end method

.method public getMainTypeName()[C
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->mainTypeName:[C

    if-nez v0, :cond_5

    const/16 v0, 0x2f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x5c

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/16 v1, 0x7c

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_2

    move v0, v1

    :cond_2
    const/16 v1, 0x24

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName([C)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/16 v1, 0x2e

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    array-length v1, v1

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->mainTypeName:[C

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->mainTypeName:[C

    return-object v0
.end method

.method public getModuleName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->moduleName:[C

    return-object v0
.end method

.method public getPackageName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->packageName:[[C

    return-object v0
.end method

.method public ignoreOptionalProblems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompilationUnit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/BasicCompilationUnit;->fileName:[C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
