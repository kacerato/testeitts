.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedInterfaceDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
.implements Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;


# virtual methods
.method public getAllInterfacesExtended()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedInterfaceDeclaration;->getInterfacesExtended()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllInterfacesAncestors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public abstract getInterfacesExtended()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
