.class public abstract Lorg/eclipse/jdt/core/search/TypeNameMatch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccessibility()I
.end method

.method public getFullyQualifiedName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getModifiers()I
.end method

.method public getPackageFragmentRoot()Lorg/eclipse/jdt/core/IPackageFragmentRoot;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleTypeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Lorg/eclipse/jdt/core/IType;
.end method

.method public getTypeContainerName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getFullyQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getPackageFragment()Lorg/eclipse/jdt/core/IPackageFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IPackageFragment;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeQualifiedName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/IType;->getTypeQualifiedName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
