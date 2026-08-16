.class public Lorg/eclipse/jdt/internal/compiler/ast/Assignment;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# instance fields
.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v3, p3

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v10

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->analyseResourceLeaks:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->isAnyCloseable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v0, v1, :cond_1

    :cond_0
    move v6, v13

    goto :goto_0

    :cond_1
    move v6, v12

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v7, v10, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->preConnectTrackerAcrossAssignment(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_1
    move-object v14, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->analyseAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v15

    if-eqz v6, :cond_3

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->handleResourceAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto :goto_3

    :cond_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FakedTrackingVariable;->cleanUpAfterAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_3
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v15, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v6

    const/4 v14, 0x2

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x2

    if-eqz v10, :cond_4

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v0, v18

    cmp-long v0, v0, v16

    if-nez v0, :cond_4

    if-ne v6, v14, :cond_4

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/16 v4, 0x301

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordUsingNullReference(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;ILorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_4
    iget-boolean v0, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-wide v1, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x340000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    move v12, v13

    :cond_5
    invoke-virtual {v0, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullAnnotatedVariableBinding(Z)Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v15

    move-object v8, v4

    move v4, v6

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ILorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v6

    const/4 v0, 0x4

    if-ne v6, v0, :cond_7

    instance-of v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v1, :cond_7

    iget-boolean v1, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    if-eqz v1, :cond_7

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    move v13, v14

    :cond_6
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v9, v0, v13}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordNullCheckedFieldReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;I)V

    :cond_7
    if-eqz v10, :cond_8

    iget-object v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v0, v18

    cmp-long v0, v0, v16

    if-nez v0, :cond_8

    invoke-virtual {v15, v10, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    invoke-virtual {v9, v10, v6}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_8
    return-object v15
.end method

.method public checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->getLastField(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq p3, v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x204

    if-ne v1, v2, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->wildcardAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeRawFieldAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {v1, p1, p2, p0, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public getLastField(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_2

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x7

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p1

    :cond_2
    array-length p1, v2

    sub-int/2addr p1, v1

    aget-object p1, v2, p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v0

    return-object v0
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p1

    return p1
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const/16 p1, 0x28

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isCatchParameter()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isParameter()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v5, -0x801

    and-long/2addr v3, v5

    iput-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isVolatile()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->assignmentHasNoEffect(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;[C)V

    :cond_5
    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v1, v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_8

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v0

    :cond_a
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_b

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_b

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_c
    :goto_1
    return-object v2

    :cond_d
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionShouldBeAVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v2
.end method

.method public resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, 0x2000

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->possibleAccidentalBooleanAssignment(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;)V

    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->checkAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v0
.end method

.method public statementExpression()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
