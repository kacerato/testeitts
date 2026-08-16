.class public Lcom/github/javaparser/resolution/types/ResolvedWildcard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;
    }
.end annotation


# static fields
.field public static UNBOUNDED:Lcom/github/javaparser/resolution/types/ResolvedWildcard;


# instance fields
.field private boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

.field private type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->UNBOUNDED:Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    return-void
.end method

.method private constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "boundedType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    iput-object p2, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method

.method public static extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method

.method public static superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {v0, v1, p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0
.end method


# virtual methods
.method public asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;
    .locals 0

    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-nez v0, :cond_0

    const-string v0, "?"

    return-object v0

    :cond_0
    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    instance-of v1, p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    :cond_3
    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public erasure()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0
.end method

.method public getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v3, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v2, v3, :cond_1

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_1
    sget-object p1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public isBounded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

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

.method public isExtends()Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->EXTENDS:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowerBounded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    return v0
.end method

.method public isSuper()Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;->SUPER:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpperBounded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    return v0
.end method

.method public isWildcard()Z
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

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->mention(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eq p1, p2, :cond_1

    new-instance p2, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    iget-object p3, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-direct {p2, p3, p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;-><init>(Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object p2

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->solveGenericTypes(Lcom/github/javaparser/resolution/Context;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WildcardUsage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->type:Lcom/github/javaparser/resolution/types/ResolvedWildcard$BoundType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->boundedType:Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
