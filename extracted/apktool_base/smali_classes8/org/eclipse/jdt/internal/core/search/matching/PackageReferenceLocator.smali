.class public Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    return-void
.end method

.method public static isDeclaringPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getFileName()[C

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/16 v1, 0x2f

    const/16 v2, 0x5c

    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p1

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object p1

    :try_start_0
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IPackageFragment;->getKind()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName([C)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_1
    return v2

    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName([C)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p0, v1}, Lorg/eclipse/jdt/core/IPackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    :cond_3
    return v2

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
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

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 1

    .line 4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchLevelForTokens([[C)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 1

    .line 6
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchLevelForTokens([[C)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    .line 9
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchLevelForTokens([[C)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchLevel(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)I
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchLevelForTokens([[C)I

    move-result p1

    return p1
.end method

.method public matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 1
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

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

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
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public matchLevelForTokens([[C)I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchMode:I

    const/4 v2, 0x0

    const/16 v3, 0x2e

    const/4 v4, 0x2

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    const/16 v6, 0x80

    if-eq v1, v6, :cond_2

    const/16 v6, 0x100

    if-eq v1, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-static {v0, p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_2
    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->camelCaseMatch([C[CZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_4
    array-length v1, v0

    sub-int/2addr v1, v5

    aget-char v1, v0, v1

    const/16 v5, 0x2a

    if-ne v1, v5, :cond_5

    goto :goto_0

    :cond_5
    const-string v1, ".*"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    :goto_0
    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->match([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_6
    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->isCaseSensitive:Z

    invoke-static {v0, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    if-eqz p1, :cond_7

    return v4

    :cond_7
    :goto_1
    return v2
.end method

.method public matchReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/core/IJavaElement;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p5, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->encloses(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    instance-of v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v2, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    :cond_1
    instance-of v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v2, :cond_2

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v1, v1

    :cond_2
    instance-of v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v2, :cond_3

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v1, p2

    :cond_3
    const/4 p2, 0x0

    aget-wide v2, v0, p2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v7, v2

    if-lez v1, :cond_4

    add-int/lit8 p2, v1, -0x1

    :cond_4
    aget-wide v1, v0, p2

    long-to-int p2, v1

    sub-int/2addr p2, v7

    add-int/lit8 v8, p2, 0x1

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newPackageReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/PackageReferenceMatch;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p5, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v0, p0

    move-object v6, p1

    .line 2
    instance-of v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v1, :cond_1

    .line 3
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 4
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    .line 5
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v8, 0x20000

    and-int/2addr v1, v8

    if-eqz v1, :cond_0

    array-length v1, v7

    goto/16 :goto_8

    :cond_0
    array-length v1, v7

    sub-int/2addr v1, v4

    goto/16 :goto_8

    .line 6
    :cond_1
    instance-of v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    const/4 v7, 0x0

    if-eqz v1, :cond_9

    .line 7
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 8
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    .line 9
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v10, 0x7

    and-int/2addr v9, v10

    if-eq v9, v4, :cond_8

    if-eq v9, v10, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v9, :cond_7

    .line 11
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    move v10, v5

    goto/16 :goto_3

    .line 12
    :cond_3
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 13
    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_4

    .line 14
    move-object v1, v9

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 15
    :cond_4
    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v10, :cond_6

    .line 16
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 17
    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v10, v10

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v11, 0x2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    array-length v1, v1

    add-int/2addr v11, v1

    :goto_1
    sub-int/2addr v10, v11

    move-object v1, v9

    goto :goto_3

    .line 18
    :cond_6
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz v1, :cond_7

    .line 19
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 20
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v10, 0x2e

    .line 21
    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    invoke-static {v10, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result v9

    move v10, v9

    goto :goto_3

    :cond_7
    :goto_2
    move v10, v5

    move-object v1, v7

    goto :goto_3

    .line 22
    :cond_8
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 23
    :cond_9
    instance-of v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v1, :cond_a

    .line 24
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    .line 25
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    .line 26
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 27
    :cond_a
    instance-of v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v1, :cond_b

    .line 28
    move-object v1, v6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    .line 29
    new-array v8, v4, [J

    .line 30
    iget v9, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v9, v9

    shl-long/2addr v9, v2

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    aput-wide v9, v8, v3

    .line 31
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_b
    move v10, v5

    move-object v1, v7

    move-object v8, v1

    :goto_3
    if-nez v8, :cond_c

    return-void

    .line 32
    :cond_c
    instance-of v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v9, :cond_d

    .line 33
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 34
    :cond_d
    instance-of v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v9, :cond_e

    .line 35
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 36
    :cond_e
    instance-of v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v9, :cond_f

    .line 37
    move-object v9, v1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v9, :cond_f

    .line 38
    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    array-length v9, v9

    goto :goto_4

    :cond_f
    move v9, v10

    :goto_4
    if-nez v1, :cond_10

    goto :goto_5

    .line 39
    :cond_10
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_13

    .line 40
    array-length v1, v8

    :goto_6
    if-eqz v7, :cond_12

    if-gtz v1, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v1, v1, -0x1

    .line 41
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    goto :goto_6

    :cond_12
    :goto_7
    if-gt v1, v4, :cond_13

    return-void

    :cond_13
    move-object v7, v8

    move v1, v9

    :goto_8
    if-ne v1, v5, :cond_14

    .line 42
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->segments:[[C

    array-length v1, v1

    :cond_14
    if-nez v1, :cond_15

    return-void

    .line 43
    :cond_15
    array-length v5, v7

    if-le v1, v5, :cond_16

    array-length v1, v7

    .line 44
    :cond_16
    aget-wide v8, v7, v3

    ushr-long v2, v8, v2

    long-to-int v5, v2

    sub-int/2addr v1, v4

    .line 45
    aget-wide v1, v7, v1

    long-to-int v1, v1

    sub-int/2addr v1, v5

    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p7

    move-object v2, p2

    move/from16 v3, p6

    move v4, v5

    move v5, v7

    move-object v6, p1

    .line 46
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newPackageReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/PackageReferenceMatch;

    move-result-object v1

    move-object/from16 v2, p3

    .line 47
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/search/ReferenceMatch;->setLocalElement(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 48
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    move-object/from16 v2, p7

    .line 49
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

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

    .line 1
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public referenceType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    .line 3
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 6
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    .line 8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    :cond_2
    return v1

    .line 10
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v0, :cond_4

    .line 11
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 12
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v0, :cond_5

    .line 13
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)I

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)I
    .locals 6

    .line 28
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v2, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 29
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_7

    .line 30
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    .line 31
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 32
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_2

    .line 33
    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    .line 34
    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    if-eqz v1, :cond_5

    .line 35
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, v1

    add-int/2addr v4, v1

    :goto_0
    if-ge v0, v4, :cond_4

    return v3

    .line 36
    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_3

    .line 37
    :cond_5
    instance-of p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    if-eqz p1, :cond_7

    .line 38
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    .line 39
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->name:[C

    const/16 v1, 0x2e

    invoke-static {v1, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->occurencesOf(C[C)I

    move-result p1

    if-gtz p1, :cond_6

    return v2

    .line 40
    :cond_6
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;->searchType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_7
    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    return v3

    .line 41
    :cond_9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v0, v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    array-length v1, v1

    add-int/2addr v4, v1

    :goto_2
    if-ge v0, v4, :cond_b

    return v3

    .line 42
    :cond_b
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->actualReceiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 43
    :goto_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v1, :cond_1

    .line 15
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    goto :goto_0

    .line 16
    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v1, :cond_2

    .line 17
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    goto :goto_0

    .line 18
    :cond_2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v1, :cond_3

    .line 19
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 20
    :cond_3
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_4

    .line 21
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    .line 22
    :cond_5
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_7

    .line 23
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v1, :cond_6

    return v0

    .line 24
    :cond_6
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 25
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;->pkgName:[C

    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    iget-object v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->focus:Lorg/eclipse/jdt/core/IJavaElement;

    instance-of v2, v0, Lorg/eclipse/jdt/core/IPackageFragment;

    if-eqz v2, :cond_8

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_8

    .line 27
    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragment;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->isDeclaringPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    const/4 p1, 0x3

    return p1

    :cond_9
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageReferenceLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/PackageReferencePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
