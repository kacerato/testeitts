.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;
.implements Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReasons;


# instance fields
.field delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>([CJLorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-void
.end method


# virtual methods
.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 2

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p4, p4, 0x7

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 p2, 0x2

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p3, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p4, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_1
    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_2

    iput v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_0

    :cond_2
    iget p1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    if-nez p1, :cond_4

    iput p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isBlankFinal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->needBlankFinalFieldInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;->getInitsForFinalBlankInitializationCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object p2

    invoke-virtual {p2, p4}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->uninitializedBlankFinalField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    :goto_0
    return-object p3
.end method

.method public checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->isStatic:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->staticFieldAccessToNonStaticVariable(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isFieldUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_2
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V
    .locals 11

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isCompactableOperation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0xfc0

    shr-int/lit8 v8, v2, 0x6

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->left:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, v7

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v4, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    aget-object v1, v4, v1

    move-object v6, v1

    :goto_0
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v10, p4

    invoke-virtual/range {v3 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    if-eqz p4, :cond_1

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/BinaryExpression;->right:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v4, :cond_6

    const/16 v4, 0xe

    if-eq v8, v4, :cond_3

    const/16 v4, 0xf

    if-ne v8, v4, :cond_6

    :cond_3
    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v5, v6, :cond_6

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v5, v6, :cond_6

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x4

    const/16 v6, 0xb

    if-eq v5, v6, :cond_6

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->syntheticAccessors:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v2, :cond_4

    move-object v6, v3

    goto :goto_1

    :cond_4
    aget-object v1, v2, v1

    move-object v6, v1

    :goto_1
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    move-object v3, v4

    move-object v4, p1

    move-object v5, p2

    move v10, p4

    invoke-virtual/range {v3 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V

    if-eqz p4, :cond_5

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2, v0, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    :cond_8
    if-eqz p4, :cond_9

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget-object v2, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v3, v4, :cond_b

    if-eqz p4, :cond_f

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v2, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p4, :cond_c

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_4

    :cond_c
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_4

    :cond_e
    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_f
    :goto_4
    return-void

    :cond_10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v5, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1fe0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x1fe0

    shr-int/lit8 v3, v3, 0x5

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3, p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_5

    :cond_11
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_12
    :goto_5
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_13

    move v8, v1

    goto :goto_6

    :cond_13
    move v8, v2

    :goto_6
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    if-eqz p4, :cond_1a

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_a

    :cond_14
    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1fe0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_7

    :cond_15
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_7

    :cond_16
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :goto_7
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p4, :cond_19

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    goto :goto_9

    :cond_18
    :goto_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_19
    :goto_9
    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    if-eqz p4, :cond_1a

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_1a
    :goto_a
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 6

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_0

    if-eqz p3, :cond_10

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    if-nez p3, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void

    :cond_2
    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_3
    if-nez p3, :cond_4

    goto/16 :goto_5

    :cond_4
    const/high16 p3, 0x80000

    and-int/2addr p3, v1

    if-eqz p3, :cond_5

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->checkEffectiveFinality(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object p3

    invoke-virtual {p2, p3, p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto/16 :goto_5

    :cond_6
    if-nez p3, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    if-ne v1, v2, :cond_f

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p3, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    invoke-static {p1, p3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 p1, -0x4e

    invoke-virtual {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_9
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x1fe0

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x1fe0

    shr-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3, p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_2
    const/16 p1, -0x4c

    invoke-virtual {p2, p1, p3, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_b
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v1, 0x1fe0

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :goto_3
    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_e

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_e
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_5

    :cond_f
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    :cond_10
    :goto_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    move/from16 v3, p5

    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v5, 0x7

    and-int/2addr v4, v5

    const/16 v6, 0xb

    const/4 v7, 0x2

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v4, v12, :cond_11

    if-eq v4, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v13, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v14, 0xa

    const/4 v15, -0x1

    if-eq v13, v14, :cond_3

    if-eq v13, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1, v8, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    if-eqz p7, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_2
    invoke-virtual {v2, v4, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    return-void

    :cond_3
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v14, v15, :cond_6

    if-nez p7, :cond_5

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v13, v3, :cond_4

    invoke-virtual {v0, v1, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_4
    return-void

    :cond_5
    iput v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1, v10}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    :cond_6
    sget-object v14, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v13, v14, :cond_d

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v14

    const/16 v7, 0x9

    if-eq v14, v7, :cond_d

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v7

    if-eq v7, v9, :cond_d

    const/16 v7, 0xd

    if-eq v3, v7, :cond_a

    const/16 v7, 0xe

    if-eq v3, v7, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v7

    int-to-short v13, v7

    if-eq v7, v13, :cond_8

    goto :goto_0

    :cond_8
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    if-eqz p7, :cond_9

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result v7

    neg-int v7, v7

    int-to-short v13, v7

    if-eq v7, v13, :cond_b

    goto :goto_0

    :cond_b
    iget v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v2, v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iinc(II)V

    if-eqz p7, :cond_c

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_c
    return-void

    :cond_d
    :goto_0
    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    if-ne v7, v15, :cond_10

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez p7, :cond_f

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v3, v4, :cond_e

    invoke-virtual {v0, v1, v2, v11}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :cond_e
    return-void

    :cond_f
    iput v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v0, v1, v10}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw v0

    :cond_10
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    goto/16 :goto_4

    :cond_11
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v4, v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v8, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v7, :cond_12

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_12
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_1
    invoke-static {v1, v4, v7, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    const/16 v13, -0x4e

    invoke-virtual {v2, v13, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_13
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_4

    :cond_14
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v4, v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    if-eqz v7, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v7

    iget v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v13, v13, 0x1fe0

    shr-int/lit8 v13, v13, 0x5

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    invoke-virtual {v1, v7, v12, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13, v8, v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_2

    :cond_15
    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    iget-object v7, v8, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v7, :cond_16

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_16
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_3
    invoke-static {v1, v4, v7, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    const/16 v13, -0x4c

    invoke-virtual {v2, v13, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_17
    iget v7, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    if-eqz v7, :cond_18

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_18
    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {v8, v2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_4
    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v7, v4, 0xff

    shr-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1a

    if-eq v7, v12, :cond_1a

    if-eq v7, v6, :cond_1a

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-ne v0, v4, :cond_19

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v4, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {v2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_5

    :cond_19
    invoke-virtual {v0, v1, v2, v12}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :goto_5
    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_6

    :cond_1a
    invoke-virtual {v2, v1, v10, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_6
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v0, v5

    if-eq v0, v12, :cond_1e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    goto :goto_8

    :cond_1b
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p7, :cond_1d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v1, v5, :cond_1c

    if-eq v1, v9, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_7

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_1d
    :goto_7
    invoke-virtual {v2, v0, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V

    :goto_8
    return-void

    :cond_1e
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v3, v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v5, v8, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_1f

    move v6, v12

    goto :goto_9

    :cond_1f
    move v6, v11

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    goto :goto_b

    :cond_20
    if-eqz p7, :cond_22

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v0, v5, :cond_21

    if-eq v0, v9, :cond_21

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    goto :goto_a

    :cond_21
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_22
    :goto_a
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_b
    return-void
.end method

.method public generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v0, v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v2, v2, 0x1fe0

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_1
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    const/16 p1, 0x8

    if-eqz p4, :cond_6

    iget-object p4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p4, v1, :cond_5

    if-eq p4, p1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_6
    :goto_2
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget-object p4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq p4, v1, :cond_8

    if-eq p4, p1, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :goto_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :goto_5
    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->operator:I

    iget-object p4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p2, p1, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;->preAssignImplicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_6
    return-void
.end method

.method public generateReceiver(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    const/16 v1, -0x4c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    return-void
.end method

.method public getReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    :goto_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object p1
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V

    return-void

    :cond_0
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq p2, p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;

    if-eqz p3, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericCast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->genericCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3
    return-void
.end method

.method public reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p1, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->problemId()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p1, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {v0, v1, v2, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->getFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSingleNameReference;->checkFieldAccess(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->reportError(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method
