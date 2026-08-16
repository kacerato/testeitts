.class public Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    }
.end annotation


# instance fields
.field private nameToDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private nameToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameToValue",
            "nameToDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static empty()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    new-instance v0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    iget-object v3, p1, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object p1

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    return-object v0
.end method

.method public getValueBySignature(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
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

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public replaceAll(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-virtual {p0, v2}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    invoke-interface {p1, v2, v3, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public toBuilder()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;
    .locals 4

    new-instance v0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToDeclaration:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeParametersMap{nameToValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->nameToValue:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
