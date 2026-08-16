.class public interface abstract Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getGenericParameterByName(Ljava/lang/String;)Ljava/util/Optional;
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
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract typeParamValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameterDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end method

.method public useThisTypeParametersOnTheGivenType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->typeParamValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v1

    sget-object v2, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->UNBOUNDED:Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    invoke-virtual {v1, v2}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    move-object p1, v0

    :cond_1
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/resolution/types/parametrization/a;

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/types/parametrization/a;-><init>(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    :cond_4
    return-object p1
.end method
