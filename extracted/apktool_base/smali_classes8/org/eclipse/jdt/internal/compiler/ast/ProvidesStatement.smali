.class public Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;
.source "SourceFile"


# instance fields
.field public implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;-><init>()V

    return-void
.end method


# virtual methods
.method public getResolvedImplementations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "provides "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, " with "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 14

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    const v3, 0x800524

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidServiceRef(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->serviceInterface:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    move v5, v4

    :goto_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v7, v6

    if-lt v4, v7, :cond_2

    return v5

    :cond_2
    aget-object v6, v6, v4

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v7, 0x1

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v4

    const v8, 0x800518

    invoke-virtual {v6, v8, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTypeReference(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v8

    if-eq v8, v0, :cond_5

    const v6, 0x100051e

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v8

    if-nez v8, :cond_6

    const v6, 0x800525

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v8

    if-nez v8, :cond_7

    const v6, 0x100051d

    goto/16 :goto_3

    :cond_7
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PROVIDER:[C

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    move-object v8, v10

    :cond_9
    if-eqz v8, :cond_b

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_a

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v8

    if-nez v8, :cond_a

    move-object v5, v6

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v9, v9, v4

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v12, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v13, 0x2

    invoke-direct {v11, v12, v5, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {v8, v9, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move v8, v2

    move v5, v7

    goto :goto_2

    :cond_a
    move v8, v2

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x100051a

    goto :goto_2

    :cond_c
    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v8

    if-nez v8, :cond_a

    const v8, 0x100051c

    goto :goto_2

    :cond_e
    :goto_1
    const v8, 0x100051b

    :goto_2
    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    if-nez v9, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v9, v9, v4

    invoke-virtual {v5, v6, v1, v9, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    move v5, v7

    :cond_f
    move v6, v8

    :goto_3
    if-eqz v6, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ProvidesStatement;->implementations:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v8, v4

    invoke-virtual {v5, v6, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidServiceRef(ILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_10
    :goto_4
    move v5, v7

    :cond_11
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_6
    return v2
.end method
