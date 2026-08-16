.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReasons;
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# instance fields
.field delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>([CJLorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;-><init>([CJ)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-void
.end method


# virtual methods
.method public generateAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Assignment;Z)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v7

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :cond_1
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p4, :cond_3

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_3
    :goto_0
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_1
    if-eqz p4, :cond_4

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_4
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 6

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_0

    if-eqz p3, :cond_8

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz p3, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p3

    if-ne p3, v2, :cond_5

    iget-object p3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p3, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v2

    invoke-static {p1, v1, p3, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz v3, :cond_2

    const/16 p3, -0x4e

    invoke-virtual {p2, p3, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_2
    const/16 p3, -0x4c

    invoke-virtual {p2, p3, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :cond_4
    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_8
    :goto_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateCompoundAssignment(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/Expression;IIZ)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, p1, p2, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v6

    invoke-static {p1, v4, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v5, :cond_0

    const/16 v5, -0x4e

    invoke-virtual {p2, v5, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/16 v5, -0x4c

    invoke-virtual {p2, v5, v4, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v5, v0, 0xff

    shr-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_2

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-ne p3, v0, :cond_1

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :goto_1
    invoke-virtual {p2, p4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    invoke-virtual {p2, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    :goto_2
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v7

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/Reference;->fieldStore(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZ)V

    goto/16 :goto_8

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, p1, p2, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v5, :cond_4

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/2addr v5, v3

    invoke-virtual {v0, p1, p2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v5, v0, 0xff

    shr-int/lit8 v5, v5, 0x4

    if-ne v5, v2, :cond_5

    invoke-virtual {p2, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;->One:Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;

    if-ne p3, v0, :cond_6

    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p3, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    :goto_4
    invoke-virtual {p2, p4, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sendOperator(II)V

    invoke-virtual {p2, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :goto_5
    if-eqz p6, :cond_9

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    goto :goto_7

    :cond_8
    :goto_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_9
    :goto_7
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    :goto_8
    return-void
.end method

.method public generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->generatePostIncrement(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;Z)V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :goto_0
    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x1()V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

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

    :goto_2
    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Z)V
    .locals 0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-virtual {p1, v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v2, v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_1
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-instance v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;

    invoke-direct {v2, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetFieldReference;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-virtual {v2, v3, v4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->getFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v2, :cond_4

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isFieldUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    goto :goto_1

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method
