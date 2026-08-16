.class public Lorg/eclipse/jdt/internal/core/util/DOMFinder;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# instance fields
.field private ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field private element:Lorg/eclipse/jdt/internal/core/SourceRefElement;

.field public foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

.field public foundNode:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private rangeLength:I

.field private rangeStart:I

.field private resolveBinding:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/core/SourceRefElement;Z)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeStart:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeLength:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->element:Lorg/eclipse/jdt/internal/core/SourceRefElement;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    return-void
.end method


# virtual methods
.method public found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeStart:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeLength:I

    if-ne p2, v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public search()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->element:Lorg/eclipse/jdt/internal/core/SourceRefElement;

    instance-of v1, v0, Lorg/eclipse/jdt/core/IMember;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/core/IInitializer;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/LambdaMethod;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/LambdaExpression;

    if-nez v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/ITypeParameter;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/eclipse/jdt/core/ILocalVariable;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceReference;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeStart:I

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->rangeLength:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundNode:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 4

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x48

    if-eq v1, v2, :cond_0

    return v3

    .line 7
    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_2

    .line 10
    check-cast v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_3
    return v3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 1

    .line 13
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->resolveVariable()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 1

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 1

    .line 17
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 1

    .line 40
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/LambdaExpression;->resolveMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 1

    .line 20
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 1

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 1

    .line 24
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 1

    .line 26
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 1

    .line 28
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p1}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z
    .locals 1

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 1

    .line 32
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeParameter;)Z
    .locals 1

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TypeParameter;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 1

    .line 36
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->found(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->resolveBinding:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/DOMFinder;->foundBinding:Lorg/eclipse/jdt/core/dom/IBinding;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
