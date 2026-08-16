.class public Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;
.super Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;
.source "SourceFile"


# instance fields
.field public tagSourceEnd:I

.field public tagSourceStart:I

.field public tagValue:I


# direct methods
.method public constructor <init>([CJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    .line 3
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->nameSourcePosition:J

    const/16 p1, 0x20

    ushr-long v0, p2, p1

    long-to-int p1, v0

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int p1, p2

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public constructor <init>([CJ[Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;-><init>([CJ)V

    .line 8
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-void
.end method

.method private internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v2, v1, :cond_1

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    array-length v0, v0

    new-array v5, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v5, v2

    move v6, v5

    :goto_1
    if-lt v5, v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    if-eqz v0, :cond_7

    return-object v3

    :cond_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v5

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v8, v1, :cond_3

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v9, p1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v8, v5

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v9, p1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    aput-object v7, v8, v5

    :goto_2
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v7, v5

    if-nez v7, :cond_4

    iput-boolean v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentsHaveErrors:Z

    goto :goto_3

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v6

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v6, v2

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_8

    return-object v3

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_a
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, p0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocErrorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v3

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, v5, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_5
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, v5, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    goto :goto_5

    :cond_d
    :goto_6
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_e

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v8

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v5, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    :cond_f
    :goto_7
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v8

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    goto :goto_7

    :cond_11
    :goto_8
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_12

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_12
    :goto_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_14
    :goto_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v0, :cond_15

    return-object v3

    :cond_15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_16

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_b

    :cond_16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, p0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocErrorNoMethodFor(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v3

    :cond_17
    :goto_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_18

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_18
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez p1, :cond_19

    goto :goto_c

    :cond_19
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_c
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v3

    :cond_1a
    if-eqz v6, :cond_1b

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    goto :goto_e

    :cond_1b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v2

    if-ne v2, v1, :cond_1c

    sub-int/2addr v1, v4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1c
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    :goto_d
    if-lt v2, v0, :cond_1e

    goto :goto_e

    :cond_1e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->argumentTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMethod(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)V

    :cond_1f
    :goto_e
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0, p1, v4, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isMethodUseDeprecated(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {v0, v1, p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDeprecatedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)V

    :cond_20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method


# virtual methods
.method public isSuperAccess()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 p1, 0x23

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x28

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_3

    move p1, v0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 3

    .line 8
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_2

    .line 12
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
