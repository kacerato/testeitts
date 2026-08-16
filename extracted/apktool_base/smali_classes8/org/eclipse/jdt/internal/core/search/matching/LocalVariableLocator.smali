.class public Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;)V

    return-void
.end method

.method private getLocalVariable()Lorg/eclipse/jdt/internal/core/LocalVariable;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariablePattern;->localVariable:Lorg/eclipse/jdt/internal/core/LocalVariable;

    return-object v0
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    if-eqz v5, :cond_3

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->getLocalVariable()Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-result-object v5

    iget v5, v5, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    move v4, v2

    :cond_3
    if-lt v0, v4, :cond_4

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_1
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchContainer()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public matchLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->readableName()[C

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->getLocalVariable()Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/core/LocalVariable;->declarationSourceStart:I

    if-ne p1, p2, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p3, :cond_0

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :goto_0
    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    move v3, p3

    move v4, v0

    goto :goto_1

    :cond_0
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    const/16 p3, 0x20

    ushr-long v2, v0, p3

    long-to-int p3, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_1
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->getLocalVariable()Lorg/eclipse/jdt/internal/core/LocalVariable;

    move-result-object v1

    iget v4, v1, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameStart:I

    iget p1, v1, Lorg/eclipse/jdt/internal/core/LocalVariable;->nameEnd:I

    sub-int/2addr p1, v4

    add-int/lit8 v5, p1, 0x1

    const/4 v2, 0x0

    move-object v0, p5

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newDeclarationMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;III)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void

    :cond_2
    const/4 p3, -0x1

    move v3, p3

    move v4, v3

    :goto_1
    if-ltz v3, :cond_3

    move-object v0, p5

    move-object v1, p2

    move v2, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newLocalVariableReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/SearchMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_3
    return-void
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    if-nez v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I

    move-result p1

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->matchLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I
    .locals 0

    .line 8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/LocalVariableLocator;->matchLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)I

    move-result p1

    return p1
.end method
