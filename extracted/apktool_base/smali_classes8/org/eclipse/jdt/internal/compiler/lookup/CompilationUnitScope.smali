.class public Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
.super Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.source "SourceFile"


# instance fields
.field private captureID:I

.field connectingHierarchy:Z

.field constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

.field public currentPackageName:[[C

.field public environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public importPtr:I

.field public imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

.field private inferredInvocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/ast/Invocation;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

.field public referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field private referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

.field private referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

.field private rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

.field private simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

.field private skipCachingImports:Z

.field private tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

.field public topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field public typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

.field uniqueInferenceVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable$InferenceVarKey;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->captureID:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->uniqueInferenceVariables:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 7
    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    .line 9
    iget-boolean p1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceReferenceInfo:Z

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    .line 11
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    .line 12
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    .line 13
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    .line 14
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    goto :goto_1

    .line 15
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    .line 16
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    .line 17
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    .line 18
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    .line 19
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    .line 2
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method

.method public static synthetic c(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->lambda$0(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private checkAndRecordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[[C)I
    .locals 11

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, p4

    invoke-virtual {p0, p4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p4, v0

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-wide/32 v3, 0x340000

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v2, :cond_6

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p2, :cond_14

    move p2, v7

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-lt p2, v2, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v9, :cond_5

    if-eq p1, v8, :cond_5

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-static {v0, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long p1, p1, v3

    if-ltz p1, :cond_4

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p2, p1, p3, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    iput-object p2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return v6

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    return v6

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    move-object v8, p1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_7
    move-object v8, v1

    :goto_3
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v9

    if-ne v9, v5, :cond_8

    move-object v9, v8

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_8
    move-object v9, v8

    :goto_4
    invoke-virtual {p3, v9, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isTypeUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    invoke-virtual {v10, v9, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_9
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-static {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_d

    move p2, v7

    :goto_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-lt p2, v0, :cond_a

    return v6

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v0, v0, p2

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;->conflictingTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-direct {v0, p4, v7, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v1, v8, :cond_c

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v0

    if-eq v1, v0, :cond_c

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-direct {v0, p4, v7, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V

    :cond_c
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v10, p2

    move p2, v7

    :goto_7
    if-lt p2, v10, :cond_11

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-wide v1, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long p2, v1, v3

    if-ltz p2, :cond_10

    :goto_8
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-lt v7, p2, :cond_e

    goto :goto_9

    :cond_e
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object p2, p2, v7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_f

    iget-object p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_f

    if-eq p1, p4, :cond_f

    iget-object p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v1, p4

    add-int/lit8 v1, v1, -0x1

    aget-object p4, p4, v1

    invoke-static {v0, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p4

    if-eqz p4, :cond_f

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {v0}, [[C

    move-result-object p4

    invoke-direct {p3, p4, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return v6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    return v6

    :cond_11
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object p4, p4, p2

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {p4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    return v6

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {p2, v0, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_14
    :goto_a
    if-nez v1, :cond_15

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-direct {p2, p4, v7, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V

    goto :goto_b

    :cond_15
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    invoke-direct {p2, p4, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V

    :goto_b
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    return p1
.end method

.method private checkMoreStaticBindings([[CLorg/eclipse/jdt/internal/compiler/util/HashtableOfType;ILorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 3

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleStaticImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0, p2, p4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndRecordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[[C)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p2, p4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndRecordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[[C)I

    :cond_1
    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    and-int/lit8 p3, p3, -0x9

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkMoreStaticBindings([[CLorg/eclipse/jdt/internal/compiler/util/HashtableOfType;ILorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    :cond_2
    return-void
.end method

.method private findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 9

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    move v5, v4

    :goto_0
    const/16 v6, 0x1e

    if-lt v5, p2, :cond_1

    .line 6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p2, p1, v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;-><init>([[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p2

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 8
    aget-object v5, p1, v5

    if-ge v7, p2, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-virtual {v1, v5, v0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    .line 9
    instance-of v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v5, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_6

    .line 12
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v0, :cond_5

    return-object v1

    :cond_5
    move-object v1, v3

    goto :goto_3

    .line 13
    :cond_6
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v6, :cond_8

    .line 14
    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    :goto_2
    move-object v1, v5

    goto :goto_3

    .line 16
    :cond_8
    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v5, v7

    goto :goto_0

    :cond_9
    move v7, v4

    :goto_3
    if-nez v1, :cond_d

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x300000

    cmp-long v0, v0, v5

    if-ltz v0, :cond_a

    .line 18
    invoke-virtual {p0, p1, v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemType([[CILorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    .line 19
    :cond_a
    aget-object v0, p1, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, v0, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 20
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v7, v4

    goto :goto_5

    .line 21
    :cond_c
    :goto_4
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 22
    :cond_d
    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_5
    const/4 v1, 0x2

    if-lt v7, p2, :cond_f

    .line 23
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 24
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_e
    return-object v0

    .line 25
    :cond_f
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v5, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 26
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 27
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v2, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_10
    add-int/lit8 v1, v7, 0x1

    .line 28
    aget-object v5, p1, v7

    .line 29
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_11

    .line 30
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_11
    move v7, v1

    goto :goto_5
.end method

.method private findSingleImport([[CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x300000

    cmp-long p2, p2, v2

    const/4 p3, 0x0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_0
    const/4 p2, 0x0

    aget-object p2, p1, p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, p2, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :cond_1
    return-object p2

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleStaticImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_3
    array-length p2, p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1
.end method

.method private findSingleStaticImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 7

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v3, :cond_2

    move-object p2, v0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p2

    if-eqz p2, :cond_1

    instance-of v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v1, 0xe

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move-object v5, v3

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v0, v4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v3

    :cond_5
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_6

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findStaticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_7

    return-object v4

    :cond_7
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-ne v0, v1, :cond_a

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_a
    return-object p2

    :cond_b
    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-eq v0, v1, :cond_c

    return-object v3

    :cond_c
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0
.end method

.method private findStaticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->initializeForStaticImports()V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v0, v2, :cond_3

    array-length v2, v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1
.end method

.method private static synthetic lambda$0(ILjava/lang/Integer;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v2, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    aput-object p1, v0, v1

    return-void
.end method

.method private typeToRecord(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x84

    if-eq v1, v2, :cond_3

    const/16 v2, 0x104

    if-eq v1, v2, :cond_1

    const/16 v2, 0x204

    if-eq v1, v2, :cond_3

    const/16 v2, 0x404

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1004

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_3

    const v2, 0x8004

    if-eq v1, v2, :cond_3

    const v2, 0x10004

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    return-object v0

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public buildFieldsAndMethods()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFieldsAndMethods()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 12

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getPackageName()[[C

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v3, :cond_0

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->packageIsNotExpectedPackage(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_1
    array-length v2, v1

    if-nez v2, :cond_2

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :cond_2
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->createScope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->checkAndSetModifiers()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnamedPackageInNamedModule(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    :cond_5
    :goto_0
    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->packageCollidesWithType(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-void

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_a

    array-length v2, v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move v1, v0

    goto :goto_2

    :cond_a
    :goto_1
    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->createPackageInfoType()V

    move v1, v3

    :goto_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v4, :cond_c

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_c

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v0

    iput-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    goto :goto_3

    :cond_b
    move v1, v0

    :cond_c
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    :goto_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v2, :cond_d

    move v4, v0

    goto :goto_5

    :cond_d
    array-length v4, v2

    :goto_5
    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move v5, v0

    move v6, v5

    :goto_6
    if-lt v5, v4, :cond_f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v1, p1

    if-eq v6, v1, :cond_e

    new-array v1, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {p1, v0, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    return-void

    :cond_f
    aget-object v7, v2, v5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    if-eqz v9, :cond_11

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isMissingType([C)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_7

    :cond_10
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;-><init>()V

    throw p1

    :cond_11
    :goto_7
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType0([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValid(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_12

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    instance-of v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v9

    if-nez v9, :cond_12

    move-object v8, v10

    :cond_12
    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    invoke-static {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValid(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Z

    move-result v9

    if-eqz v9, :cond_14

    instance-of v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-nez v8, :cond_14

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    if-nez v8, :cond_13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTypes(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_8

    :cond_13
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;-><init>()V

    throw p1

    :cond_14
    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_15

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object v8

    if-eqz v8, :cond_15

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->publicClassMustMatchFileName(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_15
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v8, p0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v8, v10, v7, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v7

    if-eqz v1, :cond_16

    if-nez v5, :cond_16

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_16
    if-eqz v7, :cond_17

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    add-int/lit8 v9, v6, 0x1

    aput-object v7, v8, v6

    move v6, v9

    :cond_17
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6
.end method

.method public checkAndSetImports()V
    .locals 14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v4, v5, :cond_1

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithPackage(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveModuleDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getDefaultImports()[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    return-void

    :cond_4
    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    move v3, v1

    :goto_2
    const/high16 v4, 0x20000

    if-lt v3, v0, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v5, v5, v3

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_f

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG:[[C

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v5

    if-nez v5, :cond_f

    move v5, v0

    :goto_3
    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getDefaultImports()[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    move-result-object v2

    aget-object v2, v2, v1

    aput-object v2, v6, v1

    const/4 v7, 0x1

    move v8, v1

    move v9, v7

    :goto_4
    if-lt v8, v0, :cond_7

    if-le v5, v9, :cond_6

    new-array v0, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-static {v6, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    :cond_6
    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    return-void

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v10, v2, v8

    iget-object v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    move v2, v1

    :goto_5
    if-lt v2, v9, :cond_b

    iget v2, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->currentPackageName:[[C

    invoke-static {v11, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    array-length v2, v11

    invoke-direct {p0, v11, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v9, 0x1

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-direct {v12, v11, v7, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    aput-object v12, v6, v9

    move v9, v3

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v9, 0x1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    const/4 v12, 0x0

    invoke-direct {v3, v11, v1, v12, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    aput-object v3, v6, v9

    move v9, v2

    goto :goto_7

    :cond_b
    aget-object v3, v6, v2

    iget-boolean v12, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    iget v13, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v13, v4

    if-eqz v13, :cond_c

    move v13, v7

    goto :goto_6

    :cond_c
    move v13, v1

    :goto_6
    if-ne v12, v13, :cond_e

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v3

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v12

    if-ne v3, v12, :cond_e

    aget-object v3, v6, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {v11, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public checkParameterizedTypes()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedTypeBounds()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->checkParameterizedSuperTypeCollisions()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localCheckRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p2, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/e;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/e;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->findDefaultNullnessTarget(Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public cleanUpInferenceContexts()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->inferredInvocations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->inferredInvocations:Ljava/util/ArrayList;

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->cleanUpInferenceContexts()V

    goto :goto_0
.end method

.method public computeConstantPoolName(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)[C
    .locals 7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v3

    const/16 v4, 0x24

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v4, v5, v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v3

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v3

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v4, v5, v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->get([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    invoke-virtual {v0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v3
.end method

.method public connectTypeHierarchy()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public faultInImports()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->suppressImportErrors:Z

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->skipCachingImports:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    return-void

    :cond_2
    array-length v2, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x20000

    if-lt v5, v2, :cond_3

    move-object v10, v6

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v8, v8, v5

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v8, v7

    if-nez v8, :cond_1f

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v5, v5

    add-int/2addr v5, v2

    invoke-direct {v8, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;-><init>(I)V

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v9, v5

    move v5, v4

    :goto_1
    if-lt v5, v9, :cond_1e

    move-object v10, v8

    :goto_2
    add-int/lit8 v11, v2, 0x1

    move v5, v4

    :goto_3
    if-lt v5, v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v8, v8, v5

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_1d

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG:[[C

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v9, v12}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v8

    if-nez v8, :cond_1d

    move v11, v2

    :goto_4
    new-array v5, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getDefaultImports()[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    move-result-object v8

    aget-object v8, v8, v4

    aput-object v8, v5, v4

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-boolean v8, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableJdtDebugCompileMode:Z

    move v9, v4

    move v12, v9

    :goto_5
    if-lt v9, v2, :cond_b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    array-length v2, v1

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-le v2, v5, :cond_5

    new-array v2, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    array-length v5, v1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    move v1, v4

    :goto_6
    if-lt v1, v5, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->suppressImportErrors:Z

    if-eqz v1, :cond_6

    if-eqz v12, :cond_6

    goto :goto_7

    :cond_6
    move v3, v4

    :goto_7
    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->skipCachingImports:Z

    return-void

    :cond_7
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v2, v2, v1

    iget-boolean v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-nez v6, :cond_8

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v6, :cond_9

    :cond_8
    instance-of v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v8, v7

    sub-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    aget-object v13, v5, v9

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    move v5, v4

    :goto_8
    iget v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->importPtr:I

    if-lt v5, v11, :cond_19

    iget v5, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    array-length v5, v14

    invoke-direct {v0, v14, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual {v11, v13, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->importProblem(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto/16 :goto_a

    :cond_c
    instance-of v11, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v11, :cond_d

    move-object v15, v5

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v6

    invoke-virtual {v15, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    instance-of v15, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v15, :cond_d

    if-nez v8, :cond_d

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v11

    iget v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v5, v6, v11, v14, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;II)V

    goto/16 :goto_a

    :cond_d
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v11, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImportPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto/16 :goto_a

    :cond_e
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    invoke-direct {v6, v14, v3, v5, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;)V

    goto/16 :goto_a

    :cond_f
    const/16 v5, 0xd

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v6

    invoke-direct {v0, v14, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleImport([[CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v6, :cond_10

    if-nez v8, :cond_10

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v6, v13, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    iget-object v11, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v11, v11

    sub-int/2addr v11, v3

    aget-wide v14, v6, v11

    const-wide/32 v16, 0xffff

    and-long v14, v14, v16

    long-to-int v6, v14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v14

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v11, v5, v14, v13, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;II)V

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v6

    const/4 v11, 0x3

    if-eq v6, v11, :cond_12

    if-nez v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v13, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->importProblem(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    :cond_11
    move v12, v3

    goto/16 :goto_a

    :cond_12
    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotImportPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto/16 :goto_a

    :cond_13
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v6, :cond_16

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_16

    move-object v6, v5

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v13, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->importProblem(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto/16 :goto_a

    :cond_14
    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0, v6, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v11

    invoke-virtual {v6, v11, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getVisibleFor(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    :cond_15
    instance-of v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    if-eqz v11, :cond_16

    if-nez v8, :cond_16

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;

    iget-object v5, v13, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    iget-object v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v11, v11

    sub-int/2addr v11, v3

    aget-wide v14, v5, v11

    long-to-int v5, v14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v14

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v11, v6, v14, v13, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conflictingPackagesFromModules(Lorg/eclipse/jdt/internal/compiler/lookup/SplitPackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;II)V

    goto :goto_a

    :cond_16
    invoke-direct {v0, v5, v10, v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkAndRecordImportBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[[C)I

    move-result v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v6

    if-ne v6, v3, :cond_18

    const/16 v5, 0xc

    invoke-direct {v0, v14, v10, v5, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkMoreStaticBindings([[CLorg/eclipse/jdt/internal/compiler/util/HashtableOfType;ILorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_a

    :cond_18
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x4

    invoke-direct {v0, v14, v10, v5, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->checkMoreStaticBindings([[CLorg/eclipse/jdt/internal/compiler/util/HashtableOfType;ILorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    goto :goto_a

    :cond_19
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->tempImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v6, v6, v5

    iget-boolean v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    iget v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v15, v7

    if-eqz v15, :cond_1a

    move v15, v3

    goto :goto_9

    :cond_1a
    move v15, v4

    :goto_9
    if-ne v11, v15, :cond_1c

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v11

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v15

    if-ne v11, v15, :cond_1c

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {v14, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedImport(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    :cond_1b
    :goto_a
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_1e
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v6, v6, v5

    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v8, v10, v6}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public faultInTypes()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInImports()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolvePackageDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->resolveTypeDirectives(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->checkPackageConflict(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->faultInTypesForFieldsAndMethods()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public findImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    array-length p2, p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p3, 0xd

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleImport([[CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultImports()[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG:[[C

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->isClassPathCorrect([[CLorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG:[[C

    invoke-direct {v4, v5, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;-><init>([[CZLorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    filled-new-array {v4}, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    move-result-object v0

    iput-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->defaultImports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    return-object v0
.end method

.method public final getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 0

    if-eqz p2, :cond_0

    array-length p2, p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findImport([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p2, 0xd

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleImport([[CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1
.end method

.method public hasDefaultNullnessFor(II)Z
    .locals 2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localNonNullByDefaultValue(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDefaultNullness()I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    return-object v0
.end method

.method public nextCaptureID()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->captureID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->captureID:I

    return v0
.end method

.method public problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v1
.end method

.method public recordQualifiedReference([[C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordRootReference([C)V

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;->contains([[C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;->add([[C)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    new-array v3, v0, [[C

    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordRootReference([C)V

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    :cond_4
    :goto_1
    return-void
.end method

.method public recordReference(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeToRecord(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference([[C[C)V

    :cond_0
    return-void
.end method

.method public recordReference([[C[C)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    .line 2
    array-length p1, p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordRootReference([C)V

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    return-void
.end method

.method public recordRootReference([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->contains([C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->add([C)V

    :cond_1
    return-void
.end method

.method public recordSimpleReference([C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->contains([C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->add([C)V

    :cond_1
    return-void
.end method

.method public recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeToRecord(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->containsIdentical(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeToRecord(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->containsIdentical(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeToRecord(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->containsIdentical(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public registerInferredInvocation(Lorg/eclipse/jdt/internal/compiler/ast/Invocation;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->inferredInvocations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->inferredInvocations:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->inferredInvocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resolveSingleImport(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->findSingleImport([[CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p2

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p2, :cond_5

    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-object p1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz p2, :cond_4

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    array-length p2, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, p2, :cond_2

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    aget-object v3, v3, v1

    if-eq v3, p1, :cond_3

    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_5
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    return-object p1
.end method

.method public storeDependencyInfo()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedSuperTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;->size:I

    new-array v4, v2, [[[C

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->qualifiedReferences:[[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    new-array v5, v3, [[C

    move v1, v0

    :goto_3
    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->simpleNameReferences:[[C

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->size:I

    new-array v4, v2, [[C

    :goto_4
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->rootReferences:[[C

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->rootReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elementAt(I)[C

    move-result-object v1

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->simpleNameReferences:Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleNameVector;->elementAt(I)[C

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->qualifiedReferences:Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/CompoundNameVector;->elementAt(I)[[C

    move-result-object v3

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x2e

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v2

    invoke-static {v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    goto :goto_5

    :cond_4
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    :goto_5
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->containsIdentical(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referencedTypes:Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v3, v2

    move v4, v0

    :goto_6
    if-lt v4, v3, :cond_a

    goto :goto_7

    :cond_a
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSuperTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--- CompilationUnit Scope : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
