.class Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;
.super Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;
.source "SourceFile"


# instance fields
.field reportImportMatch:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternFineGrain:I

    if-eqz p1, :cond_0

    const p2, 0x8000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;->reportImportMatch:Z

    return-void
.end method


# virtual methods
.method public consumeSingleStaticImportDeclarationName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleStaticImportDeclarationName()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;->reportImportMatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeSingleTypeImportDeclarationName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeSingleTypeImportDeclarationName()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;->reportImportMatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeStaticImportOnDemandDeclarationName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeStaticImportOnDemandDeclarationName()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;->reportImportMatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method

.method public consumeTypeImportOnDemandDeclarationName()V
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->consumeTypeImportOnDemandDeclarationName()V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ImportMatchLocatorParser;->reportImportMatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->patternLocator:Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocatorParser;->nodeSet:Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    :cond_0
    return-void
.end method
