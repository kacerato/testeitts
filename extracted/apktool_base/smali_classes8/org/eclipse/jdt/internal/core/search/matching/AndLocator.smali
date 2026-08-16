.class public Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field final levels:[I

.field final patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/AndPattern;->patterns:[Lorg/eclipse/jdt/core/search/SearchPattern;

    array-length v0, p1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->levels:[I

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    return-void

    :cond_0
    aget-object v4, p1, v3

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->patternLocator(Lorg/eclipse/jdt/core/search/SearchPattern;)Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->levels:[I

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->initializePolymorphicSearch(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 4

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 8
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 10
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 12
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 14
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 18
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 20
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 16
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 22
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 24
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 26
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 28
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    return v2

    .line 30
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchContainer()I

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    if-lt v2, v0, :cond_0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    if-ge v4, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v1, v1, v2

    move-object v3, v1

    move v1, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    if-lt v3, v1, :cond_0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    .line 2
    invoke-virtual/range {v4 .. v11}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void

    .line 3
    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->referenceType()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v5, v5, v3

    move-object v6, p1

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    if-eqz v4, :cond_3

    if-ge v5, v2, :cond_4

    .line 5
    :cond_3
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v3

    move-object v4, v2

    move v2, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

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

    .line 6
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I

    move-result v4

    if-nez v4, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->levels:[I

    aput v4, v5, v3

    if-ge v4, v1, :cond_2

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 6

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v4

    if-nez v4, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->levels:[I

    aput v4, v5, v3

    if-ge v4, v1, :cond_2

    move v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setFlavors(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/AndLocator;->patternLocators:[Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->setFlavors(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
