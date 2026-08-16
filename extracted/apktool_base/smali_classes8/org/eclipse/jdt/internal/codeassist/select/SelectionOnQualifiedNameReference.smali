.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnQualifiedNameReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;
.source "SourceFile"


# direct methods
.method public constructor <init>([[C[C[J)V
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v0, p3, p2

    const/16 p2, 0x20

    ushr-long/2addr v0, p2

    long-to-int p2, v0

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    long-to-int v0, v0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;-><init>([[C[JII)V

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    const-string p1, "<SelectOnName:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    if-lez v0, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getBinding([[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidField(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-nez v1, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unresolvableReference(Lorg/eclipse/jdt/internal/compiler/ast/NameReference;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-ne v0, v2, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_2
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1
.end method
