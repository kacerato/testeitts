.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;
    }
.end annotation


# direct methods
.method public static onType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "name",
            "classQName",
            "bounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;",
            ">;)",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 0

    return-object p0
.end method

.method public declaredOnConstructor()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    return v0
.end method

.method public declaredOnMethod()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return v0
.end method

.method public declaredOnType()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainer()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return v0
.end method

.method public abstract getBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;",
            ">;"
        }
    .end annotation
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getContainer()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.end method

.method public abstract getContainerId()Ljava/lang/String;
.end method

.method public abstract getContainerQualifiedName()Ljava/lang/String;
.end method

.method public getLowerBound()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBound()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasBound()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->hasUpperBound()Z

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

.method public hasLowerBound()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isSuper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpperBound()Z
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isBounded()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->isUnbounded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTypeParameter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUnbounded()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract object()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
.end method
