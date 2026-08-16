.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;


# virtual methods
.method public asField()Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 0

    return-object p0
.end method

.method public abstract declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
.end method

.method public isField()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isStatic()Z
.end method

.method public abstract isVolatile()Z
.end method
