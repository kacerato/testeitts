.class public Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.source "SourceFile"


# static fields
.field public static final EXTENDS:I = 0x1

.field public static final SUPER:I = 0x2

.field public static final UNBOUND:I


# instance fields
.field public bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public kind:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    return-void
.end method

.method private internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v3, 0x3

    const/16 v4, 0x100

    if-ne v2, v3, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    const/4 v7, 0x0

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->evaluateNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)V

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method


# virtual methods
.method public getParameterizedTypeName()[[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x2e

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getParameterizedTypeName()[[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()[[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x2e

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeName()[[C

    move-result-object v3

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    return-object v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    return-object p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p3, :cond_0

    const/16 v0, 0x100

    .line 2
    invoke-virtual {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x100000

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p2, :cond_0

    const/16 v0, 0x100

    .line 5
    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v0, 0x100000

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public resolveTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->internalResolveType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 3
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 8
    :cond_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 4

    .line 9
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->annotations:[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 12
    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 16
    :cond_3
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
