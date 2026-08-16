.class public Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;
.source "SourceFile"


# instance fields
.field public expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    xor-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->asNegatedCondition()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    xor-int/lit8 v0, v0, 0x4

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Z

    return-object p3
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 10

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1

    if-eqz p3, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_1
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0xfc0

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, -0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    goto/16 :goto_0

    :pswitch_1
    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p1, p1, 0x4

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(F)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    mul-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(D)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(J)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p3, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p1, p1, 0x4

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ineg()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fneg()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dneg()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lneg()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_m1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ixor()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p3, :cond_7

    invoke-virtual {p2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc2_w(J)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lxor()V

    goto :goto_0

    :pswitch_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result p1

    if-lez p1, :cond_7

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_7
    :goto_0
    if-eqz p3, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_8
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    :goto_0
    return-void
.end method

.method public optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_0
    return-object v0
.end method

.method public printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->operatorToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v1, :cond_0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v2

    :cond_1
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    :cond_2
    const/16 v4, 0xf

    if-le v3, v4, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v2

    :cond_3
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v5, v5, 0xfc0

    shr-int/lit8 v5, v5, 0x6

    const/16 v6, 0xb

    if-eq v5, v6, :cond_5

    const/16 v7, 0xc

    if-eq v5, v7, :cond_4

    const/16 v5, 0xd

    goto :goto_0

    :cond_4
    const/16 v5, 0xa

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    aget-object v7, v7, v5

    shl-int/lit8 v8, v3, 0x4

    add-int/2addr v8, v3

    aget v7, v7, v8

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    ushr-int/lit8 v9, v7, 0x10

    and-int/2addr v4, v9

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->wellKnownType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-virtual {v8, p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v8, v7, 0xf

    or-int/2addr v4, v8

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidOperator(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_6
    return-object v2

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v2, v8, :cond_7

    and-int/lit16 v0, v4, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    invoke-static {v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->computeConstantOperation(Lorg/eclipse/jdt/internal/compiler/impl/Constant;II)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_2

    :cond_7
    iput-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    and-int/lit16 v2, v4, 0xfc0

    shr-int/lit8 v2, v2, 0x6

    if-ne v2, v6, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    if-eq v0, v8, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->fromValue(Z)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {p1, v5, v7, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForArgumentCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IILorg/eclipse/jdt/internal/compiler/ast/Expression;I)V

    :cond_9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/UnaryExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
