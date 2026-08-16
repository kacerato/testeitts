.class Lorg/eclipse/jdt/core/dom/AnnotationBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IAnnotationBinding;


# static fields
.field static final NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;


# instance fields
.field private binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field private bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private getRecipientKey()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v1, v3, :cond_7

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_6

    const/16 v3, 0x23

    if-eq v1, v3, :cond_5

    const/16 v3, 0x37

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_2

    return-object v2

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    check-cast v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_0
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    array-length v4, v0

    if-ne v4, v3, :cond_3

    return-object v0

    :cond_3
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;-><init>(I)V

    move v6, v2

    :goto_1
    if-lt v6, v4, :cond_6

    new-array v7, v3, [Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    :goto_2
    if-lt v2, v3, :cond_4

    return-object v7

    :cond_4
    aget-object v0, v1, v2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;

    aget-object v4, v1, v2

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {v0, v4, v6}, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    goto :goto_3

    :cond_5
    check-cast v0, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    :goto_3
    aput-object v0, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    aget-object v7, v0, v6

    check-cast v7, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalName()[C

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    aget-object v8, v0, v6

    invoke-virtual {v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    return-object v0
.end method

.method public getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    sget-object v2, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoPair:[Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    goto :goto_0

    :cond_1
    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-lt v4, v1, :cond_4

    if-nez v5, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoPair:[Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    return-object v0

    :cond_2
    if-eq v5, v1, :cond_3

    new-array v0, v5, [Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_3
    return-object v2

    :cond_4
    aget-object v6, v0, v4

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMemberValuePairBinding(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object v6

    aput-object v6, v2, v5

    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoPair:[Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    check-cast v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->bindingsToAstNodes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/Annotation;

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v1, v3, :cond_b

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x23

    if-eq v1, v3, :cond_7

    const/16 v3, 0x37

    if-eq v1, v3, :cond_6

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_4

    const/16 v3, 0x47

    if-eq v1, v3, :cond_6

    const/16 v3, 0x51

    if-eq v1, v3, :cond_6

    const/16 v3, 0x5d

    if-eq v1, v3, :cond_2

    return-object v2

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_4
    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v2

    :cond_5
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_6
    check-cast v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    instance-of v3, v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-eqz v3, :cond_8

    check-cast v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->getName()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Name;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclaration(Ljava/lang/String;)Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v2

    goto :goto_0

    :cond_9
    check-cast v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    goto :goto_0

    :cond_b
    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclaration;->resolveBinding()Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v2

    :cond_c
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/IAnnotatable;

    if-nez v1, :cond_d

    return-object v2

    :cond_d
    instance-of v1, v0, Lorg/eclipse/jdt/core/IMember;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->isBinary()Z

    move-result v1

    if-eqz v1, :cond_e

    check-cast v0, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0

    :cond_e
    check-cast v0, Lorg/eclipse/jdt/core/IAnnotatable;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getRecipientKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->computeUniqueKey([C)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeprecated()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKind()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IAnnotationBinding;->getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object p1

    array-length v2, v1

    array-length v4, p1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    array-length v2, v1

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_4

    return v0

    :cond_4
    aget-object v5, v1, v4

    aget-object v6, p1, v4

    invoke-interface {v5, v6}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result v5

    if-nez v5, :cond_5

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isRecovered()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->getDeclaredMemberValuePairs()[Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v3, :cond_2

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
