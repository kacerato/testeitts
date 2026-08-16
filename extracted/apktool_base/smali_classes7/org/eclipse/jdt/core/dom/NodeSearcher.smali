.class Lorg/eclipse/jdt/core/dom/NodeSearcher;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# instance fields
.field public enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field public position:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 1
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 2
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 1

    .line 4
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 5
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Initializer;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)Z
    .locals 1

    .line 7
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 8
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 13
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 14
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 15
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->found:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 1

    .line 10
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 11
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 12
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 1

    .line 16
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    iget v0, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->position:I

    if-gt p2, v0, :cond_0

    .line 17
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-gt v0, p2, :cond_0

    .line 18
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NodeSearcher;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
