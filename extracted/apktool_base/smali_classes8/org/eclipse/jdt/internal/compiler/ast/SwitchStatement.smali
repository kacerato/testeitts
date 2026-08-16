.class public Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"


# static fields
.field public static final BREAKING:I = 0x3

.field public static final CASE:I = 0x0

.field public static final ESCAPING:I = 0x2

.field public static final FALLTHROUGH:I = 0x1

.field private static final SecretStringVariableName:[C


# instance fields
.field public blockStart:I

.field public breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public caseCount:I

.field public cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

.field constMapping:[I

.field constants:[I

.field public defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

.field private dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

.field duplicateCaseStatementsCounter:I

.field public explicitDeclarations:I

.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field mergedInitStateIndex:I

.field public nConstants:I

.field preSwitchInitStateIndex:I

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

.field public statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

.field stringConstants:[Ljava/lang/String;

.field public switchLabeledRules:Z

.field public synthetic:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " switchDispatchString"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->SecretStringVariableName:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    return-void
.end method

.method private getNConstants()I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v4, v4, v2

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_2

    array-length v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private reportDuplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    :cond_0
    new-array p3, p3, [Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    aput-object p2, p3, v0

    if-eq p1, p2, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    aput-object p1, p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    if-lt v1, p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatementsCounter:I

    aput-object p1, p2, p3

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->duplicateCaseStatements:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object p2, p2, v1

    if-ne p2, p1, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private reportMixingCaseTypes()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    const/4 v2, 0x1

    :goto_1
    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionMixedCase(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    if-eq v3, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->switchExpressionMixedCase(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v3, p3

    invoke-virtual {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v9

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v3, v3, 0x400

    const/4 v10, 0x1

    if-nez v3, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v0, v2, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z

    :cond_1
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>()V

    iput-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;ZZ)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v2

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v2, :cond_a

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v4, v4

    move v13, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    if-lt v5, v4, :cond_3

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->completeNormallyCheck(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto/16 :goto_5

    :cond_3
    iget-object v14, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v14, v14, v5

    iget v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    const/high16 v16, 0x20000000

    if-ge v6, v15, :cond_5

    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v15, v15, v6

    if-ne v14, v15, :cond_5

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    add-int/lit8 v6, v6, 0x1

    if-ne v12, v10, :cond_4

    iget v12, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int v12, v12, v16

    if-nez v12, :cond_4

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->possibleFallThroughCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    :cond_4
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    :goto_3
    move v13, v2

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-ne v14, v15, :cond_7

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-ne v12, v10, :cond_6

    iget v12, v14, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int v12, v12, v16

    if-nez v12, :cond_6

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v12

    iget-object v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->possibleFallThroughCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V

    :cond_6
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v12

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v14, v0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->getFallThroughState(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result v12

    :goto_4
    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v14, v1, v15, v13, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    move-result v13

    const/4 v15, 0x2

    if-ge v13, v15, :cond_9

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v14, v3, v11, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v1, v3, :cond_8

    move v12, v15

    :cond_8
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3, v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticMethodForSwitchEnum(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v2

    iput-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->synthetic:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :cond_b
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->needToCheckFlowInAbsenceOfDefaultBranch()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_c

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_c
    return-object v9

    :cond_d
    :try_start_1
    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/flow/SwitchFlowContext;->initsOnBreak:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_e

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_e
    return-object v1

    :goto_6
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v1, :cond_f

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_f
    throw v0
.end method

.method public branchChainTo(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->becomeDelegateFor(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_0
    return-void
.end method

.method public completeNormallyCheck(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    return-void
.end method

.method public completesByContinue()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->completesByContinue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public doesNotCompleteNormally()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->doesNotCompleteNormally()Z

    move-result v0

    return v0

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->breaksOut([C)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->generateCodeForStringSwitch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void

    :cond_0
    const/4 v11, 0x0

    .line 3
    :try_start_0
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 4
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_1

    iput-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_1
    return-void

    .line 5
    :cond_2
    :try_start_1
    iget v12, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 6
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v2, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 7
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    const/4 v13, 0x0

    if-nez v2, :cond_3

    move v14, v13

    goto :goto_0

    :cond_3
    array-length v2, v2

    move v14, v2

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x380000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    .line 9
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    move v3, v13

    move v4, v3

    :goto_1
    if-lt v3, v2, :cond_6

    .line 10
    new-array v2, v4, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    .line 11
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    move v4, v13

    move v5, v4

    :goto_2
    if-lt v4, v3, :cond_4

    move-object v9, v2

    goto :goto_5

    .line 12
    :cond_4
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v6, v6, v4

    .line 13
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v7, v7

    move v8, v13

    :goto_3
    if-lt v8, v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_5
    iget-object v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v15, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v15, v2, v5

    aput-object v15, v9, v8

    add-int/lit8 v9, v5, 0x1

    .line 15
    aget-object v5, v2, v5

    iget v15, v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v15, v15, 0x2

    iput v15, v5, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    .line 16
    :cond_6
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v5, v5, v3

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v6, v6

    add-int/2addr v4, v6

    .line 17
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_7
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    move v4, v13

    :goto_4
    if-lt v4, v2, :cond_24

    move-object v9, v3

    .line 19
    :goto_5
    new-instance v15, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v15, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    .line 20
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    const/4 v8, 0x1

    if-eqz v2, :cond_8

    move v2, v8

    goto :goto_6

    :cond_8
    move v2, v13

    :goto_6
    if-eqz v2, :cond_9

    .line 21
    iget v3, v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    .line 22
    :cond_9
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v3, :cond_a

    .line 23
    iput-object v15, v3, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    .line 24
    :cond_a
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 25
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 26
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->synthetic:Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/16 v4, -0x48

    invoke-virtual {v10, v4, v3, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 27
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v0, v10, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    .line 28
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeEnumOrdinal([C)V

    .line 29
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iaload()V

    if-nez v2, :cond_b

    .line 30
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_b
    move v4, v2

    goto :goto_8

    .line 31
    :cond_c
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v4, v5, :cond_d

    if-nez v2, :cond_d

    move v4, v13

    goto :goto_7

    :cond_d
    move v4, v8

    .line 32
    :goto_7
    invoke-virtual {v3, v0, v10, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :goto_8
    if-eqz v2, :cond_11

    .line 33
    new-array v6, v14, [I

    move v2, v13

    :goto_9
    if-lt v2, v14, :cond_10

    .line 34
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    new-array v3, v14, [I

    invoke-static {v2, v13, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v14, -0x1

    .line 35
    invoke-static {v3, v13, v2, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sort([III[I)V

    .line 36
    aget v5, v3, v2

    .line 37
    aget v4, v3, v13

    int-to-double v2, v14

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v2, v2, v16

    double-to-long v2, v2

    move/from16 v17, v12

    int-to-long v11, v5

    move/from16 v18, v14

    int-to-long v13, v4

    sub-long/2addr v11, v13

    cmp-long v2, v2, v11

    if-lez v2, :cond_f

    const/high16 v2, 0x7fff0000

    if-le v5, v2, :cond_e

    .line 38
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v11, 0x300000

    cmp-long v2, v2, v11

    if-gez v2, :cond_e

    .line 39
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    invoke-virtual {v10, v15, v2, v6, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    move-object v11, v7

    move v14, v8

    goto :goto_a

    .line 40
    :cond_e
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    .line 41
    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    move-object/from16 v2, p2

    move-object v3, v15

    move-object v13, v6

    move-object v6, v11

    move-object v11, v7

    move-object v7, v13

    move v14, v8

    move-object v8, v12

    .line 42
    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->tableswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;II[I[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    goto :goto_a

    :cond_f
    move-object v13, v6

    move-object v11, v7

    move v14, v8

    .line 43
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    invoke-virtual {v10, v15, v2, v13, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    .line 44
    :goto_a
    iget v2, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v10, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    goto :goto_b

    :cond_10
    move-object v13, v6

    move-object v11, v7

    move/from16 v17, v12

    move/from16 v18, v14

    move v14, v8

    .line 45
    aput v2, v13, v2

    add-int/lit8 v2, v2, 0x1

    move-object v7, v11

    move-object v6, v13

    move v8, v14

    move/from16 v12, v17

    move/from16 v14, v18

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_9

    :cond_11
    move-object v11, v7

    move/from16 v17, v12

    move/from16 v18, v14

    move v14, v8

    if-eqz v4, :cond_12

    .line 46
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    .line 47
    :cond_12
    :goto_b
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v3, -0x1

    if-eqz v2, :cond_17

    .line 48
    array-length v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-lt v4, v2, :cond_13

    goto :goto_e

    .line 49
    :cond_13
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v6, v6, v4

    move/from16 v13, v18

    if-ge v5, v13, :cond_15

    .line 50
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v7, v7, v5

    if-ne v6, v7, :cond_15

    .line 51
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    .line 52
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    if-eq v7, v3, :cond_14

    .line 53
    invoke-virtual {v10, v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 54
    :cond_15
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-ne v6, v7, :cond_16

    .line 55
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    .line 56
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    if-eq v7, v3, :cond_16

    .line 57
    invoke-virtual {v10, v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    .line 58
    :cond_16
    :goto_d
    invoke-virtual {v1, v0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statementGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v18, v13

    goto :goto_c

    .line 59
    :cond_17
    :goto_e
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_18

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v2, :cond_18

    move v8, v14

    goto :goto_f

    :cond_18
    const/4 v8, 0x0

    .line 60
    :goto_f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v2, :cond_19

    if-eqz v8, :cond_19

    move v2, v14

    goto :goto_10

    :cond_19
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_1b

    .line 61
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    if-eq v4, v3, :cond_1a

    .line 62
    invoke-virtual {v10, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    .line 63
    :cond_1a
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newJavaLangIncompatibleClassChangeError()V

    .line 65
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 66
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangIncompatibleClassChangeErrorDefaultConstructor()V

    .line 67
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    .line 68
    :cond_1b
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I

    if-eq v4, v3, :cond_1c

    .line 69
    invoke-virtual {v10, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    .line 70
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I

    invoke-virtual {v10, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    .line 71
    :cond_1c
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v4, v0, :cond_1d

    .line 72
    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 73
    :cond_1d
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    .line 74
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v0, :cond_1e

    if-nez v8, :cond_1e

    .line 75
    iget v0, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v10, v0, v4, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(IIZ)V

    .line 76
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    .line 77
    :cond_1e
    instance-of v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchExpression;

    if-eqz v0, :cond_22

    .line 78
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 81
    :cond_1f
    iget v4, v10, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    if-ne v4, v3, :cond_20

    move v8, v14

    goto :goto_11

    :cond_20
    const/4 v8, 0x0

    :goto_11
    xor-int/lit8 v3, v8, 0x1

    if-nez v8, :cond_21

    if-nez v2, :cond_21

    const/4 v13, 0x0

    goto :goto_12

    :cond_21
    move v13, v14

    .line 82
    :goto_12
    invoke-virtual {v10, v0, v3, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    .line 83
    :cond_22
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move/from16 v5, v17

    invoke-virtual {v10, v5, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_23

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_23
    return-void

    :cond_24
    move v5, v12

    move v13, v14

    .line 85
    :try_start_2
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v6, v6, v4

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v7, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v7, v3, v4

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    .line 86
    iget v6, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v7, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    move v12, v5

    move v14, v13

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 87
    :goto_13
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v2, :cond_25

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    .line 88
    :cond_25
    throw v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void
.end method

.method public generateCodeForStringSwitch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    :try_start_0
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_0

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v4, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    if-eqz v5, :cond_3

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    array-length v8, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_3
    move v8, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v9

    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v11, 0x380000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_7

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    move v10, v7

    :goto_2
    if-lt v10, v9, :cond_6

    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->nConstants:I

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    move v11, v7

    move v12, v11

    :goto_3
    if-lt v11, v10, :cond_4

    goto :goto_6

    :cond_4
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v13, v13, v11

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v14, v14

    move v15, v7

    :goto_4
    if-lt v15, v14, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, v13, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v6, v9, v12

    aput-object v6, v3, v15

    add-int/lit8 v3, v12, 0x1

    aget-object v6, v9, v12

    iget v12, v6, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    add-int/lit8 v15, v15, 0x1

    move v12, v3

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v3, v3, v10

    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v6, v6

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    new-array v9, v3, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    move v6, v7

    :goto_5
    if-lt v6, v3, :cond_20

    :goto_6
    new-array v3, v8, [Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;

    new-array v6, v8, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    new-array v10, v8, [I

    iput-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    move v10, v7

    :goto_7
    if-lt v10, v8, :cond_1f

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_8
    if-lt v9, v8, :cond_1c

    if-eq v10, v8, :cond_8

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    new-array v12, v10, [I

    iput-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    invoke-static {v9, v7, v12, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v9, v10, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-static {v6, v7, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v9

    :cond_8
    new-array v9, v10, [I

    move v12, v7

    :goto_9
    if-lt v12, v10, :cond_1b

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v10, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v12, v10, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v10, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v12, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->initialize(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v12, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-eqz v5, :cond_9

    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    :cond_9
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v13, :cond_a

    iput-object v12, v13, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    :cond_a
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v14, 0x1

    invoke-virtual {v13, v0, v2, v14}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2, v13, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringHashCode()V

    if-eqz v5, :cond_f

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    invoke-virtual {v2, v10, v5, v9, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    move v5, v7

    move v9, v5

    :goto_a
    if-lt v5, v8, :cond_b

    invoke-virtual {v2, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_b

    :cond_b
    aget-object v13, v3, v5

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    if-eqz v5, :cond_c

    if-eq v13, v11, :cond_e

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v2, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    :cond_d
    add-int/lit8 v11, v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    move v9, v11

    move v11, v13

    :cond_e
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    aget-object v13, v3, v5

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->string:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringEquals()V

    aget-object v13, v3, v5

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->label:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v2, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :goto_b
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v5, -0x1

    if-eqz v3, :cond_14

    array-length v3, v3

    move v6, v7

    move v8, v6

    :goto_c
    if-lt v6, v3, :cond_10

    goto :goto_e

    :cond_10
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v9, v9, v6

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    if-ge v8, v11, :cond_12

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v11, v11, v8

    if-ne v9, v11, :cond_12

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object v11, v13, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    if-eq v11, v5, :cond_11

    invoke-virtual {v2, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-ne v9, v11, :cond_13

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iput-object v13, v11, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->preSwitchInitStateIndex:I

    if-eq v11, v5, :cond_13

    invoke-virtual {v2, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_13
    :goto_d
    invoke-virtual {v1, v0, v2, v9}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statementGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_14
    :goto_e
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I

    if-eq v3, v5, :cond_15

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->mergedInitStateIndex:I

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_15
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v3, v0, :cond_16

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_16
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->breakLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v0, :cond_17

    iget v0, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v3, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(IIZ)V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    if-ne v3, v5, :cond_18

    const/4 v7, 0x1

    :cond_18
    const/4 v13, 0x1

    xor-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v0, v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    :cond_19
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_1a
    return-void

    :cond_1b
    const/4 v13, 0x1

    :try_start_2
    aput v12, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_1c
    const/4 v13, 0x1

    aget-object v12, v3, v9

    iget v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    if-eqz v9, :cond_1d

    if-eq v12, v11, :cond_1e

    :cond_1d
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    add-int/lit8 v14, v10, 0x1

    aput v12, v11, v10

    move v11, v12

    move v10, v14

    :cond_1e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_1f
    const/4 v13, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    aget-object v14, v14, v10

    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    aget v15, v15, v10

    aget-object v15, v9, v15

    invoke-direct {v11, v1, v12, v14, v15}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;ILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    aput-object v11, v3, v10

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v11, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v11, v6, v10

    iget v12, v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    :cond_20
    const/4 v13, 0x1

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget-object v10, v10, v6

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v11, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v11, v9, v6

    iput-object v11, v10, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v10, v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v11, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :goto_f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v2, :cond_21

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_21
    throw v0
.end method

.method public getFallThroughState(Lorg/eclipse/jdt/internal/compiler/ast/Statement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 6

    const/4 p2, 0x0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->switchLabeledRules:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->doesNotCompleteNormally()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    invoke-direct {v0, v5, v4, v3}, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;-><init>([CII)V

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/BreakStatement;->isImplicit:Z

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-nez v3, :cond_4

    move v4, p2

    goto :goto_0

    :cond_4
    array-length v4, v3

    :goto_0
    if-nez v4, :cond_5

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aput-object v0, v1, p2

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    goto :goto_1

    :cond_5
    add-int/2addr v1, v4

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    invoke-static {v3, p2, v1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v1, v4

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    :goto_1
    return v2

    :cond_6
    return v1
.end method

.method public ignoreMissingDefaultCase(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)Z
    .locals 0

    const p2, 0x40008000    # 2.0078125f

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTrulyExpression()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needToCheckFlowInAbsenceOfDefaultBranch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "switch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ") {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v0, v0, v1

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public reportMissingEnumConstantCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingEnumConstantCase(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    const-wide/32 v5, 0x310000

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v0, v3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    move v9, v8

    move v10, v9

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v9, v3, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-wide v9, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v10, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectSwitchType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    move v10, v7

    move v9, v8

    goto :goto_2

    :cond_4
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v0, v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v10, v0, v9, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_5
    iget-wide v9, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v11, 0x330000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6

    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_6

    move v9, v7

    move v10, v8

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v10, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->incorrectSwitchType(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_7
    :goto_1
    move v9, v8

    move v10, v9

    :goto_2
    if-eqz v9, :cond_8

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->SecretStringVariableName:[C

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v13

    invoke-direct {v11, v12, v13, v8, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {v0, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->dispatchStringCopy:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput v7, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    :cond_8
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v11, :cond_15

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-direct {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    array-length v11, v11

    new-array v12, v11, [Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iput-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->getNConstants()I

    move-result v12

    iput v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->nConstants:I

    if-nez v9, :cond_9

    new-array v13, v12, [I

    iput-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    new-array v12, v12, [I

    iput-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    goto :goto_3

    :cond_9
    new-array v13, v12, [Ljava/lang/String;

    iput-object v13, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    new-array v12, v12, [I

    iput-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    :goto_3
    move v12, v8

    move v13, v12

    move v14, v13

    :goto_4
    if-lt v12, v11, :cond_b

    if-eq v11, v13, :cond_16

    if-nez v9, :cond_a

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    new-array v11, v13, [I

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    invoke-static {v9, v8, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_a
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    new-array v11, v13, [Ljava/lang/String;

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    invoke-static {v9, v8, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    new-array v11, v13, [I

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    invoke-static {v9, v8, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_f

    :cond_b
    iget v15, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->nConstants:I

    new-array v15, v15, [I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v8, v8, v12

    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v2, :cond_c

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    goto/16 :goto_e

    :cond_c
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v8, v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->resolveCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v5, :cond_14

    array-length v5, v2

    const/4 v6, 0x0

    :goto_6
    if-lt v6, v5, :cond_d

    goto/16 :goto_d

    :cond_d
    aget-object v7, v2, v6

    move-object/from16 v16, v2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v7, v2, :cond_e

    move/from16 v17, v5

    goto :goto_b

    :cond_e
    if-nez v9, :cond_11

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v2

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v13, :cond_f

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    aput v2, v7, v13

    move/from16 v17, v5

    goto :goto_a

    :cond_f
    move/from16 v17, v5

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    aget v5, v5, v7

    if-ne v5, v2, :cond_10

    move-object v5, v8

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    move/from16 v18, v2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget v19, v15, v7

    aget-object v2, v2, v19

    invoke-direct {v1, v5, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->reportDuplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;I)V

    goto :goto_8

    :cond_10
    move/from16 v18, v2

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    move/from16 v2, v18

    goto :goto_7

    :cond_11
    move/from16 v17, v5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_9
    if-lt v5, v13, :cond_12

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    aput-object v2, v5, v13

    :goto_a
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constMapping:[I

    aput v13, v2, v13

    aput v14, v15, v13

    add-int/lit8 v13, v13, 0x1

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    move/from16 v5, v17

    const/4 v7, 0x1

    goto :goto_6

    :cond_12
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->stringConstants:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move-object v7, v8

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    move-object/from16 v18, v2

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    aget v19, v15, v5

    aget-object v2, v2, v19

    invoke-direct {v1, v7, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->reportDuplicateCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;I)V

    goto :goto_c

    :cond_13
    move-object/from16 v18, v2

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v18

    goto :goto_9

    :cond_14
    :goto_d
    add-int/lit8 v14, v14, 0x1

    :goto_e
    add-int/lit8 v12, v12, 0x1

    const-wide/32 v5, 0x310000

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_15
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->blockStart:I

    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undocumentedEmptyBlock(II)V

    :cond_16
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->reportMixingCaseTypes()V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-nez v2, :cond_18

    invoke-virtual {v1, v4, v10}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->ignoreMissingDefaultCase(Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v10, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    const/4 v5, 0x1

    iput-boolean v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->hasMissingSwitchDefault:Z

    goto :goto_10

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v1, v10, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingDefaultCase(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;ZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_18
    :goto_10
    if-eqz v10, :cond_20

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long v2, v5, v7

    if-ltz v2, :cond_20

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v2, :cond_19

    iget-boolean v2, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportMissingEnumCaseDespiteDefault:Z

    if-eqz v2, :cond_20

    :cond_19
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_11

    :cond_1a
    array-length v2, v2

    :goto_11
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    if-lt v2, v4, :cond_20

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enumConstantCount()I

    move-result v4

    if-eq v2, v4, :cond_20

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_12
    if-lt v5, v4, :cond_1b

    goto :goto_16

    :cond_1b
    aget-object v6, v3, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v7, v7, 0x4000

    if-nez v7, :cond_1c

    :goto_13
    const/4 v9, 0x1

    goto :goto_15

    :cond_1c
    const/4 v7, 0x0

    :goto_14
    if-lt v7, v2, :cond_1e

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz v7, :cond_1d

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-virtual {v1, v0, v6}, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->reportMissingEnumConstantCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_13

    :cond_1e
    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->constants:[I

    aget v10, v10, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v10, :cond_1f

    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_20
    :goto_16
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_21
    return-void

    :goto_17
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v2, :cond_22

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    :cond_22
    throw v0
.end method

.method public statementGenerateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Statement;)V
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {p3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
