.class public Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    return-void
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v0, :cond_5

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v0, :cond_5

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    invoke-virtual {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->matchReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)I

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    if-nez v1, :cond_2

    iget v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v1, :cond_5

    .line 8
    :cond_2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompoundAssignment;

    if-nez v1, :cond_5

    .line 9
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Assignment;->lhs:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 10
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v1, :cond_3

    .line 11
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    .line 12
    array-length v4, v1

    sub-int/2addr v4, v2

    aget-object v1, v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 13
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    :cond_4
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->removePossibleMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->removeTrustedMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Ljava/lang/Object;

    :cond_5
    return v3
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->matchReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)I

    move-result v2

    :cond_1
    return v2
.end method

.method public matchReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)I
    .locals 6

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-boolean p3, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_2

    move-object p3, p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p0, v2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    if-eqz p3, :cond_3

    array-length p3, v0

    add-int/lit8 p3, p3, -0x1

    aget-object p3, v0, p3

    invoke-virtual {p0, v2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_3
    array-length p3, v0

    move v2, v1

    :goto_1
    if-lt v2, p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    aget-object v5, v0, v2

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
