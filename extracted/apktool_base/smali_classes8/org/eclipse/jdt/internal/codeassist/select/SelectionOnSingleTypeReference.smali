.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.source "SourceFile"


# direct methods
.method public constructor <init>([CJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    return-void
.end method


# virtual methods
.method public aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnSingleTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    filled-new-array {v0}, [[C

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_3
    :goto_1
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<SelectOnType:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1
.end method
