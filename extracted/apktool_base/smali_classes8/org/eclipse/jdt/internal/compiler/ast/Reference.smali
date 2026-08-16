.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/Reference;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    return-void
.end method

.method public static reportOnlyUselesslyReadLocal(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iput v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    return-void

    :cond_3
    add-int/2addr v1, v2

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-eqz v1, :cond_4

    return-void

    :cond_4
    instance-of p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isLambdaScope()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isMain()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isImplementing()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterWhenImplementingAbstract:Z

    :goto_0
    and-int/2addr v0, p2

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOverriding()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterWhenOverridingConcrete:Z

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedArgument(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedLocalVariable(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public abstract analyseAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 0

    return-object p3
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 1

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNullcheckedFieldAccess(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    move-result p1

    return p1
.end method

.method public checkNullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;JLorg/eclipse/jdt/internal/compiler/flow/FlowContext;I)Z
    .locals 6

    if-eqz p2, :cond_3

    if-lez p6, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    if-eqz v0, :cond_0

    invoke-virtual {p5, p0, p6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullCheckedFieldReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;I)V

    :cond_0
    iget-object p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, p5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p6, v0, v4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->dereferencingNullableExpression(JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return v0

    :cond_1
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFreeTypeVariable()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fieldFreeTypeVariableReference(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;J)V

    return v0

    :cond_2
    iget-wide p5, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long/2addr p5, v2

    cmp-long p5, p5, v4

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullableFieldDereference(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;J)V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V
    .locals 6

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, -0x48

    const/16 v4, 0x8

    const/4 v5, 0x7

    if-eqz v1, :cond_3

    if-eqz p7, :cond_1

    iget-object p7, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p7, p7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p7, v5, :cond_0

    if-eq p7, v4, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_1
    :goto_0
    if-nez p4, :cond_2

    invoke-static {p1, p3, p5, p6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/16 p4, -0x4d

    invoke-virtual {p2, p4, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_3
    if-eqz p7, :cond_5

    iget-object p7, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p7, p7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p7, v5, :cond_4

    if-eq p7, v4, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    :cond_5
    :goto_1
    if-nez p4, :cond_6

    invoke-static {p1, p3, p5, p6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/16 p4, -0x4b

    invoke-virtual {p2, p4, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v3, p4, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public abstract generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V
.end method

.method public abstract generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
.end method

.method public abstract generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V
.end method

.method public isEquivalent(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public lastFieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0x200

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->lastFieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNonNull()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->isNullcheckedFieldAccess(Lorg/eclipse/jdt/internal/compiler/ast/Reference;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isNullable()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p1, 0x10

    return p1

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFreeTypeVariable()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x30

    return p1

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_5

    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBitsToNullStatus(J)I

    move-result p1

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public reportOnlyUselesslyReadPrivateField(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 p3, 0x8000000

    or-int/2addr p1, p3

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isUsedOnlyInCompound()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isOrEnclosedByPrivateType()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p3, p3, 0x400

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->sourceField()Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedPrivateField(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_1
    :goto_0
    return-void
.end method
