.class public Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;
.super Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;
.source "SourceFile"


# instance fields
.field private assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;ZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Z)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public getArguments([Lorg/eclipse/jdt/internal/compiler/ast/Argument;)[[[C
    .locals 9

    array-length v0, p1

    new-array v1, v0, [[C

    new-array v2, v0, [[C

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_1

    if-ge v5, v0, :cond_0

    new-array p1, v5, [[C

    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v5, [[C

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    move-object v2, v0

    :cond_0
    filled-new-array {v1, v2}, [[[C

    move-result-object p1

    return-object p1

    :cond_1
    aget-object v6, p1, v4

    instance-of v7, v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnArgumentName;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    array-length v7, v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v7

    const/16 v8, 0x2e

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    aput-object v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    aput-object v6, v2, v5

    move v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getInterfaceNames(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[[C
    .locals 10

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length p1, v0

    new-array v3, p1, [[C

    goto :goto_0

    :cond_0
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object p1, v3, v2

    new-array p1, v0, [[C

    move-object v9, v3

    move-object v3, p1

    move p1, v0

    move-object v0, v9

    goto :goto_0

    :cond_1
    move-object v3, v1

    move p1, v2

    :goto_0
    if-eqz v0, :cond_6

    move v4, v2

    move v5, v4

    :goto_1
    if-lt v4, p1, :cond_3

    if-nez v5, :cond_2

    return-object v1

    :cond_2
    if-ge v5, p1, :cond_6

    new-array p1, v5, [[C

    invoke-static {v3, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p1

    goto :goto_3

    :cond_3
    aget-object v6, v0, v4

    instance-of v7, v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v6

    const/16 v8, 0x2e

    invoke-static {v6, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    aput-object v6, v3, v5

    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v3
.end method

.method public getSuperclassName(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)[C
    .locals 2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object p1

    const/16 v0, 0x2e

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getThrownExceptions(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)[[C
    .locals 9

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    new-array v2, v1, [[C

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_2

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    if-ge v5, v1, :cond_1

    new-array v0, v5, [[C

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    aget-object v6, p1, v4

    instance-of v7, v6, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v6

    const/16 v8, 0x2e

    invoke-static {v6, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getTypeParameterBounds(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)[[C
    .locals 9

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_6

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    array-length v4, p1

    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [[C

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v0, v7}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    aput-object v0, v6, v2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_2

    if-nez v3, :cond_1

    sget-object v6, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_2

    :cond_1
    if-ge v3, v5, :cond_7

    new-array p1, v3, [[C

    invoke-static {v6, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, p1

    goto :goto_2

    :cond_2
    aget-object v7, p1, v0

    iget-object v8, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v7

    invoke-static {v7, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v7

    aput-object v7, v6, v3

    move v3, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/CompletionElementNotifier;->assistNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/CompletionUnitStructureRequestor;->hasEmptyName(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result p1

    if-nez p1, :cond_5

    new-array v6, v3, [[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object p1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    aput-object p1, v6, v2

    goto :goto_2

    :cond_5
    sget-object v6, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    goto :goto_2

    :cond_6
    sget-object v6, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    :cond_7
    :goto_2
    return-object v6
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodReturnType;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodTypeParameter;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnMethodName;

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;IIZLorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;Ljava/util/Map;)V
    .locals 0

    .line 5
    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;IIZLorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;Ljava/util/Map;)V

    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V
    .locals 1

    .line 6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldName;

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Z)V
    .locals 2

    .line 9
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnKeyword2;

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnImportReference;

    if-nez v0, :cond_1

    .line 11
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnPackageReference;

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-nez v0, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Z)V

    return-void
.end method

.method public notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    .line 14
    instance-of v0, p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnAnnotationOfType;

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/SourceElementNotifier;->notifySourceElementRequestor(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;ZLorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V

    return-void
.end method
