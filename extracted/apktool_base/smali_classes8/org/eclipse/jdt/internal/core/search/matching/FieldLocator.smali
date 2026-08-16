.class public Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;
.source "SourceFile"


# instance fields
.field protected isDeclarationOfAccessedFieldsPattern:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;-><init>(Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    instance-of p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->isDeclarationOfAccessedFieldsPattern:Z

    return-void
.end method


# virtual methods
.method public fineGrain()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    return v0
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    aget-object v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    new-array v3, v2, [[C

    .line 7
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    .line 9
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    const/16 v4, 0x2e

    invoke-static {v2, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    .line 10
    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 6

    .line 13
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 14
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->writeAccess:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->readAccess:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_1

    .line 15
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    .line 17
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findDeclarations:Z

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p0, v1, v5}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesTypeReference([CLorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v1, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v4, v2

    :cond_4
    :goto_2
    if-lt v0, v4, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    .line 22
    :goto_3
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1
.end method

.method public matchContainer()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    if-nez v1, :cond_1

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0xf

    return v0
.end method

.method public matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->readableName()[C

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_4

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne p1, v2, :cond_3

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    if-nez p1, :cond_2

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    if-nez p1, :cond_2

    const/4 v1, 0x3

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    iget-object v0, p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    iget-object v3, p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringQualification:[C

    invoke-virtual {p0, v0, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->declaringSimpleName:[C

    if-nez p2, :cond_6

    return v0

    :cond_6
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedFieldBinding;->originalField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_7
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    if-le v0, p1, :cond_8

    move v0, p1

    :cond_8
    return v0
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

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchLevelAndReportImportRef(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    :cond_0
    return-void
.end method

.method public matchReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)I
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->token:[C

    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean p3, p3, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    :goto_0
    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->matchReference(Lorg/eclipse/jdt/internal/compiler/ast/Reference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;Z)I

    move-result p1

    return p1
.end method

.method public matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    .line 2
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->isDeclarationOfAccessedFieldsPattern:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    if-eqz p6, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;

    move-object/from16 v2, p2

    :goto_0
    if-eqz v2, :cond_2

    .line 4
    iget-object v3, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->enclosingElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_1a

    .line 6
    instance-of v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v2, :cond_3

    .line 7
    move-object v2, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, v2, v10, v1}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    goto/16 :goto_9

    .line 8
    :cond_3
    instance-of v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v2, :cond_7

    .line 9
    move-object v2, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 10
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 11
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v4, :cond_4

    .line 12
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, v3, v10, v4}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    .line 13
    :cond_4
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v3, :cond_5

    move v3, v11

    goto :goto_2

    :cond_5
    array-length v3, v3

    :goto_2
    if-lt v11, v3, :cond_6

    goto/16 :goto_9

    .line 14
    :cond_6
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v4, v4, v11

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, v4, v10, v5}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 15
    :cond_7
    instance-of v2, v9, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v2, :cond_1a

    .line 16
    move-object v2, v9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/search/matching/DeclarationOfAccessedFieldsPattern;->knownFields:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, v2, v10, v1}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V

    goto/16 :goto_9

    .line 17
    :cond_8
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/16 v2, 0x20

    const/4 v12, 0x1

    if-eqz v1, :cond_9

    .line 18
    move-object v8, v9

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 19
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    .line 20
    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v3, v3

    sub-int/2addr v3, v12

    .line 21
    aget-wide v3, v1, v3

    ushr-long v1, v3, v2

    long-to-int v6, v1

    long-to-int v1, v3

    sub-int/2addr v1, v6

    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 22
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 23
    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto/16 :goto_9

    .line 24
    :cond_9
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v1, :cond_a

    .line 25
    move-object v8, v9

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    .line 26
    iget-wide v3, v8, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->nameSourcePosition:J

    ushr-long v1, v3, v2

    long-to-int v6, v1

    long-to-int v1, v3

    sub-int/2addr v1, v6

    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 27
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 28
    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto/16 :goto_9

    .line 29
    :cond_a
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v1, :cond_b

    .line 30
    iget v6, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 31
    iget v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v1, v6

    add-int/lit8 v7, v1, 0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 32
    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto/16 :goto_9

    .line 33
    :cond_b
    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    if-eqz v1, :cond_1a

    .line 34
    move-object v13, v9

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 35
    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length v14, v1

    .line 36
    new-array v15, v14, [Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 37
    iget-object v2, v13, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 38
    iget v3, v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    if-lez v3, :cond_c

    sub-int/2addr v3, v12

    move/from16 v16, v3

    goto :goto_3

    :cond_c
    move/from16 v16, v11

    .line 39
    :goto_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    aget-object v1, v1, v16

    invoke-virtual {v0, v3, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    const/4 v8, 0x3

    const/16 v17, 0x0

    if-eqz v1, :cond_12

    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v1, :cond_12

    .line 40
    instance-of v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_d

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-object v7, v2

    goto :goto_4

    :cond_d
    move-object/from16 v7, v17

    :goto_4
    if-nez v7, :cond_e

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v8, p1

    .line 41
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    aput-object v1, v15, v16

    goto :goto_5

    .line 42
    :cond_e
    invoke-virtual {v0, v7, v11}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result v1

    if-eq v1, v12, :cond_10

    const/4 v8, 0x3

    if-eq v1, v8, :cond_f

    goto :goto_5

    :cond_f
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v8, p1

    .line 43
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    aput-object v1, v15, v16

    goto :goto_5

    :cond_10
    const/4 v6, -0x1

    const/4 v8, -0x1

    const/4 v5, 0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v11, v7

    move v7, v8

    move-object/from16 v8, p1

    .line 44
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 45
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 46
    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 47
    :cond_11
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    aput-object v1, v15, v16

    :cond_12
    :goto_5
    add-int/lit8 v16, v16, 0x1

    move/from16 v11, v16

    :goto_6
    if-lt v11, v14, :cond_13

    .line 48
    invoke-virtual {v10, v15, v13}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportAccurateFieldReference([Lorg/eclipse/jdt/core/search/SearchMatch;Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;)V

    goto/16 :goto_9

    .line 49
    :cond_13
    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    aget-object v1, v1, v11

    .line 50
    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 51
    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_14

    move-object/from16 v8, v17

    goto :goto_7

    :cond_14
    sub-int v2, v11, v16

    aget-object v1, v1, v2

    move-object v8, v1

    :goto_7
    if-nez v8, :cond_16

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v8, p1

    .line 52
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    aput-object v1, v15, v11

    :cond_15
    const/16 v19, 0x3

    const/16 v20, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v7, 0x0

    .line 53
    invoke-virtual {v0, v8, v7}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result v1

    if-eq v1, v12, :cond_18

    const/4 v6, 0x3

    if-eq v1, v6, :cond_17

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_8

    :cond_17
    const/4 v8, -0x1

    const/16 v18, -0x1

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v19, v6

    move v6, v8

    move/from16 v20, v7

    move/from16 v7, v18

    move-object/from16 v8, p1

    .line 54
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    aput-object v1, v15, v11

    goto :goto_8

    :cond_18
    move/from16 v20, v7

    const/16 v19, 0x3

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v5, 0x1

    move-object/from16 v1, p7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v12, v8

    move-object/from16 v8, p1

    .line 55
    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->newFieldReferenceMatch(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;IIILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/core/search/FieldReferenceMatch;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 56
    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->hasTypeArguments()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 57
    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    .line 58
    :cond_19
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    aput-object v1, v15, v11

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_1a
    :goto_9
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
    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchReportReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;[Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public reportDeclaration(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object v3, p1

    move-object/from16 v0, p2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v3, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->lookupType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v2, v5}, Lorg/eclipse/jdt/core/IType;->getField(Ljava/lang/String;)Lorg/eclipse/jdt/core/IField;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object v13

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v13, :cond_3

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v13

    :goto_0
    invoke-interface {v2}, Lorg/eclipse/jdt/core/IType;->getClassFile()Lorg/eclipse/jdt/core/IOrdinaryClassFile;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/ClassFile;

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getBinaryInfo(Lorg/eclipse/jdt/internal/core/ClassFile;Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v2, v5

    move-object v3, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->reportBinaryMemberDeclaration(Lorg/eclipse/core/resources/IResource;Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;I)V

    :cond_4
    move-object v7, p0

    goto :goto_3

    :cond_5
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :cond_6
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    move v6, v2

    goto :goto_1

    :cond_7
    array-length v6, v1

    :goto_1
    if-lt v2, v6, :cond_8

    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    aget-object v7, v1, v2

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v4, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_9

    aget-object v1, v1, v2

    :goto_2
    if-eqz v1, :cond_4

    iget v10, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    new-instance v2, Lorg/eclipse/jdt/core/search/FieldDeclarationMatch;

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v5, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v8

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    sub-int/2addr v1, v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->getParticipant()Lorg/eclipse/jdt/core/search/SearchParticipant;

    move-result-object v12

    const/4 v9, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lorg/eclipse/jdt/core/search/FieldDeclarationMatch;-><init>(Lorg/eclipse/jdt/core/IJavaElement;IIILorg/eclipse/jdt/core/search/SearchParticipant;Lorg/eclipse/core/resources/IResource;)V

    move-object v7, p0

    iput-object v2, v7, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->report(Lorg/eclipse/jdt/core/search/SearchMatch;)V

    goto :goto_3

    :cond_9
    move-object v7, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    return-void
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->findReferences:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->fineGrain:I

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result p1

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I

    move-result p1

    return p1

    .line 6
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;)I
    .locals 5

    .line 10
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 12
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 13
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    .line 14
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 16
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    const/16 v3, 0x2e

    .line 17
    invoke-static {v3, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 18
    array-length v4, v1

    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    .line 19
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 21
    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    array-length v0, v0

    :goto_0
    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_4

    return v2

    .line 22
    :cond_4
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->indexOfFirstFieldBinding:I

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    .line 23
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;->name:[C

    invoke-virtual {p0, v4, v3}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->otherBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v3, v3, v1

    .line 25
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result v3

    if-eqz v3, :cond_5

    return v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/FieldLocator;->matchField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Z)I

    move-result p1

    return p1
.end method

.method public resolveLevelForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/VariableLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/VariablePattern;

    check-cast v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_0
    move-object v6, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeSimpleName:[C

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/search/matching/FieldPattern;->typeQualification:[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->getTypeArguments()[[[C

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->resolveLevelForType([C[C[[[CILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    return p1
.end method

.method public updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CLorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 7

    iget-object v0, p3, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->unitScope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->updateMatch(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;[[[CZILorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->isExact()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->match:Lorg/eclipse/jdt/core/search/SearchMatch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/search/SearchMatch;->setRule(I)V

    :cond_1
    return-void
.end method
