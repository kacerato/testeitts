.class public Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;
.source "SourceFile"


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public endPart1Position:I

.field public endPart2Position:I

.field public javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;-><init>()V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 4
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isOrEnclosedByPrivateType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedPrivateField(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unexpectedStaticModifierForField(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_5
    return-object p3
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v2, v3, :cond_4

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    const/4 p1, 0x0

    if-eqz v1, :cond_3

    const/16 v1, -0x4d

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_3
    const/16 v1, -0x4b

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public getAllAnnotationContexts(ILjava/util/List;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationCollector;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;ILjava/util/List;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    array-length p1, p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getKind()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v9

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v2, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v9, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v2, v8, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, p0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v1, v2, :cond_9

    goto :goto_1

    :cond_9
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v3, v4, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fieldHiding(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fieldHiding(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    :cond_d
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_e
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iput v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {p1, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/high16 v4, 0x100000

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_11

    array-length v3, v3

    :goto_2
    if-lt v7, v3, :cond_f

    goto :goto_3

    :cond_f
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v9, v9, v7

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v9

    const-wide/high16 v11, 0x20000000000000L

    and-long/2addr v9, v11

    cmp-long v9, v9, v5

    if-eqz v9, :cond_10

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_11
    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAnnotationTagBits()J

    move-result-wide v9

    const-wide v11, 0x400000000000L

    and-long/2addr v9, v11

    cmp-long v3, v9, v5

    if-nez v3, :cond_12

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long v3, v3, v9

    if-ltz v3, :cond_12

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingDeprecatedAnnotationForField(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_12
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v3, :cond_13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    goto/16 :goto_7

    :cond_13
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v7, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v9, :cond_14

    invoke-virtual {v7, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    move-object v6, v0

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v4, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-static {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_15
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, v7, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v7, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_4

    :cond_16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v7, v3, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, v3, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v4, :cond_1a

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_1a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_5

    :cond_17
    iget-wide v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v11, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v9, v11

    const-wide/16 v11, 0x80

    and-long/2addr v9, v11

    cmp-long v0, v9, v5

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    invoke-virtual {v0, v7, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_18
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, v3, v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v4, v7, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v4, :cond_1a

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x4000

    if-nez v4, :cond_1a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_1a
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    shl-int/2addr v4, v8

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->castTo(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_1c
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    if-ne v0, v3, :cond_1d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->assignmentHasNoEffect(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1d
    :goto_7
    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_1e
    return-void

    :goto_8
    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    :cond_1f
    throw v0

    :cond_20
    :goto_9
    return-void
.end method

.method public resolveJavadoc(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v3, :cond_0

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    goto :goto_2

    :goto_1
    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    const v2, -0x5ffffe1a

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->computeSeverity(I)I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->computeOuterMostVisibility(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)I

    move-result v0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 p1, p1, -0x8

    or-int/2addr p1, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v0, v3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissing(IIII)V

    :cond_3
    :goto_2
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    return-void
.end method
