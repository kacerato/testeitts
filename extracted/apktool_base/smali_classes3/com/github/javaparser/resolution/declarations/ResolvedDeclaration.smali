.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/AssociableToAST;


# virtual methods
.method public asEnumConstant()Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an EnumConstantDeclaration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asField()Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a FieldDeclaration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asMethod()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a MethodDeclaration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asParameter()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a ParameterDeclaration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asType()Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a TypeDeclaration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asTypePattern()Lcom/github/javaparser/resolution/declarations/ResolvedTypePatternDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a Pattern"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public hasName()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnumConstant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isField()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypePattern()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
