.class Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;
.super Lorg/eclipse/jdt/core/dom/BindingResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;,
        Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;
    }
.end annotation


# instance fields
.field astNodesToBlockScope:Ljava/util/Map;

.field bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

.field bindingsToAstNodes:Ljava/util/Map;

.field fromJavaProject:Z

.field isRecoveringBindings:Z

.field newAstToOldAst:Ljava/util/Map;

.field private scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

.field workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 7
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    .line 8
    iput-boolean p4, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    .line 9
    iput-boolean p5, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    .line 14
    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    .line 15
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    invoke-direct {p3, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 16
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    .line 17
    iput-boolean p4, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    .line 18
    iput-boolean p5, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    return-void
.end method

.method private getDeclaringMember(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p2

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    goto :goto_3

    :cond_1
    aget-object v2, v2, v1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-gt v3, v4, :cond_3

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt v3, v4, :cond_3

    instance-of p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    if-eqz p1, :cond_2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getDeclaringMember(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v1, p1, p2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodOrLambdaBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_6

    return-object v0

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p1

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object v0
.end method

.method private declared-synchronized getMethodOrLambdaBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    if-nez v1, :cond_1

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IMethodBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    :try_start_2
    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;-><init>(Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/MethodBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object p2, p2, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_4
    monitor-exit p0

    return-object v0
.end method

.method private getSyntheticOuterLocalVariables(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/core/dom/IVariableBinding;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, v1, :cond_0

    return-object v0

    :cond_0
    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0
.end method

.method private getTypeAnnotations(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    sub-int/2addr p2, p1

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    if-nez v0, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_3

    if-gtz p2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v4, v0, v3

    if-nez v4, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v4, p3

    move p2, v3

    :goto_3
    if-ge p2, v2, :cond_6

    if-gtz p1, :cond_4

    goto :goto_4

    :cond_4
    aget-object v5, v0, p2

    if-nez v5, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-lez v4, :cond_7

    new-array v1, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-static {v0, v3, v1, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-object v1
.end method

.method private getTypeCount(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)I
    .locals 5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length p1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_0

    return v3

    :cond_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    aget-object v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    aget-object v4, v1, v2

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private insertAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 4

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    if-gez p2, :cond_4

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v1

    if-nez v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_3

    :goto_1
    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_5
    :goto_3
    return-object p1
.end method

.method private declared-synchronized internalGetTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x80

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/TypeBinding;->createTypeBinding(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/TypeBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_4
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/TypeBinding;->createTypeBinding(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/TypeBinding;

    move-result-object p2

    goto :goto_1

    :cond_7
    new-instance p2, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_8
    :try_start_5
    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_9

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_6
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_a

    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_7
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/TypeBinding;->createTypeBinding(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/TypeBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized findDeclaringNode(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 12
    monitor-exit p0

    return-object v0

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 14
    monitor-exit p0

    return-object v0

    .line 15
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized findDeclaringNode(Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/IMethodBinding;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/eclipse/jdt/core/dom/IMethodBinding;

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getMethodDeclaration()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 8
    :cond_2
    :try_start_2
    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lorg/eclipse/jdt/core/dom/IVariableBinding;

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getVariableDeclaration()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    new-instance v1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    invoke-direct {v1, p1, p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerAnnotationBindingsToASTBindings:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    move-object v1, p1

    :cond_3
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_4

    const/16 v1, 0x104

    if-eq v0, v1, :cond_4

    const/16 v1, 0x404

    if-eq v0, v1, :cond_4

    const/16 v1, 0x804

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/TypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    return-object p1

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1

    :cond_5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    return-object p1
.end method

.method public getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$1;-><init>(Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;)V

    return-object v0
.end method

.method public declared-synchronized getCorrespondingNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getMemberValuePairBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodOrLambdaBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IModuleBinding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/ModuleBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IPackageBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/core/dom/RecoveredPackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/eclipse/jdt/core/dom/PackageBinding;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/core/dom/PackageBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized getTypeBinding(Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 12
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTypeBinding(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/Type;)V

    .line 9
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTypeBinding(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)V

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->internalGetTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_5

    .line 24
    iget-boolean v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    if-nez v2, :cond_0

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x80

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 25
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 27
    monitor-exit p0

    return-object v0

    .line 28
    :cond_1
    :try_start_2
    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    .line 29
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    monitor-exit p0

    return-object v0

    .line 31
    :cond_2
    :try_start_3
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v1, :cond_5

    .line 32
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 35
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 37
    monitor-exit p0

    return-object v0

    .line 38
    :cond_4
    :try_start_4
    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    .line 39
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    monitor-exit p0

    return-object v0

    .line 41
    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 42
    :cond_5
    :goto_1
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    .line 6
    new-instance p2, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;

    invoke-direct {v0, p0, p2}, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)V

    move-object p2, v0

    .line 8
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p2

    .line 10
    :cond_2
    :try_start_2
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz p2, :cond_5

    .line 11
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 14
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object p2, p2, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 16
    monitor-exit p0

    return-object p2

    .line 17
    :cond_4
    :try_start_3
    new-instance p2, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    monitor-exit p0

    return-object p2

    .line 20
    :cond_5
    :goto_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_6
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public getWorkingCopyOwner()Lorg/eclipse/jdt/core/WorkingCopyOwner;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    return-object v0
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    .line 18
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->inferredReturnType:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 7
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isResolvedTypeInferredFromExpectedType(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 12
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    .line 14
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized recordScope(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getCompilerAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v2

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public resolveArrayType(Lorg/eclipse/jdt/core/dom/ITypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getDimensions()I

    move-result v1

    add-int/2addr v1, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    move v1, p2

    :goto_0
    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-nez v2, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->insertAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot be called on a recovered type binding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveBoxing(Lorg/eclipse/jdt/core/dom/Expression;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public resolveConstantExpressionValue(Lorg/eclipse/jdt/core/dom/Expression;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-object v1

    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :pswitch_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized resolveConstructor(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveConstructor(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 9
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resolveConstructor(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 14
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    .line 17
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    .line 18
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized resolveConstructor(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 20
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    .line 22
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveExpressionType(Lorg/eclipse/jdt/core/dom/Expression;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    check-cast p1, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ThisReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_2
    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_3
    :try_start_3
    check-cast p1, Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_4
    :try_start_4
    check-cast p1, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveExpressionType(Lorg/eclipse/jdt/core/dom/Expression;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_5
    :try_start_5
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_6
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_6
    :try_start_7
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Literal;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Literal;->literalType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :sswitch_7
    :try_start_8
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1

    :catch_0
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x7 -> :sswitch_7
        0x9 -> :sswitch_6
        0xb -> :sswitch_7
        0xd -> :sswitch_6
        0xe -> :sswitch_5
        0x10 -> :sswitch_7
        0x16 -> :sswitch_7
        0x1b -> :sswitch_7
        0x20 -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_6
        0x24 -> :sswitch_4
        0x25 -> :sswitch_7
        0x26 -> :sswitch_7
        0x28 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2d -> :sswitch_2
        0x2f -> :sswitch_7
        0x30 -> :sswitch_7
        0x34 -> :sswitch_1
        0x39 -> :sswitch_7
        0x3a -> :sswitch_0
        0x3e -> :sswitch_7
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x56 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public declared-synchronized resolveField(Lorg/eclipse/jdt/core/dom/FieldAccess;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    .line 4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveField(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    .line 9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveImport(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v0

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v4, p1

    invoke-static {p1, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    if-eqz p1, :cond_d

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    monitor-exit p0

    return-object v1

    :cond_3
    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_5

    monitor-exit p0

    return-object v1

    :cond_5
    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {v2, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    if-eqz p1, :cond_d

    if-eqz v0, :cond_b

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, p1

    :goto_1
    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move-object v1, p1

    :goto_2
    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_7
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    move-object v1, p1

    :goto_3
    monitor-exit p0

    return-object v1

    :catch_0
    :cond_d
    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public resolveMember(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized resolveMemberValuePair(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->compilerElementPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMemberValuePairBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveMethod(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 4
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->enclosingScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getDeclaringMember(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0, v3, v4, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodOrLambdaBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 7
    monitor-exit p0

    return-object v2

    .line 8
    :cond_1
    :try_start_1
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;

    if-eqz v2, :cond_2

    .line 9
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getSyntheticOuterLocalVariables(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->setSyntheticOuterLocals([Lorg/eclipse/jdt/core/dom/IVariableBinding;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_3
    monitor-exit p0

    return-object v1

    .line 14
    :cond_4
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveMethod(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 3

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 17
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 18
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 19
    monitor-exit p0

    return-object v2

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 24
    :cond_2
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveMethod(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    .line 28
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveMethod(Lorg/eclipse/jdt/core/dom/MethodReference;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 32
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    .line 33
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 34
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 36
    monitor-exit p0

    return-object v1

    .line 37
    :cond_1
    monitor-exit p0

    return-object p1

    .line 38
    :cond_2
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveMethod(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    .line 42
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 43
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resolveModule(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized resolveName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p1, Lorg/eclipse/jdt/core/dom/Name;->index:I

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_b

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ge v1, v9, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-object v7

    :cond_0
    :try_start_2
    invoke-static {v8, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_1
    invoke-static {v8, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-object v1, v7

    :goto_0
    :try_start_3
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_4
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_24

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    if-ne v1, v9, :cond_8

    :try_start_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->isTypeReference()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_6
    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_7
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v2, :cond_24

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v2

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_24

    array-length v2, v8

    sub-int/2addr v2, v5

    aget-object v2, v8, v2

    invoke-virtual {v1, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_24

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_7

    monitor-exit p0

    return-object p1

    :cond_7
    :try_start_8
    new-instance p1, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {p1, p0, v1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_9
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_a

    sub-int/2addr v1, v9

    sub-int/2addr v1, v5

    if-gez v1, :cond_9

    goto :goto_1

    :cond_9
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_a
    :goto_1
    monitor-exit p0

    return-object v7

    :cond_b
    :try_start_a
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v2, :cond_13

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v8, :cond_c

    monitor-exit p0

    return-object v7

    :cond_c
    :try_start_b
    iget-object v9, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v9, v9

    if-ne v1, v9, :cond_e

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_d

    instance-of p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz p1, :cond_d

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_c
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_e
    if-ltz v1, :cond_24

    :try_start_d
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez p1, :cond_10

    :try_start_e
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_e
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez p1, :cond_f

    monitor-exit p0

    return-object v7

    :cond_f
    :try_start_f
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-static {v0, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    goto :goto_2

    :cond_10
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-static {v0, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1
    :try_end_f
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    :catch_1
    move-object p1, v7

    :goto_2
    :try_start_10
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_11

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_11
    :try_start_11
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_12

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_12
    monitor-exit p0

    return-object v7

    :cond_13
    :try_start_12
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v2, :cond_1d

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v9, v8

    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v11, 0x40000

    and-int/2addr v10, v11

    if-eqz v10, :cond_14

    move v10, v5

    goto :goto_3

    :cond_14
    move v10, v6

    :goto_3
    if-ltz v1, :cond_24

    iget-object v11, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez v11, :cond_15

    monitor-exit p0

    return-object v7

    :cond_15
    if-ne v9, v1, :cond_17

    if-nez v10, :cond_17

    :try_start_13
    invoke-static {v8, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v9, 0x20000

    and-int/2addr v8, v9

    if-eqz v8, :cond_16

    move v6, v5

    :cond_16
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v2

    invoke-virtual {v11, v1, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    goto :goto_5

    :cond_17
    if-eqz v10, :cond_18

    goto :goto_4

    :cond_18
    invoke-static {v8, v6, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v8

    :goto_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v1

    invoke-virtual {v11, v8, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1
    :try_end_13
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_5

    :catch_2
    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_24

    :try_start_14
    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p1, :cond_19

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_19
    :try_start_15
    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1a

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1a
    :try_start_16
    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p1, :cond_1b

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1b
    :try_start_17
    instance-of p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_1c

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1c
    monitor-exit p0

    return-object v7

    :cond_1d
    :try_start_18
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_20

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_1f

    array-length v2, v1

    if-nez v2, :cond_1e

    goto :goto_6

    :cond_1e
    aget-object v1, v1, v6

    if-eqz v1, :cond_24

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1f
    :goto_6
    monitor-exit p0

    return-object v7

    :cond_20
    :try_start_19
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_21

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v1, :cond_24

    monitor-exit p0

    return-object v1

    :cond_21
    :try_start_1a
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v1, :cond_24

    monitor-exit p0

    return-object v1

    :cond_22
    :try_start_1b
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v1, :cond_23

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getModuleBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v1, :cond_24

    monitor-exit p0

    return-object v1

    :cond_23
    :try_start_1c
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_24

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v1, :cond_24

    monitor-exit p0

    return-object v1

    :cond_24
    :goto_7
    :try_start_1d
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v1, :cond_29

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->isTypeReference()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_25
    :try_start_1e
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_26

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_26
    :try_start_1f
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v0, :cond_39

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v0

    if-eq v0, v4, :cond_27

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    if-eq v0, v3, :cond_27

    goto/16 :goto_9

    :cond_27
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_39

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-eqz v0, :cond_28

    monitor-exit p0

    return-object v0

    :cond_28
    :try_start_20
    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/VariableBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->compilerBindingsToASTBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_29
    :try_start_21
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz v1, :cond_2a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2a
    :try_start_22
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_2b

    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/SimpleName;

    if-eqz v1, :cond_2b

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->isVar()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_8

    :cond_2b
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :goto_8
    monitor-exit p0

    return-object p1

    :cond_2c
    :try_start_23
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz p1, :cond_2e

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_2d

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2d
    :try_start_24
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2e
    :try_start_25
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz p1, :cond_2f

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2f
    :try_start_26
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz p1, :cond_32

    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz p1, :cond_30

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p1, :cond_30

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_30
    :try_start_27
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    if-nez p1, :cond_31

    monitor-exit p0

    return-object v7

    :cond_31
    :try_start_28
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_32
    :try_start_29
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz p1, :cond_33

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_33
    :try_start_2a
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz p1, :cond_34

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_34
    :try_start_2b
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p1, :cond_35

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_35
    :try_start_2c
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    if-eqz p1, :cond_36

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_36
    :try_start_2d
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz p1, :cond_37

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_37
    :try_start_2e
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz p1, :cond_38

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_38
    :try_start_2f
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz p1, :cond_39

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_39
    :goto_9
    monitor-exit p0

    return-object v7

    :goto_a
    :try_start_30
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolvePackage(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getOnlyPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v2, v2, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catch_0
    :cond_4
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveReference(Lorg/eclipse/jdt/core/dom/MemberRef;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 8
    :cond_1
    :try_start_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 9
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveReference(Lorg/eclipse/jdt/core/dom/MethodRef;)Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 11
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 13
    :cond_0
    :try_start_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 15
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized resolveType(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    .line 10
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 11
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getDeclaringMember(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v2

    .line 12
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->internalGetTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 13
    monitor-exit p0

    return-object v1

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 18
    :cond_2
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public resolveType(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 21
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 22
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 23
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 25
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized resolveType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    .line 27
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isVar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    check-cast p1, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 29
    :try_start_1
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v2, :cond_1

    .line 30
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 31
    :cond_1
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 32
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    .line 33
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 34
    monitor-exit p0

    return-object v1

    .line 35
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 36
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    .line 37
    monitor-exit p0

    return-object v1

    .line 38
    :cond_3
    :try_start_3
    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 39
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 40
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p1

    .line 41
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isVarargs()Z

    move-result v0

    .line 42
    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-ne p1, v1, :cond_4

    .line 43
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 44
    :cond_4
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeAnnotations(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 45
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 46
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 47
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isQualifiedType()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 48
    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/core/dom/QualifiedType;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/QualifiedType;->index:I

    goto :goto_0

    .line 49
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isParameterizedType()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 50
    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    iget v5, v5, Lorg/eclipse/jdt/core/dom/ParameterizedType;->index:I

    goto :goto_0

    :cond_8
    move v5, v3

    .line 51
    :goto_0
    invoke-direct {p0, v2}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeCount(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)I

    move-result v2

    if-eq v5, v2, :cond_12

    :goto_1
    if-ne v2, v5, :cond_9

    goto/16 :goto_2

    .line 52
    :cond_9
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 53
    :cond_a
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_e

    .line 54
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/SimpleType;

    if-eqz v2, :cond_b

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v2, :cond_b

    .line 55
    check-cast p1, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 56
    :cond_b
    :try_start_6
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/QualifiedType;

    if-eqz v2, :cond_c

    .line 57
    check-cast p1, Lorg/eclipse/jdt/core/dom/QualifiedType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    .line 58
    :cond_c
    :try_start_7
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    if-eqz v2, :cond_d

    .line 59
    check-cast p1, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    .line 60
    :cond_d
    :try_start_8
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 61
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    .line 62
    :cond_e
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v2, :cond_f

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->isTypeReference()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 63
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    .line 64
    :cond_f
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v2, :cond_10

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->isTypeReference()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 65
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    .line 66
    :cond_10
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    if-eqz v2, :cond_11

    .line 67
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    :cond_11
    move-object v4, v1

    :cond_12
    :goto_2
    if-eqz v4, :cond_19

    .line 68
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 69
    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 70
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_13

    .line 71
    monitor-exit p0

    return-object v1

    .line 72
    :cond_13
    :try_start_9
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 73
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p1

    .line 74
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_14

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_3

    :cond_14
    const/4 v3, 0x0

    .line 75
    :goto_3
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    if-ne p1, v0, :cond_15

    .line 76
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    .line 77
    :cond_15
    :try_start_a
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, p1, v4, v3}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeAnnotations(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    .line 78
    :cond_16
    :try_start_b
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 79
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    .line 80
    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    .line 81
    :cond_17
    :try_start_c
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object p1

    .line 82
    :cond_18
    :try_start_d
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    check-cast p1, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->VOID:Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    if-ne p1, v0, :cond_19

    .line 84
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object p1

    .line 85
    :cond_19
    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveType(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 88
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 89
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getDeclaringMember(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v1

    .line 90
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->internalGetTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 91
    monitor-exit p0

    return-object v2

    .line 92
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 96
    :cond_2
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveTypeBindingForName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v1, p1, Lorg/eclipse/jdt/core/dom/Name;->index:I

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_11

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v7, v6

    if-ne v7, v1, :cond_0

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-ge v1, v7, :cond_4

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_3
    invoke-static {v6, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v6, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-object p1, v5

    :goto_0
    :try_start_4
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_5
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_22

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    if-ne v1, v7, :cond_b

    :try_start_6
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->isTypeReference()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_7
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_6

    monitor-exit p0

    return-object v5

    :cond_6
    :try_start_8
    aget-object p1, p1, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez p1, :cond_7

    monitor-exit p0

    return-object v5

    :cond_7
    :try_start_9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p1, :cond_a

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_9
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_b
    :try_start_a
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez p1, :cond_c

    monitor-exit p0

    return-object v5

    :cond_c
    :try_start_b
    array-length v0, p1

    sub-int/2addr v1, v7

    if-ne v0, v1, :cond_d

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_c
    aget-object v0, p1, v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v5

    :cond_e
    :try_start_d
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_10

    sub-int/2addr v1, v3

    aget-object p1, p1, v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez p1, :cond_f

    monitor-exit p0

    return-object v5

    :cond_f
    :try_start_e
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_10
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_11
    :try_start_f
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v2, :cond_19

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v3, :cond_12

    monitor-exit p0

    return-object v5

    :cond_12
    :try_start_10
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v6, v6

    if-ne v1, v6, :cond_14

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_13

    instance-of p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz p1, :cond_13

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz p1, :cond_13

    monitor-exit p0

    return-object v5

    :cond_13
    :try_start_11
    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_14
    if-ltz v1, :cond_22

    :try_start_12
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->astNodesToBlockScope:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez p1, :cond_16

    :try_start_13
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_13
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez p1, :cond_15

    monitor-exit p0

    return-object v5

    :cond_15
    :try_start_14
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-static {v0, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    goto :goto_2

    :cond_16
    iget-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-static {v0, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1
    :try_end_14
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_2

    :catch_1
    move-object p1, v5

    :goto_2
    :try_start_15
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v0, :cond_17

    monitor-exit p0

    return-object v5

    :cond_17
    :try_start_16
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_18
    monitor-exit p0

    return-object v5

    :cond_19
    :try_start_17
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz p1, :cond_1f

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/high16 v2, 0x40000

    and-int/2addr p1, v2

    if-eqz p1, :cond_1a

    monitor-exit p0

    return-object v5

    :cond_1a
    :try_start_18
    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v6, v2

    if-ltz v1, :cond_22

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v7, :cond_1b

    monitor-exit p0

    return-object v5

    :cond_1b
    if-ne v6, v1, :cond_1d

    :try_start_19
    invoke-static {v2, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x20000

    and-int/2addr v2, v6

    if-eqz v2, :cond_1c

    goto :goto_3

    :cond_1c
    move v3, v4

    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p1

    invoke-virtual {v7, v1, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    goto :goto_4

    :cond_1d
    invoke-static {v2, v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p1

    invoke-virtual {v7, v1, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->getImport([[CZZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1
    :try_end_19
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_4

    :catch_2
    move-object p1, v5

    :goto_4
    if-eqz p1, :cond_22

    :try_start_1a
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1e

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1e
    monitor-exit p0

    return-object v5

    :cond_1f
    :try_start_1b
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_21

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-nez p1, :cond_20

    monitor-exit p0

    return-object v5

    :cond_20
    :try_start_1c
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_21
    :try_start_1d
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_22

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz p1, :cond_22

    monitor-exit p0

    return-object p1

    :cond_22
    :try_start_1e
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-eqz p1, :cond_23

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p1, :cond_23

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_23
    :try_start_1f
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p1, :cond_24

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_24
    :try_start_20
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    if-eqz p1, :cond_25

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_25
    :try_start_21
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz p1, :cond_26

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_26
    :try_start_22
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz p1, :cond_28

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-nez p1, :cond_27

    monitor-exit p0

    return-object v5

    :cond_27
    :try_start_23
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_28
    :try_start_24
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz p1, :cond_2a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_29
    :try_start_25
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2a
    :try_start_26
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz p1, :cond_2b

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2b
    :try_start_27
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz p1, :cond_2c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2c
    :try_start_28
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz p1, :cond_2e

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    if-nez p1, :cond_2d

    monitor-exit p0

    return-object v5

    :cond_2d
    :try_start_29
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IVariableBinding;->getType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2e
    :try_start_2a
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    if-eqz p1, :cond_30

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    if-nez p1, :cond_2f

    monitor-exit p0

    return-object v5

    :cond_2f
    :try_start_2b
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_30
    :try_start_2c
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz p1, :cond_31

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_31
    :try_start_2d
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    if-eqz p1, :cond_32

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_32
    :try_start_2e
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz p1, :cond_33

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_33
    :try_start_2f
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    if-eqz p1, :cond_35

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    if-nez p1, :cond_34

    monitor-exit p0

    return-object v5

    :cond_34
    :try_start_30
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_35
    :try_start_31
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz p1, :cond_37

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    if-nez p1, :cond_36

    monitor-exit p0

    return-object v5

    :cond_36
    :try_start_32
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_37
    monitor-exit p0

    return-object v5

    :goto_5
    :try_start_33
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveTypeParameter(Lorg/eclipse/jdt/core/dom/TypeParameter;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public resolveUnboxing(Lorg/eclipse/jdt/core/dom/Expression;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public declared-synchronized resolveVariable(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    return-object v2

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 10
    :cond_2
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveVariable(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 13
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    .line 14
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_0

    .line 15
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 16
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 17
    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_1

    .line 18
    monitor-exit p0

    return-object v2

    .line 19
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingTables:Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;->bindingKeysToBindings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_2
    monitor-exit p0

    return-object v0

    .line 23
    :cond_3
    monitor-exit p0

    return-object v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v0, "boolean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "char"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "byte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "void"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "java.lang.Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    const-string v0, "java.lang.String"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    const-string v0, "java.lang.StringBuffer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_STRINGBUFFER:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_4
    const-string v0, "java.lang.Throwable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_5
    const-string v0, "java.lang.Exception"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_EXCEPTION:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_6
    const-string v0, "java.lang.RuntimeException"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_RUNTIMEEXCEPTION:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    const-string v0, "java.lang.Error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ERROR:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    const-string v0, "java.lang.Class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangClass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    const-string v0, "java.lang.Cloneable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangCloneable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_a
    const-string v0, "java.io.Serializable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaIoSerializable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_b
    const-string v0, "java.lang.Boolean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BOOLEAN:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_c
    const-string v0, "java.lang.Byte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_BYTE:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_d
    const-string v0, "java.lang.Character"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CHARACTER:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_e
    const-string v0, "java.lang.Double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DOUBLE:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_f
    const-string v0, "java.lang.Float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_FLOAT:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto/16 :goto_1

    :cond_10
    const-string v0, "java.lang.Integer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INTEGER:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_11
    const-string v0, "java.lang.Long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_LONG:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_12
    const-string v0, "java.lang.Short"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SHORT:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_13
    const-string v0, "java.lang.Void"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_VOID:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_14
    const-string v0, "java.lang.AssertionError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ASSERTIONERROR:[[C

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    goto :goto_1

    :cond_15
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :cond_16
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_17

    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isRecovered()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_17

    monitor-exit p0

    return-object p1

    :cond_17
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    return-object v0
.end method

.method public declared-synchronized store(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateKey(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->newAstToOldAst:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
