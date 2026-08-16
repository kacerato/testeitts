.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;
.super Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;
.source "SourceFile"


# instance fields
.field inheritDocSelected:Z

.field selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->inheritDocSelected:Z

    return-void
.end method

.method private internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v0, :cond_a

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_9

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_9

    move-object v0, p1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-nez v0, :cond_8

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-nez v0, :cond_7

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-nez v0, :cond_6

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_6
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_1

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_1

    :cond_8
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_9
    :goto_1
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_a
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->inheritDocSelected:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw v0

    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz p1, :cond_8

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    const-string v1, "<SelectOnMethod:"

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->methodBinding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "<SelectOnField:"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    if-eqz v0, :cond_3

    const-string v1, "<SelectOnConstructor:"

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-eqz v0, :cond_4

    const-string v1, "<SelectOnLocalVariable:"

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    const-string v1, "<SelectOnType:"

    if-eqz v0, :cond_5

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;->packageBinding:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 v0, p1, -0x3

    add-int/lit8 p1, p1, -0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    return-object p2
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->internalResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method
