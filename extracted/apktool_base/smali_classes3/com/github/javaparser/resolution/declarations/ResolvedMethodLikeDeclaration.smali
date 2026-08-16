.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.implements Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;


# virtual methods
.method public abstract declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.end method

.method public findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->findTypeParameter(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public formalParameterTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method has no typeParametersValues, therefore it has no a last parameter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getNumberOfParams()I
.end method

.method public abstract getNumberOfSpecifiedExceptions()I
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedSignature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->describeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSpecifiedException(I)Lcom/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public getSpecifiedExceptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfSpecifiedExceptions()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfSpecifiedExceptions()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getSpecifiedException(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasVariadicParameter()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v0

    return v0
.end method
