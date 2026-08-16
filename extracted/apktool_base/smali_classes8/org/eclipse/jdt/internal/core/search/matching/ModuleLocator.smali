.class public Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field private pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

.field target:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->target:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    return-void
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->moduleName:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->target:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 8
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchContainer()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 2
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 0

    invoke-super/range {p0 .. p6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->newDeclarationMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    return-object p1
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findDeclarations:Z

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->findReferences:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/ModuleLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/ModulePattern;->name:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    :cond_2
    return v1
.end method
