.class public Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    return-void
.end method


# virtual methods
.method public fineGrain()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    return v0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchParametersCount(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchLevelForReferences(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 7
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchLevelForDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)I

    move-result v2

    :cond_2
    if-lt v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 8
    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 5

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v0, :cond_1

    return v1

    .line 11
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    .line 12
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v2

    .line 13
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v3, :cond_2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 14
    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchParametersCount(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 15
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 17
    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_5

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    .line 19
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_2

    .line 20
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 21
    :cond_2
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchParametersCount(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 22
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 23
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-nez v2, :cond_1

    return v1

    .line 25
    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->selector:[C

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 26
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->isMethodReference()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 30
    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v1, :cond_1

    const v3, -0x10000001

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    return v2

    .line 31
    :cond_1
    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringQualification:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v2, v0, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    array-length v3, v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    aget-object v5, v5, v3

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterQualifications:[[C

    aget-object v4, v4, v3

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v3

    invoke-virtual {p0, v5, v4, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v4

    if-le v0, v4, :cond_6

    if-nez v4, :cond_5

    return v1

    :cond_5
    move v0, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method public matchContainer()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public matchLevelForDeclarations(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-eqz v2, :cond_2

    array-length v2, v2

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    array-length v3, v3

    :goto_0
    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz p1, :cond_3

    array-length p1, p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    array-length v0, v0

    if-eq p1, v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean p1, p1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    :goto_1
    return p1
.end method

.method public matchLevelForReferences(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)I
    .locals 3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-eqz v2, :cond_2

    array-length v2, v2

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    array-length p1, p1

    :goto_0
    if-eq v2, p1, :cond_2

    return v0

    :cond_2
    iget-boolean p1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    :goto_1
    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public matchParametersCount(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-eqz v1, :cond_3

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->varargs:Z

    if-eqz v2, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v2, 0x8000

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    :cond_0
    iget p1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterCount:I

    if-gez p1, :cond_1

    array-length p1, v1

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    array-length p2, p2

    :goto_0
    if-eq p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p5

    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isImplicitSuper()Z

    move-result v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    move v14, v2

    goto :goto_1

    :cond_0
    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0

    :cond_1
    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v0, :cond_2

    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    :cond_2
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-eqz v0, :cond_3

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :goto_1
    const/4 v12, -0x1

    const/4 v13, 0x1

    const/4 v11, -0x1

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v15, p1

    invoke-virtual/range {v7 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newMethodReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIIZZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    move-result-object v2

    iput-object v2, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    const/16 v7, 0x10

    if-eqz v3, :cond_a

    move-object v3, v0

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v8, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRaw(Z)V

    iget-boolean v2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_2
    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorParameters()Z

    move-result v2

    invoke-virtual {v6, v1, v4, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;[[CZ)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_6
    move-object v8, v4

    move-object v9, v5

    goto/16 :goto_5

    :cond_7
    :goto_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_8
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedWithOwnVariables()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v2

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v8, v4

    move v4, v7

    move-object v9, v5

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto/16 :goto_5

    :cond_9
    move-object v8, v4

    move-object v9, v5

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v2

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto/16 :goto_5

    :cond_a
    move-object v8, v4

    move-object v9, v5

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto :goto_5

    :cond_c
    :goto_4
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->constructorArguments:[[C

    filled-new-array {v2}, [[[C

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedWithOwnVariables()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v2

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_5

    :cond_e
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->hasConstructorArguments()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, v7}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_f
    :goto_5
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-boolean v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    if-eqz v0, :cond_11

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isErasure()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    iget-boolean v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isEquivalentMatch:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v1, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    iget-object v1, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    instance-of v0, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_14

    move-object v0, v9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz v2, :cond_14

    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-virtual {v8, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateEnumConstructorReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)V

    return-void

    :cond_14
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v3, :cond_4

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_2

    move-object v14, v1

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v15, :cond_4

    array-length v11, v15

    move v10, v13

    :goto_0
    if-lt v10, v11, :cond_0

    goto/16 :goto_3

    :cond_0
    aget-object v9, v15, v10

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v4, v14, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    if-ge v3, v4, :cond_1

    move/from16 v16, v12

    goto :goto_1

    :cond_1
    move/from16 v16, v13

    :goto_1
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v17

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v2

    move/from16 v8, p5

    move-object/from16 v18, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newMethodReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIIZZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    add-int/lit8 v10, v17, 0x1

    move/from16 v11, v16

    goto :goto_0

    :cond_2
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v3, :cond_4

    move-object v11, v1

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isImplicitSuper()Z

    move-result v3

    if-eqz v3, :cond_3

    move v10, v12

    goto :goto_2

    :cond_3
    move v10, v13

    :goto_2
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->isConstructor()Z

    move-result v9

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v2

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newMethodReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIIZZLorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/MethodReferenceMatch;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    :cond_4
    :goto_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v1

    return-object v1
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    if-eqz v0, :cond_5

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 6
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I

    move-result p1

    return p1

    .line 8
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)I

    move-result p1

    return p1

    .line 10
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v0, :cond_4

    .line 11
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 12
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_5

    .line 13
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 14
    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    if-eqz v0, :cond_6

    .line 15
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Z)I

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;)I
    .locals 3

    .line 16
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v1, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Z)I
    .locals 5

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findReferences:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v1, :cond_2

    .line 30
    iget v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->accessMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 31
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v3

    .line 32
    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->parameterSimpleNames:[[C

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    array-length v0, v0

    :goto_1
    if-eq v0, v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_2

    .line 33
    :cond_3
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    return v1

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    return v0

    .line 34
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->findDeclarations:Z

    if-eqz p2, :cond_6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v2

    :cond_6
    if-lt v0, v2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)I
    .locals 3

    .line 19
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;->declaringSimpleName:[C

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 21
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)I
    .locals 7

    .line 35
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 36
    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    aget-object v4, v0, v3

    .line 38
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isDefaultConstructor()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    if-ge v5, v6, :cond_1

    .line 39
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Z)I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 23
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 25
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v0

    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 27
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->matchConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ConstructorLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ConstructorPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
