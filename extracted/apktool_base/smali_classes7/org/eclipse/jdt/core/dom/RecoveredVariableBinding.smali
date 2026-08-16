.class Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IVariableBinding;


# instance fields
.field private resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getConstantValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Recovered#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    if-eqz v1, :cond_0

    const-string v1, "variableDeclaration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/core/dom/VariableDeclaration;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getVariableDeclaration()Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 0

    return-object p0
.end method

.method public getVariableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEffectivelyFinal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnumConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isRecovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isField()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    return v0
.end method

.method public isParameter()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredVariableBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    return v0
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
