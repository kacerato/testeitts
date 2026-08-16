.class public Lorg/eclipse/jdt/internal/core/SourceMethod;
.super Lorg/eclipse/jdt/internal/core/NamedMember;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMethod;


# instance fields
.field protected parameterTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NamedMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    if-nez p3, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public closing(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->closing(Ljava/lang/Object;)V

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceMethod;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceMethod;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDefaultValue()Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isAnnotationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValue:Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getExceptionTypes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getExceptionTypeNames()[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnitStructureRequestor;->convertTypeNamesToSigs([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandleMemento(Ljava/lang/StringBuffer;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getHandleMemento(Ljava/lang/StringBuffer;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getHandleMementoDelimiter()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->escapeMementoName(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHandleMementoDelimiter()C
    .locals 1

    const/16 v0, 0x7e

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p0, v0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getKey(Lorg/eclipse/jdt/core/IMethod;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getParameterNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getArgumentNames()[[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toStrings([[C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Lorg/eclipse/jdt/core/ILocalVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->arguments:[Lorg/eclipse/jdt/core/ILocalVariable;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/LocalVariable;->NO_LOCAL_VARIABLES:[Lorg/eclipse/jdt/core/ILocalVariable;

    :cond_0
    return-object v0
.end method

.method public getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getPrimaryElement(Z)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/eclipse/jdt/core/IType;->getMethod(Ljava/lang/String;[Ljava/lang/String;)Lorg/eclipse/jdt/core/IMethod;

    move-result-object p1

    return-object p1
.end method

.method public getRawParameterNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getParameterNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/Signature;->createMethodSignature([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameter(Ljava/lang/String;)Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypeParameterSignatures()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v0, v4

    check-cast v5, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getElementName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_2

    :cond_1
    array-length v7, v6

    new-array v8, v7, [[C

    move v9, v3

    :goto_1
    if-lt v9, v7, :cond_2

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/TypeParameter;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5, v8}, Lorg/eclipse/jdt/core/Signature;->createTypeParameterSignature([C[[C)[C

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    aput-object v6, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget-object v10, v6, v9

    invoke-static {v10, v3}, Lorg/eclipse/jdt/core/Signature;->createCharArrayTypeSignature([CZ)[C

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/ITypeParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->combineHashCodes(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isConstructor()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isLambdaMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainMethod()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0, p0}, Lorg/eclipse/jdt/internal/core/Member;->isMainMethod(Lorg/eclipse/jdt/core/IMethod;)Z

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSimilar(Lorg/eclipse/jdt/core/IMethod;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jdt/internal/core/Member;->areSimilarMethods(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public readableName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/Member;->readableName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElement;->parent:Lorg/eclipse/jdt/internal/core/JavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/NamedMember;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/SourceMethod;->parameterTypes:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/ResolvedSourceMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method

.method public toStringInfo(ILjava/lang/StringBuffer;Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceMethod;->toStringName(Ljava/lang/StringBuffer;)V

    const-string p1, " (not open)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_INFO:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/SourceMethod;->toStringName(Ljava/lang/StringBuffer;)V

    goto :goto_0

    :cond_1
    check-cast p3, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getModifiers()I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p4, "static "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isConstructor()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/core/SourceMethod;->toStringName(Ljava/lang/StringBuffer;I)V

    :goto_0
    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->toStringName(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public toStringName(Ljava/lang/StringBuffer;I)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5
    array-length v2, v0

    if-lez v2, :cond_3

    .line 6
    invoke-static {p2}, Lorg/eclipse/jdt/core/Flags;->isVarargs(I)Z

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    .line 7
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    const-string v4, " ..."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 12
    :cond_2
    aget-object v4, v0, v3

    invoke-static {v4}, Lorg/eclipse/jdt/core/Signature;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    const-string v4, "*** invalid signature: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/16 p2, 0x29

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    iget p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    if-le p2, v1, :cond_4

    .line 17
    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget p2, p0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method
