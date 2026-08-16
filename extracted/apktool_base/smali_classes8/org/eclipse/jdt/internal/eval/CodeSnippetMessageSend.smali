.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;
.super Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
.source "SourceFile"


# instance fields
.field delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/eval/EvaluationContext;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    return-void
.end method


# virtual methods
.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V
    .locals 9

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    const/4 v3, 0x6

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_1

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v4

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    shr-int/lit8 v7, v7, 0x5

    invoke-virtual {v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {p1, v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v7, p0, v4, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, v4, v7, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->generateArguments(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isImplicitThis()Z

    move-result v7

    invoke-static {p1, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v2, :cond_3

    const/16 v2, -0x48

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v2, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto/16 :goto_5

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, -0x47

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v2, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto/16 :goto_5

    :cond_5
    const/16 v2, -0x4a

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v2, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto/16 :goto_5

    :cond_6
    :goto_1
    const/16 v2, -0x49

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p2, v2, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_8

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x1fe0

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    xor-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_9
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    :cond_a
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v4, 0x3

    if-eqz v2, :cond_e

    array-length v2, v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {p1, v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    move v4, v5

    :goto_3
    if-lt v4, v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v4

    invoke-virtual {v7, p1, p2, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq v7, v8, :cond_c

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v4

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p2, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateBoxingConversion(I)V

    :cond_c
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    add-int/lit8 v7, v2, -0x1

    if-ge v4, v7, :cond_d

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {p1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {p1, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    :goto_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangReflectMethodInvoke()V

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v2, v3, :cond_f

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_f
    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(I)V

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getBaseTypeValue(I)V

    goto :goto_5

    :cond_10
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->valueCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v2, :cond_11

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_11
    if-eqz p3, :cond_12

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    goto :goto_8

    :cond_12
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_13

    move v5, v6

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateImplicitConversion(I)V

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :goto_6
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_7

    :cond_15
    iget-object p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_6

    :goto_7
    if-eq p1, v3, :cond_17

    const/4 p3, 0x7

    if-eq p1, p3, :cond_16

    const/16 p3, 0x8

    if-eq p1, p3, :cond_16

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    goto :goto_8

    :cond_16
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop2()V

    :cond_17
    :goto_8
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public manageSyntheticAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq p1, p2, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->valueCast:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_0
    return-void
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryCast(Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_4

    array-length v0, v0

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v1, v4

    :goto_1
    if-lt v1, v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    if-eqz v0, :cond_4

    return-object v3

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v5, v1

    if-nez v6, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v1, v4

    :goto_2
    if-lt v1, v0, :cond_6

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_5

    move-object v6, v0

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    new-array v8, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v10, 0x0

    move-object v5, p1

    move-object v9, p0

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_5
    return-object v3

    :cond_6
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v1

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/CastExpression;

    if-eqz v6, :cond_7

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argsContainCast:Z

    :cond_7
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->INVOCATION_CONTEXT:Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->setExpressionContext(Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    aput-object v6, v5, v1

    if-nez v6, :cond_8

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_a

    return-object v3

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v3

    :cond_b
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->findMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-eqz v1, :cond_12

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->problemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;->evaluationContext:Lorg/eclipse/jdt/internal/eval/EvaluationContext;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/eval/EvaluationContext;->declaringTypeName:[C

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {p1, v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_c

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-object v3

    :cond_c
    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v4, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;

    if-eqz v4, :cond_d

    check-cast v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetThisReference;->isImplicit:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v4, v5, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->getImplicitMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetMessageSend;->delegateThis:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1, v4, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_e

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v3

    :cond_f
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-object v3

    :cond_10
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_6

    :cond_11
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-object v3

    :cond_12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_13

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_5

    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->errorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v3

    :cond_14
    :goto_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-object v3

    :cond_15
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v1, :cond_16

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->mustUseAStaticMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_7

    :cond_16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getErasureCompatibleType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v3, p1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->computeConversion(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->postConversionType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_17
    :goto_7
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v9, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argsContainCast:Z

    move-object v3, p1

    move-object v10, p0

    invoke-static/range {v3 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->checkInvocationArguments(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    const/high16 v1, 0x10000

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, p0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotDireclyInvokeAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v3, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->deprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_1a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v0, v3, :cond_1b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLONE:[C

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_8

    :cond_1b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1d

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->genericTypeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_1c
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_1d
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method
