.class public Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    return-void
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-boolean v1, p2, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->mustResolve:Z

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 6

    .line 4
    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->flavors:I

    const/16 v1, 0x1000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v1, :cond_2

    .line 6
    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 7
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v0, :cond_3

    .line 8
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    goto :goto_0

    .line 9
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    .line 10
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    .line 11
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method public matchContainer()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-char v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeSuffix:C

    const/16 v2, 0x49

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-char v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->typeSuffix:C

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public referenceType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 6
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 7
    :goto_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 9
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 14
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 15
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v4, 0x3

    if-eq v3, v0, :cond_2

    .line 16
    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-ne v0, v4, :cond_3

    return v4

    :cond_2
    move v0, v2

    .line 17
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superRefKind:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 19
    array-length v1, p1

    :goto_0
    if-lt v2, v1, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superSimpleName:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;->superQualification:[C

    aget-object v6, p1, v2

    invoke-virtual {p0, v5, v3, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v3

    if-le v3, v0, :cond_6

    if-ne v3, v4, :cond_5

    return v4

    :cond_5
    move v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/SuperTypeReferencePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
