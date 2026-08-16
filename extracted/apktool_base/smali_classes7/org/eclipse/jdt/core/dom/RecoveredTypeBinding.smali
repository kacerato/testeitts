.class Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/ITypeBinding;


# instance fields
.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private currentType:Lorg/eclipse/jdt/core/dom/Type;

.field private dimensions:I

.field private innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

.field private resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    .line 20
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getDimensions()I

    move-result p2

    add-int/2addr p2, p3

    iput p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    .line 21
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    .line 14
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    .line 16
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/core/dom/VariableDeclaration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    .line 4
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    .line 5
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    check-cast p2, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    .line 10
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    .line 11
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method private getInternalName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getInternalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getReferenceBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getTypeNameFrom(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModule(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IPackageBinding;->getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getReferenceBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_2

    invoke-direct {v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getReferenceBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getType()Lorg/eclipse/jdt/core/dom/Type;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v2

    const/16 v3, 0x17

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    return-object v1

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    return-object v0

    :cond_4
    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    check-cast v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    return-object v0
.end method

.method private getTypeNameFrom(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType0()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/16 v1, 0x27

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x58

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/QualifiedType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getTypeNameFrom(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    array-length v1, p1

    if-eqz v1, :cond_5

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_3

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    check-cast p1, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Name;->isQualifiedName()Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p1, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    check-cast p1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    check-cast p1, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->getPrimitiveTypeCode()Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    check-cast p1, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getTypeNameFrom(Lorg/eclipse/jdt/core/dom/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createArrayType(I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getBinaryName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-object v0
.end method

.method public getDeclaredMethods()[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_METHOD_BINDINGS:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

    return-object v0
.end method

.method public getDeclaredModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDeclaredTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensions()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    return v0
.end method

.method public getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    new-instance v1, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    check-cast v1, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErasure()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    return-object p0
.end method

.method public getFunctionalInterfaceMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenericTypeOfWildcardType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaces()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Recovered#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v1, :cond_0

    const-string v1, "innerTypeBinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    if-eqz v1, :cond_1

    const-string v1, "currentType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    const-string v1, "typeBinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    if-eqz v1, :cond_3

    const-string v1, "variableDeclaration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->variableDeclaration:Lorg/eclipse/jdt/core/dom/VariableDeclaration;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->getExtraDimensions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getDimensions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v1, :cond_6

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_4

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x44

    if-eq v0, v2, :cond_0

    const/16 v2, 0x84

    if-eq v0, v2, :cond_0

    const/16 v2, 0x204

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2004

    if-eq v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getModule(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getModule(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x5d

    aput-char v2, v1, v0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x44

    if-eq v0, v2, :cond_0

    const/16 v2, 0x84

    if-eq v0, v2, :cond_0

    const/16 v2, 0x204

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1004

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2004

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    if-lez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getReferenceBinding()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->dimensions:I

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [C

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gez v2, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v4, 0x5d

    aput-char v4, v3, v2

    add-int/lit8 v4, v2, -0x1

    const/16 v5, 0x5b

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSuperclass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    check-cast v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->typeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_3

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v2

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Type;

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/Type;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getTypeBounds()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 0

    return-object p0
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getWildcard()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignmentCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result p1

    return p1
.end method

.method public isCapture()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCastCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result p1

    return p1
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isRecovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFromSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGenericType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIntersectionType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMember()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNullType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->innerTypeBinding:Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->isParameterizedType()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->currentType:Lorg/eclipse/jdt/core/dom/Type;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Type;->isParameterizedType()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRawType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSubTypeCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/RecoveredTypeBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result p1

    return p1
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUpperbound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWildcardType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
