.class public Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"


# instance fields
.field public exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public inheritedPositions:[J

.field public invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

.field public paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

.field public paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

.field public returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

.field public seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field public valuePositions:J


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method private resolveParamTags(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v1, v1, v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceEnd:I

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    array-length v4, v4

    :goto_2
    if-nez v2, :cond_5

    if-eqz p2, :cond_b

    const/4 v3, 0x0

    :goto_3
    if-lt v3, v4, :cond_4

    goto :goto_8

    :cond_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v2, v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v5, v6, v7, v2, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingParamTag([CIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-array v5, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x1

    if-lt v6, v2, :cond_c

    if-eqz p2, :cond_b

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v4, :cond_6

    goto :goto_8

    :cond_6
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v6, v6, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v9, v7, :cond_9

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    aget-object v11, v5, v9

    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v12, v11, :cond_8

    move v10, v8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-nez v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget v11, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v9, v10, v11, v6, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingParamTag([CIII)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    return-void

    :cond_c
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v9, v9, v6

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual {v9, v10, v8, v11}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZZ)V

    iget-object v12, v9, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v7, :cond_f

    if-eqz v13, :cond_d

    goto :goto_a

    :cond_d
    aget-object v14, v5, v12

    iget-object v15, v9, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v14, v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v13

    iget-object v14, v9, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    iget v15, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v13, v14, v15, v3, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDuplicatedParamTag([CIII)V

    const/4 v13, 0x1

    :cond_e
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_9

    :cond_f
    :goto_a
    if-nez v13, :cond_10

    add-int/lit8 v3, v7, 0x1

    iget-object v8, v9, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aput-object v8, v5, v7

    move v7, v3

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method private resolveReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 11

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;->compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v1

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    move v2, v3

    :cond_3
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    const/16 v3, 0xa

    if-eqz v1, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_7

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    if-ne v1, v3, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2, v5, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_2

    :cond_6
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v9, 0x0

    move-object v4, p2

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I

    if-ne v1, v3, :cond_8

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, v4, v5, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_9

    move-object v9, v0

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->verifyTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :cond_9
    return-void

    :cond_a
    if-nez v0, :cond_c

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-nez v1, :cond_b

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_c

    move-object v9, v1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, p1

    move-object v7, p2

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->verifyTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :cond_c
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v1, :cond_e

    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v2, :cond_d

    iget p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagValue:I

    if-ne p1, v3, :cond_d

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v3, v4, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    :cond_d
    if-nez v0, :cond_11

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_11

    move-object v9, p1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v10, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    move-object v4, p0

    move-object v7, p2

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->verifyTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    goto :goto_3

    :cond_e
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v1, :cond_10

    move-object v5, p1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v2, :cond_f

    iget p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->tagValue:I

    if-ne p1, v3, :cond_f

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v1, v3, v4, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidValueReference(III)V

    :cond_f
    if-nez v0, :cond_11

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_11

    move-object v9, p1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v10, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    move-object v4, p0

    move-object v7, p2

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->verifyTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    goto :goto_3

    :cond_10
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_11
    :goto_3
    return-void
.end method

.method private resolveThrowsTags(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Z)V
    .locals 11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    if-nez v0, :cond_4

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p2, p2, v2

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    instance-of v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v4, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceStart:I

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceEnd:I

    goto :goto_2

    :cond_2
    instance-of v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v4, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceEnd:I

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v3, v3

    :goto_3
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    array-length v4, v4

    :goto_4
    if-nez v1, :cond_b

    if-eqz p2, :cond_c

    :goto_5
    if-lt v2, v3, :cond_7

    goto :goto_b

    :cond_7
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object p2, p2, v2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_6
    if-ge v1, v4, :cond_9

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v1, v4, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v1, v5, v1

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {p2, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingThrowsTag(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    new-array v5, v1, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move v6, v2

    move v7, v6

    :goto_8
    if-lt v6, v1, :cond_1a

    move v1, v2

    :goto_9
    if-lt v1, v3, :cond_12

    move p2, v2

    :goto_a
    if-lt p2, v7, :cond_d

    :cond_c
    :goto_b
    return-void

    :cond_d
    aget-object v1, v5, p2

    if-eqz v1, :cond_11

    move v3, v2

    move v6, v3

    :goto_c
    if-ge v3, v4, :cond_10

    if-eqz v6, :cond_e

    goto :goto_d

    :cond_e
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v8, v3

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v8, :cond_f

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    if-nez v6, :cond_11

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v3, v1, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidThrowsClassName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_12
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v1

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_13
    move v8, v2

    move v9, v8

    :goto_e
    if-ge v8, v7, :cond_16

    if-eqz v9, :cond_14

    goto :goto_f

    :cond_14
    aget-object v10, v5, v8

    if-eqz v10, :cond_15

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v9, 0x0

    aput-object v9, v5, v8

    const/4 v9, 0x1

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    :goto_f
    if-nez v9, :cond_19

    if-eqz p2, :cond_19

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_19

    move v8, v1

    :goto_10
    if-ge v8, v4, :cond_18

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v9, v9, v8

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_11

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_18
    :goto_11
    if-ge v8, v4, :cond_19

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v9, v8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v6, v8, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingThrowsTag(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_1a
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v8, v8, v6

    invoke-virtual {v8, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v9

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v7, 0x1

    aput-object v8, v5, v7

    move v7, v9

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8
.end method

.method private resolveTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    array-length v2, v2

    :goto_0
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v4, -0x1

    move-object v5, v6

    move-object v7, v5

    goto :goto_2

    :cond_1
    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    goto :goto_2

    :cond_2
    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_1
    if-lt v3, v2, :cond_3

    return-void

    :cond_3
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v4, v4, v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceEnd:I

    invoke-virtual {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v5

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :goto_2
    if-eqz v7, :cond_18

    array-length v8, v7

    if-nez v8, :cond_5

    goto/16 :goto_e

    :cond_5
    if-eqz v5, :cond_17

    if-eqz p2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v9

    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v11, 0x310000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move v9, v3

    :goto_3
    array-length v10, v5

    if-nez v2, :cond_8

    if-eqz v9, :cond_17

    :goto_4
    if-lt v3, v10, :cond_7

    goto/16 :goto_d

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    aget-object v6, v5, v3

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v2, v7, v8, v6, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingParamTag([CIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    array-length v7, v7

    if-ne v7, v10, :cond_17

    new-array v7, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move v11, v3

    :goto_5
    if-lt v11, v2, :cond_10

    move v11, v3

    :goto_6
    if-lt v11, v10, :cond_b

    :goto_7
    if-lt v3, v2, :cond_9

    goto/16 :goto_d

    :cond_9
    aget-object v5, v7, v3

    if-eqz v5, :cond_a

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v5, v5, v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v8, v5, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v9, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v6, v8, v9, v5, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUndeclaredParamTagName([CIII)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    aget-object v12, v5, v11

    move v13, v3

    move v14, v13

    :goto_8
    if-ge v13, v2, :cond_e

    if-eqz v14, :cond_c

    goto :goto_9

    :cond_c
    iget-object v15, v12, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v8, v7, v13

    invoke-static {v15, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_d

    aput-object v6, v7, v13

    const/4 v14, 0x1

    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    if-nez v14, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget v14, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v8, v13, v14, v12, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingParamTag([CIII)V

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_10
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v8, v8, v11

    invoke-virtual {v8, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v13

    iget-boolean v13, v13, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterIncludeDocCommentReference:Z

    if-eqz v13, :cond_11

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v14, 0x8000000

    or-int/2addr v13, v14

    iput v13, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_11
    move v12, v3

    move v13, v12

    :goto_a
    if-ge v12, v11, :cond_14

    if-eqz v13, :cond_12

    goto :goto_b

    :cond_12
    aget-object v14, v7, v12

    iget-object v15, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v13

    iget-object v14, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v15, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v13, v14, v15, v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDuplicatedParamTag([CIII)V

    const/4 v13, 0x1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_a

    :cond_14
    :goto_b
    if-nez v13, :cond_16

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aput-object v3, v7, v11

    goto :goto_c

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget v13, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, v12, v13, v8, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUndeclaredParamTagName([CIII)V

    :cond_16
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_17
    :goto_d
    return-void

    :cond_18
    :goto_e
    const/4 v3, 0x0

    :goto_f
    if-lt v3, v2, :cond_19

    return-void

    :cond_19
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v4, v4, v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceEnd:I

    invoke-virtual {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f
.end method

.method private verifyTypeReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    .locals 9

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportInvalidJavadocTagsVisibility:I

    invoke-virtual {p0, v0, p6}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->canBeSeen(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p4

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p4, p2, p1, p3, p6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocHiddenReference(IILorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    return-void

    :cond_0
    if-eq p1, p2, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportInvalidJavadocTagsVisibility:I

    iget p6, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    invoke-virtual {p0, p1, p6}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->canBeSeen(II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget p4, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p5, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    invoke-virtual {p1, p4, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocHiddenReference(IILorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    return-void

    :cond_1
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length p1, p1

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result p6

    add-int v0, p6, p1

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [[C

    iget-object v3, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v3, v2, v0

    move-object v3, p5

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-nez v5, :cond_13

    :goto_1
    const/4 v5, -0x1

    add-int/2addr p1, v5

    if-gez p1, :cond_12

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ne v4, v6, :cond_3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move p4, v5

    goto/16 :goto_7

    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    instance-of v4, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v4, :cond_2

    if-nez p4, :cond_4

    const/4 v4, 0x1

    if-eq p6, v4, :cond_5

    :cond_4
    iget-object p6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p6, p6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v3, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p6

    if-eqz p6, :cond_2

    :cond_5
    if-eqz p4, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-nez p4, :cond_6

    move p6, v7

    goto :goto_4

    :cond_6
    array-length p6, p4

    :goto_4
    move v3, v7

    :goto_5
    if-lt v3, p6, :cond_7

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p6

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p6, v0, v3, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMemberTypeQualification(III)V

    goto :goto_7

    :cond_7
    aget-object v4, p4, v3

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v6, v6

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v4, :cond_8

    if-eq v6, v0, :cond_9

    :cond_8
    if-ne v6, v1, :cond_b

    :cond_9
    add-int/2addr v6, v5

    if-gez v6, :cond_a

    goto :goto_6

    :cond_a
    aget-object v4, p4, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    aget-object v4, v4, v6

    aget-object v8, v2, v6

    invoke-static {v4, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v6, :cond_9

    aget-object p4, p4, v3

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz p4, :cond_2

    iget p6, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 p6, p6, 0x2

    iput p6, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_2

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p3

    iget p4, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p3, p4, p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMemberTypeQualification(III)V

    return-void

    :goto_7
    instance-of p6, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz p6, :cond_14

    invoke-virtual {p3, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInSameUnit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p6

    if-nez p6, :cond_14

    move-object p6, p2

    check-cast p6, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    invoke-virtual {p6}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeName()[[C

    move-result-object p6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-ne p1, v0, :cond_d

    array-length p1, p6

    if-ge p1, v1, :cond_d

    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length p1, p1

    goto :goto_8

    :cond_d
    move p1, v7

    :goto_8
    array-length v0, p6

    sub-int/2addr v1, p1

    if-ne v0, v1, :cond_10

    :goto_9
    array-length v0, p6

    if-lt v7, v0, :cond_e

    goto :goto_b

    :cond_e
    aget-object v0, p6, v7

    add-int v1, v7, p1

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    if-ne p4, v5, :cond_11

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getDeclarationModifiers()I

    move-result p4

    :cond_11
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, p3, p2, p4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMemberTypeQualification(III)V

    return-void

    :cond_12
    add-int/2addr v4, v5

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    aget-object v5, v5, p1

    aput-object v5, v2, v4

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    aput-object v5, v2, v4

    goto/16 :goto_0

    :cond_14
    :goto_b
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPackageInfo()Z

    move-result p1

    if-eqz p1, :cond_15

    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz p1, :cond_15

    iget-object p1, p5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length p1, p1

    if-lez p1, :cond_15

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidReference(II)V

    :cond_15
    return-void
.end method


# virtual methods
.method public canBeSeen(II)Z
    .locals 3

    const/4 v0, 0x1

    if-gez p2, :cond_0

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    return v0

    :cond_1
    if-eq p1, v0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    if-ne p1, v2, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getNodeStartingAt(I)Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v3, v3, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-eqz v0, :cond_5

    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v3, v3, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v4, p1, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_8

    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v3, v3, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v4, p1, :cond_7

    return-object v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_b

    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v4, p1, :cond_a

    return-object v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_14

    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_c

    goto :goto_c

    :cond_c
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v4, p1, :cond_d

    return-object v3

    :cond_d
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v4, :cond_10

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_13

    array-length v4, v4

    move v5, v1

    :goto_9
    if-lt v5, v4, :cond_e

    goto :goto_b

    :cond_e
    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v7, p1, :cond_f

    return-object v6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v4, :cond_13

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v4, :cond_13

    array-length v4, v4

    move v5, v1

    :goto_a
    if-lt v5, v4, :cond_11

    goto :goto_b

    :cond_11
    iget-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v5

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    if-ne v7, p1, :cond_12

    return-object v6

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_13
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " * @param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_3

    array-length v0, v0

    move v3, v2

    :goto_2
    if-lt v3, v0, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " * @param <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-eqz v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " * @"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    array-length v0, v0

    move v3, v2

    :goto_4
    if-lt v3, v0, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, p1, 0x1

    invoke-static {v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " * @throws "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_8

    array-length v0, v0

    :goto_6
    if-lt v2, v0, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v3, p1, 0x1

    invoke-static {v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " * @see "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " */\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 9

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    aget-wide v5, v4, v3

    ushr-long v7, v5, v1

    long-to-int v4, v7

    long-to-int v5, v5

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    array-length v0, v0

    :goto_2
    move v3, v2

    :goto_3
    if-lt v3, v0, :cond_d

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v0, v4, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    .line 12
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    array-length v0, v0

    move v4, v0

    :goto_4
    move v0, v2

    :goto_5
    if-lt v0, v4, :cond_a

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v0, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    array-length v0, v0

    move v3, v0

    :goto_6
    if-lt v2, v3, :cond_9

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    goto :goto_7

    .line 15
    :cond_7
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    ushr-long v0, v2, v1

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    :cond_8
    :goto_7
    return-void

    .line 17
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 18
    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v0

    .line 19
    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v5, :cond_b

    .line 20
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    .line 21
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceStart:I

    .line 22
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->tagSourceEnd:I

    goto :goto_8

    .line 23
    :cond_b
    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v5, :cond_c

    .line 24
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    .line 25
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceStart:I

    .line 26
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->tagSourceEnd:I

    goto :goto_8

    .line 27
    :cond_c
    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 28
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 29
    :goto_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 30
    :cond_d
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v4, v4, v3

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceStart:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->tagSourceEnd:I

    invoke-virtual {v5, v6, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 1
    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 13

    .line 32
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 33
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 35
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v3, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v4, 0x30000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 37
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    array-length v4, v4

    :goto_2
    move v5, v2

    move v6, v5

    :goto_3
    if-lt v5, v4, :cond_13

    if-nez v6, :cond_6

    if-eqz v0, :cond_6

    .line 38
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v4, :cond_6

    .line 39
    array-length v4, v4

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_6

    if-eqz v6, :cond_4

    goto :goto_6

    .line 40
    :cond_4
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v8, 0x2000000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_5

    :cond_5
    move v6, v2

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    if-eqz v0, :cond_9

    if-eqz v3, :cond_7

    .line 41
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    if-nez v4, :cond_8

    :cond_7
    if-nez v6, :cond_8

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v4, v2

    goto :goto_7

    :cond_9
    move v4, v1

    :goto_7
    const/16 v5, 0x20

    if-nez v3, :cond_b

    .line 42
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    if-eqz v3, :cond_b

    .line 43
    array-length v3, v3

    move v6, v2

    :goto_8
    if-lt v6, v3, :cond_a

    goto :goto_9

    .line 44
    :cond_a
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    aget-wide v8, v7, v6

    ushr-long v10, v8, v5

    long-to-int v7, v10

    long-to-int v8, v8

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 46
    :cond_b
    :goto_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    .line 47
    iget-boolean v6, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnusedParameterIncludeDocCommentReference:Z

    invoke-direct {p0, p1, v4, v6}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveParamTags(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;ZZ)V

    if-eqz v4, :cond_c

    .line 48
    iget-boolean v6, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportMissingJavadocTagsMethodTypeParameters:Z

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V

    .line 49
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-nez v1, :cond_d

    if-eqz v4, :cond_e

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 51
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    .line 52
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v6, v7, :cond_e

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    invoke-virtual {v6, v7, v1, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingReturnTag(III)V

    goto :goto_b

    .line 54
    :cond_d
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 55
    :cond_e
    :goto_b
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveThrowsTags(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Z)V

    .line 56
    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long v1, v3, v6

    if-ltz v1, :cond_f

    goto :goto_c

    :cond_f
    if-eqz v0, :cond_10

    .line 57
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    ushr-long v5, v3, v5

    long-to-int v1, v5

    long-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    .line 59
    :cond_10
    :goto_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-nez v0, :cond_11

    move v7, v2

    goto :goto_d

    :cond_11
    array-length v0, v0

    move v7, v0

    :goto_d
    move v0, v2

    :goto_e
    if-lt v0, v7, :cond_12

    return-void

    .line 60
    :cond_12
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, v2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 61
    :cond_13
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v5

    invoke-direct {p0, v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolveReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    .line 62
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v7

    if-nez v7, :cond_14

    if-eqz v3, :cond_16

    .line 63
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v5

    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v8, :cond_16

    .line 64
    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    .line 65
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v9, :cond_16

    .line 66
    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 67
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 68
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_16

    :goto_f
    move v6, v1

    goto/16 :goto_10

    .line 70
    :cond_14
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v7, v7, v5

    instance-of v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v8, :cond_16

    .line 71
    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    .line 72
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 73
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 74
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_16

    .line 75
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 76
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    .line 77
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v9

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    if-ne v9, v7, :cond_16

    .line 78
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 79
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v9

    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v11, 0x340000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_15

    .line 80
    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v9, v10, :cond_15

    .line 81
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->asRawMethod(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    .line 82
    :cond_15
    invoke-virtual {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_f

    :cond_16
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_3

    .line 6
    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 10
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    .line 11
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 13
    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_8

    .line 14
    array-length v0, v0

    :goto_6
    if-lt v1, v0, :cond_7

    goto :goto_7

    .line 15
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 16
    :cond_8
    :goto_7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 4

    .line 17
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_3

    .line 22
    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_2

    goto :goto_3

    .line 23
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 26
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    .line 27
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_5

    goto :goto_5

    .line 28
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 29
    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_8

    .line 30
    array-length v0, v0

    :goto_6
    if-lt v1, v0, :cond_7

    goto :goto_7

    .line 31
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 32
    :cond_8
    :goto_7
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
