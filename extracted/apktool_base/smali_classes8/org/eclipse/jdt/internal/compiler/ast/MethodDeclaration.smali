.class public Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
.source "SourceFile"


# instance fields
.field public returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 11

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isUsed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v3, 0x30000000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOrEnclosedByPrivateType()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedPrivateMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    if-eq v1, v2, :cond_4

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    if-ne v1, v2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isNative()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_9

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    array-length v1, v1

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v4, v4, v3

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v6, 0x8000000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, p3, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->analyseArguments(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;[Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_b

    move p2, v2

    goto :goto_2

    :cond_b
    move p2, v0

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v3, v3

    :goto_3
    if-lt v2, v3, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4, p3, v5, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result p2

    const/4 v5, 0x2

    if-ge p2, v5, :cond_d

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4, v5, v1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq p1, p2, :cond_11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_10
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-eq p3, p2, :cond_12

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->shouldReturn(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_6

    :cond_11
    :goto_5
    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr p1, v0

    if-nez p1, :cond_12

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_12
    :goto_6
    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->complainIfUnusedExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->checkUnusedParameters(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p1

    if-nez p1, :cond_15

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->isDefaultMethod()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOverriding()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_7

    :cond_13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodCanBePotentiallyDeclaredStatic(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;)V

    goto :goto_8

    :cond_14
    :goto_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodCanBeDeclaredStatic(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;)V

    :cond_15
    :goto_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->checkUnclosedCloseables(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_16
    :goto_9
    return-void

    :catch_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    :goto_a
    return-void
.end method

.method public getAllAnnotationContexts(ILjava/util/List;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isDefaultMethod()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    return-void
.end method

.method public printReturnType(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveStatements()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/high16 v2, 0x100000

    if-eqz v1, :cond_0

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_0

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodWithConstructorName(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;)V

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v5, :cond_5

    array-length v5, v5

    move v6, v4

    :goto_1
    if-lt v6, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v7, v7, v6

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v9, v2

    or-int/2addr v8, v9

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-eqz v1, :cond_4

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/high16 v6, 0x10000000

    if-nez v5, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-wide v7, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long v9, v7, v9

    if-gez v9, :cond_7

    goto/16 :goto_4

    :cond_7
    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-wide v10, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v12, 0x2000000000000L

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_8

    move v12, v3

    goto :goto_3

    :cond_8
    move v12, v4

    :goto_3
    const-wide/16 v16, 0x200

    and-long v10, v10, v16

    cmp-long v10, v10, v14

    if-eqz v10, :cond_9

    move v4, v3

    :cond_9
    const-wide/32 v10, 0x320000

    const v13, 0x10000008

    if-eqz v12, :cond_c

    if-nez v4, :cond_c

    and-int v4, v9, v13

    if-ne v4, v6, :cond_a

    goto :goto_4

    :cond_a
    cmp-long v4, v7, v10

    if-ltz v4, :cond_b

    const v4, 0x20000008

    and-int/2addr v4, v9

    const/high16 v5, 0x20000000

    if-ne v4, v5, :cond_b

    goto :goto_4

    :cond_b
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodMustOverride(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;J)V

    goto :goto_4

    :cond_c
    iget-object v4, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v4

    if-nez v4, :cond_e

    and-int v4, v9, v13

    if-ne v4, v6, :cond_d

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingOverrideAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_4

    :cond_d
    cmp-long v4, v7, v10

    if-ltz v4, :cond_10

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportMissingOverrideAnnotationForInterfaceMethodImplementation:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingOverrideAnnotationForInterfaceMethodImplementation(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_4

    :cond_e
    cmp-long v4, v7, v10

    if-ltz v4, :cond_10

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportMissingOverrideAnnotationForInterfaceMethodImplementation:Z

    if-eqz v4, :cond_10

    and-int v4, v9, v13

    if-eq v4, v6, :cond_f

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingOverrideAnnotationForInterfaceMethodImplementation(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_10
    :goto_4
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v4

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v4

    const/high16 v5, 0x1000000

    if-eq v4, v3, :cond_15

    const/4 v3, 0x2

    if-eq v4, v3, :cond_13

    const/4 v3, 0x3

    if-eq v4, v3, :cond_11

    goto/16 :goto_7

    :cond_11
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    if-ne v3, v4, :cond_12

    goto/16 :goto_7

    :cond_12
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    if-ne v3, v4, :cond_15

    goto/16 :goto_7

    :cond_13
    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x340000

    cmp-long v1, v3, v7

    if-ltz v1, :cond_1a

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const v7, 0x1000400

    and-int/2addr v7, v1

    if-ne v7, v5, :cond_1a

    const-wide/32 v7, 0x350000

    cmp-long v3, v3, v7

    if-ltz v3, :cond_14

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    goto :goto_5

    :cond_14
    const v3, 0x10008

    and-int/2addr v1, v3

    if-eqz v1, :cond_1a

    :goto_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNeedBody(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_7

    :cond_15
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    and-int v4, v3, v5

    if-eqz v4, :cond_16

    and-int/lit16 v1, v3, 0x100

    if-nez v1, :cond_1a

    and-int/lit16 v1, v3, 0x400

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNeedBody(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_7

    :cond_16
    and-int/lit16 v4, v3, 0x100

    if-nez v4, :cond_19

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_17

    goto :goto_6

    :cond_17
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-nez v3, :cond_18

    if-eqz v1, :cond_1a

    :cond_18
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_7

    :cond_19
    :goto_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->methodNeedingNoBody(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;)V

    :cond_1a
    :goto_7
    invoke-super/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolveStatements()V

    const/high16 v1, 0x20100000

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1b

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v2, 0x30000000

    and-int/2addr v1, v2

    if-ne v1, v6, :cond_1b

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->overridesMethodWithoutSuperInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_1b
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 5

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_4

    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v0, :cond_7

    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_9

    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_8

    goto :goto_7

    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_b

    array-length v0, v0

    :goto_8
    if-lt v1, v0, :cond_a

    goto :goto_9

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method

.method public typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    return-object v0
.end method
