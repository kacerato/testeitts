.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field private final fineGrain:I

.field protected isDeclarationOfReferencedTypesPattern:Z

.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

.field private recordedResolutions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->recordedResolutions:Ljava/util/Map;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->fineGrain:I

    instance-of p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->isDeclarationOfReferencedTypesPattern:Z

    return-void
.end method


# virtual methods
.method public findElement(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public fineGrain()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->fineGrain:I

    return v0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 7

    .line 4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 6
    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 7
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_3

    .line 8
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 10
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    .line 11
    array-length v2, v0

    move v4, v1

    :goto_1
    if-lt v4, v2, :cond_5

    :cond_4
    return v1

    .line 12
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    aget-object v6, v0, v4

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 13
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 7

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 15
    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 16
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 17
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 19
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    .line 20
    array-length v1, v0

    move v2, v4

    :goto_0
    if-lt v2, v1, :cond_5

    :cond_4
    return v4

    .line 21
    :cond_5
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    aget-object v6, v0, v2

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 22
    invoke-virtual {p2, p1, v3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_4

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v6, 0x20000

    and-int/2addr v1, v6

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    return v5

    :cond_2
    array-length v6, v0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    add-int/lit8 v8, v6, -0x1

    aget-object v8, v0, v8

    invoke-virtual {p0, v7, v8}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v7

    if-eqz v7, :cond_3

    return v2

    :cond_3
    if-eqz p1, :cond_10

    if-nez v1, :cond_10

    if-le v6, v3, :cond_10

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    sub-int/2addr v6, v4

    aget-object v0, v0, v6

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_10

    return v2

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    const/16 v6, 0x2e

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v1

    :goto_1
    invoke-static {p1, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    if-nez v1, :cond_6

    return v2

    :cond_6
    if-nez p1, :cond_7

    return v5

    :cond_7
    array-length v0, p1

    if-nez v0, :cond_9

    array-length p1, v1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v5

    :cond_9
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-eqz v0, :cond_a

    aget-char v2, v1, v5

    aget-char v6, p1, v5

    if-eq v2, v6, :cond_a

    move v2, v5

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    iget v6, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchMode:I

    if-eqz v6, :cond_f

    if-eq v6, v3, :cond_f

    if-eq v6, v4, :cond_e

    const/16 v0, 0x80

    if-eq v6, v0, :cond_c

    const/16 v0, 0x100

    if-eq v6, v0, :cond_b

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_10

    invoke-static {v1, p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_c
    if-eqz v2, :cond_d

    invoke-static {v1, p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_d

    return v4

    :cond_d
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-nez v0, :cond_10

    invoke-static {v1, p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_e
    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_f
    invoke-static {v1, p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_10

    return v4

    :cond_10
    :goto_3
    return v5
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

    if-eqz v0, :cond_7

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
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->createImportHandle(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const/4 v1, 0x0

    :cond_5
    move v6, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_6
    return-void

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->isDeclarationOfReferencedTypesPattern:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3, p4}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->findElement(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    check-cast p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    :goto_0
    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p2, v1, p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isEquivalentMatch:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_4

    const v2, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p5, p3, p2, p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p4

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4, v1}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRaw(Z)V

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    and-int/lit8 v0, v0, -0x41

    invoke-virtual {p4, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_5
    instance-of p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    if-eqz p4, :cond_7

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_6
    :goto_2
    move p4, v0

    goto :goto_4

    :cond_7
    instance-of p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/high16 v2, 0x20000

    if-eqz p4, :cond_8

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_6

    iget p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr p4, v2

    if-nez p4, :cond_6

    :goto_3
    move p4, v1

    goto :goto_4

    :cond_8
    instance-of p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p4, :cond_9

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result p4

    if-eqz p4, :cond_6

    iget p4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr p4, v2

    if-nez p4, :cond_6

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    goto :goto_2

    :goto_4
    if-eqz p2, :cond_11

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v2, v2

    add-int/lit8 v3, v2, -0x1

    if-eqz p4, :cond_a

    add-int/lit8 v3, v2, -0x2

    :cond_a
    instance-of p4, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz p4, :cond_b

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length p2, p2

    add-int/lit8 v3, p2, -0x1

    move-object p2, p4

    :cond_b
    :goto_5
    if-eqz p2, :cond_11

    if-gez v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p4

    if-eqz p4, :cond_10

    invoke-virtual {p5, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    if-eqz p3, :cond_d

    iget p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    sub-int p2, v3, p2

    goto :goto_6

    :cond_d
    move p2, v3

    :goto_6
    if-gez p2, :cond_e

    goto :goto_7

    :cond_e
    move v0, p2

    :goto_7
    aget-wide p2, p1, v0

    const/16 p4, 0x20

    ushr-long/2addr p2, p4

    long-to-int p2, p2

    aget-wide p3, p1, v3

    long-to-int p1, p3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p3, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    sub-int/2addr p1, p2

    add-int/2addr p1, v1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_f
    return-void

    :cond_10
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_5

    :cond_11
    :goto_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    invoke-virtual {p5, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->isDeclarationOfReferencedTypesPattern:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0, p2, p6}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->findElement(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    check-cast p3, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfReferencedTypesPattern;->knownTypes:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {p0, p1, p2, p7, p3}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    :cond_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p7, p2, p5, p6, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 20
    invoke-virtual {v0, p4}, Lorg/eclipse/jdt/core/search/TypeReferenceMatch;->setOtherElements([Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 21
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 22
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz p3, :cond_2

    .line 23
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_1

    .line 24
    :cond_2
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz p3, :cond_3

    .line 25
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_1

    .line 26
    :cond_3
    instance-of p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-eqz p3, :cond_4

    .line 27
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_1

    .line 28
    :cond_4
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p2, :cond_5

    .line 29
    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 30
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_6

    .line 31
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3, p2, p7}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void

    .line 32
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p7, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :goto_1
    return-void
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

    .line 14
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 4
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v5

    add-int/lit8 v6, v0, 0x1

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-nez v0, :cond_0

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v7, p1

    .line 6
    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p1, v6}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    .line 9
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p5, p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 11
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p3, :cond_2

    const/4 p2, -0x1

    .line 12
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void

    .line 13
    :cond_2
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    invoke-virtual {p5, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 91
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 93
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    goto/16 :goto_2

    .line 94
    :cond_1
    :goto_0
    move-object v2, p3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 95
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeParameters()Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->getRule()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 97
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isErasureMatch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isErasure()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isEquivalentMatch:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isEquivalent()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 98
    :cond_5
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 99
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_6

    .line 100
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    .line 101
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v1, v1, p2

    goto :goto_1

    .line 102
    :cond_6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v0, :cond_7

    .line 103
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    .line 104
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_8

    .line 105
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4, p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateParameterizedTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void

    .line 106
    :cond_8
    :goto_2
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-eqz p2, :cond_9

    .line 107
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    invoke-virtual {p4, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V

    return-void

    .line 108
    :cond_9
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 109
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    .line 110
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz p3, :cond_a

    .line 111
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_a

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    .line 112
    invoke-interface {p3}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/IMethod;

    .line 113
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-interface {p3}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-static {p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-nez p2, :cond_a

    return-void

    .line 114
    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    if-nez p2, :cond_b

    .line 115
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 116
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    .line 117
    :cond_b
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 33
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 34
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 35
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    const/4 v5, 0x3

    if-eq v3, v2, :cond_6

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_3

    .line 36
    :cond_0
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_5

    .line 37
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 38
    :cond_1
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v3, :cond_2

    .line 39
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 40
    :cond_2
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v3, :cond_4

    .line 41
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 42
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v3, :cond_3

    :goto_0
    move v3, v2

    goto :goto_2

    :cond_3
    array-length v3, v3

    :goto_1
    add-int/2addr v3, v2

    :goto_2
    sub-int/2addr v1, v3

    goto :goto_4

    .line 43
    :cond_4
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz v3, :cond_5

    .line 44
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 45
    :cond_6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 46
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    array-length v3, v3

    goto :goto_1

    .line 47
    :goto_4
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v3, :cond_8

    .line 48
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 49
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 50
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    sub-int/2addr v0, v2

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 51
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-nez v3, :cond_9

    .line 52
    invoke-virtual {p5, p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 53
    :cond_9
    instance-of p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p3, :cond_f

    .line 54
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_5
    if-eqz v0, :cond_f

    if-gez v1, :cond_a

    goto :goto_7

    .line 55
    :cond_a
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p3

    if-ne p3, v5, :cond_e

    .line 56
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 57
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    .line 58
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p4, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    if-eqz p4, :cond_b

    .line 59
    iget p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    sub-int p3, v1, p3

    goto :goto_6

    :cond_b
    move p3, v1

    :goto_6
    if-gez p3, :cond_c

    const/4 p3, 0x0

    .line 60
    :cond_c
    aget-wide p3, p2, p3

    const/16 v3, 0x20

    ushr-long/2addr p3, v3

    long-to-int p3, p3

    .line 61
    aget-wide v3, p2, v1

    long-to-int p2, v3

    .line 62
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 63
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    sub-int/2addr p2, p3

    add-int/2addr p2, v2

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    .line 64
    invoke-virtual {p0, p1, v1, v0, p5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_d
    return-void

    :cond_e
    add-int/lit8 v1, v1, -0x1

    .line 65
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_5

    .line 66
    :cond_f
    :goto_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    invoke-virtual {p5, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V

    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 67
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 68
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 69
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v2, :cond_0

    .line 70
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 71
    :cond_0
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v2, :cond_1

    .line 72
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 73
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 74
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 75
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    if-nez v2, :cond_2

    .line 76
    invoke-virtual {p5, p2, p3, p4, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newTypeReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/TypeReferenceMatch;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 77
    :cond_2
    instance-of p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p3, :cond_8

    .line 78
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    if-eqz v0, :cond_8

    if-gez v1, :cond_3

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p3

    if-eqz p3, :cond_7

    .line 80
    invoke-virtual {p5, p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 81
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    .line 82
    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p4, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    if-eqz p4, :cond_4

    .line 83
    iget p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->segmentsSize:I

    sub-int p3, v1, p3

    goto :goto_1

    :cond_4
    move p3, v1

    :goto_1
    if-gez p3, :cond_5

    const/4 p3, 0x0

    .line 84
    :cond_5
    aget-wide p3, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr p3, v2

    long-to-int p3, p3

    .line 85
    aget-wide v2, p2, v1

    long-to-int p2, v2

    .line 86
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p4, p3}, Lorg/eclipse/jdt/core/search/SearchMatch;->setOffset(I)V

    .line 87
    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p4, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setLength(I)V

    .line 88
    invoke-virtual {p0, p1, v1, v0, p5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/Expression;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 89
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_8
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    invoke-virtual {p5, p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateTypeReference(Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[C)V

    return-void
.end method

.method public recordResolution(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->recordedResolutions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->recordedResolutions:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public referenceType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public reportDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const p2, 0x7fffffff

    goto/16 :goto_4

    .line 3
    :cond_0
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 5
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 6
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v2, v2

    sub-int/2addr v2, v0

    .line 7
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    if-eq v3, v0, :cond_7

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 p1, 0x4

    if-eq v3, p1, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_6

    .line 9
    move-object p1, p2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    move p2, v2

    goto :goto_4

    .line 10
    :cond_2
    instance-of v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v3, :cond_4

    .line 11
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 12
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    array-length p1, p1

    :goto_1
    add-int/2addr v0, p1

    :goto_2
    sub-int p1, v2, v0

    move-object v5, p2

    move p2, p1

    move-object p1, v5

    goto :goto_4

    .line 13
    :cond_4
    instance-of p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz p1, :cond_6

    .line 14
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 15
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 16
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    const/16 v1, 0x2e

    .line 17
    invoke-static {v1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result p2

    sub-int/2addr p2, v0

    if-eqz p1, :cond_5

    if-gez p2, :cond_b

    :cond_5
    return-void

    :cond_6
    :goto_3
    move-object p1, v1

    goto :goto_0

    .line 18
    :cond_7
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 19
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    array-length p1, p1

    goto :goto_1

    .line 20
    :cond_9
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz p2, :cond_a

    .line 21
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move p2, v0

    goto :goto_4

    :cond_a
    const/4 p2, -0x1

    move-object p1, v1

    .line 22
    :cond_b
    :goto_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_c

    .line 23
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_c
    if-eqz p1, :cond_f

    .line 24
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    if-eqz v0, :cond_d

    goto :goto_5

    .line 25
    :cond_d
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v0, :cond_e

    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 27
    :cond_e
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 28
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v6, p3

    move-object/from16 v0, p1

    move-object/from16 v7, p4

    .line 29
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v2

    .line 31
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    if-nez v2, :cond_1

    .line 32
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v2

    .line 33
    :cond_1
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v6, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v3

    move/from16 v11, p2

    move-object v10, v0

    move-object v12, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    goto :goto_0

    :cond_2
    move/from16 v11, p2

    move-object v10, v0

    move-object v12, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v9

    :goto_0
    if-ltz v11, :cond_3

    if-nez v12, :cond_4

    :cond_3
    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 34
    :cond_4
    invoke-virtual {v7, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v8, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object v2, v12

    move-object v3, v10

    move-object/from16 v4, v21

    .line 35
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    :cond_5
    move-object/from16 v0, p0

    goto :goto_1

    .line 36
    :cond_6
    instance-of v0, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v0, :cond_7

    .line 37
    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    .line 38
    :cond_7
    move-object v0, v10

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 40
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 41
    new-instance v2, Lorg/eclipse/jdt/core/search/TypeDeclarationMatch;

    move-object v3, v12

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3, v10}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v14

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v0, v1

    add-int/lit8 v17, v0, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v18

    const/4 v15, 0x0

    move-object v13, v2

    move/from16 v16, v1

    move-object/from16 v19, v20

    invoke-direct/range {v13 .. v19}, Lorg/eclipse/jdt/core/search/TypeDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 42
    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    .line 43
    :goto_1
    invoke-virtual {v7, v12}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    .line 44
    :goto_2
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    .line 45
    invoke-interface {v12}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    .line 46
    instance-of v2, v1, Lorg/eclipse/jdt/core/IType;

    if-eqz v2, :cond_9

    .line 47
    check-cast v1, Lorg/eclipse/jdt/core/IType;

    move-object v12, v1

    goto :goto_3

    :cond_9
    move-object v12, v9

    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :goto_4
    return-void
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I
    .locals 8

    .line 12
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 13
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 14
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_0

    .line 15
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 16
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->isLabel:Z

    if-eqz p1, :cond_2

    return v3

    :cond_2
    if-eqz v0, :cond_4

    .line 19
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    return v2

    .line 20
    :cond_5
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 21
    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v5, 0x7

    and-int/2addr v4, v5

    const/4 v6, 0x2

    if-eq v4, v2, :cond_f

    if-eq v4, v6, :cond_e

    const/4 v7, 0x3

    if-eq v4, v7, :cond_7

    const/4 v7, 0x4

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_7

    goto :goto_2

    .line 22
    :cond_6
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_d

    .line 23
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 24
    :cond_7
    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v4, :cond_8

    .line 25
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 26
    :cond_8
    instance-of v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v4, :cond_b

    .line 27
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    array-length v1, v1

    add-int/2addr v6, v1

    :goto_1
    if-ge v0, v6, :cond_a

    return v3

    .line 28
    :cond_a
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 29
    :cond_b
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz p1, :cond_d

    .line 30
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 31
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result p1

    if-gtz p1, :cond_c

    return v2

    .line 32
    :cond_c
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_4

    :cond_d
    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    return v3

    .line 33
    :cond_f
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_10

    goto :goto_3

    :cond_10
    array-length v1, v1

    add-int/2addr v6, v1

    :goto_3
    if-ge v0, v6, :cond_11

    return v3

    .line 34
    :cond_11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 35
    :goto_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)I
    .locals 2

    .line 36
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 37
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 39
    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 41
    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    .line 43
    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForTypeOrQualifyingTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 7
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

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForTypeOrEnclosingTypes([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1
.end method

.method public resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-char v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->typeSuffix:C

    const/16 v1, 0x41

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x43

    if-eq v0, v1, :cond_5

    const/16 v1, 0x45

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-char v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->typeSuffix:C

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->simpleName:[C

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;->qualification:[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[C[[[CILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveLevelForTypeOrEnclosingTypes([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevelForTypeOrQualifyingTypes(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->recordedResolutions:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p2

    if-eqz p2, :cond_1

    return p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeReferencePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
