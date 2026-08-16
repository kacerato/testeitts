.class public Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V

    return-void
.end method


# virtual methods
.method public findCompatibleEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I
    .locals 8

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v1, v0

    iget-wide v2, p3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x340000

    cmp-long p1, v2, v4

    const/4 p3, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    move v3, p3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    move p1, v2

    move-object v5, v4

    move-object v6, v5

    :goto_1
    if-lt p1, v1, :cond_4

    if-eqz p3, :cond_1

    if-nez v3, :cond_3

    :cond_1
    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz v3, :cond_2

    const/16 p2, 0x15

    goto :goto_2

    :cond_2
    const/16 p2, 0x1d

    :goto_2
    invoke-direct {p1, v6, v5, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3
    return v2

    :cond_4
    aget-object v7, v0, p1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v5, v0, p1

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    :cond_5
    aget-object v7, v0, p1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_7

    aget-object p3, v0, p1

    iget-object v6, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-nez v5, :cond_6

    move-object v5, p3

    :cond_6
    move p3, v2

    :cond_7
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->findCompatibleEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)I

    move-result p1

    return p1
.end method

.method public isQualifiedSuper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSuper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isThis()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, ".super"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x1fe00000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidParenthesizedExpression(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v0, v2, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalSuperAccess(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotUseSuperInJavaLangObject(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    return-object v1

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->currentCompatibleType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 4
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedThisReference;->qualification:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 6
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedSuperReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
