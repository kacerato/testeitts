.class public Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;


# instance fields
.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

.field public bodyEnd:I

.field public bodyStart:I

.field compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public declarationSourceEnd:I

.field public declarationSourceStart:I

.field public exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

.field public exportsCount:I

.field hasResolvedModuleDirectives:Z

.field hasResolvedPackageDirectives:Z

.field hasResolvedTypeDirectives:Z

.field ignoreFurtherInvestigation:Z

.field public modifiers:I

.field public modifiersSourceStart:I

.field public moduleName:[C

.field public opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

.field public opensCount:I

.field public requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

.field public requiresCount:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

.field public servicesCount:I

.field public sourcePositions:[J

.field public tokens:[[C

.field public uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

.field public usesCount:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;[[C[J)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->tokens:[[C

    const/16 p1, 0x2e

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->sourcePositions:[J

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p3, p1

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    aget-wide p1, p3, v0

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return-void
.end method

.method private analyseOneDependency(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableJdtDebugCompileMode:Z

    if-nez v4, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v4, v2, v3, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Ljava/util/Set;II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyseReferencedPackages(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v5, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;->getIncarnation(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->hasCompilationUnit(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    const v5, 0x80051f

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidPackageReference(ILorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->analyseModuleGraph(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->analyseReferencedPackages(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    return-void
.end method

.method public analyseModuleGraph(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    array-length v6, v5

    move v1, v3

    :goto_1
    if-lt v1, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    aget-object v2, v5, v1

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isDeprecated()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v7, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :cond_1
    invoke-direct {p0, v2, v4, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->analyseOneDependency(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->isTransitive()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v4

    array-length v7, v4

    move v8, v3

    :goto_2
    if-lt v8, v7, :cond_2

    goto :goto_3

    :cond_2
    aget-object v9, v4, v8

    invoke-direct {p0, v2, v9, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->analyseOneDependency(Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getExports()[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_4
    if-lt v8, v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    aget-object v9, v6, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v9

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->readableName()[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-nez v10, :cond_6

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public checkAndSetModifiers()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    const v1, 0xffff

    and-int/2addr v1, v0

    const v2, 0xefdf

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalModifierForModule(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    and-int/lit16 v1, v0, 0x1020

    :cond_0
    const v0, 0x8000

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iput v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    return-void
.end method

.method public compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-object v0
.end method

.method public createScope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration$1;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    return-void
.end method

.method public generateCode()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    return-void

    :cond_0
    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->classFilePool:Lorg/eclipse/jdt/internal/compiler/ClassFilePool;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFilePool;->acquireForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initializeForModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addModuleAttributes(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->modifiers:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->printHeader(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    const-string v0, " {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    if-lt v0, v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lt v0, v3, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lt v0, v3, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-eqz v0, :cond_9

    :goto_8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lt v2, v0, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v0, v0, v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public printHeader(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "open "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string p1, "module "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    invoke-static {p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->charToString([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveModuleDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedModuleDirectives:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedModuleDirectives:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requiresCount:I

    if-lt v2, v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->setRequires([Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    return-void

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->requires:[Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    const v5, 0x800515

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateModuleReference(ILorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->isTransitive()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->resolvedBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->dependencyGraphCollector()Ljava/util/function/Supplier;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cyclicModuleDependency(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/RequiresStatement;->module:Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public resolvePackageDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedPackageDirectives:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedPackageDirectives:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exportsCount:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_7

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>()V

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opensCount:I

    if-lt v0, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->opens:[Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;

    aget-object v2, v2, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOpensStatement(Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)V

    goto :goto_5

    :cond_3
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->containsKey([C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    const v6, 0x800521

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidPackageReference(ILorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;)V

    goto :goto_2

    :cond_4
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    invoke-virtual {v3, v5, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    :goto_2
    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v5, :cond_6

    array-length v5, v5

    new-array v6, v5, [[C

    move v7, v1

    :goto_3
    if-lt v7, v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v8, v8, v7

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addResolvedOpens(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->exports:[Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    aget-object v3, v3, v2

    if-eqz v3, :cond_b

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    const v6, 0x800516

    invoke-virtual {v5, v6, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidPackageReference(ILorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;)V

    :cond_8
    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v5, :cond_a

    array-length v5, v5

    new-array v6, v5, [[C

    move v4, v1

    :goto_6
    if-lt v4, v5, :cond_9

    move-object v4, v6

    goto :goto_7

    :cond_9
    iget-object v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    aget-object v7, v7, v4

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->resolvedPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->addResolvedExport(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public resolveTypeDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedTypeDirectives:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->hasResolvedTypeDirectives:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->usesCount:I

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->setUses([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->servicesCount:I

    if-lt v1, v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->setServices([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const v5, 0x800518

    invoke-virtual {v2, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTypeReference(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->services:[Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->getResolvedImplementations()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;->setImplementations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Collection;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const v5, 0x800524

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidServiceRef(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->uses:[Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/UsesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const v5, 0x800517

    invoke-virtual {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTypeReference(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public setBinding(Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    return-object p1
.end method

.method public tagAsHavingErrors()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public tagAsHavingIgnoredMandatoryErrors(I)V
    .locals 0

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z

    return-void
.end method
