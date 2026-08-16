.class public Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/IPolyExpression;


# instance fields
.field public condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

.field falseInitStateIndex:I

.field ifFalseNullStatus:I

.field ifTrueNullStatus:I

.field private isPolyExpression:Z

.field mergedInitStateIndex:I

.field private nullStatus:I

.field public optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field public optimizedIfFalseConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field public optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

.field private originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field trueInitStateIndex:I

.field private use18specifics:Z

.field public valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->mergedInitStateIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->VANILLA_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method private computeNullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    if-ne v0, p3, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    return-void

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    return-void

    :cond_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifFalseNullStatus:I

    or-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeNullStatus(II)I

    move-result p1

    if-lez p1, :cond_4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    :cond_4
    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 11

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v3, v4, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eq v3, v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v7

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v3, v4, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v8, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    add-int/2addr v3, v2

    iput v3, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v8

    if-eqz v6, :cond_6

    and-int/lit8 v9, v7, 0x3

    if-nez v9, :cond_4

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_4
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v9}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isKnowDeadCodePattern(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportDeadCodeInTrivialIfStatement:Z

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, v3, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v9

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v9, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    const/4 v9, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    iget-boolean v10, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->enableSyntacticNullAnalysisForFields:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v10, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result v10

    iput v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->expireNullCheckedFieldInfo()V

    :cond_7
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    if-eqz v5, :cond_a

    and-int/lit8 v10, v7, 0x3

    if-nez v10, :cond_8

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_8
    iget-object v10, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isKnowDeadCodePattern(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportDeadCodeInTrivialIfStatement:Z

    if-eqz v8, :cond_a

    :cond_9
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v8, p3, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->complainIfUnreachable(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;IZ)I

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    sub-int/2addr v0, v2

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->conditionalLevel:I

    if-eqz v5, :cond_c

    invoke-virtual {v3, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->ifTrueNullStatus:I

    if-eq v0, v9, :cond_b

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    goto/16 :goto_7

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    goto/16 :goto_7

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->addPotentialInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I

    move-result p2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    move-object p3, v0

    goto/16 :goto_7

    :cond_d
    invoke-direct {p0, v3, p3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->computeNullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz p2, :cond_e

    if-eq p2, v4, :cond_e

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_4

    :cond_e
    move v0, v1

    :goto_4
    if-eqz p2, :cond_f

    if-eq p2, v4, :cond_f

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    move p2, v2

    goto :goto_5

    :cond_f
    move p2, v1

    :goto_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfFalseConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v5, :cond_10

    if-eq v5, v4, :cond_10

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v2

    goto :goto_6

    :cond_10
    move v6, v1

    :goto_6
    if-eqz v5, :cond_11

    if-eq v5, v4, :cond_11

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_11

    move v1, v2

    :cond_11
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    if-eqz p2, :cond_12

    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_15
    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {v3, p3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->conditional(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p3

    :goto_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->mergedInitStateIndex:I

    invoke-virtual {p3, v7}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-object p3
.end method

.method public checkNPE(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)Z
    .locals 0

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    and-int/lit8 p3, p2, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionNullReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->expressionPotentialNullReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public computeConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v0, p2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x4020

    if-nez v3, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v3, p2, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    move v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v3, :cond_4

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x4020

    if-nez v3, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v3, p2, v4, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_9

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4020

    if-nez v2, :cond_9

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->needsUncheckedConversion(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v2, v3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unsafeTypeConversion(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v2, :cond_9

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x4020

    if-nez v2, :cond_9

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->checkNeedForAssignedCast(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_9
    :goto_4
    move v1, v0

    :goto_5
    return v1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1

    if-eqz v9, :cond_0

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move v12, v3

    goto :goto_0

    :cond_2
    move v12, v11

    :goto_0
    if-eq v1, v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    move v13, v3

    goto :goto_1

    :cond_3
    move v13, v11

    :goto_1
    new-instance v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v14, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v15, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v4, v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    const/4 v6, 0x2

    or-int/2addr v4, v6

    iput v4, v15, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-ne v1, v2, :cond_4

    move/from16 v16, v11

    goto :goto_2

    :cond_4
    move/from16 v16, v3

    :goto_2
    const/4 v5, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v5

    move-object v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_5
    if-eqz v12, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v13, :cond_7

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v8, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    if-eqz v9, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6

    invoke-virtual {v8, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    :cond_7
    :goto_3
    if-eqz v13, :cond_b

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    if-eq v1, v2, :cond_8

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_8
    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_9
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v9, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_b
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->mergedInitStateIndex:I

    if-eq v1, v2, :cond_c

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_c
    if-eqz v9, :cond_d

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_d
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x5

    if-eq v1, v10, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v1

    if-eq v1, v2, :cond_10

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    if-ne v1, v2, :cond_10

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    if-eq v1, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v10, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    if-eq v1, v10, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v11, v4

    goto :goto_0

    :cond_4
    move v11, v3

    :goto_0
    if-eq v2, v10, :cond_5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-eq v1, v10, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v12, v4

    goto :goto_1

    :cond_7
    move v12, v3

    :goto_1
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v13, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    if-ne v2, v10, :cond_8

    if-ne v1, v10, :cond_8

    move v6, v3

    goto :goto_2

    :cond_8
    move v6, v4

    :goto_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v14, v8}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    const/4 v15, -0x1

    if-eq v1, v15, :cond_9

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->trueInitStateIndex:I

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_9
    if-eqz v11, :cond_c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    if-eqz v12, :cond_c

    if-nez p4, :cond_a

    if-eqz p3, :cond_b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_b

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_a
    if-nez p3, :cond_b

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_b

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v8, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :cond_c
    :goto_3
    if-eqz v12, :cond_e

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    if-eq v1, v15, :cond_d

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->falseInitStateIndex:I

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_e
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->mergedInitStateIndex:I

    if-eq v1, v15, :cond_f

    invoke-virtual {v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_f
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_10
    :goto_4
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    return-void
.end method

.method public getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-object v0
.end method

.method public getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->getPolyExpressions()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v1

    array-length v2, v0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isFunctionalType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isFunctionalType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isFunctionalType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPolyExpression()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->use18specifics:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v0, v3, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    const/16 v3, 0x21

    const/16 v4, 0x1a

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-lt v0, v4, :cond_6

    if-gt v0, v3, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-lt v0, v4, :cond_6

    if-gt v0, v3, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression:Z

    return v2

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nullStatus(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;)I
    .locals 0

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->nullStatus:I

    return p1
.end method

.method public optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_0
    return-object v0
.end method

.method public printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-wide/32 v6, 0x340000

    cmp-long v1, v1, v6

    if-ltz v1, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->use18specifics:Z

    if-eqz v4, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->ASSIGNMENT_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_7

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v1, p1, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v7, p1, v6, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v7, :cond_4

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_4
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v7, :cond_5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_5
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_6

    if-nez v6, :cond_b

    :cond_6
    return-object v4

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const v6, 0x10004

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    if-ne v1, v6, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_c

    :cond_a
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_b

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->computeConversions(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_d
    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v4

    :cond_e
    :goto_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-object p1

    :cond_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_18

    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v1, v6, :cond_10

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    goto/16 :goto_4

    :cond_10
    if-ne v5, v6, :cond_18

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_12

    move-object v6, v5

    goto :goto_2

    :cond_12
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    :goto_2
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-eqz v7, :cond_13

    move-object v5, v6

    goto :goto_4

    :cond_13
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v1, v6, :cond_18

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    goto :goto_4

    :cond_14
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v6

    if-eqz v6, :cond_15

    move-object v6, v1

    goto :goto_3

    :cond_15
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    :goto_3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v7

    if-eqz v7, :cond_16

    move-object v1, v6

    goto :goto_4

    :cond_16
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v5, v6, :cond_18

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_4

    :cond_17
    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v8

    if-eqz v8, :cond_18

    move-object v1, v6

    move-object v5, v7

    :cond_18
    :goto_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v6, v2, :cond_1a

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v7, v2, :cond_1a

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v8, v2, :cond_1a

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_5

    :cond_19
    move-object v7, v8

    :goto_5
    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_1a
    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfFalseConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v0, v2, :cond_1b

    if-eq p1, v2, :cond_1b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfFalseConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_7

    :cond_1b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    if-eq p1, v2, :cond_1d

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfTrueConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_6

    :cond_1c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedIfFalseConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->optimizedBooleanConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_1d
    :goto_7
    invoke-static {v1, v5}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->moreDangerousType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_1e
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNumericType()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_21
    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_22

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_23
    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v5

    :cond_25
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_26
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_27
    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->isNarrowing(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_29
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v1, v2, :cond_2b

    if-eqz v3, :cond_2a

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_8

    :cond_2a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conditionalArgumentsIncompatibleTypes(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_2b
    :goto_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v5, v2, :cond_2d

    if-eqz v3, :cond_2c

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    goto :goto_9

    :cond_2c
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conditionalArgumentsIncompatibleTypes(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_2d
    :goto_9
    if-eqz v3, :cond_30

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v1, v0, :cond_2e

    move-object v0, v5

    goto :goto_a

    :cond_2e
    if-ne v5, v0, :cond_2f

    move-object v0, v1

    goto :goto_a

    :cond_2f
    filled-new-array {v1, v5}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_a
    if-eqz v0, :cond_32

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_30
    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_31
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfTrueType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->originalValueIfFalseType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v5

    :cond_32
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->conditionalArgumentsIncompatibleTypes(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v4

    :cond_33
    :goto_b
    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v4

    :cond_34
    :goto_c
    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v4
.end method

.method public sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->isPolyExpression()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public setExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->expressionContext:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->condition:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfTrue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;->valueIfFalse:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ConditionalExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
