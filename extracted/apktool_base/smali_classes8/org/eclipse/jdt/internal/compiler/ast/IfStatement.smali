.class public Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field elseInitStateIndex:I

.field public elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field mergedInitStateIndex:I

.field thenInitStateIndex:I

.field public thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenInitStateIndex:I

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    .line 4
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->mergedInitStateIndex:I

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 7
    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz p1, :cond_0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 8
    :cond_0
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 9
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/ast/Statement;II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenInitStateIndex:I

    .line 12
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    .line 13
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->mergedInitStateIndex:I

    .line 14
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 15
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 16
    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz p1, :cond_0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 17
    :cond_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    .line 18
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    if-eqz p1, :cond_1

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    iput p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 19
    :cond_1
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/EmptyStatement;

    if-eqz p1, :cond_2

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 20
    :cond_2
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 21
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v5, p3

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v9, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4, v9, v10, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v3, v4, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v11

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eq v3, v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v11

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget v4, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    add-int/2addr v4, v11

    iput v4, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->safeInitsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    if-eqz v3, :cond_3

    invoke-virtual {v4, v11}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    if-eqz v6, :cond_4

    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_4
    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v12, v7, 0x3

    if-nez v12, :cond_5

    iget v12, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v12, v12, 0x3

    if-eqz v12, :cond_5

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_3

    :cond_5
    and-int/lit8 v7, v7, 0x3

    if-nez v7, :cond_6

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_6

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_6
    :goto_3
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isKnowDeadCodePattern(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportDeadCodeInTrivialIfStatement:Z

    if-nez v7, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    move v7, v11

    :goto_4
    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v12

    invoke-virtual {v12, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v12

    iput v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenInitStateIndex:I

    if-nez v3, :cond_8

    iget v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_a

    :cond_8
    if-eqz v7, :cond_9

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v12, v4, v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    goto :goto_5

    :cond_9
    iget v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v12, v12, -0x101

    iput v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_a
    :goto_5
    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v12, v9, v10, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v12, :cond_b

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    iget v12, v4, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v12, v11

    if-eqz v12, :cond_c

    iget v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v12, v13

    iput v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_c
    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v12, :cond_11

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v4, v13, :cond_d

    iget v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v14, 0x20000000

    and-int/2addr v13, v14

    if-nez v13, :cond_d

    instance-of v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;

    if-nez v12, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    iget-object v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryElse(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v12

    invoke-virtual {v12, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v12

    iput v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    if-nez v6, :cond_e

    iget v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_10

    :cond_e
    if-eqz v7, :cond_f

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v12, v0, v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    goto :goto_6

    :cond_f
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_10
    :goto_6
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, v9, v10, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_11
    move-object v2, v0

    invoke-virtual {v9, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->correlateTrackingVarsIfElse(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    const/4 v12, 0x1

    move-object v0, v4

    move v1, v6

    move v4, v12

    move-object/from16 v5, p3

    move-object v6, p0

    invoke-static/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedOptimizedBranchesIfElse(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;ZZLorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;Z)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v1

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->mergedInitStateIndex:I

    iget v1, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    sub-int/2addr v1, v11

    iput v1, v10, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    return-object v0
.end method

.method public completesByContinue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->completesByContinue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->completesByContinue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public doesNotCompleteNormally()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p2

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v10, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    if-eq v1, v2, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_4
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isEmptyBlock()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v11, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v11, v4

    :goto_3
    const/4 v12, -0x1

    if-eqz v5, :cond_d

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v8, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v11, :cond_8

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v3, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    move-object v5, v3

    move-object v13, v5

    goto :goto_4

    :cond_8
    move-object v13, v3

    move-object v5, v10

    :goto_4
    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    move-object v3, v13

    :goto_5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenInitStateIndex:I

    if-eq v1, v12, :cond_9

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenInitStateIndex:I

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, p1, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-eqz v11, :cond_11

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->branchChainTo(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_a
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    if-eq v1, v12, :cond_b

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_c
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, p1, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_10

    if-eq v1, v2, :cond_e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v8, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto :goto_6

    :cond_e
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    :goto_6
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    if-eq v1, v12, :cond_f

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseInitStateIndex:I

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_f
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {v1, p1, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_7

    :cond_10
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v8, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_11
    :goto_7
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->mergedInitStateIndex:I

    if-eq v1, v12, :cond_12

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->mergedInitStateIndex:I

    invoke-virtual {v8, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_12
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "else\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->thenStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;->elseStatement:Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/IfStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
