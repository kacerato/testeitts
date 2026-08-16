.class public Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->lambda$1(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method private addModuleUpdates(Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/ModuleUpdater;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            "Lorg/eclipse/jdt/internal/core/ModuleUpdater;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_MAIN_CLASS:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/c;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/builder/c;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p2, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_PACKAGES:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/core/builder/d;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/builder/d;-><init>(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;->MODULE:Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/ModuleUpdater;->addModuleUpdate(Ljava/lang/String;Ljava/util/function/Consumer;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule$UpdateKind;)V

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported key(s): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V

    return-void
.end method

.method private getSourceLocation(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    const/4 p1, 0x3

    invoke-interface {p3, p1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getCorrespondingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->sourceLocations:[Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;->sourceFolder:Lorg/eclipse/core/resources/IContainer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3ee

    invoke-direct {p2, v0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method private static synthetic lambda$0(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->setMainClassName([C)V

    return-void
.end method

.method private static synthetic lambda$1(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IUpdatableModule;->setPackageNames(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;)V

    return-void
.end method


# virtual methods
.method public compileWithAttributes(Lorg/eclipse/jdt/core/IModuleDescription;Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IModuleDescription;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    new-instance v2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    iget-object v1, v2, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->moduleUpdater:Lorg/eclipse/jdt/internal/core/ModuleUpdater;

    invoke-direct {p0, p1, v1, p2}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->addModuleUpdates(Lorg/eclipse/jdt/core/IModuleDescription;Lorg/eclipse/jdt/internal/core/ModuleUpdater;Ljava/util/Map;)V

    invoke-direct {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder;->getSourceLocation(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;Lorg/eclipse/jdt/core/IModuleDescription;)Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;

    move-result-object p2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getCorrespondingResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p1

    check-cast p1, Lorg/eclipse/core/resources/IFile;

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/SourceFile;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/SourceFile;-><init>(Lorg/eclipse/core/resources/IFile;Lorg/eclipse/jdt/internal/core/builder/ClasspathMultiDirectory;)V

    const/4 p1, 0x1

    new-array p2, p1, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    const/4 v3, 0x0

    aput-object v1, p2, v3

    new-instance v7, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;

    invoke-direct {v7}, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;-><init>()V

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/Compiler;

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/DefaultErrorHandlingPolicies;->exitOnFirstError()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->getProblemFactory(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    move-result-object v6

    move-object v1, v8

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    invoke-virtual {v8, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    iget-object p1, v7, Lorg/eclipse/jdt/internal/core/builder/ModuleInfoBuilder$BytecodeCollector;->bytes:[B

    return-object p1
.end method
