.class public Lcom/github/javaparser/resolution/types/ResolvedArrayType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private baseType:Lcom/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method


# virtual methods
.method public asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 0

    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public erasure()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x1

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

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_5
    return v1
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
            "tpToReplace",
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

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    iget-object p2, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {p2, p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object p2
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->toDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolvedArrayType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->baseType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
