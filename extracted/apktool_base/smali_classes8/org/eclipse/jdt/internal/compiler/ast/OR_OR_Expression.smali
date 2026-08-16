.class public Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;
.super Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;
.source "SourceFile"


# instance fields
.field mergedInitStateIndex:I

.field rightInitStateIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->rightInitStateIndex:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    return-object p3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->rightInitStateIndex:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v4

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fakeReachable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v2

    invoke-virtual {p3, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInitsWithoutSideEffect()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->safeInitsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3, v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->conditional(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    return-object p2
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v3, :cond_1

    if-eqz v9, :cond_0

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v7, v8, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_3
    :goto_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    if-eq v2, v10, :cond_4

    invoke-virtual {v8, v7, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_4
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_5
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v12, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    const/4 v13, 0x1

    if-eq v1, v3, :cond_6

    move v14, v13

    goto :goto_1

    :cond_6
    move v14, v11

    :goto_1
    if-eqz v14, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    move v15, v13

    goto :goto_2

    :cond_7
    move v15, v11

    :goto_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    if-eq v1, v3, :cond_8

    move/from16 v16, v13

    goto :goto_3

    :cond_8
    move/from16 v16, v11

    :goto_3
    if-eqz v16, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v17, v13

    goto :goto_4

    :cond_9
    move/from16 v17, v11

    :goto_4
    if-eqz v14, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v7, v8, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v15, :cond_b

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    :cond_b
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->rightInitStateIndex:I

    if-eq v1, v10, :cond_c

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_c
    if-eqz v16, :cond_d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v7, v8, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    :goto_5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    if-eq v1, v10, :cond_e

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_e
    if-eqz v9, :cond_13

    if-eqz v14, :cond_f

    if-eqz v15, :cond_f

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_7

    :cond_f
    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_6

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    :goto_6
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v1

    if-lez v1, :cond_12

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_11

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_7

    :cond_11
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_7

    :cond_12
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :goto_7
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_8

    :cond_13
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :goto_8
    return-void
.end method

.method public generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v10, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    if-eq v1, v10, :cond_1

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_1
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v11, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v1, v2, :cond_3

    move v3, v12

    goto :goto_0

    :cond_3
    move v3, v11

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    move v13, v12

    goto :goto_1

    :cond_4
    move v13, v11

    :goto_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    if-eq v1, v2, :cond_5

    move v14, v12

    goto :goto_2

    :cond_5
    move v14, v11

    :goto_2
    if-eqz v14, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    move v15, v12

    goto :goto_3

    :cond_6
    move v15, v11

    :goto_3
    if-nez v9, :cond_b

    if-eqz p3, :cond_10

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    if-eqz v13, :cond_8

    if-eqz p5, :cond_7

    invoke-virtual/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_7
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto/16 :goto_6

    :cond_8
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->rightInitStateIndex:I

    if-eq v1, v10, :cond_9

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p5, :cond_a

    if-nez v14, :cond_a

    move v6, v12

    goto :goto_4

    :cond_a
    move v6, v11

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    if-eqz p5, :cond_10

    if-eqz v15, :cond_10

    invoke-virtual/range {p2 .. p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_6

    :cond_b
    if-nez p3, :cond_10

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v6, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/lit8 v16, v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    if-eqz v13, :cond_c

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_6

    :cond_c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->rightInitStateIndex:I

    if-eq v1, v10, :cond_d

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p5, :cond_e

    if-nez v14, :cond_e

    move v6, v12

    goto :goto_5

    :cond_e
    move v6, v11

    :goto_5
    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eqz p5, :cond_f

    if-eqz v14, :cond_f

    if-nez v15, :cond_f

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_f
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_10
    :goto_6
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;->mergedInitStateIndex:I

    if-eq v1, v10, :cond_11

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_11
    return-void
.end method

.method public isCompactableOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getDirectBinding(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->comparingIdenticalExpressions(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_0
    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/OR_OR_Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
