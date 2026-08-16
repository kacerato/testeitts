.class public Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;
.super Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;
.source "SourceFile"


# instance fields
.field protected pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    return-void
.end method


# virtual methods
.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findDeclarations:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 9
    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public match(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findReferences:Z

    if-eqz v1, :cond_1

    .line 2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->name:[C

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/core/search/SearchPattern;->mustResolve:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 5
    :goto_0
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/MatchingNodeSet;->addMatch(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public matchContainer()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findReferences:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0
.end method

.method public matchTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Z)I
    .locals 5

    if-eqz p1, :cond_8

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->declaringMemberName:[C

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_1
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodDeclaringClassName:[C

    invoke-virtual {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->declaringMemberName:[C

    invoke-virtual {p0, p2, v2}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodArgumentTypes:[[C

    if-nez p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    array-length p2, p2

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_4

    if-nez p2, :cond_7

    return v0

    :cond_4
    array-length v2, v2

    if-ne v2, p2, :cond_7

    move v2, v1

    :goto_1
    if-lt v2, p2, :cond_5

    return v0

    :cond_5
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->methodArgumentTypes:[[C

    aget-object v4, v4, v2

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/search/matching/PatternLocator;->matchesName([C[C)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public referenceType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findReferences:Z

    if-eqz v1, :cond_0

    .line 2
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;->findDeclarations:Z

    if-eqz v0, :cond_1

    .line 5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->matchTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public resolveLevel(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->matchTypeParameter(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Z)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locator for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterLocator;->pattern:Lorg/eclipse/jdt/internal/core/search/matching/TypeParameterPattern;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
