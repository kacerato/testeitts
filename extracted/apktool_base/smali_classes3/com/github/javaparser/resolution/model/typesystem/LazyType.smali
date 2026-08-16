.class public Lcom/github/javaparser/resolution/model/typesystem/LazyType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private concrete:Lcom/github/javaparser/resolution/types/ResolvedType;

.field private provider:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->provider:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public arrayLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->arrayLevel()I

    move-result v0

    return v0
.end method

.method public asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    return-object v0
.end method

.method public asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    return-object v0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->concrete:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->provider:Ljava/util/function/Function;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    iput-object v0, p0, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->concrete:Lcom/github/javaparser/resolution/types/ResolvedType;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->concrete:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1
.end method

.method public isNull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isReference()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReference()Z

    move-result v0

    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    return v0
.end method

.method public isVoid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result v0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    return v0
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
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method
