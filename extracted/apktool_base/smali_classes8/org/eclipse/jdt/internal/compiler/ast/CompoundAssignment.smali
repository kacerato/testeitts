.class public Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;
.super Lorg/eclipse/jdt/internal/compiler/ast/Assignment;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/OperatorIds;


# instance fields
.field public operator:I

.field public preAssignImplicitConversion:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 p2, p2, -0x2001

    const/high16 p4, 0x10000

    or-int/2addr p2, p4

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->analyseAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->localVariableBinding()Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->markAsDefinitelyNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    const/4 v0, 0x4

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->markFinallyNullStatus(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;I)V

    :cond_1
    return-object p1
.end method

.method public checkCastCompatibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 9

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    move-object v3, p1

    move-object v4, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    if-eqz p3, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public operatorToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "unknown operator"

    return-object v0

    :pswitch_0
    const-string v0, ">>="

    return-object v0

    :pswitch_1
    const-string v0, "%="

    return-object v0

    :pswitch_2
    const-string v0, "*="

    return-object v0

    :pswitch_3
    const-string v0, "+="

    return-object v0

    :pswitch_4
    const-string v0, "-="

    return-object v0

    :pswitch_5
    const-string v0, "<<="

    return-object v0

    :pswitch_6
    const-string v0, "/="

    return-object v0

    :pswitch_7
    const-string v0, "^="

    return-object v0

    :cond_0
    const-string v0, ">>>="

    return-object v0

    :cond_1
    const-string v0, "|="

    return-object v0

    :cond_2
    const-string v0, "&="

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operatorToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v3, :cond_1

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v10, :cond_13

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v6, v6, v8

    const/4 v8, 0x1

    if-ltz v6, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const/16 v9, 0xb

    if-eqz v6, :cond_6

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    const/16 v11, 0xc

    if-nez v6, :cond_4

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v6, v9, :cond_4

    if-eq v6, v11, :cond_4

    invoke-virtual {v5, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-static {v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v8

    goto :goto_1

    :cond_4
    move-object v6, v10

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v13

    if-nez v13, :cond_5

    iget v13, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v13, v9, :cond_5

    if-eq v13, v11, :cond_5

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v2

    goto :goto_2

    :cond_6
    move-object v5, v2

    move-object v6, v10

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->restrainUsageToNumericTypes()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->operatorOnlyValidOnNumericType(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_7
    iget v11, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget v13, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v14, 0xf

    if-gt v11, v14, :cond_8

    if-le v13, v14, :cond_a

    :cond_8
    if-eq v11, v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_9
    move v13, v8

    :cond_a
    sget-object v15, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    aget-object v15, v15, v7

    shl-int/lit8 v17, v11, 0x4

    add-int v13, v17, v13

    aget v13, v15, v13

    if-nez v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_b
    const/16 v15, 0xe

    if-ne v7, v15, :cond_e

    if-ne v11, v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v18, 0x330000

    cmp-long v7, v7, v18

    if-gez v7, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_c
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-nez v7, :cond_d

    const/4 v7, 0x5

    if-ne v11, v7, :cond_e

    :cond_d
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_e
    and-int/lit8 v7, v13, 0xf

    invoke-static {v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->wellKnownType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->checkCastCompatibility()Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v11, v9, :cond_f

    iget v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v11, v9, :cond_f

    invoke-virtual {v0, v1, v10, v8, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v10, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_f
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    ushr-int/lit8 v5, v13, 0x10

    and-int/2addr v5, v14

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->wellKnownType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v10}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    ushr-int/lit8 v5, v13, 0x8

    and-int/2addr v5, v14

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->wellKnownType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v12, :cond_10

    const/16 v4, 0x200

    move/from16 v16, v4

    goto :goto_3

    :cond_10
    const/16 v16, 0x0

    :goto_3
    or-int v4, v16, v17

    or-int/2addr v4, v7

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    if-eqz v12, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, v0, v6, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->autoboxing(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_11
    if-eqz v3, :cond_12

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v5, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v13

    invoke-static/range {v1 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForArgumentCasts(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IILorg/eclipse/jdt/internal/compiler/ast/Expression;IZLorg/eclipse/jdt/internal/compiler/ast/Expression;IZ)V

    :cond_12
    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v10

    :cond_13
    :goto_4
    return-object v4

    :cond_14
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionShouldBeAVariable(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object v4
.end method

.method public restrainUsageToNumericTypes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
