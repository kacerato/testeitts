.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedTypePatternDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;


# virtual methods
.method public asTypePattern()Lcom/github/javaparser/resolution/declarations/ResolvedTypePatternDeclaration;
    .locals 0

    return-object p0
.end method

.method public describeType()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTypePattern()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
