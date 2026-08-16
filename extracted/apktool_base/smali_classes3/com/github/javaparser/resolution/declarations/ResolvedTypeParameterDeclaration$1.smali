.class final Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->onType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bounds:Ljava/util/List;

.field final synthetic val$classQName:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$bounds",
            "val$classQName",
            "val$name"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$classQName:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$bounds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containerType()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declaredOnConstructor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declaredOnMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declaredOnType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$bounds:Ljava/util/List;

    return-object v0
.end method

.method public getContainer()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$classQName:Ljava/lang/String;

    return-object v0
.end method

.method public getContainerQualifiedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$classQName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public object()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeParameter onType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
