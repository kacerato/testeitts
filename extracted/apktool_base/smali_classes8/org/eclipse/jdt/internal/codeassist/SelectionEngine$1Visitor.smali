.class Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->selectLocalDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Visitor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

.field private final synthetic val$assistIdentifier:[C


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;[C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->this$0:Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 21
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 8

    .line 1
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-ne p2, v0, :cond_2

    .line 2
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-direct {p2, v7}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    .line 5
    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 1

    .line 10
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 6
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p2, :cond_0

    .line 8
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    .line 9
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 8

    .line 16
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-ne p2, v0, :cond_2

    .line 17
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez p2, :cond_1

    .line 18
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-nez p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-direct {p2, v7}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    .line 20
    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 12
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 14
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 1

    .line 23
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 1

    .line 25
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 27
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine$1Visitor;->val$assistIdentifier:[C

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 28
    :cond_0
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p2
.end method
