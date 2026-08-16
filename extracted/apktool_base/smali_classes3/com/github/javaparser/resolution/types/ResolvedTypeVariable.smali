.class public Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    return-void
.end method


# virtual methods
.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    return-object v0
.end method

.method public asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;
    .locals 0

    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnType()Z

    move-result v2

    iget-object v3, p1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnType()Z

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result v2

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result p1

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public erasure()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->object()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->hasBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->hasBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x1

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

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public qualifiedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpToBeReplaced",
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

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_0
    return-object p0
.end method

.method public solveGenericTypes(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/resolution/Context;->solveGenericType(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object p1
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->qualifiedName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "L%s;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeVariable {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->typeParameter:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
