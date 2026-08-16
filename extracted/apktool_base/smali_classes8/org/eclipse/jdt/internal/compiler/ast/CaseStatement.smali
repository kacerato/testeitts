.class public Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public isExpr:Z

.field public targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;II)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return-void
.end method

.method private analyseConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 2

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v0, v1, :cond_0

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->caseExpressionMustBeConstant(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_0
    invoke-virtual {p4, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-direct {p0, p1, p2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->analyseConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->analyseConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_2
    :goto_1
    return-object p3
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 3

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v0, :cond_2

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->targetLabel:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p1, :cond_1

    const-string p1, "default "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    if-eqz p1, :cond_0

    const-string p1, "->"

    goto :goto_0

    :cond_0
    const-string p1, ":"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_1
    const-string p1, "case "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    array-length p1, p1

    move v1, v0

    :goto_1
    if-lt v1, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_2
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->isExpr:Z

    if-eqz p1, :cond_5

    const-string p1, " ->"

    goto :goto_3

    :cond_5
    const-string p1, " :"

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    return-void
.end method

.method public resolveCase(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)[Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 11

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_1

    iget-object p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateDefaultCase(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_0
    iput-object p0, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->defaultCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1

    :cond_1
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->cases:[Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->caseCount:I

    aput-object p0, v0, v1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_9

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v9, v8

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-lt v10, v9, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1

    :cond_5
    aget-object v6, v8, v10

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eq v6, v1, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v1, :cond_6

    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_6
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_7
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->resolveConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_8

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->resolveConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstantList:[Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1
.end method

.method public resolveConstantExpression(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    invoke-virtual {p5, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isConstantValueOfTypeAssignableToType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p5, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->isBoxingCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x15

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumConstantsCannotBeSurroundedByParenthesis(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :cond_2
    instance-of v0, p5, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_5

    iget v0, p5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    check-cast p5, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p2

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 p3, p3, 0x4000

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p5, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumSwitchCannotTargetField(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_1

    :cond_3
    instance-of p3, p5, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p5, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotUseQualifiedEnumConstantInCaseLabel(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    add-int/2addr p1, v1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, p2, p3, p5, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeMismatchError(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1

    :cond_6
    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;->constantExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
