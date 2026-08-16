.class public abstract Lorg/eclipse/jdt/internal/codeassist/impl/Engine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;


# instance fields
.field public compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field public currentPackageName:[C

.field public discouragedReferenceIsError:Z

.field public forbiddenReferenceIsError:Z

.field public importCacheCount:I

.field public importCachesInitialized:Z

.field public importsCache:[[[C

.field public lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

.field public onDemandImportCacheCount:I

.field public onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

.field public options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

.field protected unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCachesInitialized:Z

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCacheCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportCacheCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->options:Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const p1, 0x20000020

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result p1

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->forbiddenReferenceIsError:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    const v2, 0x20004000

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->discouragedReferenceIsError:Z

    return-void
.end method

.method public static getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[C
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    .line 2
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericSignature()[C

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v1

    .line 5
    :cond_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    if-eqz v1, :cond_1

    const/16 p0, 0x2f

    const/16 v0, 0x2e

    .line 6
    invoke-static {v1, p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C
    .locals 2

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 8
    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[C
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 7

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    aget-object v4, v0, v3

    .line 10
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    if-le v5, p3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-lt v5, p3, :cond_2

    .line 12
    invoke-direct {p0, v4, p2, p3}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_8

    .line 14
    array-length v2, v0

    move v3, v1

    :goto_3
    if-lt v3, v2, :cond_4

    goto :goto_5

    .line 15
    :cond_4
    aget-object v4, v0, v3

    .line 16
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    add-int/lit8 v6, p3, 0x1

    if-le v5, v6, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-lt v5, p3, :cond_7

    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    return-object v4

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 20
    :cond_8
    :goto_5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_d

    .line 21
    array-length v2, v0

    :goto_6
    if-lt v1, v2, :cond_9

    goto :goto_8

    .line 22
    :cond_9
    aget-object v3, v0, v1

    .line 23
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-le v4, p3, :cond_a

    goto :goto_7

    .line 24
    :cond_a
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-lt v4, p3, :cond_c

    .line 25
    instance-of p3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz p3, :cond_b

    .line 26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object p3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {p3, v0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_b
    return-object v3

    :cond_c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 4

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->becomeSimpleParser()Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;->restoreAssistParser(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    return-void
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 6

    const/4 v0, 0x0

    .line 9
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 10
    :try_start_0
    aget-object v1, p1, v0

    instance-of v3, v1, Lorg/eclipse/jdt/internal/core/SourceType;

    if-eqz v3, :cond_0

    .line 11
    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    goto :goto_0

    .line 12
    :cond_0
    check-cast v1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 13
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    .line 14
    array-length v4, v3

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    .line 15
    aput-object v1, p1, v0

    .line 16
    array-length v1, v3

    move v4, v0

    :goto_1
    if-lt v4, v1, :cond_1

    .line 17
    aget-object v0, v3, v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    .line 18
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v1, v0, v2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    goto :goto_2

    .line 19
    :cond_1
    aget-object v5, v3, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    .line 20
    aput-object v5, p1, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    goto :goto_2

    .line 21
    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    aget-object v0, p1, v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->compilerOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v1, v0, v2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    .line 22
    :goto_2
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez p2, :cond_3

    .line 23
    iget-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 24
    :cond_3
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/16 v3, 0xf

    .line 25
    invoke-static {p1, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 27
    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Z)V

    :cond_4
    return-void
.end method

.method public abstract getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;
.end method

.method public initializeImportCaches()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->initializePackageCache()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCachesInitialized:Z

    return-void

    :cond_2
    aget-object v4, v0, v1

    iget-boolean v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v5, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-nez v3, :cond_3

    sub-int v3, v2, v1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportCacheCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportCacheCount:I

    aput-object v4, v3, v5

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v5, :cond_5

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    if-eqz v5, :cond_7

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importsCache:[[[C

    if-nez v5, :cond_6

    sub-int v5, v2, v1

    new-array v5, v5, [[[C

    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importsCache:[[[C

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importsCache:[[[C

    iget v6, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCacheCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCacheCount:I

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v7, v4

    sub-int/2addr v7, v3

    aget-object v3, v4, v7

    const/16 v7, 0x2e

    invoke-static {v4, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v4

    filled-new-array {v3, v4}, [[C

    move-result-object v3

    aput-object v3, v5, v6

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initializePackageCache()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    :goto_0
    return-void
.end method

.method public mustQualifyType([C[C[CI)Z
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCachesInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->initializeImportCaches()V

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importCacheCount:I

    const/16 v4, 0x2e

    if-lt v2, v3, :cond_e

    if-eqz p3, :cond_2

    array-length v2, p3

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->currentPackageName:[C

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x0

    move v3, v0

    :goto_1
    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportCacheCount:I

    if-lt v3, v5, :cond_4

    return v1

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v5, v5, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {v7, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    instance-of v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_8

    if-eqz p3, :cond_7

    array-length v6, p3

    if-eqz v6, :cond_7

    if-nez v2, :cond_5

    invoke-static {p1, p3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v2

    :cond_5
    invoke-static {v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_6

    and-int/lit8 v5, p4, 0x8

    if-eqz v5, :cond_7

    :cond_6
    :goto_2
    move v5, v1

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    array-length v6, p3

    if-nez v6, :cond_7

    :cond_9
    invoke-static {p1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_6

    and-int/lit8 v5, p4, 0x8

    if-eqz v5, :cond_7

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_d

    move p1, v0

    :goto_4
    iget p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportCacheCount:I

    if-lt p1, p3, :cond_a

    return v0

    :cond_a
    if-eq v3, p1, :cond_c

    iget-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->onDemandImportsCache:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object p3, p3, p1

    iget-object p4, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_b

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    if-eqz p3, :cond_c

    return v1

    :cond_b
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {p3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p3

    iget-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iget-object v5, p4, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->nameLookup:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/NameLookup;->findType(Ljava/lang/String;Ljava/lang/String;ZIZ)Lorg/eclipse/jdt/internal/core/NameLookup$Answer;

    move-result-object p3

    if-eqz p3, :cond_c

    return v1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_e
    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->importsCache:[[[C

    aget-object v3, v3, v2

    aget-object v5, v3, v0

    invoke-static {p2, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_11

    if-eqz p3, :cond_10

    array-length p4, p3

    if-nez p4, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {p1, p3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    invoke-static {p1, p2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    goto :goto_6

    :cond_10
    :goto_5
    invoke-static {p1, p2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    :goto_6
    aget-object p2, v3, v1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 4

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    .line 3
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v3, p2, :cond_1

    .line 4
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-lt v3, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->getParser()Lorg/eclipse/jdt/internal/codeassist/impl/AssistParser;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 6
    invoke-direct {p0, v2, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->parseBlockStatements(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    :cond_0
    return-void
.end method
