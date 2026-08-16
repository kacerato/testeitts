.class public interface abstract Lcom/github/javaparser/resolution/types/ResolvedType;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->lambda$isNumericType$0(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isNumericType$0(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rpt"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public arrayLevel()I
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->arrayLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an Array"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a constraint type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Primitive type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Reference Type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Type parameter"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Type variable"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asUnionType()Lcom/github/javaparser/resolution/types/ResolvedUnionType;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a union type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Wildcard"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract describe()Ljava/lang/String;
.end method

.method public erasure()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    return-object p0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public isConstraint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInferenceVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumericType()Z
    .locals 2

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getNumericPrimitiveTypes()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/u;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/types/u;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReference()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isUnionType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnionType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mention(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tp",
            "replaced"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p1, p2, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method public replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tp",
            "replaced",
            "inferredTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public solveGenericTypes(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-object p0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
