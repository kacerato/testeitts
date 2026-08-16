.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;
.super Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;
.source "SourceFile"


# instance fields
.field completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;-><init>(II)V

    return-void
.end method

.method private internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_e

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->filterPossibleTags(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_2

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    if-eqz v1, :cond_5

    :cond_2
    :goto_0
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-eq v1, v2, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_4
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->missingParamTags(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)[[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->missingParams:[[C

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    if-eqz v1, :cond_7

    array-length v1, v1

    if-nez v1, :cond_9

    :cond_7
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->missingTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocParamNameReference;->missingTypeParams:[[C

    goto :goto_2

    :cond_8
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    if-eqz v1, :cond_9

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->missingTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[[C

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTypeParamReference;->missingParams:[[C

    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocQualifiedTypeReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_a
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocMessageSend;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->isThis()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_b
    instance-of v1, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    if-eqz v1, :cond_c

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocAllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_3
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-direct {v0, v2, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_e
    return-void
.end method

.method private missingParamTags(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)[[C
    .locals 13

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    array-length v3, v3

    :goto_1
    if-nez v3, :cond_3

    return-object v2

    :cond_3
    if-nez v0, :cond_5

    new-array v4, v3, [[C

    :goto_2
    if-lt v1, v3, :cond_4

    return-object v4

    :cond_4
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object p1, p1, v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-array v4, v3, [[C

    move v5, v1

    move v6, v5

    :goto_3
    if-lt v5, v3, :cond_8

    if-lez v6, :cond_7

    if-eq v6, v3, :cond_6

    new-array p1, v6, [[C

    invoke-static {v4, v1, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p1

    :cond_6
    return-object v4

    :cond_7
    return-object v2

    :cond_8
    iget-object v7, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v7, v7, v5

    move v8, v1

    move v9, v8

    move v10, v9

    :goto_4
    if-ge v8, v0, :cond_c

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v11, v11, v8

    iget-object v12, v7, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v12, v11, :cond_b

    const/4 v9, 0x1

    if-ne v11, p1, :cond_b

    add-int/lit8 v10, v10, 0x1

    if-le v10, v9, :cond_a

    goto :goto_5

    :cond_a
    move v9, v1

    :cond_b
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    if-nez v9, :cond_d

    add-int/lit8 v8, v6, 0x1

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v7, v4, v6

    move v6, v8

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private missingTypeParameterTags(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)[[C
    .locals 13

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move-object p2, v4

    move-object v2, p2

    goto :goto_1

    :cond_1
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    goto :goto_1

    :cond_2
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_1
    if-eqz p2, :cond_f

    array-length p2, p2

    if-nez p2, :cond_4

    goto/16 :goto_8

    :cond_4
    if-eqz v2, :cond_f

    array-length p2, v2

    if-nez v0, :cond_6

    new-array v3, p2, [[C

    :goto_2
    if-lt v1, p2, :cond_5

    return-object v3

    :cond_5
    aget-object p1, v2, v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-array v3, p2, [[C

    move v5, v1

    move v6, v5

    :goto_3
    if-lt v5, p2, :cond_8

    if-lez v6, :cond_f

    if-eq v6, p2, :cond_7

    new-array p1, v6, [[C

    invoke-static {v3, v1, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p1

    :cond_7
    return-object v3

    :cond_8
    aget-object v7, v2, v5

    move v8, v1

    move v9, v8

    move v10, v9

    :goto_4
    if-ge v8, v0, :cond_d

    if-eqz v9, :cond_9

    goto :goto_7

    :cond_9
    iget-object v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v12, v12, v8

    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v11, 0x1

    if-ne v9, p1, :cond_b

    add-int/lit8 v10, v10, 0x1

    if-le v10, v11, :cond_a

    goto :goto_5

    :cond_a
    move v9, v1

    goto :goto_6

    :cond_b
    :goto_5
    move v9, v11

    :cond_c
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    :goto_7
    if-nez v9, :cond_e

    add-int/lit8 v8, v6, 0x1

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v7, v3, v6

    move v6, v8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_f
    :goto_8
    return-object v4
.end method


# virtual methods
.method public getCompletionNode()Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-object v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 8

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/**\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " * @param "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez v5, :cond_2

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aget-object v5, v5, v4

    if-ne v6, v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_7

    array-length v0, v0

    move v4, v3

    :goto_3
    if-lt v4, v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " * @param <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ">\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v5, :cond_6

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aget-object v5, v5, v4

    if-ne v6, v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v3

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " * @"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_c

    array-length v0, v0

    move v4, v3

    :goto_6
    if-lt v4, v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " * @throws "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez v5, :cond_b

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_b

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v4

    if-ne v6, v5, :cond_a

    move v5, v2

    goto :goto_7

    :cond_a
    move v5, v3

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    :goto_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_10

    array-length v0, v0

    move v4, v3

    :goto_9
    if-lt v4, v0, :cond_d

    goto :goto_b

    :cond_d
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " * @see "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-nez v5, :cond_f

    iget-object v6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v6, :cond_f

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget-object v5, v5, v4

    if-ne v6, v5, :cond_e

    move v5, v2

    goto :goto_a

    :cond_e
    move v5, v3

    :cond_f
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    :goto_b
    if-nez v5, :cond_11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_11

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " * "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->completionNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_11
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " */\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionJavadoc;->internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method
