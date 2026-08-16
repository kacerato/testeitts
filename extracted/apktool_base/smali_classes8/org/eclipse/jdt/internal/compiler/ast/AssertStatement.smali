.class public Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field public assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field preAssertInitStateIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->preAssertInitStateIndex:I

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 10
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 11
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->preAssertInitStateIndex:I

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 5
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->recordInitializationStates(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->preAssertInitStateIndex:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->optimizedBooleanConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkNPEbyUnboxing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-virtual {p2, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->extendTimeToLiveForNullCheckedField(I)V

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->tagBits:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenTrue()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initsWhenFalse()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v5

    invoke-virtual {v3, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v3

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->fakeReachable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangAssertionError()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    invoke-virtual {p2, v5, p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->checkExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->recordAbruptExit()V

    if-eqz v2, :cond_6

    return-object p3

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->includeNullInfoFromAsserts:Z

    if-nez p1, :cond_7

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addNullInfoFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->nullInfoLessUnconditionalCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->mergedWith(Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->discardInitializationInfo()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p1

    return-object p1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v4, 0x0

    const/16 v5, -0x4e

    invoke-virtual {p2, v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v3, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, p1

    move-object v8, p2

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedBoolean(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;Z)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newJavaLangAssertionError()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangAssertionErrorConstructor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangAssertionErrorDefaultConstructor()V

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->preAssertInitStateIndex:I

    if-eq v4, v2, :cond_2

    invoke-virtual {p2, p1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->preAssertInitStateIndex:I

    if-eq v1, v2, :cond_4

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    :cond_4
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 9

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForAssert(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-lt v3, v1, :cond_3

    goto :goto_4

    :cond_3
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v5

    if-eqz v5, :cond_5

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertionSyntheticFieldBinding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide v5, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long p1, v5, v7

    if-gez p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {v4, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->setAssertionSupport(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)V

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "assert "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_0

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalVoidExpression(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_0
    const/4 v0, 0x1

    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->assertExpression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;->exceptionArgument:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AssertStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method
