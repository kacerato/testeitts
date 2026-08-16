.class public Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/OrPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->patternLocator(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 8
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 10
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 12
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 14
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 18
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 16
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 22
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 23
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 24
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 25
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 26
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 27
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 28
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 30
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public matchContainer()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchContainer()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_1
    if-lt v4, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->referenceType()I

    move-result v7

    if-nez v7, :cond_6

    move v7, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v7

    :goto_2
    if-le v7, v5, :cond_9

    const/4 v3, 0x3

    if-ne v7, v3, :cond_8

    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_7
    return-void

    :cond_8
    move-object v3, v6

    move v5, v7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v3, v1, :cond_0

    move-object v7, p1

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v5, v3

    move-object v7, p1

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I

    move-result v5

    if-le v5, v4, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v3

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v6, :cond_1

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_1
    return-void

    :cond_2
    move v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_0

    move-object/from16 v7, p1

    move-object v8, v2

    goto :goto_2

    .line 2
    :cond_0
    iget-object v6, v0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v6, v6, v4

    .line 3
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->referenceType()I

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v7, p1

    move v8, v3

    goto :goto_1

    :cond_1
    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v8

    :goto_1
    if-le v8, v5, :cond_4

    const/4 v2, 0x3

    if-ne v8, v2, :cond_3

    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_2

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    .line 4
    invoke-virtual/range {v8 .. v15}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_2
    return-void

    :cond_3
    move-object v2, v6

    move v5, v8

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 5
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_0

    move-object v0, v2

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->referenceType()I

    move-result v7

    if-nez v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v6, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v7

    :goto_1
    if-le v7, v5, :cond_4

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v0

    return-object v0

    :cond_2
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    move-object v1, p6

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v2, v6

    move v5, v7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v3

    if-le v3, v2, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFlavors(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/OrLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
