.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedClassDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.implements Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;


# virtual methods
.method public abstract getAllInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllSuperClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstructors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInterfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuperClass()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
