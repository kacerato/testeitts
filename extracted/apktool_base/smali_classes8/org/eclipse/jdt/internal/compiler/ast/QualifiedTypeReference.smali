.class public Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.source "SourceFile"


# instance fields
.field public sourcePositions:[J

.field public tokens:[[C


# direct methods
.method public constructor <init>([[C[J)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    const/4 p1, 0x0

    aget-wide v0, p2, p1

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public static rejectAnnotationsOnStaticMemberQualififer(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length p1, p2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalTypeAnnotationsInStaticMemberAccess(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->dimensions()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getMergedAnnotationsOnDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-direct {v1, v2, v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[J)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iput-object p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    or-int/2addr p2, v0

    iput p2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez p3, :cond_0

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->extendedDimensions:I

    :cond_0
    return-object v1
.end method

.method public findNextTypeBinding(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iput-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object p1, v2, p1

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object p3, p3, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    add-int/lit8 p1, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v3

    invoke-direct {p3, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw p1
.end method

.method public getAnnotatableLevels()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v0, v0

    return v0
.end method

.method public getLastToken()[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v3

    if-ne v3, v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v2

    :goto_0
    invoke-direct {v4, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v4

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_4
    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :goto_1
    const/4 v3, 0x0

    if-nez v0, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v4, v4

    :goto_2
    const/4 v5, 0x3

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableJdtDebugCompileMode:Z

    if-nez v7, :cond_7

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    sub-int/2addr v4, v1

    aget-wide v8, v7, v4

    long-to-int v1, v8

    invoke-virtual {v0, v6, p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;II)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-direct {p1, v0, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v2

    :cond_7
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->rejectAnnotationsOnPackageQualifiers(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v6, v5, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v5, v5

    add-int/lit8 v6, v5, -0x1

    move-object v7, v2

    :goto_4
    if-lt v4, v5, :cond_9

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v7

    :cond_9
    invoke-virtual {p0, v4, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->findNextTypeBinding(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_a
    if-nez v4, :cond_b

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v8, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalAccessFromTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v2

    :cond_b
    if-gt v4, v6, :cond_c

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v8, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v8, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->reportDeprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_c
    if-eqz v1, :cond_d

    move-object v8, p1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v9, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->detectHierarchyCycle(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v8

    if-eqz v8, :cond_d

    return-object v2

    :cond_d
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v7, :cond_14

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v9, :cond_e

    add-int/lit8 v10, v4, -0x1

    aget-object v9, v9, v10

    invoke-static {p1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->rejectAnnotationsOnStaticMemberQualififer(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_e
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object v7, v9

    :cond_f
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v7

    goto :goto_6

    :cond_10
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasEnclosingInstanceContext()Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9, v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v7

    goto :goto_6

    :cond_12
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9, v8, v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v7

    goto :goto_6

    :cond_13
    :goto_5
    move-object v7, v8

    goto :goto_6

    :cond_14
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    invoke-virtual {v7, v8, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->recordResolution(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public getTypeName()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p2

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public recordResolution(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->resolutionListeners:[Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2, p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/IQualifiedTypeResolutionListener;->recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public rejectAnnotationsOnPackageQualifiers(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 6

    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length p2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    if-nez v1, :cond_3

    move v3, v0

    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeAnnotationAtQualifiedName(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    aget-object v4, v2, v0

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->misplacedTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 6

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_3
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 6

    .line 7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_3

    .line 9
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v5, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 12
    :cond_3
    :goto_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
