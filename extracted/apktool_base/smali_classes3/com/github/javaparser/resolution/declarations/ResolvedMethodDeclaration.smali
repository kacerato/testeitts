.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;


# virtual methods
.method public abstract getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isDefaultMethod()Z
.end method

.method public isReturnTypeSubstituable(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherResolvedType"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->getReturnType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Return-Type-Substituable must be implemented on reference type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract isStatic()Z
.end method

.method public abstract toDescriptor()Ljava/lang/String;
.end method
