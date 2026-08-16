.class public Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
.source "SourceFile"


# instance fields
.field public typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;-><init>()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-void
.end method


# virtual methods
.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    return-object p0
.end method

.method public getLastToken()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeName()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    return-object v0
.end method

.method public isUnionType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move p1, v1

    :goto_1
    if-lt p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq p1, v2, :cond_2

    const-string v2, " | "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-lt v3, v0, :cond_1

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v5

    const/16 v7, 0x104

    const/4 v8, 0x1

    if-eq v5, v7, :cond_4

    const/16 v7, 0x1004

    if-eq v5, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    invoke-virtual {v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeVariableAsException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_1
    move v4, v8

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoundParameterizedType()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    invoke-virtual {v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidParameterizedExceptionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v5, 0x15

    invoke-virtual {v6, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotThrowType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move v4, v8

    :cond_6
    aput-object v6, v1, v3

    move v5, v2

    :goto_3
    if-lt v5, v3, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    aget-object v7, v1, v5

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v5

    aget-object v9, v1, v5

    invoke-virtual {v4, v7, v9, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->wrongSequenceOfExceptionTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_4
    move v4, v8

    goto :goto_5

    :cond_8
    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v7, v7, v3

    aget-object v9, v1, v5

    invoke-virtual {v4, v7, v6, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->wrongSequenceOfExceptionTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 3

    .line 5
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
